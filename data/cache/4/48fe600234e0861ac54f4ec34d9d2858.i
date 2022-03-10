a:78:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:105:"Принцип инверсии зависимостей (англ. Dependency Inversion Principle, DIP).";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"Пятый SOLID принцип.";}i:2;i:123;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:155;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:155;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"Формулировка:";}i:2;i:157;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:182;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:182;}i:10;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:184;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:469:"Зависимости внутри системы строятся на основе абстракций.
Модули верхних уровней не должны зависеть от модулей нижних уровней. Оба типа модулей должны зависеть от абстракций.
Абстракции не должны зависеть от деталей. Детали должны зависеть от абстракций.";}i:2;i:186;}i:12;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:655;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:657;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:657;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"Или";}i:2;i:659;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:665;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:665;}i:18;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:667;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:425:"Зависимости должны строится относительно абстракций, а не деталей.
На самом деле мы уже реализовывали этот принцип по мере изучения предыдущих
И чтобы не повторяться и чтобы вам было интересно приведем интересный жизненный пример.";}i:2;i:669;}i:20;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1094;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1096;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1096;}i:23;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1098;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"husband.php:";}i:2;i:1100;}i:25;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1112;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1114;}i:27;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:141:"
class lowRankingMale {
    public function eat() {
        $wife = new Wife();
        $food = $wife->getFood();
        // ... eat
    }
}
";i:1;N;i:2;N;}i:2;i:1121;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1121;}i:29;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1272;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"wife.php:";}i:2;i:1274;}i:31;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1283;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1285;}i:33;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:91:"
class Wife {
    public function getFood() {
        // ...
        return $food;
    }
}
";i:1;N;i:2;N;}i:2;i:1292;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1292;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:858:"В данной системе низкоранговый самец - экземпляр класса lowRankingMale жестко зависит от класса Wife причем у него даже нет возможности выбора.
Такая система крайне не гибкая и если придется вносить изменения, то сделать это будет сложно. Если мы будем изменять класс Wife, то мы нарушим принцип Открытости/Закрытости.
Если мы создадим потомок класса Wife, то придется менять класс lowRankingMale и скорее всего другие иные классы, так как класс Wife может быть использован и в других классах.";}i:2;i:1394;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2252;}i:37;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2252;}i:38;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2254;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"husband.php:";}i:2;i:2256;}i:40;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2268;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2270;}i:42;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:229:"
class averageRankingMale {
 
    private $wife;
 
    public function __construct(Wife $wife) {
        $this->wife = $wife;
    }
 
    public function eat() {
        $food = $this->wife->getFood();
        // ... eat
    }
}
";i:1;N;i:2;N;}i:2;i:2277;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2277;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:383:"В этой системе среднеранговый самец уже по-умнее и может принимать разные экземпляры класса Wife. Но тем не менее у нас все равно остается жесткая зависимость от класса Wife и другой класс мы использовать не можем.";}i:2;i:2517;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2900;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2900;}i:47;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2902;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"husband.php:";}i:2;i:2904;}i:49;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2916;}i:50;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2918;}i:51;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:275:"
class highRankingMale {
 
    private $foodProvider;
 
    public function __construct(IFoodProvider $foodProvider) {
        $this->foodProvider = $foodProvider;
    }
 
    public function eat() {
        $food = $this->foodProvider->getFood();
        // ... eat
    }
}
";i:1;N;i:2;N;}i:2;i:2925;}i:52;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2925;}i:53;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:3210;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"IFoodProvider.php:";}i:2;i:3212;}i:55;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:3230;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3232;}i:57;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:60:"
interface IFoodProvider {
    public function getFood();
}
";i:1;N;i:2;N;}i:2;i:3239;}i:58;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3239;}i:59;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:3309;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"restaurant.php:";}i:2;i:3311;}i:61;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:3326;}i:62;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3328;}i:63;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:122:"
class Restaurant implements IFoodProvider {
    public function getFood() {
        // ...
        return $food;
    }
}
";i:1;N;i:2;N;}i:2;i:3335;}i:64;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3335;}i:65;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:3468;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"wife.php:";}i:2;i:3470;}i:67;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:3479;}i:68;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3481;}i:69;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:115:"
class Wife implements IFoodProvider{
    public function getFood() {
        // ...
        return $food;
    }
}
";i:1;N;i:2;N;}i:2;i:3488;}i:70;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3488;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:489:"А вот уже высокоранговый самец (highRankingMale) имеет полную свободу. Он не привязан ни к какому классу, а привязан к абстракции - к набору свойств.
И для того чтобы удовлетворить потребность в еде, он может выбрать любой объект класса который реализовывает интерфейс IFoodProvider.";}i:2;i:3613;}i:72;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4102;}i:73;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4102;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:110:"Выбирайте высокоранговый путь, друзья - и в коде и в жизни! ))))";}i:2;i:4104;}i:75;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4214;}i:76;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4216;}i:77;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4216;}}