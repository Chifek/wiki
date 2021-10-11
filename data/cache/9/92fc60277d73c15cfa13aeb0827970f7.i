a:24:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:25:"Command line instructions";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:42;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:83:"You can also upload existing files from your computer using the instructions below.";i:1;i:2;i:2;i:42;}i:2;i:42;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:42;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:141;}i:7;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:16:"Git global setup";i:1;i:3;i:2;i:141;}i:2;i:141;}i:8;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:141;}i:9;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:111:"
git config --global user.name "Ruslan Ismailov"
git config --global user.email "bkkruslan.ismailov@yandex.ru"
";i:1;N;i:2;N;}i:2;i:174;}i:10;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:295;}i:11;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:23:"Create a new repository";i:1;i:2;i:2;i:295;}i:2;i:295;}i:12;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:295;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:139:"
git clone git@gitlab.com:chifer/sears.git
cd sears
touch README.md
git add README.md
git commit -m "add README"
git push -u origin master
";i:1;N;i:2;N;}i:2;i:337;}i:14;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:486;}i:15;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:23:"Push an existing folder";i:1;i:2;i:2;i:486;}i:2;i:486;}i:16;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:486;}i:17;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:150:"
cd existing_folder
git init
git remote add origin git@gitlab.com:chifer/sears.git
git add .
git commit -m "Initial commit"
git push -u origin master
";i:1;N;i:2;N;}i:2;i:527;}i:18;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:687;}i:19;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:31:"Push an existing Git repository";i:1;i:2;i:2;i:687;}i:2;i:687;}i:20;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:687;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:159:"
cd existing_repo
git remote rename origin old-origin
git remote add origin git@gitlab.com:chifer/sears.git
git push -u origin --all
git push -u origin --tags
";i:1;N;i:2;N;}i:2;i:737;}i:22;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:904;}i:23;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:904;}}