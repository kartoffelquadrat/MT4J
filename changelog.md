# Changelog

## About

This is a description of changes that have been made to my predecessor's cuson verison of [MT4j](http://www.mt4j.org).

## Jogl update

### Libs

More recent versions of Jogl and Gluegen in lib.

 * Removed all legacy jogl / gluegen jars, replaced them with the following:

```xml
gluegen-rt-2.3.0-natives-android-aarch64.jar
gluegen-rt-2.3.0-natives-android-armv6.jar
gluegen-rt-2.3.0-natives-linux-amd64.jar
gluegen-rt-2.3.0-natives-linux-armv6.jar
gluegen-rt-2.3.0-natives-linux-armv6hf.jar
gluegen-rt-2.3.0-natives-linux-i586.jar
gluegen-rt-2.3.0-natives-macosx-universal.jar
gluegen-rt-2.3.0-natives-solaris-amd64.jar
gluegen-rt-2.3.0-natives-solaris-i586.jar
gluegen-rt-2.3.0-natives-windows-amd64.jar
gluegen-rt-2.3.0-natives-windows-i586.jar
gluegen-rt-2.3.0.jar
gluegen-rt-main-2.3.0.jar
jogl-all-2.3.0-natives-android-aarch64.jar
jogl-all-2.3.0-natives-android-armv6.jar
jogl-all-2.3.0-natives-linux-amd64.jar
jogl-all-2.3.0-natives-linux-armv6.jar
jogl-all-2.3.0-natives-linux-armv6hf.jar
jogl-all-2.3.0-natives-linux-i586.jar
jogl-all-2.3.0-natives-macosx-universal.jar
jogl-all-2.3.0-natives-solaris-amd64.jar
jogl-all-2.3.0-natives-solaris-i586.jar
jogl-all-2.3.0-natives-windows-amd64.jar
jogl-all-2.3.0-natives-windows-i586.jar
jogl-all-2.3.0.jar
jogl-all-main-2.3.0.jar
```

 * Updated build dependencies in eclipse project settings.

### Package signature patch

Update to jogl/gluegen 2.3.0 required some refactoring of imports in class files.

 * Jogl changed the package signature of two classes:
   * ```javax.media.opengl.GL2``` -> ```com.jogamp.opengl.GL2```
   * ```javax.media.opengl.glu.GLU``` -> ```com.jogamp.opengl.glu.GLU```
 * Listing
   * [Classes affected by the GL2 change](GL2.txt). The import line for ```GL2``` has to be updated, for those classes.  
```grep -nre "GL2" . | grep import | cut -d: -f1 | sort```
   * [Classes affected by the ```GLU``` change](GLU.txt)  
```grep -nre "GLU" . | grep import | cut -d: -f1 | sort```
 * Refactoring
   * Bash snippet to modify all import occurences:

```bash
LC_CTYPE=C
LANG=C
for i in $(cat GL2.txt); do sed 's/javax.media.opengl/com.jogamp.opengl/g' $i > $i-new; mv $i-new $i; done
for i in $(cat GLU.txt); do sed 's/javax.media.opengl/com.jogamp.opengl/g' $i > $i-new; mv $i-new $i; done
```
## Yagni

Removed the ```examples``` code. Nobody wants that within a library jar.

## Eclipse tweaks

Added an eclipse config file to override the compiler compliance to 1.8, and set the corresponding runtime.

## Maven export

Added a ```mavenize``` script that wraps up the generated jar and crafts a custom maven artifact, planted right into your local repository.


