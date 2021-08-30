
<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

- [REST](#rest)
      - [How to handle security in application](#how-to-handle-security-in-application)
      - [How 2 services interact with each other](#how-2-services-interact-with-each-other)
      - [Circuit breaker](#circuit-breaker)
      - [Load balancer](#load-balancer)
      - [Microservies](#microservies)
      - [SOAP](#soap)
      - [How to create restful application](#how-to-create-restful-application)
- [Spring](#spring)
      - [Scope of Bean & Why & when to use](#scope-of-bean-why-when-to-use)
      - [Types of injection & which is preferable](#types-of-injection-which-is-preferable)
      - [@Primary](#primary)
      - [How to execute custom logic before initialiation](#how-to-execute-custom-logic-before-initialiation)
      - [How to scan components in other package](#how-to-scan-components-in-other-package)
      - [@Controller vs @RestController](#controller-vs-restcontroller)
      - [IoC vs DI](#ioc-vs-di)
- [Spring Boot](#spring-boot)
      - [Advantage of Spring Boot over Spring](#advantage-of-spring-boot-over-spring)
      - [How to refer data from application.properties inside a bean](#how-to-refer-data-from-applicationproperties-inside-a-bean)
      - [Components of spring boot](#components-of-spring-boot)
      - [Spring Actuator](#spring-actuator)
      - [Spring boot initializer](#spring-boot-initializer)
      - [Spring Batch](#spring-batch)
      - [Connect 2 database in spring boot](#connect-2-database-in-spring-boot)
      - [Repositories other than JPARepository](#repositories-other-than-jparepository)
- [Caching](#caching)
      - [How to do caching in  application](#how-to-do-caching-in-application)
- [Functional Test](#functional-test)
      - [Any tools to automate functional testing](#any-tools-to-automate-functional-testing)
- [Unit Testing](#unit-testing)
      - [Mokito](#mokito)
      - [@Before](#before)
- [Performance Tuning](#performance-tuning)
      - [Code optimization tools](#code-optimization-tools)
- [Core Java](#core-java)
      - [Is static block thread safe](#is-static-block-thread-safe)
      - [Can static methods overriden](#can-static-methods-overriden)
      - [Exception in parent class can be omitted in sub class](#exception-in-parent-class-can-be-omitted-in-sub-class)
      - [Why we use encapsulation](#why-we-use-encapsulation)
      - [Blocking Queue](#blocking-queue)
      - [Fail Fast vs Fail Safe](#fail-fast-vs-fail-safe)
      - [What is reflection](#what-is-reflection)
      - [Loose coupling vs Tight Coupling](#loose-coupling-vs-tight-coupling)
      - [How many ways to create object](#how-many-ways-to-create-object)
      - [How to connect to database](#how-to-connect-to-database)
      - [Hot not ot serialize a variable in a object](#hot-not-ot-serialize-a-variable-in-a-object)
      - [Volatile](#volatile)
      - [Advantage of StreaAPI](#advantage-of-streaapi)
      - [Disadvantage of StreamAPI](#disadvantage-of-streamapi)
      - [Prallel vs Sequenctial stream api](#prallel-vs-sequenctial-stream-api)
      - [Statement vs Prepared Statement](#statement-vs-prepared-statement)
      - [Name few functional interfaces](#name-few-functional-interfaces)
      - [Intermediate vs Terminal Operation](#intermediate-vs-terminal-operation)
      - [How to use treemap](#how-to-use-treemap)
    - [HasMap](#hasmap)
      - [How Hasmap works](#how-hasmap-works)
      - [Keys in Hasmap](#keys-in-hasmap)
      - [Keys in Hasmap](#keys-in-hasmap-1)
      - [How object has same hashcode everytime](#how-object-has-same-hashcode-everytime)
      - [What is loadfactor in hashmap](#what-is-loadfactor-in-hashmap)
      - [Changes to hashmap in Java8](#changes-to-hashmap-in-java8)
  - [String](#string)
      - [String builder vs String buffer](#string-builder-vs-string-buffer)
      - [String builder declared as final, will append work](#string-builder-declared-as-final-will-append-work)
      - [Is String immutable & Why](#is-string-immutable-why)
  - [Exception](#exception)
      - [What is error class](#what-is-error-class)
      - [Custom exception handling](#custom-exception-handling)
      - [Exception inheritance](#exception-inheritance)
      - [final , finally](#final-finally)
      - [throw, throws](#throw-throws)
      - [What happens when an exception is thrown from finally block](#what-happens-when-an-exception-is-thrown-from-finally-block)
      - [When to use finally](#when-to-use-finally)
    - [Multithreading](#multithreading)
      - [Ways to create thread](#ways-to-create-thread)
      - [Concurrent COllection](#concurrent-collection)
      - [Realtime usage of multi thread](#realtime-usage-of-multi-thread)
      - [Executor Framework](#executor-framework)
- [DB](#db)
      - [SQL Injection](#sql-injection)
      - [Storedprocedure vs function](#storedprocedure-vs-function)
      - [Data normalization & its types](#data-normalization-its-types)
      - [General consideration to design database](#general-consideration-to-design-database)
- [Desing Pattern](#desing-pattern)
      - [Singleton & Ways to create Singleton](#singleton-ways-to-create-singleton)
      - [When to use Singleton](#when-to-use-singleton)
      - [Factory Desing Patern](#factory-desing-patern)

<!-- /code_chunk_output -->


# REST

#### How to handle security in application


#### How 2 services interact with each other


#### Circuit breaker


#### Load balancer


#### Microservies


#### SOAP


#### How to create restful application




# Spring
#### Scope of Bean & Why & when to use
Prototype is used in threaded environment



#### Types of injection & which is preferable
Constructor inject is preferable

#### @Primary


#### How to execute custom logic before initialiation
* static block
* constructor
* @PostConstruct
* InitializingBean

#### How to scan components in other package
@ComponentScan

#### @Controller vs @RestController

#### IoC vs DI

# Spring Boot

#### Advantage of Spring Boot over Spring

#### How to refer data from application.properties inside a bean
`@Value("${key}")`

#### Components of spring boot

#### Spring Actuator

#### Spring boot initializer

#### Spring Batch


#### Connect 2 database in spring boot
`@Table(schema = "users")`
`2 entityManager & transactionManager`
`@Transaction("txnMgr1")`
[Reference](https://www.baeldung.com/spring-data-jpa-multiple-databases)


#### Repositories other than JPARepository

# Caching
#### How to do caching in  application

# Functional Test
#### Any tools to automate functional testing

# Unit Testing


####  Mokito


#### @Before

# Performance Tuning

####  Code optimization tools


# Core Java
#### Is static block thread safe
Yes

#### Can static methods overriden

#### Exception in parent class can be omitted in sub class
Yes, inverse not possible



#### Why we use encapsulation


#### Blocking Queue


#### Fail Fast vs Fail Safe
Fail safe - Iterator, Concurrent collection
Fail fast - foreach - Concurrent Modification Exception

#### What is reflection

#### Loose coupling vs Tight Coupling

#### How many ways to create object

#### How to connect to database


#### Hot not ot serialize a variable in a object
transient keyword


#### Volatile



#### Advantage of StreaAPI
* strong affinity with functions.
* encourage less mutability.
*  encourage looser coupling
* clearly express quite sophisticated behaviou
* provide scope for future efficiency gains
* more declarative style

#### Disadvantage of StreamAPI
* Performance
* Familiarity
* Cognitive overhead
* Debuggers
* [Reference](https://stackoverflow.com/questions/44180101/in-java-what-are-the-advantages-of-streams-over-loops/44183051)

#### Prallel vs Sequenctial stream api

Parallel streams enable us to execute code in parallel on separate cores
[Reference](https://www.baeldung.com/java-when-to-use-parallel-stream)
```java
listOfNumbers.parallelStream().forEach(number ->
    System.out.println(number + " " + Thread.currentThread().getName())
);
```

#### Statement vs Prepared Statement


#### Name few functional interfaces

#### Intermediate vs Terminal Operation
* Intermediate  `flatMap, map, sorted, filter`
* Terminal `forEach, findFirst, allMatch, noneMatch, anyMatch, findAny`



#### How to use treemap

### HasMap 

#### How Hasmap works

#### Keys in Hasmap

#### Keys in Hasmap
Object default hashcode - memory addresss
Object default equal - className + hex(hascode())

#### How object has same hashcode everytime


#### What is loadfactor in hashmap
The [load factor](https://www.baeldung.com/java-hashmap-load-factor) is the measure that decides when to increase the capacity of the Map. The default load factor is 75% of the capacity.

#### Changes to hashmap in Java8


## String

#### String builder vs String buffer

#### String builder declared as final, will append work


#### Is String immutable & Why
Yes. [Because](https://www.baeldung.com/java-string-immutable)

## Exception

#### What is error class

####  Custom exception handling


#### Exception inheritance

#### final , finally

#### throw, throws

#### What happens when an exception is thrown from finally block


#### When to use finally


### Multithreading

#### Ways to create thread

#### Concurrent COllection

#### Realtime usage of multi thread

#### Executor Framework

# DB

#### SQL Injection 



#### Storedprocedure vs function 
* The function must return a value , SP its optional
* Functions can have only input parameters for it whereas Procedures can have input or output parameters
* Functions can be called from Procedure whereas Procedures cannot be called from a Function
* Function allows only select
* Exception & transaction handled in stored procedure

#### Data normalization & its types 

#### General consideration to design database
* Organize the informatio
* Divide the information into tables   
* Turn information items into columns    
* Specify primary keys    
* Set up the table relationships    
* Apply the normalization rules    


# Desing Pattern

#### Singleton & Ways to create Singleton

#### When to use Singleton

#### Factory Desing Patern

