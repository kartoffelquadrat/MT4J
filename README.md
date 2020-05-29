MT4j - Multitouch for Java
============

This is an updated version of the original [MT4j](http://www.mt4j.org) based on the last official release v0.98. The biggest difference is that it now works with [Processing](https://processing.org/) 2.x and hence, [JOGL](http://jogamp.org/jogl/www/) 2 (based on the work of the [UltraCom project](https://github.com/lodsb/UltraCom/tree/proc2), thanks for that!). We share this here so that anyone facing the same problem can make use of it.

The following is the list of changes, which the commit history should easily reflect as well:

- updated the included log4j to the latest version (v1.2.17)
- added a build file
- TUIO libs updated to newer versions
- added PositionAnchor literal UPPER_RIGHT to MTRectangle
- added italic font (Arial)
- some logging was turned off
- some bug fixes to avoid memory leaks
- fixed InputCursor to never remove the first event (to be able to retrieve the real starting point)
- added StateChange literal TRANSLATED, which is fired by MTComponent on translate and propagated to all children (which do the same)
- added StateChange literal RESIZED, which is not used within MT4j right now
- merged mt4j-desktop and mt4j-core for easier maintenance (the dependencies were strange anyway)
- updated to Processing 2.2.1 and JOGL 2.1.5 (included in the Processing release)

## More Information

- [Official MT4j Website](http://www.mt4j.org)
- [MT4j on Google Code](https://code.google.com/p/mt4j/)
- [MT4j Documentation](http://www.mt4j.org/mediawiki/index.php/Documentation)
- [NUI Group Forum for MT4j](http://nuigroup.com/forums/viewforum/81/)

## Why?

We are working on the [TouchCORE](http://touchcore.cs.mcgill.ca) (formerly TouchRAM) project in the [Software Engineering Laboratory](http://www.cs.mcgill.ca/~joerg/SEL/SEL_Home.html) at [McGill University](http://www.mcgill.ca). When we started developing our application, MT4j v0.98 was freshly released. Unfortunately, it was never updated since, which lead us to making some adjustments our own (besides extending some of MT4j's components in our project). We always had the problem of running it with Java 7 and higher on OSX, because of JOGL 1.x only working with the JRE provided by Apple. We worked with this constraint for a long time, but finally made the switch due to other constraints, thanks to some helpful pointers we found in the [UltraCom project](https://github.com/lodsb/UltraCom/tree/proc2) (which unfortunately has many more modifications to MT4j).

Because there are probably more people out there facing the same problem, we are sharing this updated version. Hope it helps! :)

## Further changes

 * Jogl renamed a the package for the GL2 class from ```javax.media.opengl.GL2``` to something else.
 * [Here is a list of all affected java files](GL2.txt). The import line has to be updated.

