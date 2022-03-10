a:54:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:96:"Принцип разделения интерфейса (Interface Segregation Principle, ISP).";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"Четвертый SOLID принцип из пяти.
Формулировка:";}i:2;i:114;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:194;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:194;}i:7;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:196;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:119:"Клиенты не должны зависить от методов, которые они не используют.";}i:2;i:198;}i:9;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:317;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:319;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:319;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"или";}i:2;i:321;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:327;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:327;}i:15;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:329;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:126:"Много специализированных интерфейсов лучше, чем один универсальный.";}i:2;i:331;}i:17;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:457;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:459;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:459;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:514:"Иными словами большие, объемные интерфейсы надо разбивать на мелкие таким образом, чтобы клиенты
маленьких интерфейсов знали только о тех методах которые необходимы им в работе.
И чтобы при изменении метода интерфейса не должны меняться клиенты, которые этот метод не используют.";}i:2;i:462;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:976;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:976;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"Пример.";}i:2;i:978;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:991;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:991;}i:26;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:993;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"ITransformer.php:";}i:2;i:995;}i:28;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1012;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1014;}i:30;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:123:"
interface ISuperTransformer
{
    public function toCar();
    public function toPlane();
    public function toShip();
}
";i:1;N;i:2;N;}i:2;i:1021;}i:31;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1021;}i:32;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1154;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"transformers.php:";}i:2;i:1156;}i:34;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1173;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1175;}i:36;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:605:"
class SuperTransformer implements ISuperTransformer {
    public function toCar(){
        echo 'transform to car';
    }
     
    public function toPlane(){
        echo 'transform to plane';
    }
     
    public function toShip(){
        echo 'transform to ship';
    }
}
 
class CarTransformer implements ISuperTransformer {
    public function toCar(){
        echo 'transform to car';
    }
     
    public function toPlane(){
        throw new Exception('i can`t transform to plane');
    }
     
    public function toShip(){
        throw new Exception('i can`t transform to ship');
    }
}
";i:1;N;i:2;N;}i:2;i:1182;}i:37;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1182;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:"Разбиваем на несколько интерфейсов.";}i:2;i:1797;}i:39;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1863;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1863;}i:41;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1865;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"ITransformer.php:";}i:2;i:1867;}i:43;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1884;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1886;}i:45;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:188:"
interface ICarTransformer {
    public function toCar();
}
 
interface IPlaneTransformer {
    public function toPlane();
}
 
interface IShipTransformer {
    public function toShip();
}
";i:1;N;i:2;N;}i:2;i:1893;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1893;}i:47;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2091;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"transformers.php:";}i:2;i:2093;}i:49;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2110;}i:50;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2112;}i:51;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:220:"
class SuperTransformer implements ICarTransformer, IPlaneTransformer, IShipTransformer {
//...
}
 
class CarTransformer implements ICarTransformer {
    public function toCar(){
        echo 'transform to car';
    }
}
";i:1;N;i:2;N;}i:2;i:2119;}i:52;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2349;}i:53;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2349;}}