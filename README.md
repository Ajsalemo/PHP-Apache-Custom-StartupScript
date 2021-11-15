# PHP-Apache-Custom-StartupScript

Customize apache2.conf with libapache2-mod-security2 to remove the 'Server' response header from all requests. This sample was made to deploy on Azure Linux Webapps with the use of the [custom startup script](https://azureossd.github.io/2020/01/23/php-custom-startup-script-app-service-linux/) set under `/home/site`. 

- `apache2.conf` is used to copy over the existing conf file under `/etc/apache2/apache2.conf`so we can bring our own configuration
- In `apache2.conf` we set `SecServerSignature` to " ", in conjunction with `libapache2-mod-security2` in `startup.sh`, this effectively removes the `Server` header on all responses.
