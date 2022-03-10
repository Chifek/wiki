a:66:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:103:"Принцип подстановки Барбары Лисков. (Liskov Substitution Principle, LSP)";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"Это третий из пяти принципов ";}i:2;i:121;}i:5;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:174;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"SOLID";}i:2;i:176;}i:7;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:181;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:133:" и наиболее сложный для понимания.
В оригинале данный принцип звучит так:";}i:2;i:183;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:316;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:316;}i:11;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:318;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:298:"Пусть q(x) является свойством, верным относительно объектов x некоторого типа T.
Тогда q(y) также должно быть верным для объектов y типа S, где S является подтипом типа T.
";}i:2;i:320;}i:13;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:618;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:620;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:620;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"Роберт Мартин перефразировал это так:";}i:2;i:623;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:692;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:692;}i:19;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:694;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:217:"Функции, которые используют базовый тип, должны иметь возможность использовать подтипы базового типа, не зная об этом.";}i:2;i:696;}i:21;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:913;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:915;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:915;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"Иными словами -";}i:2;i:917;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:944;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:944;}i:27;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:946;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:362:"Поведение наследуемых классов не должно противоречить поведению, заданному базовым классом, то есть поведение наследуемых классов должно быть ожидаемым для кода который использует базовый класс.";}i:2;i:948;}i:29;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1310;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1312;}i:31;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1312;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"Приведем пример";}i:2;i:1316;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1345;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1345;}i:35;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1347;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"index.php:";}i:2;i:1349;}i:37;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1359;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1361;}i:39;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:72:"
$bird    = new Bird();
$birdRun = new BirdRun($bird);
$birdRun->run();
";i:1;N;i:2;N;}i:2;i:1369;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1369;}i:41;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1452;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"bird.php:";}i:2;i:1454;}i:43;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1463;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1465;}i:45;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1054:"
/**
* Реально используемый в коде класс
*/
class Bird {
    public function fly() {
        $flySpeed = 10;
        return $flySpeed;
    }
}
 
/**
* Дочерний класс от Bird. 
* Не изменяет поведение, но дополняет.
* Не нарушает принцип LSP
*/
class Duck extends Bird {
 
    public function fly() {
        $flySpeed = 8;
        return $flySpeed;
    }
     
    public function swim() {
        $swimSpeed = 2;
        return $swimSpeed;
    }
}
 
/**
* Дочерний класс от Bird. 
* Изменяет поведение.
* Нарушает принцип LSP
*/
class Penguin extends Bird {
 
    public function fly() {
          //die('i can`t fly (((');  // не типичное поведение - die или exception
          return 'i can`t fly ((('; // не типичное поведение - возвращаем string, а не integer
    }
 
    public function swim() {
        $swimSpeed = 4;
        return $swimSpeed;
    }
}
";i:1;N;i:2;N;}i:2;i:1472;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1472;}i:47;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2537;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"birdRun.php:";}i:2;i:2539;}i:49;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2551;}i:50;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2553;}i:51;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:198:"
class BirdRun {
 
    private $bird; 
    public function __construct(Bird $bird) {
        $this->bird = $bird;
    }
 
    public function run() {
        $flySpeed = $this->bird->fly();
    }
}
";i:1;N;i:2;N;}i:2;i:2560;}i:52;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2560;}i:53;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2768;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"index.php:";}i:2;i:2770;}i:55;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2780;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2782;}i:57;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:116:"
$bird = new Bird();
//$bird = new Duck();
//$bird = new Penguin();
$birdRun = new BirdRun($bird);
$birdRun->run();
";i:1;N;i:2;N;}i:2;i:2789;}i:58;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2789;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:345:"После замены использования Bird на Duck код будет работать как и прежде - принцип LSP соблюден. 
После замены Bird на Penguin код меняет свое поведение, следовательно в данном случае принцип LSP нарушен.";}i:2;i:2916;}i:60;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3261;}i:61;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3261;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:381:"Следовать этому типу очень важно при проектировании новых типов с использованием наследования.
Этот принцип предупреждает о том, что изменение унаследованного производным типом поведения очень рискованно.";}i:2;i:3263;}i:63;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3644;}i:64;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3646;}i:65;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3646;}}