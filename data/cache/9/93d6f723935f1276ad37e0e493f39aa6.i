a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1545:"


function parse_git_branch {
              git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
      }

      function prompt {
              # OPTIONAL - if you want to use any of these other colors:
                      local        RED="\[\033[0;31m\]"
                              local   LIGHT_RED="\[\033[1;31m\]"
                                      local      GREEN="\[\033[0;32m\]"
                                              local LIGHT_GREEN="\[\033[01;32m\]"
                                                      local      WHITE="\[\033[1;37m\]"
                                                              local  LIGHT_GRAY="\[\033[0;37m\]"
                                                                      local  BLUE="\[\033[01;34m\]"
                                                                      # END OPTIONAL
                                                                              local    DEFAULT="\[\033[0m\]"
                                                                                      export PS1="\u@\h: $BLUE[\w]$LIGHT_RED\$(parse_git_branch) $DEFAULT\$ "
                                                                              }
                                                                              prompt
                                                                              
                                                                              
                                                                              
";i:1;N;i:2;N;}i:2;i:6;}i:2;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6;}i:3;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:"Добавить все это в bashrc";}i:2;i:1702;}i:4;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1702;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1702;}}