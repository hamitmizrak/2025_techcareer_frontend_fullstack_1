# Techcareer Frontend Full Stack- Dockerize
[GitHub Address](https://github.com/hamitmizrak/2025_techcareer_frontend_fullstack_1.git)
[Mongo Database Cloud](https://www.mongodb.com/products/platform/cloud)
[Mongo Database Download](https://www.mongodb.com/try/download/community)
[Font Awesome](https://fontawesome.com/search?ic=free)
[Google Font](https://fonts.google.com/selection/embed)
[Bootstrap](https://getbootstrap.com/)
[Box Shadow Online](https://cssgenerator.pl/en/box-shadow-generator/)
[jQuery](https://jquery.com//)
[Docker Desktop](https://docs.docker.com/desktop/setup/install/windows-install//)
---


# Programming Install
[Visual Studio Code](https://code.visualstudio.com/download)
[Git](https://git-scm.com/downloads)
[Docker](https://www.docker.com/products/docker-desktop/)

[Mongo Database Download](https://www.mongodb.com/try/download/community)
[MongoDB Localhost Shell](https://www.mongodb.com/try/download/shell)
[Mongo Database Cloud](https://www.mongodb.com/products/platform/cloud)
---


## Script run (Typescript başlat)
```sh
 docker container run -d --name mongodb-container  -p 27000:27017 \
             -e MONGO_INITDB_ROOT_USERNAME=root \
             -e MONGO_INITDB_ROOT_PASSWORD=rootroot \
             mongo

rm -rf node_modules dist

node_modules, dist yoksa kurmak için
npm run dev:setup

Eğer node_modules kuruluysa
npm run dev:start

UNUTMA: Mongodb localhost veya docker mongodb veya cloud mongo açık olması gerekiyor
```
---

## Version
```sh
code .
git -v
node -v
npm -v
tsc --version
mongosh --version
mongo
```
---

## Git
```sh
git init
git add .
git commit -m "Frontend init"
git remote add origin GITHUB_URL
git push -u origin master

git branch
git pull
git pull origin master

git add .
git commit -m "branch öncesi"
git branch
git branch frontend
git checkout frontend

git clone https://github.com/hamitmizrak/2025_techcareer_frontend_fullstack_1.git
```
---

## Visual Studio Code (VS Code) Extensions
```sh
Auto Close Tag            => Jun Han
Auto Complete Tag         => Jun Han
Auto Rename Tag           => Jun Han
Better Comments           => Aaron Bond
Bootstrap5 Quick Snippets =>  Anbuselvan Rocky
Css Snippet               => Joy-yu
Dev Containers            => Microsoft
Docker                    => Microsoft
Docker Compsose            => Microsoft
ES7+ React/Redux/React-Native snippets => dsznajder
Git Graph                   => mhutchie
Live Server                => Ritwick Dey
Material Icon Theme        => Philipp Kief
Prettier - Code Formatter  => Prettier
Prettier ESLint            => Rebecca Vest
Rainbow Brackets           => MHammed Talhaouy
```
---

## Docker
```sh
Turn Windows features on or off => Hyper-V, Virtual Machine Paltform, Windows Hypervisor, Windows Subsystem for Linux
Microsoft Store => Search => wsl2 => Ubuntu 22.04.5 LTS kuralım.
Dikkat: Eğer Ubuntu 22.04.5 kuramazsanız, Turn Windows features bilgileri kapat sonra tekrar aç ve bilgisayarın restart 
```
---


## Mongo Localhost
```sh
port:27017
```
---


## Teknoloji İsimleri
```sh
HTML5
CSS3
BOOTSTRAP5
JS
TYPESCRIPT
EJS
NODE JS
MONGODB
EXPRESS JS
GIT/GITHUB
DOCKER
REST API
NGINX
CI/CD
```
---

## Teknoloji İçerikleri
```sh
nodemon
mongoose
body-parser
compression
cookie-parser
cors
dotenv
ejs
express
express-rate-limit
helmet
mongodb
mongoose
morgan
swagger-jsdoc
swagger-ui-express
typescript
winston
```
---

## VSCode (settings.json)
```sh

{
    "workbench.colorTheme": "Default Dark+",
    "editor.mouseWheelZoom": true,
    "editor.fontSize": 16,
    "workbench.iconTheme": "material-icon-theme",
    "files.autoSave": "afterDelay",
    "editor.cursorStyle": "line-thin",
    "terminal.integrated.mouseWheelZoom": true,
    "emmet.includeLanguages": {
        "javascript": "html",
        "javascriptreact": "html",
        "typescriptreact": "html"
    },
    "emmet.triggerExpansionOnTab": true,
    "editor.quickSuggestions": {
        "other": true,
        "comments": false,
        "strings": true
    },
```
---

## NPM
```sh
npm init
npm init -y
```
---

## NPM INIT
```sh
npm init
package name:
1-) herşeyi küçük harfle yaz
2-) boşluk kullanma bunun yerine (- veya _ kullan)
3-) Türkçe karakterlerden (üğşçö) kullanma

package name: offline_node_blog
version: v1.0.0 (Semantic version)
description: Html5,css3,bootstrap5, js, es, nodejs, jquery, express,nodemon
entry point: index.js
test command: start
git repository: https://github.com/hamitmizrak/2025_techcareer_frontend_fullstack_1.git
keywords: Html5,css3,bootstrap5, js, es, ejs, nodejs, nodemon, jquery, express
author: Yüksek Bilgisayar Mühendisi Hamit Mızrak
license: ISC
Is this OK? yes
```
---

## NPM INIT -Y
```sh
npm init -y
Default
{
  "name": "2025_techcareer_frontend_fullstack_1",
  "version": "1.0.0",
  "description": "[GitHub Address](https://github.com/hamitmizrak/2025_techcareer_frontend_fullstack_1.git)\r [Mongo Database]()\r ---",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC"
}
```
---

## package.json(Son Hali)
```sh
{
  "name": "2025_techcareer_frontend_fullstack_1",
  "version": "1.0.0",
  "description": "[GitHub Address](https://github.com/hamitmizrak/2025_techcareer_frontend_fullstack_1.git)\r [Mongo Database]()\r ---",
  "main": "./dist/server.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1",
    "start": "node  ./dist/server.js",
    "server:start": "lite-server",
    "build_watch": "tsc -w --pretty",
    "nodemon_app_watch": "nodemon --watch src --watch dist ./dist/server.js",
    "dev:seri": "npm-run-all --serial build_watch nodemon_app_watch",
    "dev:parallel": "concurrently -k \"npm run build_watch\" \"npm run nodemon_app_watch\" \"npm run server:start\""
  },
  "keywords": [],
  "author": "MSc Computer Engineer Hamit Mızrak",
  "license": "ISC",
  
  "dependencies": {
    "2025_techcareer_frontend_fullstack_1": "file:",
    "body-parser": "^1.20.3",
    "compression": "^1.7.5",
    "cookie-parser": "^1.4.7",
    "cors": "^2.8.5",
    "csurf": "^1.10.0",
    "ejs": "^3.1.10",
    "express": "^4.21.2",
    "express-rate-limit": "^7.5.0",
    "helmet": "^8.0.0",
    "mongodb": "^6.12.0",
    "mongoose": "^8.9.5",
    "morgan": "^1.10.0",
    "swagger-jsdoc": "^6.2.8",
    "swagger-ui-express": "^5.0.1",
    "winston": "^3.17.0"
  },
  "devDependencies": {
    "@types/node": "^22.12.0",
    "concurrently": "^9.1.2",
    "dotenv": "^16.4.7",
    "eslint": "^9.19.0",
    "eslint-config-prettier": "^10.0.1",
    "eslint-plugin-prettier": "^5.2.3",
    "lite-server": "^2.6.1",
    "nodemon": "^3.1.9",
    "npm-run-all": "^4.1.5",
    "prettier": "^3.4.2",
    "ts-node": "^10.9.2",
    "typescript": "^5.7.3"
  }
}
```
---

## npm delete
```sh
rm -rf node_modules
ls -al
npm install
```
---

## NPM Sıklıkla Kullanılan Komutlar-1
```sh
npm search  express
npm install express
npm install express@4.16.1
npm install express            # Local
npm install express --save     # Local
npm install express --save-dev # dev-dependencies
npm install express -D         # dev-dependencies
npm install express -g         # Global

npm install
npm i

npm update
npm update express

npm uninstall express
npm uninstall express@4.16.1
```
---

## NPM Sıklıkla Kullanılan Komutlar-2
```sh
npm list
npm ls
npm list -g              # Globalde ben ne paketleri yüklemişim
npm list -g --depth=0    # Globalde sadece ana branch'e yüklediklerimi bana göster

npm root                 # Local projemizdeli node_modules kütüphanesini göstersin
npm root -g              # GLocal projemizdeli node_modules kütüphanesini göstersin
Global node_modules: C:\Users\Hamit-Mizrak\AppData\Roaming\npm\node_modules
```
---

## NPM Sıklıkla Kullanılan Komutlar-3
```sh
npm update              # package.json içindeki dosyalardaki paketleri günceller
npm outdated            # Projede eskiyen veya güncellenmesi gereken paketleride gösterir
npm audit               # Bağımlılıkların güvenlik analizleri rapor eder
npm audit fix           # Belirlenen güvenlik açıklarını otomatik olarak düzeltir.
npm dedupe              # Bağımlılıkların tekrarlanan kopyalarını temizler.
npm rebuild             # Tüm bağımlıkları yeniden derleme

npm info <paket-adi>    #  Belirli paketin detaylı bilgileri gösterir
npm cache clean --force # npm önbelleğini temizler
npm cache verify        # Cache dorğulaması
npm config list         # (Npm yapılandırılmalarını görmek içindir)
npm config set <key> <value> #  npm config set registry https://registry.npmjs.org/  )

# https://www.npmjs.com/
npm login                # npm hesabınıza giriş içindir)
npm pack                 # Node.js paketini .tgz sıkıştırma formatında ekliyor
npm publish              # ilgili pkaeti npm gönder
```
---

## Npm Package Install (Local --save)
```sh
npm list
npm root
npm list -g
npm root -g

# https://www.npmjs.com/
npm list
npm i body-parser compression cookie-parser cors csurf  ejs  express express-rate-limit helmet mongodb mongoose morgan  swagger-jsdoc swagger-ui-express  winston --save
```
---

## Npm Package Install (Local --save-dev)
```sh
npm list
npm root
npm list -g
npm root -g

# https://www.npmjs.com/
npm i nodemon typescript -D
npm i nodemon typescript --save-dev
npm install lite-server  --save-dev
npm install  @types/node dotenv concurrently  ts-node --save-dev
npm install  eslint eslint-config-prettier npm-run-all prettier --save-dev
npm install  eslint-plugin-prettier  npm-run-all --save-dev

npm install
npm dedupe  # Bağımlılıkların tekrarlanan kopyalarını temizler.
npm list
```
---

## Npm Package Install (Global)
```sh
npm list
npm root

npm list -g
npm root -g

npm i body-parser compression cors csurf cookie-parser ejs  express express-rate-limit helmet mongodb morgan mongoose swagger-jsdoc swagger-ui-express prettier ts-node   winston lite-server  @types/node dotenv concurrently eslint eslint-config-prettier eslint-plugin-prettier npm-run-all --g
npm dedupe  # Bağımlılıkların tekrarlanan kopyalarını temizler.
npm list -g
```
---

## Typescript kurulum
```sh
npm install typescript -g          # global
npm install typescript --save-dev  # local
npm install typescript -D          # local

tsconfig dosyası için aşağıdaki komutu çalıştır:
tsc --init --locale tr
tsc --init

tsc
tsc -w (Sistem kendi compiler yapıyor yazdıklarımı kendi ekliyor.)
```
---

## Typescript (tsconfig.json )
```sh
/* Bu dosya hakkında daha fazla bilgi için https://aka.ms/tsconfig sayfasını ziyaret edin */
{
  "compilerOptions": {
    "target": "ES6",
    "module": "commonjs",
    "rootDir": "./src",
    "outDir": "./dist",
    "strict": true,
    "esModuleInterop": true,
    "skipLibCheck": true,
    "forceConsistentCasingInFileNames": true
  },
  "include": ["src/**/*"],
  "exclude": ["node_modules"]
}
```
---

## script => package.json typescript
```sh
  "scripts": {
    "build_watch": "tsc -w --pretty",
  },
```
---

## Nodemon kurulum
```sh
npm install  nodemon -g
npm install  nodemon -D
npm install  nodemon --save-dev
```
---

## nodemon.json (Nodemon.json)
```sh
{
  "watch": ["src", "dist"],
  "ext": "ts,js",
  "exec": "node ./dist/server.js"
}
```
---

## script => package.json nodemon-1
```sh
  "scripts": {
     "test": "echo \"Error: no test specified\" && exit 1",
  },
```
---

## package.json içinden Script yazmak-2
```sh
   "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1",
    "start": "node  ./dist/server.js",
    "server:start": "lite-server",
    "build_watch": "tsc -w --pretty",
    "nodemon_app_watch": "nodemon --watch src --watch dist ./dist/server.js",
    "dev:seri": "npm-run-all --serial build_watch nodemon_app_watch",
    "dev:parallel": "concurrently -k \"npm run build_watch\" \"npm run nodemon_app_watch\" \"npm run server:start\""
  },
```
---

## package.json içinden Script yazmak-3
```sh
  "scripts": {
    "start_app": "ts-node src/app.ts",
    "start_index": "ts-node src/app.ts",
    "dev_app": "nodemon src/app.ts",
    "dev_index": "nodemon src/index.ts",
    "build": "tsc",
    "build_watch": "tsc -w",
    "start_app:app": "node dist/app.js",
    "start_index:index": "node dist/index.js",
    "nodemon_app": "nodemon ./dist/app.js",
    "nodemon_app_watch": "nodemon --watch src --watch dist ./dist/app.js",
    "nodemon_index": "nodemon ./dist/index.js",
    "nodemon_index_watch": "nodemon --watch src --watch dist ./dist/index.js",
    "asenkron_app": "concurrently \"npm run build_watch\" \"npm run nodemon_app_watch\"",
    "asenkron_index": "concurrently \"npm run build_watch\" \"npm run nodemon_index_watch\"",
    "senkron:app": "npm-run-all --parallel  build_watch nodemon_app_watch",
    "senkron:index": "npm-run-all --parallel  build_watch nodemon_index_watch"
  }
```
---

## Node JS Nedir ?
```sh
NodeJS :
- Chrome V8 Javascript motorunu kullanan, açık kaynak kodlu,
- hızlı ve etkili bir platformdur.
- Normalde javascript web-side olarak çalışıyordu ancak node js ile
- Server Side(Server[Sunucu]) tarafından çalışan bir Javascript framework oldu.
- Ryan Dahl ve Isaac Z. Schluter tarafından 2009 yılında geliştirmeye başlamış.
```
---

## Node JS Özellikleri
```sh
Javascript betik dilimiz senkron(Aynı anda sadece bir iş yapan) çalışır.

Event-Driven (Olay odaklıdır),Non-Blocking I/O Modeli (Engelsiz Input(Girdi), Output(Çıktı)):
- Bu özellikler amaçı JS özelliğinden olan senkron özelliğini, asenkron(Aynı anda birden fazla process) özelliğe taşımaktır.
- Single Threaded(Tek iş parçasıcı) mimarisinde sahiptir.
- Npm'i otomatik olarak sisteme yükler.
- Full stack(frontend,backend) aynı dil(JS) üzerinden projemizi geliştirme imkanını sağlar.
- API ile çalışmamıza olanak sağlar.
- Gerçek zamanlı uygulamalar(Message: Socket) yüksek performans sağlar.
- Express(Middleware: orta katman), node js için popüler bir web geliştirme platformudur.
- Veri tabanı erişimlerinde MongoDB, mysql, postgresql
- Routing(yönlendirme)
```
---

## Node JS Olay odaklı(event-driven), engelsiz(non-blocking) I/O Modeli, Event Loop
```sh
- Bu model amacı performans metriğini artırmak içindir
- Olay odaklı programlamada, bir programın olaylar(event) tepki verme şeklidir.
- Uzun süren işlemlerde(Ağ etkileşimi) bazen bekleyebiliyoruz. Biz bunu asenkron olarak işlersek beklemeden diğer işlemlerin sürdürülebilirliğini artırmış oluruz.
- Yani işlemlerin tamamlanmasını beklemeden diğer tetiklenen(trigger) olaylara yanıt vermedir.
- Aynı anda  birden fazla işlem(process) çalışır ve bloke olmadan devam eder.
- Event-Loop(Olay döngüsü): uygulamaları dinliyor ve işlem bekleyenleri işliyor.
- Callback function: programalada callback functionlar olay odaklı programlanın bir parçasıdır.
- Olay odaklı bu model ölçeklenebilinirliliğini sağlar ve eş zamanlı çalışmayı sağlar
```
---

## Node JS Tarihçesi
```sh
2009 geliştirilmeye başlandı
2010 Non-blocking (Engelsiz)
Windows
LTS(Long Term Support: Uzaun vadeli destek)
```
---

##  Node JS Framework
```sh
- Express.js (En popüler olanı) hafiftir.
- Koa.js (ES6 destekliyor) daha az kod
- Nest.js (TS ile geliştirildi)
- Meteor.js (Full- stack) JS uygulamaları geliştirmek için uygundur.
- Sails.js (MVC) mimarisine dayanır.
- Hapi.js (Büyük ölçekli projeler için uygundur)
```
---

## Node JS Framework Express
```sh
- node js için en popüler hafif,esnek, bir web geliştirme platformudur.
- Middleware: orta katman için uygundur.
- Esnektir,
- Hızlıdır (Minimalist)
- SPA uygulamalarında(Single Page Application) idealdir SPA(React,Angular)
- Http istekleri (GET,POST,PUT, DELETE) için birçok özellikler sağlar.
- Hızlı prototype oluşturmada, RESTful API geliştirmede
- Yönlendirme (Routing): Yönlendirme mekanizması vardır.
http://localhost:1111/admin
http://localhost:1111/blog
```
---

## Npm Nedir
```sh
`winston` logger'ı, uygulamanızda hata ve bilgi loglarını düzgün bir şekilde yönetmek için kullanılır. 
Bu kodu genellikle uygulamanızın **`index.js`** veya **`server.js`** gibi ana giriş dosyasına eklemeniz gerekir. 
Logger, uygulamanızın başlangıcından itibaren tüm hataları ve bilgileri loglar.

### 1. **Kurulum:**
Öncelikle `winston` kütüphanesini yüklemeniz gerekiyor. Terminalde şu komutu çalıştırarak yükleyebilirsiniz:
npm install winston
```

## Npm Nedir
```sh
Npm(Node Package Management): Paket yönetim sistemidir.
Npm bize hızlı kodlar yazmamız için gereken alt yapıyı sunar.
```
---

## EJS
```sh
**EJS (Embedded JavaScript)**, Node.js tabanlı uygulamalarda dinamik HTML içerik oluşturmak için kullanılan bir **şablon (template) motoru**dur.

EJS ile, HTML sayfalarının içine JavaScript kodlarını gömerek dinamik içerik üretebilir ve sayfayı istemciye sunabilirsiniz.

### EJS'in Temel Özellikleri:
1. **JavaScript ile Entegre**: EJS, HTML içine JavaScript kodu gömmeye izin verir. 
Bu, veritabanından gelen veya başka bir kaynaktan alınan verileri HTML içerisine kolayca entegre etmenizi sağlar.

   Örneğin, bir kullanıcı listesini HTML şablonuna eklemek:
   ```ejs
   <ul>
     <% users.forEach(function(user) { %>
       <li><%= user.name %></li>
     <% }); %>
   </ul>
```

- `<% %>`: JavaScript kodu çalıştırmak için kullanılır (örneğin, döngüler, koşullu ifadeler).

- `<%= %>`: Değişken veya ifade değerini eklemek için kullanılır (HTML çıktısına veri eklemek).

2. **Veri Bağlama (Data Binding)**: Sunucuda işlenen verileri, HTML sayfalarına kolayca ekleyebilirsiniz. 
Node.js tarafında oluşturulan veriler, EJS şablonuna gönderilir ve burada dinamik içerik oluşturulabilir.

   Örneğin, bir Express.js route'unda:

   ```javascript
   app.get("/users", (req, res) => {
     const users = [{ name: "Hamit" }, { name: "Hulusi" }];
     res.render("users", { users: users });
   });
   ```

   Bu veriler, EJS şablonunda yukarıda gösterilen şekilde kullanılarak liste halinde görüntülenir.

3. **Esnek ve Hafif**: EJS, birçok şablon motoruna göre oldukça esnektir ve kolayca öğrenilebilir. 
HTML yapısının içerisine eklenen JavaScript kodu ile sadece gerekli yerlerde dinamik veri gösterimi yapılabilir.

4. **Koşullu İfadeler ve Döngüler**: EJS, if-else blokları veya döngü yapılarını HTML ile birlikte kullanmanıza olanak tanır, 
bu da şablonların esnekliğini artırır.

   Koşullu ifade örneği:

   ```ejs
   <% if (user.isAdmin) { %>
     <p>Admin kullanıcı</p>
   <% } else { %>
     <p>Normal kullanıcı</p>
   <% } %>
   ```

5. **Layout Desteği**: EJS, şablonlar arasında parçalama ve yeniden kullanma işlemlerini destekler. 
Layout'lar oluşturup, çeşitli şablonları bu ana yapıya dahil edebilirsiniz.

### EJS Nasıl Kullanılır?
EJS'yi Node.js projenize şu şekilde dahil edebilirsiniz:

1. **EJS'yi Projeye Eklemek**:

   ```bash
   npm install ejs
   ```

2. **Express.js ile Kullanımı**:
   Express.js uygulamasında EJS şablon motorunu şu şekilde ayarlayabilirsiniz:

   ```javascript
   const express = require("express");
   const app = express();

   app.set("view engine", "ejs");

   app.get("/", (req, res) => {
     res.render("index", { title: "Ana Sayfa" });
   });

   app.listen(3000);
   ```

3. **EJS Dosyası Oluşturma**:
   `views/index.ejs` dosyasında şablon yapısı oluşturabilirsiniz:
   ```ejs
   <h1><%= title %></h1>
   <p>Bu, dinamik olarak oluşturulan bir sayfadır.</p>
   ```

### EJS Kullanmanın Avantajları:

- **Basit ve Öğrenmesi Kolay**: HTML ile iç içe geçmiş JavaScript kodu, özellikle önceden HTML ve JavaScript bilen geliştiriciler için kullanımı kolaydır.

- **Hafif ve Performanslı**: Fazla ek kütüphanelere ihtiyaç duymadan, doğrudan HTML içine dinamik içerik eklemek mümkün olur.

- **Node.js ile Entegre**: Express.js gibi popüler Node.js çerçeveleriyle mükemmel bir şekilde entegre olabilir.

## EJS, basit dinamik HTML içerik oluşturma ihtiyacı olan projelerde oldukça kullanışlıdır ve Node.js uygulamalarıyla yaygın bir şekilde kullanılır.


## Mongo DB
```sh
npm install mongodb
npm install -g mongodb

username:  hamitmizrak
password:  cNrT66n13oQYtkps

mongodb+srv://<your-name>:<your-password>@offlinenodejscluster.l3itd.mongodb.net/?retryWrites=true&w=majority&appName=OfflineNodejsCluster
```
---

## MongoDB datase (Shelling)
```sh 
# Terminalde
mongosh veya mongo
use blogDB  # blogDB adında bir veritabanı oluştur ve ona geç

db.posts.insertOne({
    header: "İlk Blog Yazım",
    content: "Bu benim ilk blog yazımın içeriğidir.",
    author: "Hamit Mızrak.",
    tags: "java,jsp",
})
```

## MONGO İÇİN VERİ GÜVENLİĞİ (dotenv)
```sh
MongoDB kullanıcı adı ve şifresini doğrudan yazılmaz.
Hassas verileri saklamak için .env dosyası üzerinden ilerlemeliyiz.

DİKKATT: .env root dizinde olamlıdır.
npm install dotenv

.env
MONGO_USERNAME=hamitmizrak
MONGO_PASSWORD=<your-password>

index.js
require('dotenv').config();

// Localhostta MongoDB yüklüyse)
const databaseCloudUrlDotEnv =
`mongodb+srv://${process.env.MONGO_USERNAME}:${process.env.MONGO_PASSWORD}@offlinenodejscluster.l3itd.mongodb.net/?retryWrites=true&w=majority&appName=OfflineNodejsCluster`;
```
---

## Morgan Log
```sh
npm install morgan
npm install -g morgan

**Morgan**; Node.js uygulamalarında HTTP isteklerini loglamak için kullanılan bir **middleware** kütüphanesidir.

Express.js ile birlikte çalışarak her bir gelen HTTP isteği ve sunucudan dönen yanıtı loglayarak, uygulama geliştiricisinin sunucu işlemlerini takip etmesini sağlar.

Bu loglar sayesinde, isteklerin durumu, yanıt kodları, yanıt süreleri gibi bilgiler kolayca izlenebilir ve hata ayıklama süreci hızlanır.

### Morgan'ın Temel Özellikleri:
1. **HTTP İsteklerini İzleme**: Gelen istekler (GET, POST, PUT, DELETE vb.) hakkında bilgi toplar ve bunu geliştiriciye log olarak sunar.

2. **Log Formatları**: Morgan, isteklere ait bilgileri çeşitli formatlarda loglayabilir (`combined`, `dev`, `short`, `common` gibi).

3. **Geliştirme ve Üretim Ortamlarında Kullanım**: `dev` gibi kısa ve öz log formatları, geliştirme sırasında hızlı bilgi sağlar. 
`combined` gibi daha ayrıntılı formatlar ise üretim ortamında detaylı takip için uygundur.

4. **Logların Dosyaya Yazdırılması**: Morgan logları, konsol yerine bir dosyaya yönlendirilebilir, böylece uygulamanın işlem geçmişi saklanabilir.

5. **Kolay Entegrasyon**: Express.js uygulamalarına sadece birkaç satır kodla eklenir ve kullanımı basittir.

### Kullanım Senaryoları:
- **Hata Ayıklama**: HTTP isteklerinin durum kodlarını ve yanıt sürelerini izleyerek performans sorunlarını ve hataları tespit etmek.

- **Geliştirme Süreci**: Uygulamanın nasıl çalıştığını izlemek ve istek yanıt döngüsünü takip etmek.

- **Log Tutma**: Üretim ortamında kullanıcı hareketlerini ve sunucunun yanıt verme sürecini kaydetmek.
```

### Örnek Kullanım:
```sh
const express = require('express');
const morgan = require('morgan');
const app = express();

app.use(morgan('combined')); // Detaylı log formatı

app.get('/', (req, res) => {
  res.send('Hello World');
});

app.listen(3000, () => {
  console.log('Server is running on port 3000');
});


Bu kod ile gelen her istek, Morgan tarafından loglanır ve geliştiriciye daha fazla kontrol ve görünürlük sağlar.

### Neden Morgan Kullanılır?
- **Kolay hata ayıklama**: Sunucu loglarını izleyerek, uygulamada oluşan hataları tespit etmek kolaylaşır.

- **Performans izleme**: Yanıt sürelerini gözlemleyerek performans sorunlarını belirleme.

- **Uygulama güvenliği**: Kötü niyetli istekleri veya anormal davranışları loglar üzerinden tespit etmek mümkündür.

Morgan, Express.js gibi popüler Node.js çerçeveleri ile loglama işlemlerini basit ve verimli hale getirir.
```
---

### Winston
### 1. **Install**
npm install winston

### 2. **index.js veya server.js Dosyasına Ekleme:**
Logger kodunu projenizin başlangıç dosyasına ekleyin. Genellikle bu dosya `index.js` veya `server.js` olur. 
Aşağıdaki örnekte, `winston` logger kodu, `index.js` dosyasına eklenmiştir:

```javascript => index.js
const express = require("express");
const mongoose = require("mongoose");
const winston = require("winston"); // Winston logger'ı ekle

const app = express();

// Winston logger yapılandırması
const logger = winston.createLogger({
  level: "info",
  format: winston.format.json(),
  transports: [
    new winston.transports.File({
      filename: "winston_error.log",
      level: "error",
    }),
    new winston.transports.File({ filename: "winston_combined.log" }),
  ],
});

if (process.env.NODE_ENV !== "production") {
  logger.add(
    new winston.transports.Console({
      format: winston.format.simple(),
    })
  );
}
// Logger kullanımı
logger.info("Sunucu başlatılıyor...");

// MongoDB bağlantısı örneği
mongoose
  .connect("mongodb://localhost:27017/mydb", {
    useNewUrlParser: true,
    useUnifiedTopology: true,
  })
  .then(() => {
    logger.info("MongoDB bağlantısı başarılı.");
  })
  .catch((err) => {
    logger.error("MongoDB bağlantı hatası:", err);
  });

// Sunucu başlatma
const port = 3000;
app.listen(port, () => {
  logger.info(`Sunucu ${port} portunda çalışıyor.`);
});
```

### 3. **Winston Logger'ın Kullanımı:**
Yukarıdaki kodda `logger.info()` ve `logger.error()` kullanarak bilgi ve hata loglarını yönetebilirsiniz. 
Örneğin:
- `logger.info("Sunucu başlatıldı")`: Bilgi mesajlarını loglar.
- `logger.error("Bir hata oluştu")`: Hata mesajlarını loglar.
Bu loglar:
- `error.log`: Sadece hata seviyesindeki logları içerir.
- `combined.log`: Tüm logları içerir.

### 4. **Log Dosyalarını Kontrol Etme:**
```sh
- `error.log` ve `combined.log` dosyaları, çalıştırdığınız dizinde otomatik olarak oluşturulur.
- Uygulamanız çalışırken bu dosyalara logların yazıldığını göreceksiniz.

Logger'ı hatalar, bilgi mesajları veya özel olaylar için kullanabilirsiniz.
```
---

## compression
```sh
compression:
npm install compression

Gzip : Verilerin sıkıştırılmasıyla performansı artırmak
ve ağ üzerinde sayfaya daha hızlı erişimi sağlar
Tüm Http cevaplarını sıkıştırarak gönderilmesini sağlar.
const compression = require('compression');
app.use(compression);
```
---

## Rate Limited
```sh
npm install express-rate-limit
 Rate Limited (İstek Sınırlamasını):
 DDoS saldırlarına karşı korumayı sağlamak ve sistem performansını artırmak içindir.
 Gelen istekleri sınırlayabiliriz.

// Her 15 dakika içinde en fazla 100 istek atılabilinir.
const rateLimit=require('express-rate-limit');
const limiter = rateLimit({
    windowMs: 15 * 60 * 1000, // 15 dakika
    max: 100, // buy süre zarfında en fazla bu kadar isterk atabilirsiniz.
    message: "İstek sayısı fazla yapıldı, lütfen biraz sonra tekrar deneyiniz"
});

app.use("/api/", limiter)
```
---

## CORS
```sh
CORS
npm install cors
CORS (Cross-Origin Resource Sharing)
Eğer API'niz başka portlardan da erişim sağlanacaksa bunu açmamız gerekiyor.

const cors= require('cors');
app.use(cors());
```
---

## CSRF Koruması (Cross-Site Request Forgery)
```sh
npm install csurf
const csrf = require("csurf");
const csrfProtection = csrf({ cookie: true });

app.use(csrfProtection);

app.get("/form", csrfProtection, (req, res) => {
  // CSRF token'ı form gönderiminde kullanmanız gerekecek
  res.render("send", { csrfToken: req.csrfToken() });
});
```
---

## HELMET
```sh
Helmet: Http başlıklarını güvenli hale getirir ve yaygın saldırı vektörlerini azaltır

npm install helmet
const helmet = require("helmet");
app.use(helmet());
```
---

## Swagger
```sh
## SWAGGER
// http://localhost:1111/api-docs

API'lerinizi daha iyi yönetmek ve test etmek için swagger kullanabilirsiniz.
npm install swagger-jsdoc swagger-ui-express

const swaggerJsDoc = require('swagger-jsdoc');
const swaggerUi = require('swagger-ui-express');

Swagger ayarları
const swaggerOptions = {
  swaggerDefinition: {
    info: {
      title: "Blog API",
      description: "Blog API yönetimi için dökümantasyon",
      contact: {
        name: "Developer"
      },
      servers: ["http://localhost:5555"]
    }
  },
  apis: ["index.js", "./routes/*.js"], // API tanımları için dosyaları belirtin
};

const swaggerDocs = swaggerJsDoc(swaggerOptions);
app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerDocs));


// Authorize Geliyor
const swaggerOptions = {
    swaggerDefinition: {
      info: {
        title: "Blog API",
        description: "Blog API yönetimi için dökümantasyon",
        contact: {
          name: "Developer"
        },
        servers: ["http://localhost:1111"]
      }
    },
    apis: ["index.js", "./routes/blog_api_routes.js"], // API tanımları için dosyaları belirtin
    //apis: ["index.js", "./routes/*.js"], // API tanımları için dosyaları belirtin
  };
*/
const swaggerOptions = {
  swaggerDefinition: {
    openapi: "3.0.0",
    info: {
      title: "Blog API",
      description:
        "Blog API yönetimi için dökümantasyon Author: Yüksek Bilgisayar Mühendisi Hamit Mızrak",
        version: "1.0.0",
      contact: {
        name: "Developer",
      },
      servers: [
        {
            url:"http://localhost:1111",
        },
    ],
    // Bearer authentication istemiyorsak securtiy kapat
    },
  },
  apis: ["index.js", "./routes/blog_api_routes.js"], // API tanımları için dosyaları belirtin
  //apis: ["index.js", "./routes/*.js"], // API tanımları için dosyaları belirtin
};

/*
Dikkat: No operations defined in spec! Swagger dokümasntasyonları API rotalarını işlemleri doğru yazdık
API dosyamızın blog_api.routes.js , Swagger taglarini (JSDoc) olmadığı için

LIST
/**
 * @swagger
 * /blog:
 *   get:
 *     summary: Get all blogs
 *     description: Retrieves a list of all blogs
 *     responses:
 *       200:
 *         description: Successfully retrieved list of blogs
 */

POST
/*
 * @swagger
 * /blog:
 *   post:
 *     summary: Create a new blog
 *     description: Adds a new blog to the collection
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               header:
 *                 type: string
 *               content:
 *                 type: string
 *               author:
 *                 type: string
 *               tags:
 *                 type: string
 *     responses:
 *       201:
 *         description: Successfully created new blog
 */

/**
 * @swagger
 * /blog/{id}:
 *   put:
 *     summary: Bir blog yazısını güncelle
 *     description: Verilen id ile bir blog yazısını MongoDB üzerinde günceller.
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         description: Güncellenecek blog yazısının id'si.
 *         schema:
 *           type: string
 *       - in: body
 *         name: Blog
 *         description: Güncellenecek blog verileri.
 *         schema:
 *           type: object
 *           required:
 *             - header
 *             - content
 *             - author
 *             - tags
 *           properties:
 *             header:
 *               type: string
 *               example: "Yeni Blog Başlığı"
 *             content:
 *               type: string
 *               example: "Bu blog yazısının içeriği güncellenmiştir."
 *             author:
 *               type: string
 *               example: "Hamit Mızrak"
 *             tags:
 *               type: string
 *               example: "nodejs, mongodb, update"
 *     responses:
 *       200:
 *         description: Güncellenmiş blog verisi döndürülür.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *       400:
 *         description: Güncelleme sırasında hata oluştu.
 */

 /**
 * @swagger
 * /blog/{id}:
 *   delete:
 *     summary: Bir blog yazısını sil
 *     description: Verilen id ile bir blog yazısını MongoDB üzerinden siler.
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         description: Silinecek blog yazısının id'si.
 *         schema:
 *           type: string
 *     responses:
 *       200:
 *         description: Silme işlemi başarılı olduğunda mesaj döner.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: "1 nolu id silindi"
 *       400:
 *         description: Silme işlemi sırasında hata oluştu.
 */

const swaggerDocs = swaggerJsDoc(swaggerOptions);
// http://localhost:1111/api-docs
app.use("/api-docs", swaggerUi.serve, swaggerUi.setup(swaggerDocs));
```
---

## Konu
```sh
```
---
