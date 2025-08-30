/*
Node.js ve Express.js kullanarak blog projesi için gerekli yönetim sistemlerinde kullanmak üzere
CRUD (Create Read Update Delete) için gerekli API'ler yazalım.
Yazacağımız API ile MongoDB veritabanında blog projemiz için yazma, okuma, silme, güncelleme işlemleri yapacağız.
Aşağıdaki kodta Exress.js yardımıyla Router  nesnesini farklı HTTP isteklerine cevap verebilecek API ile router yapılar oluşturulacaktır.
*/

/*
http://localhost:1111/	index44.html açılacak
http://localhost:1111/blog	blog.ejs açılacak
http://localhost:1111/blog/api	JSON formatında blog listesi dönecek
http://localhost:1111/blog/api/:id	Belirli blogu getirecek
*/

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Import Express (Express:  Node.js için esnek bir web uygulama çatısını inşa eder)
// Bu modüllerle beraber HTTP istekleri(request) işleyecek ve istemciye(server) yanıt dönecektir.

// Express Import
const express = require("express");

// Express için Log
const morgan = require("morgan");



// Morgan Aktifleştirmek
// Morgan'ı Express.js uygulamasında kullanalım.
// app.use(morgan('dev')); //dev: kısa ve renkli loglar göster
app.use(morgan("combined")); //dev: uzun ve renkli loglar göster

// Router Import
const router = express.Router();

// Mongoose BlogPostSchema Import
const MongooseBlogModelApi = require("../models/mongoose_blog_models");

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Dikkat: `router.` sonda yapılacak işlemlerde sadece ama sadece get,post,put,delete
// Örnek:get(find, list), post(create), put(Güncelleme), delete(Silme) yazmak zorundayız.

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// DRY Principle (Don't Repeat Yourself)
const handleError = (err, response, message) => {
    console.error(err);
    response.status(400).json({message});
}; //end handleError


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// CREATE BLOG
// POST isteği ile yeni bir blog datası oluşturuyoruz.
// Gönderilen bu veriyi almak için request.body ile içeri aktarmış olacağız.
// http://localhost:1111

router.post("/", async (request, response) => {
    // Mongoose Blog Model Verileri Almak
    const create = new MongooseBlogModelApi({
        header: request.body.header,
        content: request.body.content,
        author: request.body.author,
        tags: request.body.tags,
    }); //end create

    // Mongoose Blog Modelda Alınan Verileri Gönder
    try {
        // MongoDB'ye kaydet
        await create.save();

        // Başarılı durumda status(200) döndüğünde
        response.status(200).json(create);

        // Ekleme başarılı
        console.warn("Ekleme Başarılı");
        console.warn(create);
    } catch (err) {
        handleError(err, response, "MongoDB'de Ekleme Sırasında Hata Meydana geldi");
    } //end catch
}); //end create => post

/////////////////////////////////////////////////////////////////////////////////////////////
// LIST BLOG
// GET isteği ile mongodb üzerinden bütün verileri alacağız.
// http://localhost:1111
router.get("/", async (request, response) => {
    try {
        // MongoDB üzerinden get isteği attık
        const find = await MongooseBlogModelApi.find();

        // Tarihi Bizim istediğimiz şekilde yazalım.
        const formattedDateTurkish = await Promise.all(find.map(async (temp) => {
            // Görüntüleme sayısını artırma
            await temp.incrementViews();

            return {
                ...temp._doc, // Tüm blog verilerini kopyala
                dateInformation: new Date(temp.createdAt).toLocaleString("tr-TR", {
                    year: "numeric", month: "long", day: "numeric", year: "numeric", hour: "2-digit", second: "2-digit",
                }), //end createdAt
            }; //end return
        })); //end formattedDateTurkish

        // Her blog sayfasına bakıldıkça sayacçı 1 artır
        // const viewCounter = await Promise.all(
        //   find.map(async (blog) => {
        //     await blog.incrementViews(); // Görüntüleme sayısını artır
        //     return blog;
        //   }) // end map
        // ); //end viewCounter
        // Dönüş değeri

        response.status(200).json(formattedDateTurkish);

        // Listeleme başarılı
        console.log("Listeleme Başarılı");
    } catch (err) {
        handleError(err, response, "MongoDB'de Listeleme Sırasında Hata Meydana geldi");
    } //end catch
}); //end list => get

/////////////////////////////////////////////////////////////////////////////////////////////
// UPDATE BLOG
// PUT isteği ile mongodb üzerinden veri güncelleyeceğiz.
// NOT: delete ve update işlemlerinde ID kullanılır.
router.put("/:id", async (request, response) => {
    try {
        // MongoDB üzerinden id ile istek attık
        const update = await MongooseBlogModelApi.findByIdAndUpdate(// ID almak
            request.params.id, request.body, {new: true}); //end update

        // Dönüş değeri
        response.status(200).json(update);

        // Güncelleme başarılı
        console.log("Güncelleme Başarılı");
    } catch (err) {
        handleError(err, response, "MongoDB'de Güncelleme Sırasında Hata Meydana geldi");
    } //end catch
}); //end update => put

/////////////////////////////////////////////////////////////////////////////////////////////
// DELETE BLOG
// DELETE isteği ile mongodb üzerinden id ile sileceğiz.
// http://localhost:1111/1

router.delete("/:id", async (request, response) => {
    try {
        // İlgili ID'i bul
        const id = request.params.id;
        console.log(id);

        const deleteFindId = await MongooseBlogModelApi.findByIdAndDelete(id);
        console.log(deleteFindId);

        // Dönüş değeri
        response.status(200).json({message: `${id} nolu id silindi`});

        // Listeleme başarılı
        console.log("Listeleme Başarılı");
    } catch (err) {
        handleError(err, response, "MongoDB'de Silme Sırasında Hata Meydana geldi");
    } //end catch
}); //end list => get

/////////////////////////////////////////////////////////////
// EXPORT
module.exports = router;

/////////////////////////////////////////////////////////////
// POSTMAN, cURL api test araçlarından bir tanesini kullanabilirsiniz.
/*
{
    "header": "başlık",
    "content": "başlık",
    "author": "Hamit Mızrak",
    "tags": "node",
}
*/
