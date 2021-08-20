<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

  - [JVM](#jvm)
    - [*What is JVM and is it platform independent?*](#what-is-jvm-and-is-it-platform-independent)
    - [*What is JIT compiler in Java?*](#what-is-jit-compiler-in-java)
    - [*What is Classloader in Java? What are different types of classloaders?*](#what-is-classloader-in-java-what-are-different-types-of-classloaders)
    - [*Java Compiler is stored in JDK, JRE or JVM?*](#java-compiler-is-stored-in-jdk-jre-or-jvm)
  - [Memory management](#memory-management)
    - [*How many types of memory areas are allocated by JVM?*](#how-many-types-of-memory-areas-are-allocated-by-jvm)
    - [*What is difference between Heap and Stack Memory in java?*](#what-is-difference-between-heap-and-stack-memory-in-java)
    - [*The difference between Serial and Parallel Garbage Collector?*](#the-difference-between-serial-and-parallel-garbage-collector)
    - [*What is a Memory Leak? How can a memory leak appear in garbage collected language?*](#what-is-a-memory-leak-how-can-a-memory-leak-appear-in-garbage-collected-language)
    - [*How Garbage collector algorithm works?*](#how-garbage-collector-algorithm-works)
    - [*What is difference between WeakReference and SoftReference in Java?*](#what-is-difference-between-weakreference-and-softreference-in-java)
    - [*What is a compile time constant in Java? What is the risk of using it?*](#what-is-a-compile-time-constant-in-java-what-is-the-risk-of-using-it)
    - [*What will be the initial value of an object reference which is defined as an instance variable?*](#what-will-be-the-initial-value-of-an-object-reference-which-is-defined-as-an-instance-variable)
    - [*Datatype in Java*](#datatype-in-java)
    - [*Default value of datatypes*](#default-value-of-datatypes)
    - [*What are Wrapper classes?*](#what-are-wrapper-classes)
    - [*What are autoboxing and unboxing? When does it occur?*](#what-are-autoboxing-and-unboxing-when-does-it-occur)
    - [*OOPS*](#oops)
    - [*Inhertiance*](#inhertiance)
    - [*Interface*](#interface)
    - [*abstract class*](#abstract-class)
    - [*class*](#class)
    - [*Sub class vs inner class*](#sub-class-vs-inner-class)
    - [*Object class*](#object-class)
    - [*Object class*](#object-class-1)
    - [*Consturctor*](#consturctor)
    - [*Ways to create object*](#ways-to-create-object)
    - [*this vs super*](#this-vs-super)
    - [*Object class*](#object-class-2)
    - [*main method can be final/ private/ empty args*](#main-method-can-be-final-private-empty-args)
    - [*paramater vs argument*](#paramater-vs-argument)
    - [*complie time vs run time polymorphism*](#complie-time-vs-run-time-polymorphism)
    - [*access modifiers*](#access-modifiers)
    - [*The difference between Inheritance and Composition?*](#the-difference-between-inheritance-and-composition)
    - [*What is covariant return type?*](#what-is-covariant-return-type)
    - [*access modifiers*](#access-modifiers-1)
    - [*What are the restrictions that are applied to the Java static methods?*](#what-are-the-restrictions-that-are-applied-to-the-java-static-methods)
    - [*Static class, variable, method*](#static-class-variable-method)
    - [*Static import*](#static-import)
    - [*final class, variable, method*](#final-class-variable-method)
    - [*final class, variable, method*](#final-class-variable-method-1)
    - [*throw, throws*](#throw-throws)
    - [*final, finally, finalize*](#final-finally-finalize)
    - [*throw, throw*](#throw-throw)
    - [*package*](#package)
    - [*transient vs volatile*](#transient-vs-volatile)
    - [*Can we have multiple public classes in a java source file?*](#can-we-have-multiple-public-classes-in-a-java-source-file)
- [File Access](#file-access)
    - [*hierarchy of input/ output stream*](#hierarchy-of-input-output-stream)
    - [*What is the purpose of the Runtime class and System class?*](#what-is-the-purpose-of-the-runtime-class-and-system-class)
    - [*What is Java Reflection API?*](#what-is-java-reflection-api)
    - [*How will you invoke any external process in Java?*](#how-will-you-invoke-any-external-process-in-java)
    - [*In Java, How many ways you can take input from the console?*](#in-java-how-many-ways-you-can-take-input-from-the-console)
    - [*What is the purpose of using javap?*](#what-is-the-purpose-of-using-javap)
    - [*Heap dump*](#heap-dump)
    - [*Thread dump*](#thread-dump)
    - [*What is a native method?*](#what-is-a-native-method)
    - [*What is immutable object? Can you write immutable object?*](#what-is-immutable-object-can-you-write-immutable-object)
    - [*How can we create an immutable class in Java?*](#how-can-we-create-an-immutable-class-in-java)
    - [*What is the difference between creating String as new() and literal?*](#what-is-the-difference-between-creating-string-as-new-and-literal)
    - [*What is difference between String, StringBuffer and StringBuilder?*](#what-is-difference-between-string-stringbuffer-and-stringbuilder)
    - [*Why string is immutable in java?*](#why-string-is-immutable-in-java)
    - [*What is Java String Pool?*](#what-is-java-string-pool)
    - [*Why String is popular HashMap key in Java?*](#why-string-is-popular-hashmap-key-in-java)
    - [*What is difference between Error and Exception?*](#what-is-difference-between-error-and-exception)
    - [*Explain about Exception Propagation?*](#explain-about-exception-propagation)
    - [*What are different scenarios causing "Exception in thread main"?*](#what-are-different-scenarios-causing-exception-in-thread-main)
    - [*What are the differences between throw and throws?*](#what-are-the-differences-between-throw-and-throws)
    - [*What is checked, unchecked exception and errors?*](#what-is-checked-unchecked-exception-and-errors)
    - [*What is difference between ClassNotFoundException and NoClassDefFoundError?*](#what-is-difference-between-classnotfoundexception-and-noclassdeffounderror)
    - [*Do you know Generics? How did you used in your coding?*](#do-you-know-generics-how-did-you-used-in-your-coding)
    - [*What code coverage tools are you using for your project?*](#what-code-coverage-tools-are-you-using-for-your-project)

<!-- /code_chunk_output -->


## JVM

### *What is JVM and is it platform independent?*
Java Virtual Machine (JVM) provides the environment to execute the java file(. Class file)

The JVM is not platform independent. it's depends on kernel and kernel is differ from OS (Operating System) to OS. 

The JVM is used to both translate the bytecode into the machine language for a particular computer and actually execute the corresponding machine-language instructions as well & make java platform indenpendent

### *What is JIT compiler in Java?*
The Just-In-Time (JIT) compiler is a component of the runtime environment that improves the performance of Java applications by compiling bytecodes to native machine code at run time.

Java programs consists of classes, which contain platform-neutral bytecodes that can be interpreted by a JVM on many different computer architectures. At run time, the JVM loads the class files, determines the semantics of each individual bytecode, and performs the appropriate computation. The additional processor and memory usage during interpretation means that a Java application performs more slowly than a native application. The JIT compiler helps improve the performance of Java programs by compiling bytecodes into native machine code at run time. The JIT compiler is enabled by default. When a method has been compiled, the JVM calls the compiled code of that method directly instead of interpreting it. 


### *What is Classloader in Java? What are different types of classloaders?*
The **Java ClassLoader** is a part of the Java Runtime Environment that dynamically loads Java classes into the Java Virtual Machine. Java code is compiled into class file by javac compiler and JVM executes Java program, by executing byte codes written in class file. ClassLoader is responsible for loading class files from file system, network or any other source. 

**Types of ClassLoader**   

**a) Bootstrap Class Loader**: It loads standard JDK class files from rt.jar and other core classes. It loads class files from jre/lib/rt.jar. For example, java.lang package class.

**b) Extensions Class Loader**: It loads classes from the JDK extensions directly usually `JAVA_HOME/lib/ext` directory or any other directory as java.ext.dirs. 

**c) System Class Loader**: It loads application specific classes from the CLASSPATH environment variable. It can be set while invoking program using -cp or classpath command line options. 


### *Java Compiler is stored in JDK, JRE or JVM?*
**JDK**: Java Development Kit is the core component of Java Environment and provides all the tools, executables and binaries required to compile, debug and execute a Java Program. 

**JRE**: Java Runtime Environment provides a platform to execute java programs. JRE consists of JVM and java binaries and other classes to execute any program successfully.

**JVM**: JVM is responsible for converting Byte code to the machine specific code. JVM is also platform dependent and provides core java functions like memory management, garbage collection, security etc. JVM is customizable and we can use java options to customize it, for example allocating minimum and maximum memory to JVM. JVM is called virtual because it provides an interface that does not depend on the underlying operating system and machine hardware.


## Memory management

### *How many types of memory areas are allocated by JVM?*
JVM is a program which takes Java bytecode and converts the byte code (line by line) into machine understandable code. JVM perform some particular types of operations:

* Loading of code
* Verification of code
* Executing the code
* It provide run-time environment to the users

**Types of Memory areas allocated by the JVM:**  

**1. Classloader**: Classloader is a subsystem of JVM that is used to load class files.  
**2. Class(Method) Area**: Class(Method) Area stores per-class structures such as the runtime constant pool, field and method data, the code for methods.  
**3. Heap**: It is the runtime data area in which objects are allocated.  
**4. Stack**: Java Stack stores frames.It holds local variables and partial results, and plays a part in method invocation and return. Each thread has a private JVM stack, created at the same time as thread.  
**5. Program Counter Register**: PC (program counter) register. It contains the address of the Java virtual machine instruction currently being executed.  
**6. Native Method Stack**: It contains all the native methods used in the application.


### *What is difference between Heap and Stack Memory in java?*
**Java Heap Space**  

Java Heap space is used by java runtime to allocate memory to Objects and JRE classes. Whenever we create any object, it’s always created in the Heap space.

Garbage Collection runs on the heap memory to free the memory used by objects that doesn’t have any reference. Any object created in the heap space has global access and can be referenced from anywhere of the application.

**Java Stack Memory**  

Stack in java is a section of memory which contains methods, local variables and reference variables. Local variables are created in the stack.

Stack memory is always referenced in LIFO (Last-In-First-Out) order. Whenever a method is invoked, a new block is created in the stack memory for the method to hold local primitive values and reference to other objects in the method.

As soon as method ends, the block becomes unused and become available for next method. Stack memory size is very less compared to Heap memory.

**Difference**  


|Parameter	       |Stack Memory	               |Heap Space                       |
|------------------|-----------------------------|-----------------------------------|
|Application	   |Stack is used in parts, one at a time during execution of a thread|	The entire application uses Heap space during runtime|
|Size	           |Stack has size limits depending upon OS and is usually smaller then Heap|There is no size limit on Heap|
|Storage	       |Stores only primitive variables and references to objects that are created in Heap Space|All the newly created objects are stored here|
|Order	           |It is accessed using Last-in First-out (LIFO) memory allocation system|	This memory is accessed via complex memory management techniques that include Young Generation, Old or Tenured Generation, and Permanent Generation.|
|Life	           |Stack memory only exists as long as the current method is running|Heap space exists as long as the application runs|
|Efficiency	       |Comparatively much faster to allocate when compared to heap| Slower to allocate when compared to stack|
|Allocation/Deallocation| This Memory is automatically allocated and deallocated when a method is called and returned respectively|Heap space is allocated when new objects are created and deallocated by Gargabe Collector when they are no longer referenced |

### *The difference between Serial and Parallel Garbage Collector?*
**Serial Garbage Collector**  

Serial garbage collector works by holding all the application threads. It is designed for the single-threaded environments. It uses just a single thread for garbage collection. The way it works by freezing all the application threads while doing garbage collection may not be suitable for a server environment. It is best suited for simple command-line programs.

Turn on the `-XX:+UseSerialGC` JVM argument to use the serial garbage collector.

**Parallel Garbage Collector**  

Parallel garbage collector is also called as throughput collector. It is the default garbage collector of the JVM. Unlike serial garbage collector, this uses multiple threads for garbage collection. Similar to serial garbage collector this also freezes all the application threads while performing garbage collection.

### *What is a Memory Leak? How can a memory leak appear in garbage collected language?*
The standard definition of a memory leak is a scenario that occurs when **objects are no longer being used by the application, but the Garbage Collector is unable to remove them from working memory** – because they’re still being referenced. As a result, the application consumes more and more resources – which eventually leads to a fatal OutOfMemoryError.

Some tools that do memory management to identifies useless objects or memeory leaks like:

* <a href="https://support.hpe.com/hpsc/doc/public/display?docId=emr_na-c00990822&docLocale=en_US">HP OpenView</a>
* <a href="https://h20392.www2.hpe.com/portal/swdepot/displayProductInfo.do?productNumber=HPJMETER">HP JMETER</a>
* <a href="http://www.javaperformancetuning.com/tools/jprobe/index.shtml">JProbe</a>
* <a href="https://www.ibm.com/support/knowledgecenter/en/SSTFXA_6.3.0/com.ibm.itm.doc_6.3/install/itm_over.htm">IBM Tivoli</a>

```java
// Java Program to illustrate memory leaks 
import java.util.Vector; 
public class MemoryLeaksDemo  
{ 
   public static void main(String[] args) { 
      Vector v = new Vector(214444); 
      Vector v1 = new Vector(214744444); 
      Vector v2 = new Vector(214444); 
      System.out.println("Memory Leaks Example"); 
   } 
} 
```
Output
```
Exception in thread "main" java.lang.OutOfMemoryError: Java heap space exceed
```

**Types of Memory Leaks in Java**  

* Memory Leak through static Fields
* Unclosed Resources/connections
* Adding Objects With no `hashCode()` and `equals()` Into a HashSet
* Inner Classes that Reference Outer Classes
* Through `finalize()` Methods
* Calling `String.intern()` on Long String

### *How Garbage collector algorithm works?* 
Garbage collection works on **Mark** and **Sweep** algorithm. In Mark phase it detects all the unreachable objects and Sweep phase it reclaim the heap space used by the garbage objects and make the space available again to the program.

There are methods like <code>System.gc()</code> and <code>Runtime.gc()</code> which is used to send request of Garbage collection to JVM but it’s not guaranteed that garbage collection will happen. If there is no memory space for creating a new object in Heap Java Virtual Machine throws <code>OutOfMemoryError</code> or <code>java.lang.OutOfMemoryError</code> heap space


### *What is difference between WeakReference and SoftReference in Java?*
In Java there are four types of references differentiated on the way by which they are garbage collected.

* Strong References
* Weak References
* Soft References
* Phantom References

**Strong References**: This is the default type/class of Reference Object. Any object which has an active strong reference are not eligible for garbage collection. The object is garbage collected only when the variable which was strongly referenced points to null.
```java
MyClass obj = new MyClass();
```  

**Weak References**: Weak Reference Objects are not the default type/class of Reference Object and they should be explicitly specified while using them.
```java
//Java Code to illustrate Weak reference 
import java.lang.ref.WeakReference; 
class MainClass 
{ 
    public void message() { 
        System.out.println("Weak References Example"); 
    } 
} 
  
public class Example 
{ 
    public static void main(String[] args) { 
        // Strong Reference 
        MainClass g = new MainClass();    
        g.message(); 
          
        // Creating Weak Reference to MainClass-type object to which 'g'  
        // is also pointing. 
        WeakReference<MainClass> weakref = new WeakReference<MainClass>(g); 
        g = null;  
        g = weakref.get();  
        g.message(); 
    } 
} 
```

**Soft References**: In Soft reference, even if the object is free for garbage collection then also its not garbage collected, until JVM is in need of memory badly.The objects gets cleared from the memory when JVM runs out of memory.To create such references java.lang.ref.SoftReference class is used.
```java
//Java Code to illustrate Weak reference 
import java.lang.ref.SoftReference; 
class MainClass 
{ 
    public void message() { 
        System.out.println("Weak References Example"); 
    } 
} 
  
public class Example 
{ 
    public static void main(String[] args) { 
        // Strong Reference 
        MainClass g = new MainClass();    
        g.message(); 
          
        // Creating Weak Reference to MainClass-type object to which 'g'  
        // is also pointing. 
        SoftReference<MainClass> softref = new SoftReference<MainClass>(g); 
        g = null;  
        g = softref.get();  
        g.message(); 
    } 
} 
```
**Phantom References**: The objects which are being referenced by phantom references are eligible for garbage collection. But, before removing them from the memory, JVM puts them in a queue called ‘reference queue’ . They are put in a reference queue after calling finalize() method on them.To create such references java.lang.ref.PhantomReference class is used.
```java
//Java Code to illustrate Weak reference 
import java.lang.ref.*; 
class MainClass 
{ 
    public void message() { 
        System.out.println("Phantom References Example"); 
    } 
} 
  
public class Example 
{ 
    public static void main(String[] args) { 
        // Strong Reference 
        MainClass g = new MainClass();    
        g.message(); 
          
        // Creating Phantom Reference to MainClass-type object to which 'g'  
        // is also pointing. 
        PhantomReference<MainClass> phantomRef = null; 
        phantomRef = new PhantomReference<MainClass>(g,refQueue); 
        g = null; 
        g = phantomRef.get();  
        g.message(); 
    } 
} 
```

## Java language basics

### *What is a compile time constant in Java? What is the risk of using it?*
If a primitive type or a string is defined as a constant and the value is known at compile time, the compiler replaces the constant name everywhere in the code with its value. This is called a compile-time constant.

**Compile time constant must be:**  

* declared final
* primitive or String
* initialized within declaration
* initialized with constant expression

They are replaced with actual values at compile time because compiler know their value up-front and also knows that it cannot be changed during run-time.
```java
private final int x = 10;
```

### *What will be the initial value of an object reference which is defined as an instance variable?*
The object references are all initialized to `null` in Java. However in order to do anything useful with these references, It must set to a valid object, else you will get NullPointerExceptions everywhere you try to use such default initialized references.

### *Datatype in Java*

### *Default value of datatypes*
There is no default value for local variables, so local variables should be declared and an initial value should be assigned before the first use.


### *What are Wrapper classes?*
The wrapper class in Java provides the mechanism to convert primitive into object and object into primitive.

**Use of Wrapper classes in Java**  

* **Change the value in Method**: Java supports only call by value. So, if we pass a primitive value, it will not change the original value. But, if we convert the primitive value in an object, it will change the original value.
* **Serialization**: We need to convert the objects into streams to perform the serialization. If we have a primitive value, we can convert it in objects through the wrapper classes.
* **Synchronization**: Java synchronization works with objects in Multithreading.
* **java.util package**: The java.util package provides the utility classes to deal with objects.
* **Collection Framework**: Java collection framework works with objects only. All classes of the collection framework (ArrayList, LinkedList, Vector, HashSet, LinkedHashSet, TreeSet, PriorityQueue, ArrayDeque, etc.) deal with objects only.

| Sl.No|Primitive Type  |	Wrapper class       |
|------|----------------|----------------------|
| 01.  |boolean	      |Boolean|
| 02.  |char	         |Character|
| 03.  |byte	         |Byte|
| 04.  |short	         |Short|
| 05.  |int	            |Integer|
| 06.  |long	         |Long|
| 07.  |float	         |Float|
| 08.  |double	         |Double|

Example: Primitive to Wrapper
```java
//Java program to convert primitive into objects  
//Autoboxing example of int to Integer  
class WrapperExample {  
  public static void main(String args[]){  
      //Converting int into Integer  
      int a=20;  
      Integer i = Integer.valueOf(a);//converting int into Integer explicitly  
      Integer j = a; //autoboxing, now compiler will write Integer.valueOf(a) internally  
  
   System.out.println(a+" "+i+" "+j);  
  }
}  
```
Output
```
20 20 20
```

### *What are autoboxing and unboxing? When does it occur?*
The automatic conversion of primitive data types into its equivalent Wrapper type is known as boxing and opposite operation is known as unboxing.

Example: Autoboxing
```java
class BoxingExample1 {  
   public static void main(String args[]) {  
      int a = 50;  
      Integer a2 = new Integer(a); //Boxing  
      Integer a3 = 5; //Boxing  
      
      System.out.println(a2+" "+a3);  
   }   
}  
```

Example: Unboxing 
```java
class UnboxingExample1 {  
   public static void main(String args[]) {  
      Integer i = new Integer(50);  
      int a = i;  
          
      System.out.println(a);  
   }   
} 
```

### *OOPS*

### *Inhertiance*

### *Interface*

### *abstract class*

### *class*

### *Sub class vs inner class*

### *Object class*

The Object class is the parent class of all the classes in java by default.

<table class="alt">
<tbody><tr><th>Method</th><th>Description</th></tr>
<tr><td>public final Class getClass()</td><td>returns the Class class object of this object. The Class class can further be used to get the metadata of this class.</td></tr>
<tr><td>public int hashCode()</td><td> returns the hashcode number for this object.</td></tr>
<tr><td>public boolean equals(Object obj)</td><td> compares the given object to this object.</td></tr>
<tr><td>protected Object clone() throws CloneNotSupportedException</td><td> creates and returns the exact copy (clone) of this object.</td></tr>
<tr><td>public String toString()</td><td> returns the string representation of this object.</td></tr>
<tr><td>public final void notify()</td><td> wakes up single thread, waiting on this object's monitor.</td></tr>
<tr><td>public final void notifyAll()</td><td> wakes up all the threads, waiting on this object's monitor.</td></tr>
<tr><td>public final void wait(long timeout)throws InterruptedException</td><td> causes the current thread to wait for the specified milliseconds, until another thread notifies (invokes notify() or notifyAll() method).</td></tr>
<tr><td>public final void wait(long timeout,int nanos)throws InterruptedException</td><td>causes the current thread to wait for the specified milliseconds and nanoseconds, until another thread notifies (invokes notify() or notifyAll() method).</td></tr>
<tr><td>public final void wait()throws InterruptedException</td><td> causes the current thread to wait, until another thread notifies (invokes notify() or notifyAll() method).</td></tr>
<tr><td>protected void finalize()throws Throwable</td><td> is invoked by the garbage collector before object is being garbage collected.</td></tr>
</tbody></table>


### *Object class*

### *Consturctor*

### *Ways to create object*
**1. Using new keyword**
```java
MyObject object = new MyObject();
```
**2. Using Class.forName()**
```java
MyObject object = (MyObject) Class.forName("subin.rnd.MyObject").newInstance();
```
**3. Using clone()**
```java
MyObject anotherObject = new MyObject();
MyObject object = (MyObject) anotherObject.clone();
```
**4. Using object deserialization**
```java
ObjectInputStream inStream = new ObjectInputStream(anInputStream );
MyObject object = (MyObject) inStream.readObject();
```

### *this vs super*

### *Object class*

### *main method can be final/ private/ empty args*

### *paramater vs argument*

### *complie time vs run time polymorphism*

### *access modifiers*

### *The difference between Inheritance and Composition?*
Though both Inheritance and Composition provides code reusablility, main difference between Composition and Inheritance in Java is that Composition allows reuse of code without extending it but for Inheritance you must extend the class for any reuse of code or functionality. Inheritance is an **"is-a"** relationship. Composition is a **"has-a"**.

Example: Inheritance 
```java
class Fruit {
   //...
}
class Apple extends Fruit {
   //...
}
```
Example: Composition 
```java
class Fruit {
   //...
}
class Apple {
   private Fruit fruit = new Fruit();
   //...
}
```

### *What is covariant return type?*
It is possible to have different return type for a overriding method in child class, but child’s return type should be sub-type of parent’s return type. Overriding method becomes variant with respect to return type. The covariant return type specifies that the return type may vary in the same direction as the subclass.
```java
class SuperClass {
   SuperClass get() {
      System.out.println("SuperClass");
      return this;
   }
}
public class Tester extends SuperClass {
   Tester get() {
      System.out.println("SubClass");
      return this;
   }
   public static void main(String[] args) {
      SuperClass tester = new Tester();
      tester.get();
   }
}
```
Output:
```
Subclass
```

### *access modifiers*

### *What are the restrictions that are applied to the Java static methods?*
If a method is declared as static, it is a member of a class rather than belonging to the object of the class. It can be called without creating an object of the class. A static method also has the power to access static data members of the class.

* There are a few restrictions imposed on a static method
* The static method cannot use non-static data member or invoke non-static method directly.
* The `this` and `super` cannot be used in static context.
* The static method can access only static type data (static type instance variable).
* There is no need to create an object of the class to invoke the static method.
* A static method cannot be overridden in a subclass

### *Static class, variable, method*

### *Static import*

### *final class, variable, method*

### *final class, variable, method*

### *throw, throws*

### *final, finally, finalize*

### *throw, throw*

### *package*

### *transient vs volatile*


### *Can we have multiple public classes in a java source file?*
A Java source file can have only one class declared as **public**, we cannot put two or more public classes together in a **.java** file. This is because of the restriction that the file name should be same as the name of the public class with **.java** extension. If we want to multiple classes under consideration are to be declared as public, we have to store them in separate source files and attach the package statement as the first statement in those source files.

# File Access

### *hierarchy of input/ output stream*


### *What is the purpose of the Runtime class and System class?*
**Runtime Class**: The purpose of the Runtime class is to provide access to the Java runtime system. The runtime information like memory availability, invoking the garbage collector, etc.

**System Class**: The purpose of the System class is to provide access to system resources. It contains accessibility to standard input, standart output, error output streams, current time in millis, terminating the application, etc.


### *What is Java Reflection API?*

### *How will you invoke any external process in Java?*
We can invoke the external process in Java using **exec()** method of **Runtime Class**.
```java
class ExternalProcessExample 
{ 
    public static void main(String[] args) { 
        try { 
            // Command to create an external process 
            String command = "C:\Program Files (x86)"+ 
                 "\Google\Chrome\Application\chrome.exe"; 
  
            // Running the above command 
            Runtime run  = Runtime.getRuntime(); 
            Process proc = run.exec(command); 
        } catch (IOException e) { 
            e.printStackTrace(); 
        } 
    } 
} 
```
### *In Java, How many ways you can take input from the console?*
In Java, there are three different ways for reading input from the user in the command line environment(console).

**1. Using Buffered Reader Class**: This method is used by wrapping the System.in (standard input stream) in an InputStreamReader which is wrapped in a BufferedReader, we can read input from the user in the command line.
```java
import java.io.BufferedReader; 
import java.io.IOException; 
import java.io.InputStreamReader; 
public class Test  
{ 
    public static void main(String[] args) throws IOException { 
        //Enter data using BufferReader 
        BufferedReader reader =  
                   new BufferedReader(new InputStreamReader(System.in)); 
         
        // Reading data using readLine 
        String name = reader.readLine(); 
  
        // Printing the read line 
        System.out.println(name);         
    } 
} 
```
**2. Using Scanner Class**: The main purpose of the Scanner class is to parse primitive types and strings using regular expressions, however it is also can be used to read input from the user in the command line.
```java
import java.util.Scanner; 
  
class GetInputFromUser 
{ 
    public static void main(String args[]) { 
        // Using Scanner for Getting Input from User 
        Scanner in = new Scanner(System.in); 
  
        String s = in.nextLine(); 
        System.out.println("You entered string "+s); 
  
        int a = in.nextInt(); 
        System.out.println("You entered integer "+a); 
  
        float b = in.nextFloat(); 
        System.out.println("You entered float "+b); 
    } 
} 
```  
**3. Using Console Class**: It has been becoming a preferred way for reading user’s input from the command line. In addition, it can be used for reading password-like input without echoing the characters entered by the user; the format string syntax can also be used (like System.out.printf()).
```java
public class Sample  
{ 
   public static void main(String[] args) {         
      // Using Console to input data from user 
      String name = System.console().readLine(); 
      System.out.println(name); 
   } 
}
```

### *What is the purpose of using javap?*
The javap command displays information about the fields, constructors and methods present in a class file. The javap command (also known as the Java Disassembler) disassembles one or more class files. 


### *Heap dump*



### *Thread dump*

### *What is a native method?*
A native method is a Java method (either an instance method or a class method) whose implementation is also written in another programming language such as C/C++. Moreover, a method marked as native cannot have a body and should end with a semicolon:

**Main.java**
```java
public class Main {
   public native int intMethod(int i);
   public static void main(String[] args) {
      System.loadLibrary("Main");
      System.out.println(new Main().intMethod(2));
   }
}
```
**Main.c**
```c
#include <jni.h>
#include "Main.h"

JNIEXPORT jint JNICALL Java_Main_intMethod(
    JNIEnv *env, jobject obj, jint i) {
  return i * i;
}
```
**Compile and run**  
```
javac Main.java
javah -jni Main
gcc -shared -fpic -o libMain.so -I${JAVA_HOME}/include \
  -I${JAVA_HOME}/include/linux Main.c
java -Djava.library.path=. Main
```
Output
```
4
```


### *What is immutable object? Can you write immutable object?*
Immutable objects are objects that don't change. A Java immutable object must have all its fields be internal, private final fields. It must not implement any setters. It needs a constructor that takes a value for every single field.

**Creating an Immutable Object**  

* Do not add any setter method
* Declare all fields final and private
* If a field is a mutable object create defensive copies of it for getter methods
* If a mutable object passed to the constructor must be assigned to a field create a defensive copy of it
* Don't allow subclasses to override methods.

```java
public class DateContainer {
  private final Date date;
  public DateContainer() {
      this.date = new Date();
  }
  public Date getDate() {
    return new Date(date.getTime());
  }
}
```
### *How can we create an immutable class in Java?*
Immutable class means that once an object is created, we cannot change its content. In Java, all the wrapper classes (like Integer, Boolean, Byte, Short) and String class is immutable. 

**Rules to create immutable classes**  

* The class must be declared as final (So that child classes can’t be created)
* Data members in the class must be declared as final (So that we can’t change the value of it after object creation)
* A parameterized constructor
* Getter method for all the variables in it
* No setters(To not have the option to change the value of the instance variable)

```java
public final class Employee {  

   final String pancardNumber;  
   
   public Employee(String pancardNumber) {  
      this.pancardNumber = pancardNumber;  
   }  
   public String getPancardNumber() {  
      return pancardNumber;  
   }
}  
```

### *What is the difference between creating String as new() and literal?*
When you create String object using `new()` operator, it always create a new object in heap memory. On the other hand, if you create object using String literal syntax e.g. "Java", it may return an existing object from String pool (a cache of String object in Perm gen space, which is now moved to heap space in recent Java release), if it's already exists. Otherwise it will create a new string object and put in string pool for future re-use.
```java
String a = "abc"; 
String b = "abc";
System.out.println(a == b);  // true

String c = new String("abc");
String d = new String("abc");
System.out.println(c == d);  // false
```

### *What is difference between String, StringBuffer and StringBuilder?*
**Mutability Difference:**  `String` is **immutable**, if you try to alter their values, another object gets created, whereas `StringBuffer` and `StringBuilder` are **mutable** so they can change their values.

**Thread-Safety Difference:** The difference between `StringBuffer` and `StringBuilder` is that StringBuffer is thread-safe. So when the application needs to be run only in a single thread then it is better to use StringBuilder. StringBuilder is more efficient than StringBuffer.

### *Why string is immutable in java?* 

The string is Immutable in Java because String objects are cached in String pool. Since cached String literals are shared between multiple clients there is always a risk, where one client's action would affect all another client. 

Since string is immutable it can safely share between many threads and avoid any synchronization issues in java.
### *What is Java String Pool?*  

String Pool in java is a pool of Strings stored in Java Heap Memory. String pool helps in saving a lot of space for Java Runtime although it takes more time to create the String.

When we use double quotes to create a String, it first looks for String with the same value in the String pool, if found it just returns the reference else it creates a new String in the pool and then returns the reference. However using **new** operator, we force String class to create a new String object in heap space.

```java
/**
* Java program to illustrate String Pool
*
**/
public class StringPool {

    public static void main(String[] args) {
        String s1 = "Java";
        String s2 = "Java";
        String s3 = new String("Java");
        
        System.out.println("s1 == s2 :" +(s1==s2)); // true
        System.out.println("s1 == s3 :" +(s1==s3)); // false
    }
}
```


### *Why String is popular HashMap key in Java?*
Since String is immutable, its hashcode is cached at the time of creation and it doesn’t need to be calculated again. This makes it a great candidate for key in a Map and its processing is fast than other HashMap key objects. This is why String is mostly used Object as HashMap keys.


### *What is difference between Error and Exception?*

|BASIS FOR COMPARISON	|ERROR                                    |EXCEPTION                               |
|-----------------------|-----------------------------------------|----------------------------------------|
|Basic	               |An error is caused due to lack of system resources.|An exception is caused because of the code.|
|Recovery	            |An error is irrecoverable.	            |An exception is recoverable.|
|Keywords	            |There is no means to handle an error by the program code.|	Exceptions are handled using three keywords "try", "catch", and "throw".|
|Consequences           |As the error is detected the program will terminated abnormally.|As an exception is detected, it is thrown and caught by the "throw" and "catch" keywords correspondingly.|
|Types	               |Errors are classified as unchecked type.|Exceptions are classified as checked or unchecked type.|
|Package	               |In Java, errors are defined "java.lang.Error" package.|In Java, an exceptions are defined in"java.lang.Exception".|
|Example	               |OutOfMemory, StackOverFlow.|Checked Exceptions: NoSuchMethod, ClassNotFound.Unchecked Exceptions: NullPointer, IndexOutOfBounds.|


### *Explain about Exception Propagation?*
An exception is first thrown from the top of the stack and if it is not caught, it drops down the call stack to the previous method, If not caught there, the exception again drops down to the previous method, and so on until they are caught or until they reach the very bottom of the call stack. This is called exception propagation.
```java
class TestExceptionPropagation {

  void m() {  
    int data = 50/0;  
  }  
  void n() {  
    m();  
  }  
  void p() {  
      try {  
         n();  
      } catch(Exception e) { 
         System.out.println("exception handled");
      }  
  }  
  public static void main(String args[]) {  
   TestExceptionPropagation obj = new TestExceptionPropagation();  
   obj.p();  
   System.out.println("Normal Flow...");  
  }  
}  
```


### *What are different scenarios causing "Exception in thread main"?*
Some of the common main thread exception are as  follows:
* **Exception in thread main java.lang.UnsupportedClassVersionError**: This exception comes when your java class is compiled from another JDK version and you are trying to run it from another java version.
* **Exception in thread main java.lang.NoClassDefFoundError**: There are two variants of this exception. The first one is where you provide the class full name with .class extension. The second scenario is when Class is not found.
* **Exception in thread main java.lang.NoSuchMethodError: main**: This exception comes when you are trying to run a class that doesn’t have main method.
* **Exception in thread "main" java.lang.ArithmeticException**: Whenever any exception is thrown from main method, it prints the exception is console. The first part explains that exception is thrown from main method, second part prints the exception class name and then after a colon, it prints the exception message.


### *What are the differences between throw and throws?*
**Throw** keyword is used in the method body to throw an exception, while **throws** is used in method signature to declare the exceptions that can occur in the statements present in the method.

**Throw Example**  
```java
public class ThrowExample {  
   void checkAge(int age) {  
      if(age < 18)  
         throw new ArithmeticException("Not Eligible for voting");  
      else  
         System.out.println("Eligible for voting");  
      }  
   public static void main(String args[]) {  
      ThrowExample obj = new ThrowExample();
      obj.checkAge(13);  
      System.out.println("End Of Program");  
   }  
}
```
Output
```
Exception in thread "main" java.lang.ArithmeticException: 
Not Eligible for voting
at Example1.checkAge(Example1.java:4)
at Example1.main(Example1.java:10)
```
**Throws Example**  
```java
public class ThrowsExample {  
   int division(int a, int b) throws ArithmeticException {  
	  int t = a/b;
	  return t;
   }  
   public static void main(String args[]) {  
	  ThrowsExample obj = new ThrowsExample();
      try {
         System.out.println(obj.division(15,0));  
      }
      catch(ArithmeticException e) {
         System.out.println("You shouldn't divide number by zero");
      }
   }  
}
```
Output
```
You shouldn't divide number by zero
```
### *What is checked, unchecked exception and errors?* 

**1. Checked Exception**:

* These are the classes that extend **Throwable** except **RuntimeException** and **Error**.
* They are also known as compile time exceptions because they are checked at **compile time**, meaning the compiler forces us to either handle them with try/catch or indicate in the function signature that it **throws** them and forcing us to deal with them in the caller.
* They are programmatically recoverable problems which are caused by unexpected conditions outside the control of the code (e.g. database down, file I/O error, wrong input, etc).
* Example: **IOException, SQLException** etc.

```java
import java.io.*; 
  
class Main { 
    public static void main(String[] args) { 
        FileReader file = new FileReader("C:\\assets\\file.txt"); 
        BufferedReader fileInput = new BufferedReader(file); 
          
        for (int counter = 0; counter < 3; counter++)  
            System.out.println(fileInput.readLine()); 
          
        fileInput.close(); 
    } 
} 
```
output:
```
Exception in thread "main" java.lang.RuntimeException: Uncompilable source code - 
unreported exception java.io.FileNotFoundException; must be caught or declared to be 
thrown
    at Main.main(Main.java:5)
```
After adding IOException
```java
import java.io.*; 
  
class Main { 
    public static void main(String[] args) throws IOException { 
        FileReader file = new FileReader("C:\\assets\\file.txt"); 
        BufferedReader fileInput = new BufferedReader(file); 
           
        for (int counter = 0; counter < 3; counter++)  
            System.out.println(fileInput.readLine()); 
          
        fileInput.close(); 
    } 
} 
```
output:
```java
Output: First three lines of file “C:\assets\file.txt”
```

**2. Unchecked Exception**:

* The classes that extend **RuntimeException** are known as unchecked exceptions.
* Unchecked exceptions are not checked at compile-time, but rather at **runtime**, hence the name.
* They are also programmatically recoverable problems but unlike checked exception they are caused by faults in code flow or configuration.
* Example:  **ArithmeticException, NullPointerException, ArrayIndexOutOfBoundsException** etc.

```java
class Main { 
   public static void main(String args[]) { 
      int x = 0; 
      int y = 10; 
      int z = y/x; 
  } 
} 
```
Output:
```java
Exception in thread "main" java.lang.ArithmeticException: / by zero
    at Main.main(Main.java:5)
Java Result: 1
```

**3. Error**:

**Error** refers to an irrecoverable situation that is not being handled by a **try/catch**.  
Example: **OutOfMemoryError, VirtualMachineError, AssertionError** etc.




### *What is difference between ClassNotFoundException and NoClassDefFoundError?*
`ClassNotFoundException` and `NoClassDefFoundError` occur when a particular class is not found at runtime. However, they occur at different scenarios.

`ClassNotFoundException` is an exception that occurs when you try to load a class at run time using `Class.forName()` or `loadClass()` methods and mentioned classes are not found in the classpath.

`NoClassDefFoundError` is an error that occurs when a particular class is present at compile time, but was missing at run time.



### *Do you know Generics? How did you used in your coding?*
`Generics` allows type (Integer, String, … etc and user defined types) to be a parameter to methods, classes and interfaces. For example, classes like HashSet, ArrayList, HashMap, etc use generics very well.

**Advantages**
* **Type-safety**: We can hold only a single type of objects in generics. It doesn't allow to store other objects.
* **Type Casting**: There is no need to typecast the object.
* **Compile-Time Checking**: It is checked at compile time so problem will not occur at runtime.

Example:
```java
/** 
* A Simple Java program to show multiple 
* type parameters in Java Generics 
*
* We use < > to specify Parameter type
*
**/ 
class GenericClass<T, U> { 
    T obj1;  // An object of type T 
    U obj2;  // An object of type U 
  
    // constructor 
    GenericClass(T obj1, U obj2) { 
        this.obj1 = obj1; 
        this.obj2 = obj2; 
    } 
  
    // To print objects of T and U 
    public void print() { 
        System.out.println(obj1); 
        System.out.println(obj2); 
    } 
} 
  
// Driver class to test above 
class MainClass { 
    public static void main (String[] args) { 
        GenericClass <String, Integer> obj = 
            new GenericClass<String, Integer>("Generic Class Example !", 100); 
  
        obj.print(); 
    } 
}
```
Output:
```
Generic Class Example !
100
```

### *What code coverage tools are you using for your project?* 
* <a href="https://cobertura.github.io/cobertura/" target="_blank">Cobertura</a>


