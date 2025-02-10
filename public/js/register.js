$(document).ready(function () {
  let isUpdating = false;
  let updateId = null;
  const maxChars = 200; // Maksimum harf sayısı

  // Hata mesajlarını temizleme fonksiyonu
  const clearErrors = () => {
      $(".error-message, .valid-message").remove();
  };

  // Hata mesajı ekleme fonksiyonu
  const showError = (element, message) => {
      $(element).next(".error-message, .valid-message").remove();
      $(element).after(`<small class="text-danger error-message">${message}</small>`);
  };

  // Geçerli mesajı ekleme fonksiyonu
  const showValid = (element, message) => {
      $(element).next(".error-message, .valid-message").remove();
      $(element).after(`<small class="text-success valid-message">${message}</small>`);
  };

  // Form doğrulama fonksiyonu
  const validateForm = () => {
      clearErrors();
      let isValid = true;

      if ($("#username").val().trim() === "") {
          showError("#username", "Kullanıcı adı boş bırakılamaz!");
          isValid = false;
      } else {
          showValid("#username", "Kullanıcı adı geçerli.");
      }

      if ($("#email").val().trim() === "") {
          showError("#email", "Email boş bırakılamaz!");
          isValid = false;
      } else {
          showValid("#email", "Email geçerli.");
      }

      if ($("#password").val().trim() === "") {
          showError("#password", "Şifre boş bırakılamaz!");
          isValid = false;
      } else {
          showValid("#password", "Şifre geçerli.");
      }

      return isValid;
  };


  // Kullanıcı input'a yazarken hataları kaldır ve geçerli mesaj ekle
  $("#username, #email, #password").on("input", function () {
      const field = $(this);
      if (field.val().trim() === "") {
          showError(field, "Bu alan boş bırakılamaz!");
      } else {
          showValid(field, "Geçerli.");
      }
  });

  // Formu sıfırlama fonksiyonu
  const resetForm = () => {
      $("#blog-register-form")[0].reset();
      isUpdating = false;
      updateId = null;
      $("#submit-btn").text("Kayıt Ol");
      clearErrors();
  };

  // Register listesini getir
  const fetchBlogRegisterList = () => {
      $.ajax({
          url: "/register/api",
          method: "GET",
          success: function (data) {
              const $tbody = $("#blog-register-table tbody").empty();
              data.forEach(item => {
                  const formattedDate = new Date(item.dateInformation).toLocaleDateString();
                  $tbody.append(`
                      <tr data-id="${item._id}">
                          <td>${item._id}</td>
                          <td>${item.username}</td>
                          <td>${item.email}</td>
                          <td>${item.password}</td>
                          <td>${item.views || 0}</td>
                          <td>${item.status || 'active'}</td>
                          <td>${formattedDate}</td>
                          <td>
                              <button class="btn btn-sm btn-primary edit-btn">
                                  <i class="fa-solid fa-wrench"></i>
                              </button>
                              <button class="btn btn-sm btn-danger delete-btn">
                                  <i class="fa-solid fa-trash"></i>
                              </button>
                          </td>
                      </tr>
                  `);
              });
          },
          error: handleError
      });
  };

  // Hata yönetimi fonksiyonu
  const handleError = (xhr, status, error) => {
      console.error("İşlem başarısız:", error);
      alert("Beklenmeyen bir hata oluştu, lütfen tekrar deneyin.");
  };

  // Register ekleme/güncelleme işlemi
  $("#blog-register-form").on("submit", function (event) {
      event.preventDefault();

      // Form doğrulama
      if (!validateForm()) {
          return;
      }

      const blogRegisterData = {
          username: $("#username").val(),
          email: $("#email").val(),
          password: $("#password").val(),
          _csrf: $("input[name='_csrf']").val()
      };

      if (isUpdating && updateId) {
          $.ajax({
              url: `/register/api/${updateId}`,
              method: "PUT",
              data: blogRegisterData,
              success: function () {
                  fetchBlogRegisterList();
                  resetForm();
              },
              error: handleError

          });
      } else {
          $.ajax({
              url: "/register/api",
              method: "POST",
              data: blogRegisterData,
              success: function () {
                  fetchBlogRegisterList();
                  resetForm();
              },
              error: handleError
          });
      }
  });

  // Register güncelleme işlemi
  $("#blog-register-table tbody").on("click", ".edit-btn", function () {
      const row = $(this).closest("tr");
      const id = row.data("id");

      $("#username").val(row.find("td:eq(1)").text());
      $("#email").val(row.find("td:eq(2)").text());
      $("#password").val(row.find("td:eq(3)").text());

      isUpdating = true;
      updateId = id;
      $("#submit-btn").text("Güncelle");
  });

  // Register silme işlemi
  $("#blog-register-table tbody").on("click", ".delete-btn", function () {
      const id = $(this).closest("tr").data("id");
      
      if (!confirm(`${id} ID'li kullanıcıyı silmek istediğinizden emin misiniz?`)) return;

      $.ajax({
          url: `/register/api/${id}`,
          method: "DELETE",
          success: function() {
              console.log("Kayıt silindi");
              fetchBlogRegisterList();
          },
          error: function(xhr, status, error) {
              console.error("Silme hatası:", error);
              alert("Silme işlemi sırasında bir hata oluştu");
          }
      });
  });

  // Debug için click event'lerini kontrol et
  $("#blog-register-table").on("click", ".edit-btn, .delete-btn", function(e) {
      console.log("Button clicked:", $(this).hasClass("edit-btn") ? "Edit" : "Delete");
      console.log("Row ID:", $(this).closest("tr").data("id"));
  });

  // Sayfa yüklendiğinde register listesini getir
  fetchBlogRegisterList();
});
