a:107:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:23:"Реестр (Registry)";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:447:"Хотелось бы начать с этого шаблона. Он немного выбивается из общего ряда, потому что не является порождающим, но в дальнейшем нам потребуется его знание. Итак, реестр – это хэш, доступ к данным у которого осуществляется через статические методы:";}i:2;i:39;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:486;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1164:"

<?php
/**
 * Реестр
 */
class Product
{

    /**
     * @var mixed[]
     */
    protected static $data = array();


    /**
     * Добавляет значение в реестр
     *
     * @param string $key
     * @param mixed $value
     * @return void
     */
    public static function set($key, $value)
    {
        self::$data[$key] = $value;
    }

    /**
     * Возвращает значение из реестра по ключу
     *
     * @param string $key
     * @return mixed
     */
    public static function get($key)
    {
        return isset(self::$data[$key]) ? self::$data[$key] : null;
    }

    /**
     * Удаляет значение из реестра по ключу
     *
     * @param string $key
     * @return void
     */
    final public static function removeProduct($key)
    {
        if (array_key_exists($key, self::$data)) {
            unset(self::$data[$key]);
        }
    }
}

/*
 * =====================================
 *           USING OF REGISTRY
 * =====================================
 */

Product::set('name', 'First product');

print_r(Product::get('name'));
// First product

";i:1;N;i:2;N;}i:2;i:493;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:493;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:342:"Нередко можно встретить реестры, реализующие интерфейсы ArrayAccess и/или Iterator, но на мой взгляд, это лишнее. Основное применение реестра – в качестве безопасной замены глобальным переменным.";}i:2;i:1669;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2011;}i:10;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2014;}i:11;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:37:"Пул объектов (Object pool)";i:1;i:2;i:2;i:2014;}i:2;i:2014;}i:12;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2014;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2014;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:320:"Этот шаблон, по сути, является частным случаем реестра. Пул объектов – это хэш, в который можно складывать инициализированные объекты и доставать их оттуда при необходимости:";}i:2;i:2066;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2386;}i:16;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1649:"

<?php
/**
 * Пул объектов
 */
class Factory
{

    /**
     * @var Product[]
     */
    protected static $products = array();


    /**
     * Добавляет продукт в пул
     *
     * @param Product $product
     * @return void
     */
    public static function pushProduct(Product $product)
    {
        self::$products[$product->getId()] = $product;
    }

    /**
     * Возвращает продукт из пула
     *
     * @param integer|string $id - идентификатор продукта
     * @return Product $product
     */
    public static function getProduct($id)
    {
        return isset(self::$products[$id]) ? self::$products[$id] : null;
    }

    /**
     * Удаляет продукт из пула
     *
     * @param integer|string $id - идентификатор продукта
     * @return void
     */
    public static function removeProduct($id)
    {
        if (array_key_exists($id, self::$products)) {
            unset(self::$products[$id]);
        }
    }
}

class Product
{

    /**
     * @var integer|string
     */
    protected $id;


    public function __construct($id) {
        $this->id = $id;
    }

    /**
     * @return integer|string
     */
    public function getId()
    {
        return $this->id;
    }
}

/*
 * =====================================
 *         USING OF OBJECT POOL
 * =====================================
 */

Factory::pushProduct(new Product('first'));
Factory::pushProduct(new Product('second'));

print_r(Factory::getProduct('first')->getId());
// first
print_r(Factory::getProduct('second')->getId());
// second


";i:1;N;i:2;N;}i:2;i:2394;}i:17;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4054;}i:18;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:28:"Одиночка (Singleton)";i:1;i:2;i:2;i:4054;}i:2;i:4054;}i:19;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:4054;}i:20;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4054;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:337:"Наверное, один из самых популярных шаблонов. Как правило, его все запоминают первым. А ещё при поиске работы про него очень любят спрашивать на собеседованиях. Вот самый простой пример:";}i:2;i:4097;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4434;}i:23;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1224:"

<?php
/**
 * Одиночка
 */
final class Product
{

    /**
     * @var self
     */
    private static $instance;

    /**
     * @var mixed
     */
    public $a;


    /**
     * Возвращает экземпляр себя
     *
     * @return self
     */
    public static function getInstance()
    {
        if (!(self::$instance instanceof self)) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    /**
     * Конструктор закрыт
     */
    private function __construct()
    {
    }

    /**
     * Клонирование запрещено
     */
    private function __clone()
    {
    }

    /**
     * Сериализация запрещена
     */
    private function __sleep()
    {
    }

    /**
     * Десериализация запрещена
     */
    private function __wakeup()
    {
    }
}

/*
 * =====================================
 *           USING OF SINGLETON
 * =====================================
 */

$firstProduct = Product::getInstance();
$secondProduct = Product::getInstance();

$firstProduct->a = 1;
$secondProduct->a = 2;

print_r($firstProduct->a);
// 2
print_r($secondProduct->a);
// 2

";i:1;N;i:2;N;}i:2;i:4441;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4441;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:998:"Принцип синглтона прост, как пять копеек. Для того, чтобы обеспечить существование только одного экземпляра класса Product, мы закрыли все магические методы для создания экземпляра класса, клонирования и сериализации. Единственный возможный способ получить объект – воспользоваться статическим методом Product::getInstance(). При первом обращении класс сам создаст экземпляр себя и положит его в статическое свойство Product::$instance. При последующих обращениях, в рамках выполнения скрипта, метод будет нам возвращать тот же, ранее созданный, экземпляр класса.";}i:2;i:5675;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6673;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6673;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:347:"Я добавил в класс открытое свойство $a, чтобы продемонстрировать работу одиночки. В данном примере можно увидеть, что и $firstProduct, и $secondProduct – есть ни что иное, как ссылка на один и тот же объект.";}i:2;i:6675;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7022;}i:30;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7025;}i:31;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:34:"Пул одиночек (Multiton)";i:1;i:2;i:2;i:7025;}i:2;i:7025;}i:32;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:7025;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7025;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:419:"Возможно, кому-то захочется использовать множество различных синглтонов в своём проекте. Тогда, наверное, стоит отделить логику шаблона от конкретной реализации. Давайте попробуем скрестить шаблоны «Одиночка» и «Пул объектов»:";}i:2;i:7074;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7493;}i:36;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:2864:"
<?php
/**
 * Общий интерфейс пула одиночек
 */
abstract class FactoryAbstract
{

    /**
     * @var array
     */
    protected static $instances = array();


    /**
     * Возвращает экземпляр класса, из которого вызван
     *
     * @return static
     */
    public static function getInstance()
    {
        $className = static::getClassName();
        if (!(self::$instances[$className] instanceof $className)) {
            self::$instances[$className] = new $className();
        }
        return self::$instances[$className];
    }

    /**
     * Удаляет экземпляр класса, из которого вызван
     *
     * @return void
     */
    public static function removeInstance()
    {
        $className = static::getClassName();
        if (array_key_exists($className, self::$instances)) {
            unset(self::$instances[$className]);
        }
    }

    /**
     * Возвращает имя экземпляра класса
     *
     * @return string
     */
    final protected static function getClassName()
    {
        return get_called_class();
    }

    /**
     * Конструктор закрыт
     */
    protected function __construct()
    {
    }

    /**
     * Клонирование запрещено
     */
    final protected function __clone()
    {
    }

    /**
     * Сериализация запрещена
     */
    final protected function __sleep()
    {
    }

    /**
     * Десериализация запрещена
     */
    final protected function __wakeup()
    {
    }
}

/**
 * Интерфейс пула одиночек
 */
abstract class Factory extends FactoryAbstract
{

    /**
     * Возвращает экземпляр класса, из которого вызван
     *
     * @return static
     */
    final public static function getInstance()
    {
        return parent::getInstance();
    }

    /**
     * Удаляет экземпляр класса, из которого вызван
     *
     * @return void
     */
    final public static function removeInstance()
    {
        parent::removeInstance();
    }
}

/*
 * =====================================
 *           USING OF MULTITON
 * =====================================
 */

/**
 * Первый одиночка
 */
class FirstProduct extends Factory
{
    public $a = [];
}

/**
 * Второй одиночка
 */
class SecondProduct extends FirstProduct
{
}

// Заполняем свойства одиночек
FirstProduct::getInstance()->a[] = 1;
SecondProduct::getInstance()->a[] = 2;
FirstProduct::getInstance()->a[] = 3;
SecondProduct::getInstance()->a[] = 4;

print_r(FirstProduct::getInstance()->a);
// array(1, 3)
print_r(SecondProduct::getInstance()->a);
// array(2, 4)
";i:1;N;i:2;N;}i:2;i:7500;}i:37;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7500;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:370:"Итак, для добавления нового класса-одиночки нам просто нужно унаследовать его от класса Factory. В примере мы создали два таких класса и проверили, что у каждого из этих классов свой единственный экземпляр.";}i:2;i:10374;}i:39;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10744;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10744;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:377:"Я не случайно разбил общую логику на два абстрактных класса. Теперь давайте ещё немного усложним пример. Позволим создавать несколько одиночек для каждого класса, отличающихся уникальным идентификатором.";}i:2;i:10746;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11123;}i:43;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:2941:"
<?php
/**
 * Интерфейс сложного пула одиночек
 */
abstract class RegistryFactory extends FactoryAbstract
{

    /**
     * Возвращает экземпляр класса, из которого вызван
     *
     * @param integer|string $id - уникальный идентификатор одиночки
     * @return static
     */
    final public static function getInstance($id)
    {
        $className = static::getClassName();
        if (isset(self::$instances[$className])) {
            if (!(self::$instances[$className][$id] instanceof $className)) {
                self::$instances[$className][$id] = new $className($id);
            }
        } else {
            self::$instances[$className] = [
                $id => new $className($id),
            ];
        }
        return self::$instances[$className][$id];
    }

    /**
     * Удаляет экземпляр класса, из которого вызван
     *
     * @param integer|string $id - уникальный идентификатор одиночки. Если не указан, все экземпляры класса будут удалены
     * @return void
     */
    final public static function removeInstance($id = null)
    {
        $className = static::getClassName();
        if (isset(self::$instances[$className])) {
            if (is_null($id)) {
                unset(self::$instances[$className]);
            } else {
                if (isset(self::$instances[$className][$id])) {
                    unset(self::$instances[$className][$id]);
                }
                if (empty(self::$instances[$className])) {
                    unset(self::$instances[$className]);
                }
            }
        }
    }

    protected function __construct($id)
    {
    }
}

/*
 * =====================================
 *           USING OF MULTITON
 * =====================================
 */

/**
 * Первый пул одиночек
 */
class FirstFactory extends RegistryFactory
{
    public $a = [];
}

/**
 * Второй пул одиночек
 */
class SecondFactory extends FirstFactory
{
}

// Заполняем свойства одиночек
FirstFactory::getInstance('FirstProduct')->a[] = 1;
FirstFactory::getInstance('SecondProduct')->a[] = 2;
SecondFactory::getInstance('FirstProduct')->a[] = 3;
SecondFactory::getInstance('SecondProduct')->a[] = 4;
FirstFactory::getInstance('FirstProduct')->a[] = 5;
FirstFactory::getInstance('SecondProduct')->a[] = 6;
SecondFactory::getInstance('FirstProduct')->a[] = 7;
SecondFactory::getInstance('SecondProduct')->a[] = 8;

print_r(FirstFactory::getInstance('FirstProduct')->a);
// array(1, 5)
print_r(FirstFactory::getInstance('SecondProduct')->a);
// array(2, 6)
print_r(SecondFactory::getInstance('FirstProduct')->a);
// array(3, 7)
print_r(SecondFactory::getInstance('SecondProduct')->a);
// array(4, 8)
";i:1;N;i:2;N;}i:2;i:11130;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11130;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:208:"Примерно по такому принципу работают некоторые ORM, позволяя хранить уже загруженные и инициализированные модели.";}i:2;i:14081;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:14289;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:14289;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1156:"А теперь, пока ещё не слишком поздно, верну мечтателей с небес на землю. Шаблон Одиночка и его продвинутые братья, несомненно, могут быть полезны, но не надо забываться и лепить его где нужно и где не нужно. Напомню (или поведаю), что есть такой антипаттерн, «Одиночество» (Singletonitis), который как раз заключается в неуместном использовании синглтонов. Так для чего же нам этот шаблон? Самый распространённый пример – соединение с базой данных, которое создаётся один раз и используется на протяжении работы скрипта. А ещё во многих фреймворках реестр делают одиночкой и используют его, как объект, а не как класс со статическими методами.";}i:2;i:14291;}i:49;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:15447;}i:50;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:15449;}i:51;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:46:"Фабричный метод (Factory method)";i:1;i:2;i:2;i:15449;}i:2;i:15449;}i:52;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:15449;}i:53;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:15449;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:508:"А теперь предлагаю немного понизить градус и снова вернуться к истокам. Допустим, мы знаем, что бывают фабрики, производящие какой-то свой продукт. Нам не важно, как именно фабрика делает этот продукт, но мы знаем, что у любой фабрики есть один универсальный способ попросить его:";}i:2;i:15510;}i:55;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:16018;}i:56;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1787:"
<?php
/**
 * Фабрика
 */
interface Factory
{

    /**
     * Возвращает продукт
     *
     * @return Product
     */
    public function getProduct();
}

/**
 * Продукт
 */
interface Product
{

    /**
     * Возвращает название продукта
     *
     * @return string
     */
    public function getName();
}

/**
 * Первая фабрика
 */
class FirstFactory implements Factory
{

    /**
     * Возвращает продукт
     *
     * @return Product
     */
    public function getProduct()
    {
        return new FirstProduct();
    }
}

/**
 * Вторая фабрика
 */
class SecondFactory implements Factory
{

    /**
     * Возвращает продукт
     *
     * @return Product
     */
    public function getProduct()
    {
        return new SecondProduct();
    }
}

/**
 * Первый продукт
 */
class FirstProduct implements Product
{

    /**
     * Возвращает название продукта
     *
     * @return string
     */
    public function getName()
    {
        return 'The first product';
    }
}

/**
 * Второй продукт
 */
class SecondProduct implements Product
{

    /**
     * Возвращает название продукта
     *
     * @return string
     */
    public function getName()
    {
        return 'Second product';
    }
}

/*
 * =====================================
 *        USING OF FACTORY METHOD
 * =====================================
 */

$factory = new FirstFactory();
$firstProduct = $factory->getProduct();
$factory = new SecondFactory();
$secondProduct = $factory->getProduct();

print_r($firstProduct->getName());
// The first product
print_r($secondProduct->getName());
// Second product
";i:1;N;i:2;N;}i:2;i:16025;}i:57;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:16025;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:91:"В данном примере метод getProduct() является фабричным.";}i:2;i:17822;}i:59;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:17913;}i:60;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:17915;}i:61;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:56:"Абстрактная фабрика (Abstract Factory)";i:1;i:2;i:2;i:17915;}i:2;i:17915;}i:62;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:17915;}i:63;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:17915;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:368:"Бывает ситуация, когда у нас есть несколько однотипных фабрик и мы хотим инкапсулировать логику выбора, какую из фабрик использовать для той или иной задачи. Тут-то нам на помощь и приходит этот шаблон.";}i:2;i:17985;}i:65;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:18353;}i:66;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:2669:"
<?php
/**
 * Какой-нибудь файл конфигурации
 */
class Config
{
    public static $factory = 1;
}

/**
 * Какой-то продукт
 */
interface Product
{

    /**
     * Возвращает название продукта
     *
     * @return string
     */
    public function getName();
}

/**
 * Абстрактная фабрика
 */
abstract class AbstractFactory
{

    /**
     * Возвращает фабрику
     *
     * @return AbstractFactory - дочерний объект
     * @throws Exception
     */
    public static function getFactory()
    {
        switch (Config::$factory) {
            case 1:
                return new FirstFactory();
            case 2:
                return new SecondFactory();
        }
        throw new Exception('Bad config');
    }

    /**
     * Возвращает продукт
     *
     * @return Product
     */
    abstract public function getProduct();
}

/*
 * =====================================
 *             FIRST FAMILY
 * =====================================
 */

class FirstFactory extends AbstractFactory
{

    /**
     * Возвращает продукт
     *
     * @return Product
     */
    public function getProduct()
    {
        return new FirstProduct();
    }
}

/**
 * Продукт первой фабрики
 */
class FirstProduct implements Product
{

    /**
     * Возвращает название продукта
     *
     * @return string
     */
    public function getName()
    {
        return 'The product from the first factory';
    }
}

/*
 * =====================================
 *             SECOND FAMILY
 * =====================================
 */

class SecondFactory extends AbstractFactory
{

    /**
     * Возвращает продукт
     *
     * @return Product
     */
    public function getProduct()
    {
        return new SecondProduct();
    }
}

/**
 * Продукт второй фабрики
 */
class SecondProduct implements Product
{

    /**
     * Возвращает название продукта
     *
     * @return string
     */
    public function getName()
    {
        return 'The product from second factory';
    }
}

/*
 * =====================================
 *       USING OF ABSTRACT FACTORY
 * =====================================
 */

$firstProduct = AbstractFactory::getFactory()->getProduct();
Config::$factory = 2;
$secondProduct = AbstractFactory::getFactory()->getProduct();

print_r($firstProduct->getName());
// The first product from the first factory
print_r($secondProduct->getName());
// Second product from second factory

";i:1;N;i:2;N;}i:2;i:18360;}i:67;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:18360;}i:68;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:552:"Как видно из примера, нам не приходится заботится о том, какую фабрику взять. Абстрактная фабрика сама проверяет настройки конфигурации и возвращает подходящую фабрику. Разумеется, вовсе не обязательно абстрактная фабрика должна руководствоваться файлу конфигурации. Логика выбора может быть любой.";}i:2;i:21039;}i:69;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:21591;}i:70;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:21593;}i:71;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:69:"Отложенная инициализация (Lazy Initialization)";i:1;i:2;i:2;i:21593;}i:2;i:21593;}i:72;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:21593;}i:73;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:21593;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:436:"А вот вам ещё одна интересная ситуация. Представьте, что у вас есть фабрика, но вы не знаете, какая часть её функционала вам потребуется, а какая – нет. В таких случаях необходимые операции выполнятся только если они нужны и только один раз:";}i:2;i:21676;}i:75;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:22112;}i:76;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1819:"
<?php
/**
 * Какой-то продукт
 */
interface Product
{

    /**
     * Возвращает название продукта
     *
     * @return string
     */
    public function getName();
}

class Factory
{

    /**
     * @var Product
     */
    protected $firstProduct;

    /**
     * @var Product
     */
    protected $secondProduct;


    /**
     * Возвращает продукт
     *
     * @return Product
     */
    public function getFirstProduct()
    {

        if (!$this->firstProduct) {
            $this->firstProduct = new FirstProduct();
        }
        return $this->firstProduct;
    }

    /**
     * Возвращает продукт
     *
     * @return Product
     */
    public function getSecondProduct()
    {

        if (!$this->secondProduct) {
            $this->secondProduct = new SecondProduct();
        }
        return $this->secondProduct;
    }
}

/**
 * Первый продукт
 */
class FirstProduct implements Product
{

    /**
     * Возвращает название продукта
     *
     * @return string
     */
    public function getName()
    {
        return 'The first product';
    }
}

/**
 * Второй продукт
 */
class SecondProduct implements Product
{

    /**
     * Возвращает название продукта
     *
     * @return string
     */
    public function getName()
    {
        return 'Second product';
    }
}

/*
 * =====================================
 *      USING OF LAZY INITIALIZATION
 * =====================================
 */

$factory = new Factory();

print_r($factory->getFirstProduct()->getName());
// The first product
print_r($factory->getSecondProduct()->getName());
// Second product
print_r($factory->getFirstProduct()->getName());
// The first product
";i:1;N;i:2;N;}i:2;i:22119;}i:77;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:22119;}i:78;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:908:"При первом вызове метода, фабрика создаёт объект и сохраняет его в себя. При повторном вызове – возвращает уже готовый объект. Если бы мы не вызвали метод, объект бы не создался вовсе. Признаю, в данном примере мало смысла. Здесь использование этого шаблона не оправдано. Я просто хотел показать его смысл. А теперь представьте, что создание объекта требует сложных вычислений, многократных обращений к базе данных, да и ресурсов кушает массу. Весьма хороший повод обратить внимание на этот шаблон.";}i:2;i:23948;}i:79;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:24856;}i:80;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:24858;}i:81;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:28:"Прототип (Prototype)";i:1;i:2;i:2;i:24858;}i:2;i:24858;}i:82;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:24858;}i:83;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:24858;}i:84;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:473:"Некоторые объекты приходится создавать многократно. Есть смысл сэкономить на их инициализации, особенно, если инициализация требует времени и ресурсов. Прототип – это заранее инициализированный и сохранённый объект. В случае необходимости он клонируется:";}i:2;i:24901;}i:85;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:25374;}i:86;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1102:"
<?php
/**
 * Какой-то продукт
 */
interface Product
{
}

/**
 * Какая-то фабрика
 */
class Factory
{

    /**
     * @var Product
     */
    private $product;


    /**
     * @param Product $product
     */
    public function __construct(Product $product)
    {
        $this->product = $product;
    }

    /**
     * Возвращает новый продукт путём клонирования
     *
     * @return Product
     */
    public function getProduct()
    {
        return clone $this->product;
    }
}

/**
 * Продукт
 */
class SomeProduct implements Product
{
    public $name;
}

/*
 * =====================================
 *          USING OF PROTOTYPE
 * =====================================
 */

$prototypeFactory = new Factory(new SomeProduct());

$firstProduct = $prototypeFactory->getProduct();
$firstProduct->name = 'The first product';

$secondProduct = $prototypeFactory->getProduct();
$secondProduct->name = 'Second product';

print_r($firstProduct->name);
// The first product
print_r($secondProduct->name);
// Second product
";i:1;N;i:2;N;}i:2;i:25381;}i:87;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:25381;}i:88;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:115:"Как видно из примера мы создали два никак не связанных объекта.";}i:2;i:26493;}i:89;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:26608;}i:90;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:26608;}i:91;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"Строитель (Builder)";}i:2;i:26610;}i:92;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:26638;}i:93;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:26638;}i:94;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:349:"Ну и последний на сегодня шаблон – строитель. Он полезен, когда мы хотим инкапсулировать создание сложного объекта. Мы просто расскажем фабрике, какому строителю доверить создание продукта:";}i:2;i:26640;}i:95;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:26989;}i:96;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:2361:"
<?php
/**
 * Какой-то продукт
 */
class Product
{

    /**
     * @var string
     */
    private $name;


    /**
     * @param string $name
     */
    public function setName($name) {
        $this->name = $name;
    }

    /**
     * @return string
     */
    public function getName() {
        return $this->name;
    }
}

/**
 * Какая-то фабрика
 */
class Factory
{

    /**
     * @var Builder
     */
    private $builder;


    /**
     * @param Builder $builder
     */
    public function __construct(Builder $builder)
    {
        $this->builder = $builder;
        $this->builder->buildProduct();
    }

    /**
     * Возвращает созданный продукт
     *
     * @return Product
     */
    public function getProduct()
    {
        return $this->builder->getProduct();
    }
}

/**
 * Какой-то строитель
 */
abstract class Builder
{

    /**
     * @var Product
     */
    protected $product;


    /**
     * Возвращает созданный продукт
     *
     * @return Product
     */
    final public function getProduct()
    {
        return $this->product;
    }

    /**
     * Создаёт продукт
     *
     * @return void
     */
    public function buildProduct()
    {
        $this->product = new Product();
    }
}

/**
 * Первый строитель
 */
class FirstBuilder extends Builder
{

    /**
     * Создаёт продукт
     *
     * @return void
     */
    public function buildProduct()
    {
        parent::buildProduct();
        $this->product->setName('The product of the first builder');
    }
}

/**
 * Второй строитель
 */
class SecondBuilder extends Builder
{

    /**
     * Создаёт продукт
     *
     * @return void
     */
    public function buildProduct()
    {
        parent::buildProduct();
        $this->product->setName('The product of second builder');
    }
}

/*
 * =====================================
 *            USING OF BUILDER
 * =====================================
 */

$firstDirector = new Factory(new FirstBuilder());
$secondDirector = new Factory(new SecondBuilder());

print_r($firstDirector->getProduct()->getName());
// The product of the first builder
print_r($secondDirector->getProduct()->getName());
// The product of second builder
";i:1;N;i:2;N;}i:2;i:26996;}i:97;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:26996;}i:98;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:433:"Итак, мы рассмотрели 9 шаблонов проектирования. Это довольно длинная статья. Поэтому хотелось бы узнать ваше мнение. Есть ли смысл в проделанной работе и стоит ли мне завершить цикл, рассказав о структурных шаблонах и шаблонах поведения?";}i:2;i:29367;}i:99;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:29800;}i:100;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:29800;}i:101;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:75:"Весь опубликованный код можно найти и на ";}i:2;i:29802;}i:102;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:68:"https://github.com/Chifek/php-design-patterns/tree/master/Creational";i:1;s:14:"гитхабе";}i:2;i:29877;}i:103;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:29964;}i:104;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:29964;}i:105;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:29964;}i:106;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:29964;}}