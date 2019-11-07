# Getting Started

### Reference Documentation
For further reference, please consider the following sections:

* [Official Apache Maven documentation](https://maven.apache.org/guides/index.html)
* [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/docs/2.2.0.RELEASE/maven-plugin/)
* [Spring Web](https://docs.spring.io/spring-boot/docs/2.2.0.RELEASE/reference/htmlsingle/#boot-features-developing-web-applications)

### Guides
The following guides illustrate how to use some features concretely:

* [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
* [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/)
* [Building REST services with Spring](https://spring.io/guides/tutorials/bookmarks/)

### 使用策略模式
计算不同类型VIP用户获得的不同折扣
策略模式：
        定义一个行为接口，不同情况的实现类实现这一个接口，用不同的算法
        实现其中的行为方法。使用时可根据不同情况获得对应实例调用实例中
        的算法
结合工厂模式，在工厂模式中提供注册方法，将实现类注册到map集合中，策略
实现类实现InitializingBean接口，重写afterPropertiesSet方法，在
加载时，调用afterPropertiesSet方法在该方法中调用工厂类的注册方法实现
在类加载时把实例注册到map集合中，使用时可以根据不同情况使用工厂创建对应实例。

使用策略加工厂模式可以消除if-else判断（几乎switch-case适用的情况都可以使用策略模式）

使用spring autowired map集合的方式代替工厂类，将那个实现类指定名称，
使用时autowired map<String, Interface>类型的map集合，即可获得
该接口的所以实现类构成的map集合，使用时根据实现类名称获取即可
 
### 集成logback
在resources下新建logback-spring.xml配置文件