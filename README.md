# mbentley/homelabdashboard

docker image for [homelabdashboard](https://github.com/briandm81/homelabdashboard)
based off of mbentley/nginx-php7

To pull this image:
`docker pull mbentley/homelabdashboard`

Example usage:

1. Download the example .dat files and put them in a directory for persistence:

   * https://github.com/briandm81/homelabdashboard/blob/master/settingsbookmarks.dat
   * https://github.com/briandm81/homelabdashboard/blob/master/settingsgeneral.dat

1. Set the ownership to `33:33` (which is `www-data:www-data` inside the container):

   ```
   chown -R 33:33 /path/to/my/dat/files
   ```

1. Run the container; change the port to whatever you want:

   ```
   docker run -d \
     --name homelabdashboard \
     -p 80:80 \
     --restart=unless-stopped \
     -v /path/to/my/dat/files/settingsbookmarks.dat:/var/www/settingsbookmarks.dat \
     -v /path/to/my/dat/files/settingsbookmarks.dat:/var/www/settingsgeneral.dat \
     mbentley/homelabdashboard
   ```
