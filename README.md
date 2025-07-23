# portfolio

Place to showcase Flutter Web - CV & Contact

## Getting Started

flutter run -d chrome --release

flutter build web

#MACOS
cp -r ./.htaccess ./build/web/ && cp -r ./build/web/ /Library/WebServer/Documents/
sudo apachectl stop && sudo apachectl start

#WIN
copy /b .htaccess .\build\web && xcopy .\build\web\* C:\Apache24\htdocs /E/H/Q
httpd.exe -k restart