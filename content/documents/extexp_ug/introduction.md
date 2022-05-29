title=Extexp User Guide
date=2022-05-21
type=document
tags=Extexp,NetBeans_Plugins
status=published
nextpage=installing
sectionlistname=extexp_ug
~~~~~~

## Introduction ##

~~~
**WARNING:** Extexp is probably an end-of-life product.  As of 28th May I will no longer
using it for website builds. So its main need is no longer a priority for me.  I have
move to using JBake as a website builder. I will investigate alternatives to the other major
use case (that of book building and pdf creation).  Should I find a good alternative
then Extexp will definitely become end-of-life
~~~

~~~
**WARNING:** This documentation was written for a previous version (1.0.0-SNAPSHOT).
The latest release of Extexp is 1.1.0.
~~~

Extexp is a NetBeans plug-in which can process a command sequence which defines the
required text processing.  Whilst this
task could be undertaken by a command script, Extexp provides an OS
independent implementation, with the additional benefits of a simple
definition of the command sequences, and use of in-memory storage for
intermediate results (if required).

Text processing actions (executors) which are integral to the plug-in include:

*   [Markdown processing](executors.html#markdown): using markdown sources to create HTML fragments

*   [Substitution/Merge](executors.html#substitute): insert file content/parameter strings into a template file

*   [FreeMarker Template processing](executors.html#freemarker): inserting file context and other fragments

*   [XSLT processing](executors.html#xslt): XML to XML as directed by an xslt stylesheet

*   [FOP processing](executors.html#fop): using a fo-xsl document to create a PDF

*   [HTML IMG tag creation](executors.html#imageset): scanning image resources to create IMG tags suitable for
responsive HTML page (using the srcset attribute)

*   [Ability to run any OS utility program](executors.html#external): providing basic extendibility

In addition, actions (controls) are available to provide simple flow control functions within
a command sequence.  These controls include:

*   [If-defined](controls.html#ifdefined): allows optional processing if a parameter or file is defined/present

*   [Run](controls.html#run): run a command sequence

*   [Use](controls.html#use): similar to run, with minor differences when handling in-memory file system access

*   [For](controls.html#for): repeat an action on all files with the defined extension
