<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
kbd {
	border-radius: 2px;
	padding: 2px;
	border: 1px solid black;
}
</style>
</head>
<body
	style='font-family: arial; font-size: small; border-style: groove hidden ridge; p adding: 5px 5px'>
	</br> Hello Maven 3 + Tomcat 10 Project!
	</br>
	</br> pom.xml of the tomcat7-maven-plugin depends on Tomcat's bundles.
	</br> Maven download them and the plugin starts an embedded Tomcat instance
	with the webproject.
	</br> <strong>Below command prints the configuration: <mark>mvn -X tomcat7:run</mark></strong>
	</br>
	</br> Some interesting parts:
	<pre>
	<code>
	[INFO] Preparing tomcat7:run
	[DEBUG] (s) resources = [Resource {targetPath: null, filtering: false, 
		FileSet {directory: /workspace/webtest1/src/main/resources, 
		PatternSet [includes: {}, excludes: {}]}}]
	...
	[DEBUG] (f) additionalConfigFilesDir = /workspace/webtest1/src/main/tomcatconf
	[DEBUG] (f) configurationDir = /workspace/webtest1/target/tomcat
	...
	[DEBUG] (f) path = /webtest1
	...
	[DEBUG] (f) port = 8080
	[DEBUG] (f) project = ...:webtest1:0.0.1-SNAPSHOT @ /workspace/webtest1/pom.xml
	...
	[DEBUG] (f) warSourceDirectory = /workspace/webtest1/src/main/webapp
	...
	[INFO] Creating Tomcat server configuration at /workspace/webtest1/target/tomcat
	...
	[DEBUG] adding classPathElementFile file:/workspace/webtest1/target/classes/
	[DEBUG] add dependency to webapploader org.slf4j:slf4j-api:1.5.6:compile
	...
	</code>
	</pre>
	warSourceDirectory points to src (not target), so it runs as an usual
	dynamic web project, you could change your JSPs, HTMLs and it will
	visible immediately. Because of that the target/tomcat/webapps folder
	is empty.
	</br>
	</br>
	</br> How to Deploy or Run Application?:
	</br> 
	<strong>Command to deploy application on existing running server.
	The server must be in running state on port 8080.
	<mark>clean install tomcat7:deploy</mark></strong>
	</br>
	<strong>Command to run application directly on tomcat server:
	<mark>-Dmaven.tomcat.port=9090 tomcat7:run</mark></strong>
	</br>
	</br> (
	<kbd>Alt</kbd>
	+
	<kbd>Shift</kbd>
	+
	<kbd>X</kbd>
	) , Then
	<kbd>M</kbd>
	to Run Maven Build.
	</br>
	</br>
	Steps:
	<ol>
		<li>You will need to specify/save the Maven goals you want on Run -> Run
	Configurations</li>
		<li>For every modification to project files you need to run the either of maven commands</li>
		<li>Since the commands are saved just use shortcut Alt+Shift+X the M to Deploy/Run the application</li>
		<li>Launch the application in browser</li>
		<li>To bedug application you can use -X switch in maven command</li>
	</ol>
	</br>
</body>
</html>