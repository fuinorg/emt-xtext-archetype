emt-xtext-archetype
===================
__Eclipse Maven Tycho Xtext Archetype__

Continuous Integration   
----------------------

[![Build Status](https://fuin-org.ci.cloudbees.com/job/emt-xtext-archeytpe/badge/icon)](https://fuin-org.ci.cloudbees.com/job/emt-xtext-archeytpe/)

<a href="https://fuin-org.ci.cloudbees.com/job/emt-xtext-archeytpe"><img src="http://www.fuin.org/images/Button-Built-on-CB-1.png" width="213" height="72" border="0" alt="Built on CloudBees"/></a>

Summary
-------
Maven archetype that creates an [Xtext](http://www.eclipse.org/Xtext/ "Xtext") project with a multi module [Maven](http://maven.apache.org/ "Maven") layout and [Tycho](http://eclipse.org/tycho/ "Tycho") (manifest-first approach). The archetype was created using the [Maven Xtext Example](https://github.com/xtext/maven-xtext-example "Maven Xtext Example").

Generated structure
-------------------
```
>com.mycompany.mydsl
|-- com.mycompany.mydsl
|-- com.mycompany.mydsl.ide
|-- com.mycompany.mydsl.sdk
|-- com.mycompany.mydsl.tests
|-- com.mycompany.mydsl.ui
|-- com.mycompany.mydsl.updatesite
`-- example-project
`-- example-project-gradle
```

* __.mydsl__ Grammar and base classes for the DSL.
* __.mydsl.ide__ Standalone setup.
* __.mydsl.sdk__ The feature.
* __.mydsl.tests__ Contains the tests.
* __.mydsl.ui__ UI related parts.
* __.mydsl.updatesite__ Creates a P2 repository that contains the plugin.
* __example-project__ Example Maven DSL project
* __example-project-gradle__ Example Gradle DSL project

Prerequisites
-------------

* Java JDK 1.7 is installed
* [Maven 3](http://maven.apache.org/download.cgi#Installation "Apache Maven Installation") is installed.
* Eclipse with Xtext is installed ([Download Pre-Configured Eclipse With Xtext](http://www.eclipse.org/Xtext/download.html "Download Eclipse with Xtext"))
* M2E Eclipse Plugin is installed (Help / Eclipse Market Place... / Find "M2E" / Install "Maven Integration for Eclipse (Juno and newer)")  
* M2E Tycho Connector is installed (Window /Prefences / Maven / Discovery / Open Catalog / Install M2E Connectors / Find "Tycho" / Install "Tycho Configurator") 
* The Eclipse and Xtext repositories are added to your .m2/settings.xml to make them accessible for Maven:
```xml
<repositories>
    <repository>
        <id>eclipse-neon</id>
        <layout>p2</layout>
        <url>http://download.eclipse.org/releases/neon</url>
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
     -DarchetypeVersion=0.2.1
```

**All Parameters**
```
mvn archetype:generate \
     -DarchetypeGroupId=org.fuin.archetypes \
     -DarchetypeArtifactId=emt-xtext-archetype \
     -DarchetypeVersion=0.2.1
     -DgroupId="com.mycompany.mydsl" \
	 -DartifactId="com.mycompany.mydsl" \
	 -Dversion="0.1.0-SNAPSHOT" \
	 -DeclipseVersion="0.1.0.qualifier" \
	 -Dpackage="com.mycompany.mydsl" \
	 -DpackagePath="com/mycompany/mydsl" \
	 -DbasePackage="com.mycompany" \
	 -DbasePackagePath="com/mycompany" \
	 -DdslName="MyDSL" \
	 -DtechName="mydsl" \
	 -DdslExtension="mydsl" \
	 -DfullName="My DSL" \
	 -Durl="http://www.mycompany.com/"
```

**Explanation**
<table border="1" style="font-size:0.9em; text-align:left; vertical-align:top; padding-top:5px; padding-bottom:4px;">
<tr><th>Parameter</th><th>Default Value</th><th>Description</th></tr>
<tr><td>groupId</td><td>com.mycompany.mydsl</td><td>Maven 'groupId'</td></tr>
<tr><td>artifactId</td><td>com.mycompany.mydsl</td><td>Maven 'artifactId'</td></tr>
<tr><td>version</td><td>0.1.0-SNAPSHOT</td><td>Maven 'version'</td></tr>
<tr><td>eclipseVersion</td><td>0.1.0.qualifier</td><td>Eclipse version - Should be identical to the Maven version except for snapshots (with a '.qualifier' instead of '-SNAPSHOT')</td></tr>
<tr><td>package</td><td>com.mycompany.mydsl</td><td>Java Package (Should be most of the times identical to the 'groupId')</td></tr>
<tr><td>packagePath</td><td>com/mycompany/mydsl</td><td>Same as package, but instead of '.' the '/' is used as separator</td></tr>

<tr><td>dslName</td><td>MyDSL</td><td>Unique short name of the DSL - Only upper and lower case characters ('A'-'Z', 'a'-'z', No spaces)</td></tr>
<tr><td>techName</td><td>mydsl</td><td>A short technical name of the DSL - Only lower case characters ('a'-'z', No spaces)</td></tr>
<tr><td>dslExtension</td><td>mydsl</td><td>File extension for the DSL model files</td></tr>
<tr><td>fullName</td><td>My DSL</td><td>A short descriptive name of the DSL</td></tr>
<tr><td>url</td><td>http:&#47;&#47;www.mycompany.com/</td><td>Company URL - Used for example in the Eclipse 'product' description</td></tr>
</table>


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

