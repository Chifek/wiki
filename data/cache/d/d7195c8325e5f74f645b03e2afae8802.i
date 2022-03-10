a:65:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:83:"Принцип открытости / закрытости. (Open/closed principle)";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:478:"Второй принцип из списка принципов SOLID.
Классы (модули, функции) должны быть открыты для расширения и закрыты для изменения.
Иными словами приложение следует проектировать так чтобы для изменения поведения класса, 
нам не потребовалось менять код самого класса.";}i:2;i:101;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:579;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:579;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:172:"Для демонстрации этого принципа продолжим модификацию примера из предыдущего принципа.
Дано:";}i:2;i:581;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:753;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:753;}i:10;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:755;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"index.php:";}i:2;i:757;}i:12;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:767;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:769;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:83:"
$logger  = new Logger();
$product = new Product($logger);
$product->setPrice(10);
";i:1;N;i:2;N;}i:2;i:777;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:777;}i:16;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:870;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"product.php";}i:2;i:872;}i:18;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:883;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:885;}i:20;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:303:"
protected $logger;
     
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
";i:1;N;i:2;N;}i:2;i:892;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:892;}i:22;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1206;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"logger.php";}i:2;i:1208;}i:24;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1218;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1220;}i:26;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:175:"
class Logger {
    private function saveToFile($message) {
        //...
    }
    public function log($message) {
        //...
        $this->saveToFile($message);
    }
}
";i:1;N;i:2;N;}i:2;i:1227;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1227;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:269:"В данном примере мы имеем два класса. Класс Product который отвечает за работу с товаром. 
И класс Logger цель которого логировать ошибки в текстовый файл.";}i:2;i:1412;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1681;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1681;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:353:"Задача:
Сделать логирование не в текстовый файл, а в базу данных.
(либо логироваться в БД должен только класс Product, но другие классы, которые используют Logger, 
должны логировать в файл как и прежде)";}i:2;i:1683;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2036;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2036;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:605:"В данном примере, для того чтобы реализовать требования заказчика, мы нарушаем принцип открытости/закрытости.
Так как будем вынуждены модифицировать существующие классы.
Если функционал нашей системы не сложен, то этим можно пренебречь, 
но если система у нас большая, то изменения в классах могут вызвать непредсказуемые ошибки.";}i:2;i:2038;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2643;}i:36;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2643;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:199:"Для того чтобы следовать принципу открытости/закрытости организовать нашу систему можно следующим образом.";}i:2;i:2645;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2844;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2844;}i:40;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2846;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"LoggerInterface.php:";}i:2;i:2848;}i:42;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2868;}i:43;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2870;}i:44;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:50:"
interface ILogger {
    public function log();
}
";i:1;N;i:2;N;}i:2;i:2877;}i:45;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2877;}i:46;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2937;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"logger.php:";}i:2;i:2939;}i:48;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2950;}i:49;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2952;}i:50;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:395:"
class FileLogger implements ILogger {
 
    private function saveToFile($message) {
        //...
    }
    public function log($message) {
        //...
        $this->saveToFile($message);
    }
}
 
class DBLogger implements ILogger {
 
    private function saveToDB($message) {
        //...
    }
    public function log($message) {
        //...
        $this->saveToDB($message);
    }
}
";i:1;N;i:2;N;}i:2;i:2959;}i:51;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2959;}i:52;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:3364;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"product.php:";}i:2;i:3366;}i:54;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:3378;}i:55;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3380;}i:56;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:304:"
protected $logger;
     
    public function __construct(ILogger $logger) {
        $this->logger = $logger;
    }
 
    public function setPrice($price) {
        try {
            // save price in db
        } catch (DbException $e) {
            $this->logger->log($e->getMessage());
        }
    }
";i:1;N;i:2;N;}i:2;i:3387;}i:57;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3387;}i:58;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:3702;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"index.php:";}i:2;i:3704;}i:60;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:3714;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3716;}i:62;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:85:"
$logger  = new DBLogger();
$product = new Product($logger);
$product->setPrice(10);
";i:1;N;i:2;N;}i:2;i:3723;}i:63;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3818;}i:64;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3818;}}