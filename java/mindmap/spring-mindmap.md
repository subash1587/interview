* Spring
  * Dependency Injection
  * Inversion of Control
  * Advantages
    * Predefined Templates
    * Loose Coupling
    * Easy to test
    * Lightweight
    * Fast Development
    * Powerful Abstraction
    * Declarative support
  * Setter Injection
  * Constructor Injection
  * @Autowired
  * @Scope
    * Singleton
    * Prototype
    * Request
    * Session
    * 
  * @Indexed
  * @Component
    * @Controller - Scans for RequestMapping
        * @RestController - @ResponseBody
    * @Service
    * @Repository - Translated exception to dataAccessException
    * @Qualifier
  * @Value
  * @Lazy
  * @Lookup  
  * @PostConstruct
  * @PreDestroy
  * @Profile
  * @ImportResource
  * @PropertySource(s)

  * @Configuration
    * @Bean
    * @Primary
    * @PackageScan
    * @Import
    
  * Scheduling
    * @EnableScheduling
    * @Scheduled
  * Async
    * @EnableAsync
    * @Async
  * Caching
    * @EnableCaching
    * @Cacheable
  * SpringData
    * @EnableJpaRepositories
    * @NoRepositoryBean - exclude repository
    * @Query
      * @Param
    * JpaRepository
      * PagingAndSortingRepository
        * CrudRepository
      * QueryByExampleExecutor
    * @CreatedBy
    * @CreatedDate
    * @LastModifiedDate
    * @LastModifiedBy
    * @Procedure
    * @Modifying
    * @Lock
    
  * Design pattern used
    * Singleton Pattern – singleton-scoped beans
    * Factory Pattern – Bean Factory classes
    * Prototype Pattern – prototype-scoped beans
    * Adapter Pattern – Spring Web and Spring MVC
    * Proxy Pattern – Spring Aspect-Oriented Programming support
    * Template Method Pattern – JdbcTemplate, HibernateTemplate, etc.
    * Front Controller – Spring MVC DispatcherServlet
    * Data Access Object – Spring DAO support
    * Model View Controller – Spring MVC
  * Spring MVC
    * @RequestMapping
      * @GetMapping
      * @PostMapping
      * @PutMapping
      * @DeleteMapping
      * @PatchMapping
    * @RequestParam
    * @PathVariable
    * @RequestHeader
    * @RequestBody
    * @ResponseBoby
    * @ResponseStatus
    * @ModelAttribute
    * @ExceptionHandler
    * @ControllerAdvice extends @Component
  * Aspect
    * @EnableAspectJAutoProxy
    * @Aspect
    * @Around
    * @Before
    * @After
    * @AfterReturning
    * @AfterThrowing
    * @Pointcut


  * Spring Boot
    * @SpringBootApplication
      * @SpringBootConfiguration
      * @EnableAutoConfiguration
      * @ComponentScan
    * @ImportAutoConfiguration


    
    