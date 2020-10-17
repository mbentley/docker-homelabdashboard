FROM mbentley/nginx-php7
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN apk add --no-cache git &&\
  cd /var &&\
  rm -rf www/* &&\
  git clone --depth 1 https://github.com/briandm81/homelabdashboard.git www &&\
  chown -R www-data:www-data /var/www &&\
  apk del --no-cache git
