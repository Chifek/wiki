a:43:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"NVM Install";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:96:"Now, you system is ready for the installation. Update the Homebrew package list and install NVM.";}i:2;i:29;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:125;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:30:"
brew update
brew install nvm
";i:1;N;i:2;N;}i:2;i:132;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:132;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"Next, create a directory for NVM in home.";}i:2;i:173;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:214;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:14:"
mkdir ~/.nvm
";i:1;N;i:2;N;}i:2;i:221;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:221;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:111:"Now, configure the required environment variables. Edit the following configuration file in your home directory";}i:2;i:246;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:357;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:21:"
vim ~/.bash_profile
";i:1;N;i:2;N;}i:2;i:364;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:364;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:82:"and, add below lines to ~/.bash_profile ( or ~/.zshrc for macOS Catalina or later)";}i:2;i:394;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:476;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:58:"
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
";i:1;N;i:2;N;}i:2;i:484;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:484;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"Press ";}i:2;i:552;}i:21;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:558;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"ESC + :wq";}i:2;i:560;}i:23;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:569;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:" to save and close your file.";}i:2;i:571;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:600;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:600;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:108:"Next, load the variable to the current shell environment. From the next login, it will automatically loaded.";}i:2;i:602;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:710;}i:29;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:24:"
source ~/.bash_profile
";i:1;N;i:2;N;}i:2;i:718;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:718;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:127:"That’s it. The NVM has been installed on your macOS system. Go to next step to install Node.js versions with the help of nvm.";}i:2;i:752;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:879;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:879;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:95:"First of all, see what Node versions are available to install. To see available versions, type:";}i:2;i:882;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:977;}i:36;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:15:"
nvm ls-remote
";i:1;N;i:2;N;}i:2;i:984;}i:37;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:984;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"Install node for M1 arch:";}i:2;i:1010;}i:39;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1035;}i:40;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:72:"
nvm uninstall 14
arch -x86_64 zsh 
nvm install 14
nvm alias default 14
";i:1;N;i:2;N;}i:2;i:1042;}i:41;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1122;}i:42;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1122;}}