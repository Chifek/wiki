a:98:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:72:"Как сжимать коммиты в Git с помощью git squash";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:89;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:118:"Для начала давайте разберемся: что же это вообще такое — ''git squash''";i:1;i:2;i:2;i:89;}i:2;i:89;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:89;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:89;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:381:"Git squash — это прием, который помогает взять серию коммитов и уплотнить ее. Например, предположим: у вас есть серия из N коммитов и вы можете путем сжатия преобразовать ее в один-единственный коммит. Сжатие через ";}i:2;i:222;}i:8;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:603;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"git squash";}i:2;i:605;}i:10;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:615;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:277:" в основном применяется, чтобы превратить большое число малозначимых коммитов в небольшое число значимых. Так становится легче отслеживать историю Git.";}i:2;i:617;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:894;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:894;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:530:"Также этот прием используется при объединении ветвей. Чаще всего вам будут советовать всегда сжимать коммиты и выполнять перебазирование с родительской ветвью (например, master или develop). В таком случае история главной ветки будет содержать только значимые коммиты, без ненужной детализации.";}i:2;i:897;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1427;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1430;}i:17;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:43:"Как именно делать git squash";i:1;i:2;i:2;i:1430;}i:2;i:1430;}i:18;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1430;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1430;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:75:"Возьмем для примера следующую историю Git:";}i:2;i:1487;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1562;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1562;}i:23;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:30:"::1_8tdy65ipblsjpr9y1nnffw.png";i:1;s:0:"";i:2;N;i:3;s:3:"600";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:1564;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1603;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1603;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:538:"Здесь видны последние три коммита. В сообщениях к ним поясняется, что мы добавили новый файл и какое-то содержимое. Лучше заменить их одним единственным коммитом о том, что произошло добавление нового файла с некоторым содержимым. Итак, давайте посмотрим, как сжать последние три коммита в один:";}i:2;i:1606;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2144;}i:28;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:20:"git rebase -i HEAD~3";i:1;N;i:2;N;}i:2;i:2151;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2151;}i:30;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:2181;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"git rebase -i";}i:2;i:2183;}i:32;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:2196;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:544:" — интерактивный инструмент, который помогает сжимать коммиты. У него много возможностей, но давайте сосредоточимся на git squash.
Если вы не очень хорошо знакомы с перебазированием — не волнуйтесь. Сжатие коммитов — одна из самых простых операций, которые выполняются через интерактивный git-rebase (т.е. ";}i:2;i:2198;}i:34;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:2742;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"git rebase -i";}i:2;i:2744;}i:36;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:2757;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"). ";}i:2;i:2759;}i:38;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:2762;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"HEAD~3";}i:2;i:2764;}i:40;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:2770;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:83:" означает, что мы берем последние три коммита.";}i:2;i:2772;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2855;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2855;}i:44;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:30:"::1_wqktbymzgplhkq6qkhvpja.png";i:1;s:0:"";i:2;N;i:3;s:3:"600";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:2857;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2896;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2896;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:70:"Далее откроется редактор. Посмотрите, ";}i:2;i:2899;}i:48;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:2969;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"rebase -i";}i:2;i:2971;}i:50;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:2980;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:208:" охватывает только последние три коммита, и обратите внимание на количество опций. Нас, однако, интересует только ";}i:2;i:2982;}i:52;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:3190;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"squash";}i:2;i:3192;}i:54;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:3198;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:". Давайте же приведем все к одному коммиту.";}i:2;i:3200;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3277;}i:57;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3277;}i:58;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:30:"::1_g9uxr-6wbqeio1cvqb0ttq.png";i:1;s:0:"";i:2;N;i:3;s:3:"600";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:3279;}i:59;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3318;}i:60;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3318;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:151:"Как видите, для сжатия мы отметили последние два коммита с помощью команд squash или s.";}i:2;i:3320;}i:62;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3471;}i:63;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3471;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:238:"В примере, приведенном выше, коммиты, предназначенные для сжатия, будут слиты с основным коммитом — тем, который отмечен командой ";}i:2;i:3473;}i:65;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:3711;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"pick";}i:2;i:3713;}i:67;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:3717;}i:68;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:105:". Отметив коммиты, сохраните изменения в редакторе.
Далее ";}i:2;i:3719;}i:69;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:3824;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"rebase -i";}i:2;i:3826;}i:71;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:3835;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:138:" снова откроет редактор для ввода сообщения о коммите, как на картинке ниже:";}i:2;i:3837;}i:73;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3975;}i:74;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3975;}i:75;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:29:":1_ouvpxartj-ad_f4ckdrnwq.png";i:1;s:0:"";i:2;N;i:3;s:3:"600";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:3977;}i:76;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4015;}i:77;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4015;}i:78;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:352:"Отредактировав и сохранив сообщения, можете закрыть редактор. Обратите внимание: строки, которые начинаются с #, будут проигнорированы. После этого журнал Git будет выглядеть следующим образом:";}i:2;i:4018;}i:79;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4370;}i:80;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4370;}i:81;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:30:"::1_jiu1q7jwercneobst4rf4q.png";i:1;s:0:"";i:2;N;i:3;s:3:"600";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:4373;}i:82;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4412;}i:83;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4412;}i:84;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:232:"Здесь изменилось сообщение о коммите, и обратите внимание: три коммита “склеились” в один. Также изменился хэш коммита. Через ";}i:2;i:4415;}i:85;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:4647;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"git rebase";}i:2;i:4649;}i:87;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:4659;}i:88;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:129:" всегда создается новый коммит, содержащий соответствующие изменения.";}i:2;i:4661;}i:89;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4790;}i:90;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4792;}i:91;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:97:"Так что используйте этот инструмент с осторожностью.";i:1;i:2;i:2;i:4792;}i:2;i:4792;}i:92;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:4792;}i:93;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4792;}i:94;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:365:"Помните: сжатие коммитов меняет историю Git, поэтому не рекомендуется сжимать ветвь, если вы уже отправили ее в удаленный репозиторий. Всегда выполняйте сжатие до того, как отправить пуш с изменениями.";}i:2;i:4903;}i:95;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5268;}i:96;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5268;}i:97;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:5268;}}