a:90:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"certbot instructions";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:38;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:22:"1. SSH into the server";i:1;i:2;i:2;i:38;}i:2;i:38;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:38;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:38;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:"SSH into the server running your HTTP website as a user with sudo privileges.";}i:2;i:74;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:151;}i:9;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:154;}i:10;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:16:"2. Install snapd";i:1;i:2;i:2;i:154;}i:2;i:154;}i:11;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:154;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:154;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:166:"You'll need to install snapd and make sure you follow any instructions to enable classic snap support.
Follow these instructions on snapcraft's site to install snapd.";}i:2;i:184;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:350;}i:15;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:352;}i:16;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:50:"3. Ensure that your version of snapd is up to date";i:1;i:2;i:2;i:352;}i:2;i:352;}i:17;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:352;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:352;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:122:"Execute the following instructions on the command line on the machine to ensure that you have the latest version of snapd.";}i:2;i:416;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:538;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:46:"sudo snap install core; sudo snap refresh core";i:1;N;i:2;N;}i:2;i:546;}i:22;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:604;}i:23;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:50:"4. Remove certbot-auto and any Certbot OS packages";i:1;i:2;i:2;i:604;}i:2;i:604;}i:24;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:604;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:604;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:52:"If you have any Certbot packages installed using an ";}i:2;i:668;}i:27;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:2:"OS";}i:2;i:720;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:202:" package manager like apt, dnf, or yum, you should remove them before installing the Certbot snap to ensure that when you run the command certbot the snap is used rather than the installation from your ";}i:2;i:722;}i:29;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:2:"OS";}i:2;i:924;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:63:" package manager. The exact command to do this depends on your ";}i:2;i:926;}i:31;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:2:"OS";}i:2;i:989;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:107:", but common examples are sudo apt-get remove certbot, sudo dnf remove certbot, or sudo yum remove certbot.";}i:2;i:991;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1098;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1098;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:139:"If you previously used Certbot through the certbot-auto script, you should also remove its installation by following the instructions here.";}i:2;i:1100;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1239;}i:37;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1241;}i:38;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"5. Install Certbot";i:1;i:2;i:2;i:1241;}i:2;i:1241;}i:39;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1241;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1241;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:"Run this command on the command line on the machine to install Certbot.";}i:2;i:1273;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1344;}i:43;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:35:"sudo snap install --classic certbot";i:1;N;i:2;N;}i:2;i:1351;}i:44;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1396;}i:45;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"6. Prepare the Certbot command";i:1;i:2;i:2;i:1396;}i:2;i:1396;}i:46;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1396;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1396;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:115:"Execute the following instruction on the command line on the machine to ensure that the certbot command can be run.";}i:2;i:1440;}i:49;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1555;}i:50;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:45:"sudo ln -s /snap/bin/certbot /usr/bin/certbot";i:1;N;i:2;N;}i:2;i:1562;}i:51;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1617;}i:52;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:39:"7. Choose how you'd like to run Certbot";i:1;i:2;i:2;i:1617;}i:2;i:1617;}i:53;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1617;}i:54;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1617;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:"Either get and install your certificates";}i:2;i:1670;}i:56;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:1710;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:154:"
Run this command to get a certificate and have Certbot edit your Nginx configuration automatically to serve it, turning on HTTPS access in a single step.";}i:2;i:1713;}i:58;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1867;}i:59;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:20:"sudo certbot --nginx";i:1;N;i:2;N;}i:2;i:1874;}i:60;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1903;}i:61;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:26:"Or, just get a certificate";i:1;i:3;i:2;i:1903;}i:2;i:1903;}i:62;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1903;}i:63;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1903;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:125:"If you're feeling more conservative and would like to make the changes to your Nginx configuration by hand, run this command.";}i:2;i:1941;}i:65;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2066;}i:66;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:29:"sudo certbot certonly --nginx";i:1;N;i:2;N;}i:2;i:2073;}i:67;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2115;}i:68;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:25:"8. Test automatic renewal";i:1;i:2;i:2;i:2115;}i:2;i:2115;}i:69;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2115;}i:70;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2115;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:297:"The Certbot packages on your system come with a cron job or systemd timer that will renew your certificates automatically before they expire. You will not need to run Certbot again, unless you change your configuration. You can test automatic renewal for your certificates by running this command:";}i:2;i:2154;}i:72;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2451;}i:73;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:28:"sudo certbot renew --dry-run";i:1;N;i:2;N;}i:2;i:2458;}i:74;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2458;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:76:"The command to renew certbot is installed in one of the following locations:";}i:2;i:2495;}i:76;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2577;}i:77;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:51:"
/etc/crontab/
/etc/cron.*/*
systemctl list-timers
";i:1;N;i:2;N;}i:2;i:2577;}i:78;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2638;}i:79;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:29:"9.Confirm that Certbot worked";i:1;i:2;i:2;i:2638;}i:2;i:2638;}i:80;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2638;}i:81;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2638;}i:82;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:52:"To confirm that your site is set up properly, visit ";}i:2;i:2681;}i:83;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:24:"https://yourwebsite.com/";i:1;N;}i:2;i:2733;}i:84;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:" in your browser and look for the lock icon in the ";}i:2;i:2757;}i:85;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"URL";}i:2;i:2808;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:" bar.";}i:2;i:2811;}i:87;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2816;}i:88;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2816;}i:89;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2816;}}