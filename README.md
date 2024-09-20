# portfolio

Place to showcase Flutter Web - CV & Contact

## Getting Started

flutter run -d chrome --release

flutter build web

cp -r ./build/web/\* /Library/WebServer/Documents/
cp -r ./.htaccess /Library/WebServer/Documents/

sudo apachectl stop && sudo apachectl start
