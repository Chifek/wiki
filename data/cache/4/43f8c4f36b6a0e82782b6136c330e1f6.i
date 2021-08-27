a:15:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"Редактируем ~/.bashrc";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:33;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:33;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"Начало скрипта:";}i:2;i:35;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:63;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:63;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"function parse_git_branch {";}i:2;i:67;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:94;}i:10;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:1387:"  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
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
                                                                            
                                                                            ";}i:2;i:94;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:94;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"конец скрипта!";}i:2;i:1519;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1519;}i:14;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1519;}}