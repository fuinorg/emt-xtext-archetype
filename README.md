emt-xtext-archeytpe
===================
__Eclipse Maven Tycho XText Archetype__

Summary
-------
Maven archetype that creates an [Xtext](http://www.eclipse.org/Xtext/ "Xtext") project with a multi module [Maven](http://maven.apache.org/ "Maven") layout and [Tycho](http://eclipse.org/tycho/ "Tycho") (manifest-first approach).

Generated structure
-------------------
```
>com.mycompany.mydsl
|-- com.mycompany.mydsl.dsl
|-- com.mycompany.mydsl.repository
|-- com.mycompany.mydsl.sdk
|-- com.mycompany.mydsl.tests
|-- com.mycompany.mydsl.ui
`-- mydsl-test
```

* __.mydsl.dsl__ Grammar and base classes for the DSL.
* __.mydsl.repository__ Creates a P2 repository that contains the plugin.
* __.mydsl.sdk__ The feature.
* __.mydsl.tests__ Contains the tests.
* __.mydsl.ui__ UI related parts.
* __mydsl-test__ Example DSL project

Prerequisites
-------------

* Java JDK 1.6 is installed
* [Maven 3](http://maven.apache.org/download.cgi#Installation "Apache Maven Installation") is installed.
* Eclipse with Xtext is installed ([Download Pre-Configured Eclipse With Xtext](http://www.eclipse.org/Xtext/download.html "Download Eclipse with Xtext"))
* Install "Xtext Antlr-2.1.0" (Help / Install New Software... / Work with "http://download.itemis.com/updates/releases/" / Install "Xtext Antlr-2.1.0") 
* M2E Eclipse Plugin is installed (Help / Eclipse Market Place... / Find "M2E" / Install "Maven Integration for Eclipse (Juno and newer)")  
* M2E Tycho Connector is installed (Window /Prefences / Maven / Discovery / Open Catalog / Install M2E Connectors / Find "Tycho" / Install "Tycho Configurator") 

Create project
--------------

```
mvn archetype:generate \
     -DarchetypeGroupId=org.fuin.archetypes \
     -DarchetypeArtifactId=emt-xtext-archetype \
     -DarchetypeVersion=0.1.0 \
```

Import projects in Eclipse
--------------------------

1. Import the newly created projects (File / Import... / Existing Maven Projects)

2. Generate files (Run / Run Configurations... / Mwe2 Launch / Generate Language Infrastructure)
   
   **If you see the following warning in the console, you need to install "Xtext Antlr-2.1.0" first (See above Prerequisites)**
	```
	*ATTENTION*
	It is recommended to use the ANTLR 3 parser generator (BSD licence - http://www.antlr.org/license.html).
	Do you agree to download it (size 1MB) from 'http://download.itemis.com/antlr-generator-3.2.0.jar'? (type 'y' or 'n' and hit enter)
	```
	** Do NOT agree and press 'n' **
	
3. Test Plugin (Run / Run Configurations... / Eclipse Application / Launch Runtime Eclipse)
   
   Import the Example DSL project (File / Import... / General / Existing Projects into Workspace / Select "mydsl-test")

   Open the file "test.mydsl"
   
   You should see now syntax highlighting:   
   ![DSL Screenshot OK](https://raw.github.com/fuinorg/emt-xtext-archeytpe/master/www/mydsl-ok.jpg)
   
   If you make a mistake you should see an error marker:   
   ![DSL Screenshot Error](https://raw.github.com/fuinorg/emt-xtext-archeytpe/master/www/mydsl-error.jpg)


Continuous Integration   
----------------------

[![Build Status](https://fuin-org.ci.cloudbees.com/job/emt-xtext-archeytpe/badge/icon)](https://fuin-org.ci.cloudbees.com/job/emt-xtext-archeytpe/)

<a href="https://fuin-org.ci.cloudbees.com/job/emt-xtext-archeytpe"><img src="http://www.fuin.org/images/Button-Built-on-CB-1.png" width="213" height="72" border="0" alt="Built on CloudBees"/></a>

Snapshots
---------

Snapshots can be found on the [OSS Sonatype Snapshots Repository](http://oss.sonatype.org/content/repositories/snapshots/org/fuin "Snapshot Repository"). 

Add the following to your .m2/settings.xml to enable snapshots:

```xml
<repository>
    <id>sonatype.oss.snapshots</id>
    <name>Sonatype OSS Snapshot Repository</name>
    <url>http://oss.sonatype.org/content/repositories/snapshots</url>
    <releases>
        <enabled>false</enabled>
    </releases>
    <snapshots>
        <enabled>true</enabled>
    </snapshots>
</repository>
```



