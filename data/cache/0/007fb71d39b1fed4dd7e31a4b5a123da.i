a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:115:"Решить данную проблему помогает переустановить/установить Xcode";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:116;}i:4;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:275:"
xcode-select --print-path
# in my case /Library/Developer/CommandLineTools

# the next line deletes the path returned by the command above
sudo rm -rf $(xcode-select --print-path)

# install them (again) if you don't get a default installation prompt
xcode-select --install
";i:1;N;i:2;N;}i:2;i:123;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:123;}}