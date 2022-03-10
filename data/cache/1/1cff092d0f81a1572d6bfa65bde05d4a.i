a:65:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:129:"Принцип единственной обязанности (ответственности)(Single responsibility principle).";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:358:"Этот принцип первый в списке принципов SOLID.
Обозначает, что любой объект должен иметь лишь одну обязанность и эта обязанность должна быть полностью реализована в классе объекта (инкапсулирована).";}i:2;i:147;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:505;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:505;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:145:"Из этого следует что должна быть одна причина чтобы вносить изменения в объект.";}i:2;i:508;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:653;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:653;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"Пример";}i:2;i:656;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:668;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:668;}i:13;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:670;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"index.php";}i:2;i:672;}i:15;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:681;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:683;}i:17;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:51:"
$product = new Product();
$product->setPrice(10);
";i:1;N;i:2;N;}i:2;i:691;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:691;}i:19;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:753;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"product.php";}i:2;i:755;}i:21;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:766;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:768;}i:23;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:244:"
class Product {
public function setPrice($price) {
    try {
        // save price in db
    } catch (DbException $e) {
        $this->logError($e->getMessage());
    }
}
 
public function logError($error) {
    // save error message
    }
}

";i:1;N;i:2;N;}i:2;i:776;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:776;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:176:"Класс Product нарушает принцип единственной ответственности, так как он имеет две ответственности:";}i:2;i:1030;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1206;}i:27;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:1206;}i:28;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1206;}i:29;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1206;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:" Работа с продуктом";}i:2;i:1210;}i:31;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1245;}i:32;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1245;}i:33;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1245;}i:34;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1245;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:" Логирование ошибок";}i:2;i:1249;}i:36;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1285;}i:37;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1285;}i:38;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:1285;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1285;}i:40;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1287;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"logger.php";}i:2;i:1289;}i:42;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1299;}i:43;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1301;}i:44;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:111:"
class Logger {
    public function log($message) {
        //...
        $this->saveToFile($message);
    }
}
";i:1;N;i:2;N;}i:2;i:1308;}i:45;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1308;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"Теперь изменим файл index.php:";}i:2;i:1429;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1476;}i:48;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1476;}i:49;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1478;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"index.php";}i:2;i:1480;}i:51;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1489;}i:52;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1491;}i:53;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:83:"
$logger  = new Logger();
$product = new Product($logger);
$product->setPrice(10);
";i:1;N;i:2;N;}i:2;i:1498;}i:54;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1498;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"Изменим класс Product:";}i:2;i:1591;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1625;}i:57;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1625;}i:58;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1627;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"product.php";}i:2;i:1629;}i:60;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1640;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1642;}i:62;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:324:"
class Product {
    private $logger;
      
    public function __construct(Logger $logger) {
        $this->logger = $logger;
    }
 
    public function setPrice($price) {
        try {
            // save price in db
        } catch (DbException $e) {
            $this->logger->log($e->getMessage());
        }
    }
}
";i:1;N;i:2;N;}i:2;i:1649;}i:63;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1983;}i:64;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1983;}}