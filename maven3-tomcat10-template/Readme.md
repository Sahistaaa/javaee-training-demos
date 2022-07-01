I'm working on a Java EE web application with the following source code directory structure:

src/main/java                 <-- multiple packages containing Java classes
src/test/java                 <-- multiple packages containing JUnit tests
src/main/resources            <-- includes properties files for textual messages
src/main/webapp/resources     <-- includes CSS, images and all Javascript files
src/main/webapp/WEB-INF
src/main/webapp/WEB-INF/tags
src/main/webapp/WEB-INF/views


Java Servlet API states that your root application directory must have the following structure :

ApplicationName
|
|--META-INF
|--WEB-INF
      |_web.xml       <--Here is the configuration file of your web app(where you define servlets, filters, listeners...)
      |_classes       <--Here goes all the classes of your webapp, following the package structure you defined. Only 
      |_lib           <--Here goes all the libraries (jars) your application need