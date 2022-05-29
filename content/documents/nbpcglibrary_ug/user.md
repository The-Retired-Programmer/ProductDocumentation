title= NBPCG Library User Guide - User Notes
date=2022-05-21
type=document
status=published
nextpage=developer
previouspage=index
sectionlistname=nbpcglibrary_ug
~~~~~~

## User Notes ##

The library exists on Maven Central so no explicit repository information is required to be included 
in user's POM. Add any required dependencies into the POM.  An example statement is:

~~~ xml
    ...
    <dependency>
        <artifactId>xxxxx</artifactId>
        <groupId>uk.the retiredprogrammer.nbpcglibrary</groupId>
        <version>4.0.0</version>
    </dependency>
    ...
~~~

where xxxxx is one of:

  * api
  * annotations
  * common
  * data
  * form
  * icons
  * json
  * node
  * topcomponent
  * mysql
  * localjsonaccess
  * localdatabaseaccess
  * remoteclient
  * email
  * expressionparserandevaluate
  * lifecycle
  * simpleexpressionlanguage

Online Javadoc for this release can be found [here](http://www.javadoc.io/doc/uk.theretiredprogrammer/nbpcglibrary),
whilst a downloadable jar file containing the same Javadoc is available
[from Maven Central](http://central.maven.org/maven2/uk/theretiredprogrammer/nbpcglibrary/4.0.0/nbpcglibrary-4.0.0-javadoc.jar).

