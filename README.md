emt-xtext-archetype
===================
__Eclipse Maven Tycho Xtext Archetype__

Continuous Integration   
----------------------

[![Build Status](https://fuin-org.ci.cloudbees.com/job/emt-xtext-archeytpe/badge/icon)](https://fuin-org.ci.cloudbees.com/job/emt-xtext-archeytpe/)

<a href="https://fuin-org.ci.cloudbees.com/job/emt-xtext-archeytpe"><img src="http://www.fuin.org/images/Button-Built-on-CB-1.png" width="213" height="72" border="0" alt="Built on CloudBees"/></a>

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
* __Looks like the following is no longer necessary (2013-12-31)__ Install "Xtext Antlr-2.1.0" (Help / Install New Software... / Work with "http://download.itemis.com/updates/releases/" / Install "Xtext Antlr-2.1.0") 
* M2E Eclipse Plugin is installed (Help / Eclipse Market Place... / Find "M2E" / Install "Maven Integration for Eclipse (Juno and newer)")  
* M2E Tycho Connector is installed (Window /Prefences / Maven / Discovery / Open Catalog / Install M2E Connectors / Find "Tycho" / Install "Tycho Configurator") 
* The Eclipse and Xtext repositories are added to your .m2/settings.xml to make them accessible for Maven:
```xml
<repositories>
    <repository>
        <id>eclipse-luna</id>
        <layout>p2</layout>
        <url>http://download.eclipse.org/releases/luna</url>
    </repository>
    <repository>
        <id>xtext-update-site</id>
        <layout>p2</layout>
        <url>http://download.eclipse.org/modeling/tmf/xtext/updates/composite/releases/</url>
    </repository>
</repositories>
```


Create project
--------------

**Mandatory Parameters**
```
mvn archetype:generate \
     -DarchetypeGroupId=org.fuin.archetypes \
     -DarchetypeArtifactId=emt-xtext-archetype \
     -DarchetypeVersion=0.1.0
```

**All Parameters**
```
mvn archetype:generate \
     -DarchetypeGroupId=org.fuin.archetypes \
     -DarchetypeArtifactId=emt-xtext-archetype \
     -DarchetypeVersion=0.1.0 \
	 -DtechName="mydsl" \
	 -DgroupId="com.mycompany.mydsl" \
	 -Dpackage="com.mycompany.mydsl" \
	 -DdslName="MyDSL" \
	 -DdslExtension="mydsl" \
	 -DfullName="My DSL" \
	 -Ddescription="A cool Xtext based DSL" \
	 -DartifactId="com.mycompany.mydsl" \
	 -DrootArtifactId="com.mycompany.mydsl" \
	 -Dversion="0.1.0-SNAPSHOT" \
	 -DeclipseVersion="0.1.0.qualifier" \
	 -DvendorName="Your Company Name" \
	 -DvendorUrl="http://www.mycompany.com" \
	 -DgithubRepo="yourcompany/mydsl"
```

**Explanation**
<table border="1" style="font-size:0.9em; text-align:left; vertical-align:top; padding-top:5px; padding-bottom:4px;">
<tr><th>Parameter</th><th>Default Value</th><th>Description</th></tr>
<tr><td>techName</td><td>mydsl</td><td>A short technical name of the DSL - Only lower case characters ('a'-'z', No spaces)</td></tr>
<tr><td>groupId</td><td>com.mycompany.mydsl</td><td>Maven 'groupId'</td></tr>
<tr><td>package</td><td>com.mycompany.mydsl</td><td>Java Package (Should be most of the times identical to the 'groupId')</td></tr>
<tr><td>dslName</td><td>MyDSL</td><td>Unique short name of the DSL - Only upper and lower case characters ('A'-'Z', 'a'-'z', No spaces)</td></tr>
<tr><td>dslExtension</td><td>mydsl</td><td>File extension for the DSL model files</td></tr>
<tr><td>fullName</td><td>My DSL</td><td>A short descriptive name of the DSL</td></tr>
<tr><td>description</td><td>A cool Xtext based DSL</td><td>A full description of the DSL</td></tr>
<tr><td>artifactId</td><td>com.mycompany.mydsl</td><td>Maven 'artifactId'</td></tr>
<tr><td>rootArtifactId</td><td>com.mycompany.mydsl</td><td>Sub modules add something like '.dsl' to this one to create their Maven 'artifactId'</td></tr>
<tr><td>version</td><td>0.1.0-SNAPSHOT</td><td>Maven 'version'</td></tr>
<tr><td>eclipseVersion</td><td>0.1.0.qualifier</td><td>Eclipse version - Should be identical to the Maven version except for snapshots (with a '.qualifier' instead of '-SNAPSHOT')</td></tr>
<tr><td>vendorName</td><td>Your Company Name</td><td>Full name of your organization - Used for example in the Eclipse 'product' description</td></tr>
<tr><td>vendorUrl</td><td>http:&#47;&#47;www.mycompany.com</td><td>Company URL - Used for example in the Eclipse 'product' description</td></tr>
<tr><td>githubRepo</td><td>yourcompany/mydsl</td><td>The path after 'https:&#47;&#47;github.com/' - The archetype assumes you will have a repository on GitHub</td></tr>
</table>


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
	*Do NOT agree and press 'n'*
	
3. Test Plugin (Run / Run Configurations... / Eclipse Application / Launch Runtime Eclipse)
   
   Import the Example DSL project (File / Import... / General / Existing Projects into Workspace / Select "mydsl-test")

   Open the file "test.mydsl"
   
   You should see now syntax highlighting:   
   ![DSL Screenshot OK](https://raw.github.com/fuinorg/emt-xtext-archeytpe/master/www/mydsl-ok.jpg)
   
   If you make a mistake you should see an error marker:   
   ![DSL Screenshot Error](https://raw.github.com/fuinorg/emt-xtext-archeytpe/master/www/mydsl-error.jpg)


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

More Archteypes
---------------

If you're looking for more Maven archetypes, take a look at [Open Archetypes](https://github.com/open-archetypes "Open Archetypes").

<a href="http://with-eclipse.github.io/" target="_blank">
<img alt="with-Eclipse logo" src="http://with-eclipse.github.io/with-eclipse-0.jpg" /></a>

