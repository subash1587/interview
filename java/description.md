# Custom exception

* App will have ApiException class which extends RuntimeException. 
Extending RuntimeException will prevent us writing the boiler platcode of try catch, throws at every calling method.

``` java
public class ApiException extends RuntimeException{
    ApiError apiError;


    public ApiException(ApiError apiError,Throwable ex){
        super(ex)
        this.apiError = apiErrorl
    }  

    public ApiError getApiError(){
        return apiError;
    } 
}
```

* Interface is used to standardise the error details & that interface will be passed as constructor argument of ApiException
```java 
public interface ApiError{
    int getHttpStatus();
    ErrorType getErrorType();
    String getErrorCode();
    String getErrorMessage();
}

public enum ErrorType{
    USER, APP
}

```

* Each Error Scenario, will be grouped & represented as enum & it implements the `ApiError` interface 

``` java
public enum UserError implements ApiError{
    NOT_AUTHORIZED(User, 400, "user.not.found","User not found" );

    private ErrorType type
    private String errorMessage;
    private String errorCode;
    private int httpStatus;

    private UserError(ErrorType type, int status, String code, String message){
        this.type = type;
        this.errorCode = code;
        this.errorMessage = message;
        this.httpStatus = status;
    }

    public int getHttpStatus() {return httpStatus;} 
    public ErrorType getErrorType() {return type;}
    public String getErrorCode() {return errorCode;}
    public String getErrorMessage() {return errorMessage;}

}

```

* In the code, when ever the error scenrio occurs, APIException is thrown with respective ApiError

```java

if(!password.equal(dbPassword)){
    throw new ApiException(UserError.NOT_AUTHORIZED, null);
}
```
* All the APIExceptions are handled using an ControllerAdvice class, where exception type is checked & if its APIException , respective details are returned as response
``` java

@ControllerAdvice
public class ExceptionLogAdvice {

    @ExceptionHandler(APIException.class)
    @ResponseBody
    public ResponseEntity<Object> handleApiException(final APIException apiException){
        ApiError apiError = apiException.getApiError();
        ErrorDetails details = new ErrorDetails();
        details.setErrorCode(apiError.getErrorCode());
        details.setErrorMsg(apiError.getErrorMessage())
        return ResponseEntity.status(apiError.getHttpStatus()).body(apiError);
    }
}

```


# Security in REST
* Authentication & Authorization is handled by AuthnAuthz services
    * The user logs in with a /login POST request containing his username and password
    * The server returns a authentication token
    * The user sends the token within each request via `Authorization` header 
        * *`Authorization : Bearer TOKEN`*.
    * AuthnAuthz Service intercepts all the incoming request & check for the token & pass on the request to downstream when its valid or else it with throw 401 (Not Authroized ) error
* Downstream service check for the `loggedin-user` header which has details of user like user id & roles & permission
* Use Filter to check if the header present & also any app specific roles/permission required to access the api

```java
@Component
@Order(1)
public class TransactionFilter implements Filter {

    @Override
    public void doFilter(
      ServletRequest request, 
      ServletResponse response, 
      FilterChain chain) throws IOException, ServletException {
 
        HttpServletRequest req = (HttpServletRequest) request;
        if(req.getHeader("loggedin-user") ==null) {
            //throw expection
        }
        //else procced
        chain.doFilter(request, response);
        
    }
}
```


# Logging
### App Log
* Spring boot uses Logback by default 
* Log Level `TRACE`,`DEBUG`,`INFO`,`WARN`, `ERROR`
```java
public class App{
    private static final Logger logger = LoggerFactory.getLogger(App.class);

    public void start(){
        try{
            logger.info("App Starting")
            logger.debug("Started at {}", new Date())
        }catch(Exception e){
            logger.warn("Ignoring exception" ,e);
            logger.error("Excpetion Occured", e)
        }
    }
}
```
* Logback can define different level of log to be written to console/file using logger
* Logback provides option to roll files once file reach specific size or at end of the day
* Useful for debuging issues

### Centralized Logging
Logs can be publised to service which writes & provide interface to search logs based on `tracking-id`

# CI/CD

These three phases take software from idea to delivery to the end-user
 
 * `Continuous integration` 
   * covers the process of multiple developers attempting to merge their code changes with the main code repository of a project
   * Implemented using Jenkins
   * Github hooks is setup to trigger the Jenkins Job when Pull Request is raised
   * Jenkins job, checkout out the PR code, runs maven install to complie & run the unit test cases
   * Checks the code coverage using Cobertura. If coverage is >= base line (85%) build passes
   * Runs Sonarqube static code analyser to check code complys with the code quality check.  If no Blocker, Critical, Major level failures, then build passes  

 * `Continuous delivery` 
   * This phase is extension of continuous integration. 
   * Automated building tools are run to generate this artifact. 
   * This build phase is kept ‘green,’ which means that the artifact should be ready to deploy to users at any given time
   * Implemented using Jenkins Job
   * When code merged to develop branch, job runs, builds the code, generates build.
   * Build is automatically deployed to a server
   * Functional tests are run against the server
   * If no errors in FT, build is good to be deployed & develop branch is in production ready state 

 * `Continuous deployment` 
   * Phase responsible for automatically deploy & launch the app. 
   * This will happen through scripts or tools that automatically move the build to servers
   * Devops will promte the build passed in Continuous delivery phase to production using automated scrips
   * Production environment can contains 10's & 100's of instances. Builds will be promoted in groups of different instances
   * Builds will be first deployed in 1 or few instances first. If no errors found will be deployed to other instances
   * In case of issue occured during deployment, rollback is performed & previous live build will be deployed
   * Code will have turn on/ off control to enable/disable feature in live. 
   * In case of issues feature will be turned off

# GIT

### Git command
* Git is a version control system for tracking changes in files
* GitHub is a Git repository hosting service that provides a web-based graphical interface.
* `git clone` creates a copy (or clone) of an existing git repository
* `git add .` add all changed files for commit
* `git commit -m "message" ` Commit changes to head 
* `git push `  Commit changes to head 
* `git pull` Get lastest changes from remote repo
* `git pull` Get lastest changes from remote repo

* `git status` shows the difference between the working directory and the index
* `git log` show the commit history
* `git add filname` add file to commit

* `head` is reference to the last commit object of a branch

### Git Dev process
#### Merge conflict
* Git to automatically merges the changes from commits, if the commits are on different lines or branches.
* When git is unable to automatically merge the code the two commits, the merge conflict occurs
* The `=======` line is the "center" of the conflict. 
* All the content between the center and the `<<<<<<< HEAD` line is content that exists in the current branch main which the HEAD ref is pointing to. 
* All content between the center and `>>>>>>> local_branch` is content that is present in our merging branch.

```  
 <<<<<<<< HEAD
 this is some content to mess with
 content to append
 =======
 totally different content to merge later
 >>>>>>> local_branch 
```
* Open the conflicted files, resolve the conflict, remove below line & do `git add` & `git commit`
  * `<<<<<<< HEAD`
  * `>>>>>>> local_branch` 
  * `=======` 

* File after resolving conflict
```
this is some content to mess with
content to append
totally different content to merge later
```
#### Development
* Fork the main repo under your user
* clone to local
* add main repo git to local using `git remote add upstream <main repo url>`
* use `git pull upstream` to regulary pull the latest changes from main repo
* resolve if any merge conflicts
* make changes, add, commit & push to forked repo
* build & test changes using Postman & FT
* Raise PR from fork repo to main repo
* if PR build is green. Code is good to merge


#### Project Deployment
* As part of CI, builds are generated with build id
* Build id can be deployed to any environment
* Build id basically unique identifier for the build generated out of the code
* Devops takes care of deployment. On logging into the instance buid jar can be found & its deployed as jar
* Run jar using `java -jar app.jar -Dkey=value -Dkey=value`

# Scrum
* Sprint Planning 
    * PO comes with user stories that can be taken up for the spsring
    * Team takes up the stories basedon capacity
    * Story points the stories at scale of 1,3,5,8.13
    * Add Tasks to Story
* Daily Standup
    * Previous day task
    * Current day task
    * Blockers
* Sprint Grooming
    * Groom stories & prioritize for upcoming sprint
* Demo
    * Show case the work done in sprint to product owner
    * Product owner accepts/ rejects the story
    * On reject - story taken on the next sprint to address the gaps
* Retrospective
    * Discuss on 
        * what went well
        * what didnot go well
        * Appreciations
        * blockers
        * Action items to work on
        * Status of Action items from previous sprint
* Scrum of Scrums
    * Meeting where all depenent teams participate & update the status & blockers. Occurs weekly once
* Manager/ Scrum Master facilitate the meeting

# Testing
#### Unit tests using junit & mockito
```java

public class Calculator{
    @Autowired
    CalculatorService calculatorService;

    public int add(int a, int b){
        return calculatorService.add(a,b)
    }

}

@RunWith(MockitoJUnitRunner.class)
public class CalculatorTest {

    @InjectMocks Calculator calculator;

    @Mock CalculatorService calculatorService;
    @Before
    public void setup() {
        // not required when @RunWith(MockitoJUnitRunner.class) is used
        MockitoAnnotations.initMocks(this);
    }

    @Test
    public void testCreatePaymentToken() {
        Mockito.when(calculatorService.add).thenReturn(1)
        int result = calculator.add(1,2);
        Assert.assertEquals(1,result)
    }
}

```
* Junit annotations
    * `@Test(timeout=500 , expected=IllegalArgumentException.class)`
    * `@Before @BeforeClass`
    * `@After @AfterClass`
    * `@Ignores` Disable  test cases during test execution
* Mockito
    * `when(listMock.add(anyString())).thenReturn(false);`
    * `when(listMock.add(anyString())).thenThrow(IllegalStateException.class);`
    * `doThrow(NullPointerException.class).when(listMock).clear();` Method with void return type
    * `when(listMock.size()).thenCallRealMethod();`
    * `doAnswer(invocation -> "Always the same").when(listMock).get(anyInt());`
* Mockito Verify is mock is called
    > List<String> mockedList = mock(MyList.class);
mockedList.size();
verify(mockedList).size();
verify(mockedList, times(1)).size();
verifyZeroInteractions(mockedList);

#### Function tests using HttpClient

```java
public class CalculatorFT{
    //-DAPP_URL=http://localhost:8080/app/v1
    String baseUrl = System.getProperty("APP_URL")

    public void addTest(){
        HttpClient httpclient = HttpClients.createDefault();
        HttpGet httpget = new HttpGet(baseUrl+"/add?a=1&b=2");
        HttpResponse httpresponse = httpclient.execute(httpget);
        String response = EntityUtils.toString(httpresponse.getEntity());
        Assert.assertEquals("3",response)
    }

}

```

#### Non Functional Testing
 * `Performance Testing` ensure that the app will work smoothly under the expected workload
 * `Load Testing` system simulates actual user load on any app to check the threshold for the max load the app can bear

# Executor Framework
# Avoid dead lock
* Avoid Nested Locks: A deadlock mainly happens when we give locks to multiple threads. Avoid giving a lock to multiple threads if we already have given to one.
* Avoid Unnecessary Locks: We can have a lock only those members which are required. Having a lock unnecessarily can lead to a deadlock.
* Using Thread.join(): A deadlock condition appears when one thread is waiting other to finish. If this condition occurs we can use Thread.join(long msToWait) with the maximum time the execution will take.


# Restful webapplication
* Restful Web Services is a lightweight, maintainable, and scalable service that is built on the REST architecture
* exposes API using http(s) protocol from application in a secure, uniform, stateless manner to the calling client
* Http Method
    * GET - Get resource
    * POST - Create new resource
    * PUT - Update complete resource
    * PATCH - Update partial
    * DELETE - Delete resouce
* REST stands for REpresentational State Transfer. Guidelines are
    * `Client–server` Seperates UI from the data. Increases portability of the user interface across multiple platforms and improve scalability by simplifying the server components
    * `Stateless` Each request from client to server must contain all of the information necessary to understand the request, and cannot take advantage of any stored context on the server. Session state is mainted  in client.
    * `Cacheable` Response to a request must be implicitly or explicitly labeled as cacheable or non-cacheable. If a response is cacheable, then a client cache is given the right to reuse that response data for later, equivalent requests
    * `Uniform interface` REST is defined by four interface constraints: 
        * `identification of resources` - `/orders/12345`
            * Individual resources are identified in requests using URIs.
            * The resources themselves are conceptually separate from the representations that are returned to the client. For example, the server may send data from its database as HTML, XML or JSON, none of which are the server's internal representation

        * `manipulation of resources through representations`
            * This constraint states that the client should hold the representation of a resource that has enough information to modify or delete the resource.
        * `self-descriptive messages`
            * Each message includes enough information to describe how to process the message. For example, which parser to invoke may be specified by an Internet media type (previously known as a MIME type). 
            * Responses also explicitly indicate their cacheability.
            * If any additional information is needed but not contained in the response a link to that information should be provided within the response
        * `hypermedia as the engine of application state` `HATEOAS`.
            * Clients make state transitions only through actions that are dynamically identified within hypermedia by the server (e.g., by hyperlinks within hypertext).
            *  Except for simple fixed entry points to the application, a client does not assume that any particular action is available for any particular resources beyond those described in representations previously received from the server.
        
            ```json
            {
                "id": "M0002",
                "title": "Once Upon a Time in America",
                "year": 1984,
                "rating": "R",
                "directors": [
                    {
                        "id": "D0001",
                        "firstname": "Sergio",
                        "lastname": "Leone",
                        "year": 1929,
                        "_links": {
                            "self": {
                                "href": "http://localhost:8080/directors/D0001"
                            }
                        }
                    }
                ],
                "_links": {
                    "self": {
                        "href": "http://localhost:8080/movies/M0002"
                    }
                }
            }

            ```
    * `Layered system` The layered system style allows an architecture to be composed of hierarchical layers by constraining component behavior such that each component cannot “see” beyond the immediate layer with which they are interacting.


# Transaction management

#### Plain Java
```java 
import java.sql.Connection;

Connection connection = dataSource.getConnection(); // (1)

try (connection) {
    connection.setAutoCommit(false); // (2)
    // execute some SQL statements...
    connection.commit(); // (3)

} catch (SQLException e) {
    connection.rollback(); // (4)
}
```
#### Hibernate 
```java
Transaction transaction ;
try{
    Session session = HibernateUtil.getSessionFactory().openSession()
    Transaction transaction = session.beginTransaction();
    transaction.commit();
} catch (Exception e) {
    if (transaction != null) {
        transaction.rollback();
    }
}

```
#### Spring
```java
public class Service{
    @Transactional
    public void method1(){

    }
}

//Spring Transaction interceptor model
class TransactionIterceptor{
PlatformTransactionManager platformTransactionManager;
    @Around(pointcut="@annotation(Transactional)")
    public void invokeInTransaction(){
        try{
            Transaction transaction = platformTransactionManager.getTransaction();
            //call actual method
            transaction.commit()
        }catch(Execption e){
            transaction.rollback();
        }
    }
}


```

# ACID
* `Atomicity`  
    * All changes to data are performed as if they are a single operation
    *F or example, in an application that transfers funds from one account to another, the atomicity property ensures that, if a debit is made successfully from one account, the corresponding credit is made to the other account
* `Consistency`
    * Data is in a consistent state when a transaction starts and when it ends.
    * For example, in an application that transfers funds from one account to another, the consistency property ensures that the total value of funds in both the accounts is the same at the start and end of each transaction.
* `Durability`
    * After a transaction successfully completes, changes to data persist and are not undone, even in the event of a system failure.
    * For example, in an application that transfers funds from one account to another, the durability property ensures that the changes made to each account will not be reversed
* `Isolation`
    * The intermediate state of a transaction is invisible to other transactions
    * For example, in an application that transfers funds from one account to another, the isolation property ensures that another transaction sees the transferred funds in one account or the other, but not in both, nor in neither.
    * Different Isolation levels [Reference](https://www.percona.com/blog/2021/02/11/various-types-of-innodb-transaction-isolation-levels-explained-using-terminal/)
        * READ-UNCOMMITTED
            * No Lock
            * dirty read possible ( data from other uncommited transaction  can be viewed during in-transaaction)
        * READ-COMMITTED
            * No Locks
            * No dirty read 
            * Non Repetable read posible (data from committed transaction can be viewed during in-transaction)
        * REPEATABLE-READ
            * No Locks
            * No Dirty Read
            * No Non Repeatable read
            * Phanthom (ghost) read possible
                * the snapshot of the SELECT will be taken during the first execution of SELECT, and it will be until the transaction ends.
                * If record gets inserted in another completed transaction & if current transaction update that record then the records gets added to snaphshot. Possiblity of reading the data modified outside the transaction
        * SERIALIZABLE
            * Locks
            * No dirty reads
            * No non-repeatable reads
            * No phantom reads 
            * Data cannot be read, unless another transaction is commited

        |  Level | Dirty Read  | Non Repeatable Read| Phantom Read| Locks |
        |---|---|---|---|---|---|
        | Read Uncomitted|:white_check_mark:|:white_check_mark:|:white_check_mark:|:x:|
        | Read comitted   |:x:| :white_check_mark:|:white_check_mark: |:x:|
        | Repeatable Read  | :x:  |:x:|:white_check_mark: |:x:|
        | Serializable  |:x:|:x: |:x: |:white_check_mark: |


    ``` sql
    # Transaction 1
     Read X
     X = X - 100
     Write X
     Read Y
     Y = Y + 100
     Write Y

     # Transaction 2
     Read X
     Read Y
     Z = X+Y
     Write X
    ```

# IOC 
`Inversion of Control`
 * In traditional programming, application code calls reusable libraries to take care of generic tasks 
 eg: apache common library
    ``` java 

    if(StringUtils.isBlank(data)){
        //do something
    }
    ```
* In inversion of control, it is the framework that calls the application to do specific task
 eg: Spring. Beans are configured & framework is responsible for creating, injecting & managing the object

* Tranditional programs control is inverted

# DI
 *  Dependency inversion principle is about decoupling dependencies
 *  an object receives other objects that it depends on, called dependencies


