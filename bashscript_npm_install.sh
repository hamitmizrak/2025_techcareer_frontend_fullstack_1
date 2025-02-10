#!/bin/bash

# Shebang (#!/): Betiğin Bash kabuğu ile çalışacağını gösterir.
# bin/bash: names
# İşletim sistemine Bash betiğinin çalışacağını söyler

echo -e "\e[34m Kurulumlar\e[0m"

# User Variables
INFORMATION="Bilgi"
NPM_SAVE="Npm Save Loading..."
NPM_SAVE_DEV="Npm Save Dev Loading..."
NPM_GLOBAL="Npm Global Loading..."
PACKAGE="Package Common File"
NPM_UPDATE="Npm Update"
NPM_COMPILER="Npm Compiler"
TYPESCRIPT="Typescript Install"
PACKAGE_JSON="package.json"
SERVER_START="server start lite-server"
MONGO_ENV="Mongo ENV"
MONGODOCKER="Mongo Docker Kurulumu"

###################################################
# Color
# red=$(tput setaf 1)
# green=$(tput setaf 2)
# yellow=$(tput setaf 3)
# blue=$(tput setaf 4)
# magenta=$(tput setaf 5)
# cyan=$(tput setaf 6)
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

###################################################
# ÖNEMLİ NOT: eğer windows üzerinden çalıştırıyorsanız sudo tanımayacaktır.
# ÖNEMLİ NOT: nginx eğer browserda istediğiniz sonuç çıkmazsa browserin cache belleğini temizleyiniz. yoksa nginx'in kendi sayfasını görürüsünüz.
#####################################################################################################
#####################################################################################################
# Bashscriptlere İzin Vermemiz
chmod +x bashscript_countdown.sh
ls -al
code .

#####################################################################################################
#####################################################################################################
# file_mvc (Install)
file_mvc() {
    # Geriye Sayım
    ./bashscript_countdown.sh

    echo -e "\n\e[36m\n###### MVC için dosya yapıları ######\e[0m"
    echo -e "\e[33mMVC için dosya yapıları yüklemek ister misiniz? [e/h]\e[0m"
    # read -p "" mvc  # Kullanıcı girişini devre dışı bırak
    mvc="h"          # Otomatik olarak evet değerini ata

    if [[ "$mvc" == "e" || "$mvc" == "E" ]]; then
        echo -e "\e[32mMVC için dosya yapıları...\e[0m"

        # Geriye Sayım
        ./bashscript_countdown.sh

        # Log klasörü yoksa oluştur
        if [ ! -d "logs" ]; then
            mkdir logs
            echo "logs klasörü oluşturuldu."
        else
            echo "logs klasörü zaten mevcut."
        fi

        # pictures klasörü yoksa oluştur
        if [ ! -d "pictures" ]; then
            mkdir pictures
            echo "pictures klasörü oluşturuldu."
        else
            echo "pictures klasörü zaten mevcut."
        fi

        # models klasörü yoksa oluştur
        if [ ! -d "models" ]; then
            mkdir models
            echo "models klasörü oluşturuldu."
        else
            echo "models klasörü zaten mevcut."
        fi

        # public klasörü yoksa oluştur
        if [ ! -d "public" ]; then
            mkdir -p public/admin/js
            mkdir -p public/admin/css
            echo "public klasörü oluşturuldu."
        else
            echo "public klasörü zaten mevcut."
        fi

        # routes klasörü yoksa oluştur
        if [ ! -d "routes" ]; then
            mkdir routes
            echo "routes klasörü oluşturuldu."
        else
            echo "routes klasörü zaten mevcut."
        fi

        # views klasörü yoksa oluştur
        if [ ! -d "views" ]; then
            mkdir views
            echo "views klasörü oluşturuldu."
        else
            echo "views klasörü zaten mevcut."
        fi
    else
        echo -e "\e[31mNpm Save Yüklenmeye Başlanmadı ....\e[0m"
    fi        
}

# Fonksiyonu çalıştır
file_mvc

#####################################################################################################
#####################################################################################################
# Install
create_empty_files_if_not_exists() {
    # Geriye Say
    ./bashscript_countdown.sh    

    echo -e "\e[36m\n###### ${PACKAGE} ######  \e[0m"
    echo -e "\e[33mGenel Dosyaları Yüklemek İster misiniz ? e/h\e[0m"
    # read -p "" packageResult  # Kullanıcı girişini devre dışı bırak
    packageResult="h"          # Otomatik olarak evet değerini ata
    if [[ $packageResult == "e" || $packageResult == "E" ]]; then
        echo -e "\e[32mpackage Yüklenmeye başlandı ...\e[0m"

        # Geriye Say
        ./bashscript_countdown.sh    
        # Parametre olarak gelen dosyalar üzerinde işlem yap
        for file in "$@"; do
            if [ ! -f "$file" ]; then
                echo "$file dosyası oluşturuluyor..."
                touch "$file"
                echo "${YELLOW} $file başarıyla oluşturuldu.\n"
            else
                echo -e "$file zaten mevcut, oluşturulmadı.\n"
            fi
        done
    else
        echo -e "${RED}package Yüklenmeye Başlanmadı ....\e[0m"
    fi
}

# Fonksiyon çağrısı
# Örnek olarak tüm dosyalar için çağrı
create_empty_files_if_not_exists Dockerfile docker-compose.yml .gitlab-ci.yml Readme.md  shorting_keyboard.txt index.js
#create_empty_files_if_not_exists Dockerfile docker-compose.yml .gitlab-ci.yml  Readme.md style.css test.py shorting_keyboard.txt index.js

#####################################################################################################
#####################################################################################################
# index.html (Install)
index_html_install() {
    # Geriye Sayım
    ./bashscript_countdown.sh

    echo -e "\e[36m\n###### index.html Kurulumu ######\e[0m"
    echo -e "\e[33mindex.html dosyasını yüklemek ister misiniz? [e/h]\e[0m"
    # read -p "" indexResult
    indexResult="h"

    if [[ "$indexResult" == "e" || "$indexResult" == "E" ]]; then
        echo -e "\e[32mindex.html yüklenmeye başlıyor...\e[0m"

        # Geriye Sayım
        ./bashscript_countdown.sh

        # index.html yoksa oluştur
        if [ ! -f "index.html" ]; then
            echo "index.html oluşturuluyor..."
            cat > index.html <<EOL
<!doctype html>
<html lang="en">
    <head>
        <title>Typescript Öğreniyorum</title>

        <!-- for language -->
        <meta charset="utf-8" />

        <!-- for responsive design -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

        <!-- Bootstrap CSS v5.2.1 -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
        />

        <!-- External Css -->
        <link rel="stylesheet" href="./style.css">
    </head>

    <body>
        <!-- Start Codes -->
        <h1 class="text-primary">Merhabalar Typescript Öğreniyorum</h1>
    
        <p>
            lorem*10
        </p>
    
        <!-- End Codes -->
        <!-- Bootstrap JavaScript Libraries -->
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"
        ></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"
        ></script>

        <!-- External Js -->
        <script src="./dist/index.js"></script>
    </body>
</html>
EOL
            echo "index.html başarıyla oluşturuldu ve içerik eklendi."
        else
            echo "index.html zaten mevcut, yeniden oluşturulmadı."
        fi

        echo -e "\e[32mindex.html kurulumu tamamlandı!\e[0m"
    else
        echo -e "${RED}index.html kurulumu iptal edildi.\e[0m"
    fi
}

# Fonksiyonu çalıştır
index_html_install

#####################################################################################################
#####################################################################################################
# gitignore_install (Install)
gitignore_install() {
    # Geriye Sayım
    ./bashscript_countdown.sh

    echo -e "\n\e[36m\n###### gitignore Kurulumu ######\e[0m"
    echo -e "\e[33mgitignore yüklemek ister misiniz? [e/h]\e[0m"
    # read -p "" gitignore
    gitignore="h"

    if [[ "$gitignore" == "e" || "$gitignore" == "E" ]]; then
        echo -e "\e[32mgitignore yüklenmeye başlıyor...\e[0m"

        # Geriye Sayım
        ./bashscript_countdown.sh


        # index.js yoksa oluştur
        if [ ! -f ".gitignore" ]; then
            echo ".gitignore oluşturuluyor..."
            cat > .gitignore <<EOL
# Special My Git untrackted
/node_modules
EOL
            echo ".gitignore oluşturuldu ve içerik eklendi."
        else
            echo ".gitignore zaten mevcut."
        fi

        echo -e "\e[32m.gitignore kurulumu tamamlandı!\e[0m"
    else
        echo -e "\e[31m.gitignore kurulumu iptal edildi.\e[0m"
    fi
}

# Fonksiyonu çalıştır
gitignore_install

#####################################################################################################
#####################################################################################################
# Install
package_json() {
    # Geriye Say
    ./bashscript_countdown.sh

    echo -e "\n\e[36m\n###### ${PACKAGE_JSON} ######  \e[0m"
    echo -e "\e[33mPackage.json Yüklemek İster misiniz ? e/h\e[0m"
    # read -p "" packageJsonResult
    packageJsonResult="h"
    if [[ $packageJsonResult == "e" || $packageJsonResult == "E" ]]; then
        echo -e "\e[32mpackage Json Yüklenmeye başlandı ...\e[0m"

        # Geriye Say
        ./bashscript_countdown.sh

        rm -rf node_modules
        #npm init  # içerikleri manul eklenir
        npm init -y # içerikleri otomatik eklenir
        # package.json yoksa oluştur
        if [ ! -f "package.json" ]; then
            echo "package.json oluşturuluyor..."
            cat > .gitignore <<EOL
# Special My Git untrackted
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
    "dev:paralel": "concurrently -k \"npm run build_watch\" \"npm run nodemon_app_watch\" \"npm run server:start\""
  },
  "keywords": [],
  "author": "",
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

EOL
            echo ".gitignore oluşturuldu ve içerik eklendi."
        else
            echo ".gitignore zaten mevcut."
        fi

        echo -e "\e[32m.gitignore kurulumu tamamlandı!\e[0m"
    else
        echo -e "\e[31mpackage Json Yüklenmeye Başlanmadı ....\e[0m"
    fi
}
package_json

#####################################################################################################
#####################################################################################################
# Local Save (Install)
npm_local_save() {
    # Geriye Say
    ./bashscript_countdown.sh

    echo -e "\n\e[36m\n###### ${NPM_SAVE} ######  \e[0m"
    echo -e "\e[33mNpm Paketlerini Yüklemek İster misiniz ? e/h\e[0m"
    # read -p "" npmSaveResult
    npmSaveResult="h"
    if [[ $npmSaveResult == "e" || $npmSaveResult == "E" ]]; then
        echo -e "\e[32mNpm Save Yüklenmeye başlandı ...\e[0m"

        # Geriye Say
        ./bashscript_countdown.sh

        npm list  
        #npm list -g 
        npm root 
        #npm root -g

        # https://www.npmjs.com/
        npm i body-parser compression cors csurf cookie-parser ejs  express express-rate-limit helmet mongodb morgan mongoose swagger-jsdoc swagger-ui-express  winston --save 
        npm list
        npm install
        npm dedupe  # Bağımlılıkların tekrarlanan kopyalarını temizler.
        npm list  

    else
        echo -e "\e[31mNpm Save Yüklenmeye Başlanmadı ....\e[0m"
    fi
}
npm_local_save

#####################################################################################################
#####################################################################################################
# Local Save Dev (Install)
npm_local_dev_sav() {
    # Geriye Say
    ./bashscript_countdown.sh

    echo -e "\n\e[36m\n###### ${NPM_SAVE_DEV} ######  \e[0m"
    echo -e "\e[33mnpm Save-Dev Paketlerini Yüklemek İster misiniz ? e/h\e[0m"
    # read -p "" npmDevSaveResult
    npmDevSaveResult="h"
    if [[ $npmDevSaveResult == "e" || $npmDevSaveResult == "E" ]]; then
        echo -e "\e[32mNpm Dev-Save Yüklenmeye başlandı ...\e[0m"

        # Geriye Say
        ./bashscript_countdown.sh

        npm list  
        #npm list -g 
        npm root 
        #npm root -g

        # https://www.npmjs.com/
        npm i nodemon typescript   -D
        #npm i nodemon typescript   --save-dev
        npm install lite-server --save-dev
        npm i  @types/node dotenv concurrently --save-dev
        npm i eslint eslint-config-prettier eslint-plugin-prettier npm-run-all --save-dev
        npm i prettier ts-node --save-dev
        npm install
        npm dedupe  # Bağımlılıkların tekrarlanan kopyalarını temizler.
        npm list
    else
        echo -e "\e[31mNpm Save-Dev Yüklenmeye Başlanmadı ....\e[0m"
    fi
}
npm_local_dev_sav

#####################################################################################################
#####################################################################################################
# Global Save (Install)
npm_global_save() {
    # Geriye Say
    ./bashscript_countdown.sh

    echo -e "\n\e[36m\n###### ${NPM_GLOBAL} ######  \e[0m"
    echo -e "\e[33mnpm Global  Paketlerini Yüklemek İster misiniz ? e/h\e[0m"
    # read -p "" npmGlobalResult
    npmGlobalResult="h"
    if [[ $npmGlobalResult == "e" || $npmGlobalResult == "E" ]]; then
        echo -e "\e[32mNpm Global Yüklenmeye başlandı ...\e[0m"

        # Geriye Say
        ./bashscript_countdown.sh

        #npm list  
        npm list -g 
        #npm root 
        npm root -g

        # https://www.npmjs.com/
        npm i body-parser compression cors csurf cookie-parser ejs  express express-rate-limit helmet mongodb morgan mongoose swagger-jsdoc swagger-ui-express  winston -g
        npm install lite-server -g
        npm list -g 
    else
        echo -e "\e[31mNpm Global Save Yüklenmeye Başlanmadı ....\e[0m"
    fi
}
npm_global_save

#####################################################################################################
#####################################################################################################
# Typescript (Install)
typescript_install() {
    # Geriye Sayım
    ./bashscript_countdown.sh
    #if [ -f "./bashscript_countdown.sh" ]; then
        ./bashscript_countdown.sh
    #else
        echo -e "\e[31mGeriye sayım scripti (bashscript_countdown.sh) bulunamadı, devam ediliyor...\e[0m"
    #fi

    echo -e "\n\e[36m###### TypeScript Kurulumu ######\e[0m"
    echo -e "\e[33mTypeScript yüklemek ister misiniz? [e/h]\e[0m"
    # read -r typescriptResult
    typescriptResult="h"
    if [[ "$typescriptResult" == "e" || "$typescriptResult" == "E" ]]; then
        echo -e "\e[32mTypeScript yüklenmeye başlıyor...\e[0m"

        # Geriye Sayım
        ./bashscript_countdown.sh
        #if [ -f "./bashscript_countdown.sh" ]; then
        #    ./bashscript_countdown.sh
        #fi

        # TypeScript kurulumları
        echo "Global TypeScript kurulumu yapılıyor..."
        npm install typescript -g          # Global kurulum
        echo "Local TypeScript kurulumu yapılıyor..."
        npm install typescript --save-dev  # Local kurulum
        #npm install typescript -D  # Local kurulum
        echo "TypeScript ayar dosyası oluşturuluyor..."

        #tsc --init --locale tr          # TypeScript ayar dosyası
        #tsc --init --locale             # TypeScript ayar dosyası

        ls -al
        # index.ts yoksa oluştur
        if [ ! -f "tsconfig.json" ]; then
            cat > tsconfig.json <<EOL
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
EOL
            echo "index.ts oluşturuldu ve içerik eklendi."
            ls -al
            echo "Ana dizindeyiz"
        else
            echo "index.ts zaten mevcut."
        fi

        echo -e "\e[32mTypeScript kurulumu tamamlandı!\e[0m"


        echo "Mevcut dizindeki dosyalar:"
        ls -al    # Dosya listesini görüntüle

        # src klasörü yoksa oluştur
        if [ ! -d "src" ]; then
            mkdir src
            echo "src klasörü oluşturuldu."
        else
            echo "src klasörü zaten mevcut."
        fi

        # src dizinine gir (server.ts oluştur)
        cd src || { echo "src klasörüne girilemedi. Script sonlandırılıyor."; exit 1; }
        ls -al
        # index.ts yoksa oluştur
        if [ ! -f "server.ts" ]; then
            echo "server.ts oluşturuluyor..."
            cat > server.ts <<EOL
// This is the initial content of index.ts
let exam = "Merhabalar Ts";
console.log(exam);
alert("Typescript Merhabalar")
EOL
            echo "index.ts oluşturuldu ve içerik eklendi."
            cd ..
            ls -al
            echo "Ana dizindeyiz"
        else
            echo "index.ts zaten mevcut."
        fi

        echo -e "\e[32mTypeScript kurulumu tamamlandı!\e[0m"
    else
        echo -e "\e[31mTypeScript kurulumu iptal edildi.\e[0m"
    fi
}

# Fonksiyonu çalıştır
typescript_install

#####################################################################################################
#####################################################################################################
# Nodemon (Install)
nodemon_install() {
    # Geriye Sayım
    ./bashscript_countdown.sh

    echo -e "\n\e[36m\n###### Nodemon Kurulumu ######\e[0m"
    echo -e "\e[33mNodemon yüklemek ister misiniz? [e/h]\e[0m"
    # read -p "" nodemonResult
    nodemonResult="h"

    if [[ "$nodemonResult" == "e" || "$nodemonResult" == "E" ]]; then
        echo -e "\e[32mNodemon yüklenmeye başlıyor...\e[0m"

        # Geriye Sayım
        ./bashscript_countdown.sh

        # index.js yoksa oluştur
        if [ ! -f "nodemon.json" ]; then
            echo "nodemon.json oluşturuluyor..."
            cat > nodemon.json <<EOL
{
  "watch": ["src", "dist"],
  "ext": "ts,js",
  "exec": "node ./dist/server.js"
}
EOL
            echo "nodemon.json oluşturuldu ve içerik eklendi."
        else
            echo "nodemon.json zaten mevcut."
        fi

        echo -e "\e[32mnodemon kurulumu tamamlandı!\e[0m"
    else
        echo -e "\e[31mnodemon kurulumu iptal edildi.\e[0m"
    fi
}

# Fonksiyonu çalıştır
nodemon_install

#####################################################################################################
#####################################################################################################
# Update (Install)
npm_update() {
    # Geriye Sayım
    ./bashscript_countdown.sh

    echo -e "\e[36m\n###### ${NPM_UPDATE} ######  \e[0m"
    echo -e "\e[33mnpm Update  Paketlerini Yüklemek İster misiniz ? e/h\e[0m"
    # read -p "" npmUpdateResult
    npmUpdateResult="h"
    if [[ $npmUpdateResult == "e" || $npmUpdateResult == "E" ]]; then
        echo -e "\e[32mNpm Global Yüklenmeye başlandı ...\e[0m"

        # Geriye Say
        ./bashscript_countdown.sh
        npm outdated
        npm install
        npm update
        npm dedupe  # Bağımlılıkların tekrarlanan kopyalarını temizler.
        npm list  
    else
        echo -e "\e[31mNpm Global Save Yüklenmeye Başlanmadı ....\e[0m"
    fi
}
npm_update

#####################################################################################################
#####################################################################################################
# Npm Compiler (Install)
npm_compiler() {
    # Geriye Say
    ./bashscript_countdown.sh

    echo -e "\e[36m\n###### ${NPM_COMPILER} ######  \e[0m"
    echo -e "\e[33mnpm Compiler Paketlerini Yüklemek İster misiniz ? e/h\e[0m"
    # read -p "" npmCompilerResult
    npmCompilerResult="h"
    if [[ $npmCompilerResult == "e" || $npmCompilerResult == "E" ]]; then
        echo -e "\e[32mNpm Compiler Yüklenmeye başlandı ...\e[0m"

        # Geriye Say
        ./bashscript_countdown.sh
        npm rebuild             # Tüm bağımlıkları yeniden derleme
    else
        echo -e "\e[31mNpm Global Save Yüklenmeye Başlanmadı ....\e[0m"
    fi
}
npm_compiler

#####################################################################################################
#####################################################################################################
# package.json revize script eklemek
package_json_script_added() {
    # Geriye Say
    ./bashscript_countdown.sh

    echo -e "\e[36m\n###### package.json Script ekle ######  \e[0m"
    echo -e "\e[33mpackage.json script eklemek Yüklemek İster misiniz? e/h\e[0m"
    # read -p "" packageJsonScriptResult
    packageJsonScriptResult="h"
    if [[ $packageJsonScriptResult == "e" || $packageJsonScriptResult == "E" ]]; then
        echo -e "\e[32m package.json Script Yüklenmeye başlandı...\e[0m"
        # package.json dosyasının varlığını kontrol et
        PACKAGE_JSON="package.json"
        if [ ! -f "$PACKAGE_JSON" ]; then
            echo "package.json dosyası bulunamadı. Script sonlandırılıyor."
            exit 1
        fi

        # Yeni scriptler JSON formatında tanımlanıyor
        NEW_SCRIPTS=',\"start\": \"node  ./dist/server.js\",\n ,\"server:start\": \"lite-server\",\n     \"build_watch\": \"tsc -w --pretty\",\n  \"nodemon_app_watch\": \"nodemon --watch src --watch dist ./dist/index.js\",\n  \"dev:seri\": \"npm-run-all --serial build_watch nodemon_app_watch\",\n  \"dev:paralel\": \"concurrently -k \\\"npm run build_watch\\\" \\\"npm run nodemon_app_watch\\\" \\\"npm run server:start\\\"\"'

        # "scripts" alanını bul ve "test" scriptinden sonra yeni scriptleri ekle
        sed -i.bak "/\"test\": /a \
  $NEW_SCRIPTS" "$PACKAGE_JSON"

        # İşlem tamamlandı mesajı
        if [ $? -eq 0 ]; then
            echo "Scripts başarıyla eklendi. Güncellenmiş package.json dosyası:\n"
            cat "$PACKAGE_JSON"
        else
            echo "Scripts eklenirken bir hata oluştu."
            exit 1
        fi

    else
        echo -e "\e[31mNpm Global Save Yüklenmeye Başlanmadı....\e[0m"
    fi
}
package_json_script_added

#####################################################################################################
#####################################################################################################
# Lite-Server (Install)
server_start() {
    # Geriye Say
    ./bashscript_countdown.sh

    echo -e "\e[36m\n###### ${SERVER_START} ######  \e[0m"
    echo -e "\e[33mLite-Server başlatmak ister misiniz ? e/h\e[0m"
    read -p "" liteServerResult
    if [[ $liteServerResult == "e" || $liteServerResult == "E" ]]; then
        echo -e "\e[32mLite-Server ...\e[0m"

        # Geriye Sayım
        ./bashscript_countdown.sh

        npm install lite-server --save-dev

        # index.js yoksa oluştur
        if [ ! -f "bs-config.json" ]; then
            echo "bs-config.json oluşturuluyor..."
            cat > bs-config.json <<EOL
{
  "port": 1111,
  "files": ["./*.html", "./*.css", "./*.js"],
  "server": {
    "baseDir": "./",
    "index": "index.html"
  }
}
EOL
            echo "bs-config.jsonoluşturuldu ve içerik eklendi."
        else
            echo "bs-config.json zaten mevcut."
        fi

        echo -e "\e[32mbs-config.json kurulumu tamamlandı!\e[0m"
    else
        echo -e "\e[31mbs-config.json kurulumu iptal edildi.\e[0m"
    fi

    # Server Başlatma
    #npm run server:start
}

# Fonksiyonu çalıştır
server_start
#####################################################################################################
#####################################################################################################
# Mongo_env (Install)
mongo_env() {
    # Geriye Say
    ./bashscript_countdown.sh

    echo -e "\e[36m\n###### ${MONGO_ENV} ######  \e[0m"
    echo -e "\e[33mMongo için .env oluşturulsun mu ? e/h\e[0m"
    # read -p "" mongoEnvResult
    mongoEnvResult="h"
    if [[ $mongoEnvResult == "e" || $mongoEnvResult == "E" ]]; then
        echo -e "\e[32mMongoENV ...\e[0m"


        # Geriye Sayım
        ./bashscript_countdown.sh

        # index.js yoksa oluştur
        if [ ! -f ".env" ]; then
            echo ".env oluşturuluyor..."
            cat > .env <<EOL
; PORT
LOCALHOST_PORT=1111

; Local
MONGO_USERNAME=root
MONGO_PASSWORD=rootroot
MONGO_PORT=27017
MONGO_LOCALHOST=127.0.0.1 ; Eğer localhost dns çalışmazsa 127.0.0.1 ip deneyin


; Cloud
MONGO_CLOUD_USERNAME=hamitmizrak
MONGO_CLOUD_PASSWORD=
MONGO_CLOUD_PORT=27017

; Docker
MONGO_DOCKER_USERNAME=hamitmizrak
MONGO_DOCKER_PASSWORD=
MONGO_DOCKER_PORT=27000
EOL
            echo ".env.json oluşturuldu ve içerik eklendi."
        else
            echo ".env zaten mevcut."
        fi

        echo -e "\e[32m.env kurulumu tamamlandı!\e[0m"
    else
        echo -e "\e[31m.env kurulumu iptal edildi.\e[0m"
    fi
}

# Fonksiyonu çalıştır
mongo_env

#####################################################################################################
#####################################################################################################
# Docker üzerinden mongodb
docker_mongo() {
    sleep 2
    echo -e "\n###### ${DOCKER_MONGO} ######  "
    ./bashscript_countdown.sh
    # Docker Information
    docker --version
    docker ps
    docker search mongo #(OFFICAL)

    # Geriye Say
    ./bashscript_countdown.sh

    # Güncelleme Tercihi
    echo -e "Güncelleme İçin Seçim Yapınız\n1-)MongoDB\n2-)MongoDB Volume\n3-)Mongo Admin\n4-)Çıkış "
    read chooise

    # Girilen sayıya göre tercih
    case $chooise in
    1)
        echo -e "\e[36m\n###### ${DOCKER_MONGO} ######  \e[0m"
        echo -e "\e[33mDocker Üzerinden MongoDB Yüklemek İster misiniz ? e/h\e[0m"
        read -p "" dockerMongoResult
        if [[ $dockerMongoResult == "e" || $dockerMongoResult == "E" ]]; then
            echo -e "\e[32mDocker Üzerinden MongoDB Yüklenmeye başlandı ...\e[0m"
            # Volume olmadan
            # docker container run --detach --name mongodb-container --publish 27000:27017 mongo
             docker container run --detach --name mongodb-container --publish 27000:27017 mongo:latest
            # docker container run --detach --name mongodb-container --publish 27000:27017 mongo:8.0.4
             ./bashscript_countdown.sh
        else
            echo -e "${RED}MongoDB ekleme yapılmadı${NC}"
        fi
        ;;
    2)
        read -p "Docker Üzerinden MongoDB Admin Yüklemek İstiyor musunuz ? e/h " systemListUpdatedResult
        if [[ $systemListUpdatedResult == "e" || $systemListUpdatedResult == "E" ]]; then
            echo -e "Sistem Paket Güncellenmesi Başladı ..."
            ./bashscript_countdown.sh
             # Username ve Password olarak
             docker container run -d --name mongodb-container  -p 27000:27017 \
             -e MONGO_INITDB_ROOT_USERNAME=root \
             -e MONGO_INITDB_ROOT_PASSWORD=rootroot \
             mongo

             # Shelling
             mongosh
             mongo --host localhost --port 27000 -u admin -p rootroot --authenticationDatabase admin
        else
            echo -e "Sistem Paket Güncellenmesi Yapılmadı... "
        fi
        ;;
    3)
        read -p "Docker ongodb Volume olarak Yüklemek ister misiniz ? e/h " kernelUpdatedResult
        if [[ $kernelUpdatedResult == "e" || $kernelUpdatedResult == "E" ]]; then
            echo -e "Docker Mongodb Volume olarak Yüklemek  ... "

            # Geriye Say
             # Volume Ekleyerek
              docker volume create mongodb_data
              docker container run -d --name mongodb-container  -p 27000:27017 -v mongodb_data:/data/db mongo:8.0.4
        else
            echo -e "Docker Mongodb Volume olarak Yüklemek ... "
        fi
        ;;
    *)
        echo -e "Lütfen sadece size belirtilen seçeneği seçiniz"
        ;;
    esac

     # Docker komutları
    docker ps    # Sadece çalışan containerlerı gösterir
    docker ps -a # Kapatılmış containerıda gösterir
}
docker_mongo

#####################################################################################################
#####################################################################################################
# docker_mongo_terminal
docker_mongo_terminal() {
    sleep 2
    echo -e "\n###### ${MONGODOCKER} ######  "
    read -p "Docker üzerinden Mongodb terminale Bağlanmak İster misiniz ? e/h " docker_mongo_terminal
    if [[ $docker_mongo_terminal == "e" || $docker_mongo_terminal == "E" ]]; then
        echo -e "Docker mongo_terminal açılıyor ... "

        # Geriye Say
        ./bashscript_countdown.sh

        # Docker komutları
        docker ps    # Sadece çalışan containerlerı gösterir
        docker ps -a # Kapatılmış containerıda gösterir
        #docker stop mongodb-volume-container # Docker ilgili container kapat
        #docker start mongodb-volume-container # Docker ilgili container başlat
        #docker rm mongodb-volume-container # Docker ilgili container sil

        # Docker Terminali
        # docker exec -it mongodb-container  mongosh   # Linux için
        winpty docker exec -it mongodb-container  mongosh # Windows için

        # Mongo Terminalinde
        show dbs; # Mongo Mevcut databaseleri göster
        use blogDB; # Mongo'da blogDB olan database seç
        show dbs; # Mongo Mevcut databaseleri göster
        db.createCollection("posts");  # Mongo'da byeni Collections oluşturmak
        db.posts.insertOne({
            header: "İlk Blog Yazım",
            content: "Bu benim ilk blog yazımın içeriğidir.",
            author: "Hamit Mızrak.",
            tags: "java,jsp",
        })

        # db.posts.find().pretty(); # Blog yazısını getir
    else
        echo -e "Docker_mongo_terminal Seçilmedi..."
    fi
}
docker_mongo_terminal

#####################################################################################################
#####################################################################################################
# Mongo_env (Install)
mongo_setup() {
    # Geriye Say
    ./bashscript_countdown.sh
    MONGO_LOCALHOST="Mongo Localhost veya 127.0.0.1"

    echo -e "\e[36m\n###### ${MONGO_LOCALHOST} ######  \e[0m"
    echo -e "\e[33mMongo Localhost oluşturulsun mu ? e/h\e[0m"
    read -p "" mongoSetup
    if [[ $mongoSetup == "e" || $mongoSetup == "E" ]]; then
        echo -e "\e[32mMongo Localhost Setup ...\e[0m"

        # Geriye Sayım
        ./bashscript_countdown.sh
        
        # Docker container'ına komutları gönder
        docker exec -i mongodb-container mongo --eval '
          use blogDB;
          db.getUsers();
          
          db.createUser({
            user: "root",
            pwd: "rootroot",
            roles:[
              {
                role: "readWrite",
                db:"blogDB"
              }
            ]
          });
          
          db.getUsers();
          db.posts.insertOne({
            header: "İlk Blog Yazım",
            content: "Bu benim ilk blog yazımın içeriğidir.",
            author: "Hamit Mızrak.",
            tags: "java,jsp",
          });
        '
        echo -e "\e[32m.Mongo Localhost Setup kurulumu tamamlandı!\e[0m"
    else
        echo -e "\e[31mMongo Localhost Setup kurulumu iptal edildi.\e[0m"
    fi
}

# Fonksiyonu çalıştır
mongo_setup


#####################################################################################################
#####################################################################################################
# Git (Install)
git_push() {
    # Geriye Say
    ./bashscript_countdown.sh

    echo -e "\e[36m\n###### ${GIT} ######  \e[0m"
    echo -e "\e[33mGit Yüklemek İster misiniz ? e/h\e[0m"
    # read -p "" gitResult
    gitResult="h"
    if [[ $gitResult == "e" || $gitResult == "E" ]]; then
        echo -e "\e[32mGit Yüklenmeye başlandı ...\e[0m"

        # Geriye Say
        ./bashscript_countdown.sh
        git add .
        git commit -m "commit mesajı"
        git push
        #git push --force
    else
        echo -e "\e[31mGit Push Yüklenmeye Başlanmadı ....\e[0m"
    fi
}
git_push

#####################################################################################################
#####################################################################################################
# Typescript başlat
npm run dev:paralel

# rm -rf node_modules src model routes views