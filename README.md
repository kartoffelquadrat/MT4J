# MT4J (MS^2 patch)

## About

This is an double-updated version ([first update](https://github.com/mschoettle/mt4j)) of the original [MT4j](http://www.mt4j.org), based on the last official release v0.98. Major changes are support of a more up-to-date jogl/gluegen library and support for direct integration in maven projects.

 * [More details on code changes by my predecessor](https://github.com/mschoettle/mt4j#mt4j---multitouch-for-java)
 * [More details on recent jogl version and maven support](changelog.md)

### Context

Although it seems like MT4J is no longer maintained by the official developers, [TouchCORE](http://touchcore.cs.mcgill.ca) still relies on MT4J functionality. This patched MT4J version eases everyday development on TouchCORE.

## Build instructions

Building this MT4J version is a three-staged process:

 * Compile the sources with eclipse
 * Create semi-self contained jar with ant (all deps except jogl / glueglen included)
 * Convert the jar into a maven artefact

### Eclipse

You have to first build the project with eclipse. This will create a ```bin``` folder, required for the second stage.

 * Make sure to set the compiler compliance to java 1.8
 * Make sure to point to the Runtime (```rt.java```) of that jdk version, so eclipse does not complain about missing system libraries.
 * Hit ```clean and build```. Verify that you now have a ```mt4j-core/bin``` folder.

### Ant

Once you have built mt4j with eclipse, run the ant script, to build a jar from your compiles classes and required libraries: 

 * (Install ant: ```brew install ant``` )
 * ```cd mt4j-core```
 * ```ant create_run_jar```

### Maven

If you want to use MT4J in a maven project, you can optionally run the wrapper, to convert the jar into a maven artefact, for convenient reuse:  

```./mavenize```

Use the following dependency block for integration in your maven projects:

```xml
<dependency>
	<groupId>friend.of.mcgillsel</groupId>
	<artifactId>mt4j</artifactId>
	<version>mspatch-2.0</version>
</dependency>
```

## External links

- [Official MT4j Website](http://www.mt4j.org)
- [MT4j on Google Code](https://code.google.com/p/mt4j/)
- [MT4j Documentation](http://www.mt4j.org/mediawiki/index.php/Documentation)
- [NUI Group Forum for MT4j](http://nuigroup.com/forums/viewforum/81/)

## Contact / Pull Requests

 * Author: Maximilian Schiedermeier ![email](email.png)
 * Github: Kartoffelquadrat
 * Webpage: https://www.cs.mcgill.ca/~mschie3
