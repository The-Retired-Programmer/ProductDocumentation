title=Extexp User Documentation - Executor Commands
date=2022-05-21
type=document
status=published
nextpage=extending
previouspage=controls
sectionlistname=extexp_ug
~~~~~~

## Executor Commands ##
Executors are the set of commands which undertake the text transformations.

Whilst Extexp is designed as an extendable text processor and can have additional
executors added, there are a standard set of executor commands present
in the extexp plug-in.

All executors commands have a parameter with the key `Do` and a value
which is the executor name.

An example of this part of the executor command is:

~~~ json
    {
        "Do": "copy";
        ...
    }
~~~

- - - -

### Copy ### {#copy}

The `Copy` command copies text to the target file.

Example:

~~~ json
    {
        "Do": "copy";
        "from": "example.md";
        "to": "!example";
    }
~~~

- - - -

### Copy resources ### {#copyresources}

The `Copy Resources` command copies contents of resource folder to the target folder.

It has two optional parameters `to` and `foldername`.

*   `to` defines the target folder and is one of two values `output` or `cache`.  The
parameter is optional, with its default being `output`.

*   "foldername" describes the name of the resources folder.  The parameter is optional
with its default being "resources".

The folder structure for resource input will allow optional child folder structures within
the `resources` folder, but the resulting created `resources` folder will be  flat structure.

The folder structure between the project source folder and the input resources folder
will be replicated between the source folder and the output resources folder.

Examples:

~~~ json
    {
        "Do": "copyresources";
    }
~~~
    or

~~~ json
    {
        "Do": "copyresources";
        "to": "cache";
        "foldername": "images";
    }
~~~

- - - -

### List ### {#list}

The `List` command copies the source to the output window.  The `title` parameter
defines the displayed title and `from` parameter defines the source.

Example:

~~~ json
    {
        "Do": "list";
        "from": "example.md";
        "title": "Example ONE";
    }
~~~

which displays:

~~~
======================================
Example ONE
======================================
file content 
....
======================================
~~~

 - - - -

### Message ### {#message}

The `Message` command writes a message to the output window.  The `text` parameter
defines the displayed message.

Example:

~~~ json
    {
        "Do": "message";
        "text": "Processing page ${page}";
    }
~~~

displays (where parameter `page` has the value "index"):

~~~
Processing page index
~~~

 - - - -

### Substitute ### {#substitute}

The substitute command processes a template (usually a file) performing parameter
substitution on all ${\<key>} markers.  The substitutions can be parameter values,
in-memory file content, files content (from the input and shared input contexts).  All
insertions have parameter substitution performed on their content (i.e. the substitution
process is fully recursive).

The command has two parameters:

*   `from` - the template file
*   `to` - the results of the substitution process

Additional parameters may be defined in the command which will be available for use in the
substitute process (as well as all parameters defined in parent controls).

Example:

~~~ json
    {
        "Do": "substitute";
        "from": "simple-template.txt",
        "to": "+generated-text";
    }
~~~

- - - -

### FOP ### {#fop}

XSL-FO is a W3C standard describing a XML vocabulary which defined printed pages.
Tools exist which can process these documents and create PDF output.  There is an
Apache open source tool (FOP) which can be used for this purpose.  This commands
runs the FOP tool.

The command has two parameters:

*   `xsl-fo` - the xsl-fo document
*   `pdf` - the resulting pdf document

This commands requires that the FOP software is installed on your machine and the
any necessary configuration is undertaken via the NetBeans Preference screen.  For more details
about this please see [Configuring Extexp](installing.html#configure).

Example:

~~~ json
    {
        "Do": "fop";
        "xsl-fo": "book",
        "to": "Book.pdf";
    }
~~~

- - - -

### External ### {#external}

This command will run any simple text processing program that is available on your
workstation. It required addition parameters:

*   `command` - the command name to be executed
*   `parameters` - any additional command parameters that are required (optional)
*   `from` - the input text for the command
*   `to` - the output file to collect the output from the command

The error stream from the external program will be written to the netbeans output window.

If using Linux or MacOS, programs such as grep, sed and awk are text processing programs which
could be executed by this command to access additional specialist text processing
capabilities.

Example:

~~~ json
    {
        "Do": "external";
        "command": "wc",
        "parameters": "-w",
        "from": "chapter2.md",
        "to": "wc-param"
    }
~~~

- - - -

### Markdown ### {#markdown}

Markdown is a lightweight markup language with plain text formatting syntax.  This command
processes the markdown document and process html output (which is probably a html fragment
for later insertion into a full html document).

There are a range of markdown processors available, and whilst it is technically possible to
use any such software, the extexp project recommends use of the kramdown processor.

The command requires up to three parameters:

*   `from` - the markdown source file
*   `to` - the generated html fragment
*   `template` - The name of an ERB template file (optional)

At its simplest, the ERB template file provides a wrapper around the generated
source.  The point in the template where the processed markdown is to be inserted
is marked with a tag `<%=@body%>`.

However it is more normal practise within Extexp to use the markdown command to generate
a html fragment, and then combine all the fragments into a final html document using
either the Substitute or FreeMarker commands (i.e. not using the markdown template parameter),
but the software can support either styles.

This commands requires that the kramdown software is installed on your machine and the
any necessary configuration is undertaken via the NetBeans Preference screen.  For more details
about this please see [Configuring Extexp](installing.html#configure).

Example:

~~~ json
    {
        "Do": "markdown";
        "from": "chapter2.md",
        "to": "!chapter2"
    }
~~~

- - - -

### Markdown and Substitute ### {#markownsubstitute}

The Markdown And Substitute command (`markdown-substitute`) is a convenience command combining the Markdown
 and Substitute commands.  It has the same parameters as the markdown command, first processing the markdown
text, after which it runs the substitution process on the generated output before saving it (the `to` parameter).

Additional parameters may be defined in the command which will be available foe use in the
substitute process (as well as all parameters defined in parent controls).

Example:

~~~ json
    {
        "Do": "markdown-substitute";
        "from": "chapter2.md",
        "to": "!chapter2",
        "title": "ABC ... XYZ"
    }
~~~

- - - -

### FreeMarker ### {#freemarker}

FreeMarker provides a more fully featured templating language for building
complex documents.  All parameters and in-memory filestore is made available to the FreeMarker
engine, and files can be made available, by declaration as a parameter value.

Two parameters are required:

*   `template` - the Freemarker template
*   `to` - the output document generated by FreeMarker

Additional parameters may be defined in the command which will be available for use by
FreeMarker (as well as all parameters defined in parent controls).

While the FreeMarker software is already installed on your workstation, there is a small amount of 
necessary configuration to be undertaken via the NetBeans Preference screen.  For more details
about this please see [Configuring Extexp](installing.html#configure).

Example:

~~~ json
    {
        "Do": "freemarker";
        "template": "main.ftl",
        "to": "!chapter2",
        "title": "Chapter 2 - Getting to know your Software",
        "content": "content-fragment-ch2"
    }
~~~

- - - -

### Imageset ### {#imageset}

The Imageset command (`create-imageset`) collects together information about a set of like images
(each being a different image size) and creates a suitable \<IMG> html tag.
Such a tag would be used to display an image in a responsive design and would be inserted
into an html document or fragment (using a templating or substitution method provided within
Extexp).

The command has 5 required parameters:

*   `image` - the image name for the 'core image'
*   `width` - the width of the core image
*   `height` - the height of the core image
*   `class` - the css class name to be added to the imageset tag
*   `to` - the html output created by the command.



Example:

~~~ json
    {
        "Do": "create-imageset",
        "to": "!swimming-3",
        "class": "img-responsive",
        "image": "Swimming-3.png",
        "width": "500",
        "height": "300"
    }
~~~

which creates content:

~~~ html
    <img
        width="500"
        height="300"
        src="resources/Swimming-3.jpg"
        class="img-responsive" alt=""
        srcset="resources/Swimming-3.jpg 500w,
            resources/Swimming-3-300x180.jpg 300w,
            resources/Swimming-3-200x120.jpg 200w,
            resources/Swimming-3-60x36.jpg 60w"
            sizes="(max-width: 500px) 100vw, 500px"
    />
~~~

- - - -

### XSLT ### {#xslt}

XLST is a W3C standard describing a language for defining transforms that can
be applied to a XML document to produce an output (normally another XML document).
As HTML5 is an XML subset, it can be used to transform html documents or fragments.

The command requires 3 parameters:

*   `from` - the source XML (html) document
*   `stylesheet` - the file defining the transformations to be applied (xslt language)
*   `to` - the output document created by the xslt

Example of use:  to transform a html document (probably generated from markdown
sources) into an xsl-fo document for passing to  FOP to build a pdf document.

Example:

~~~ json
    {
        "Do": "xslt",
        "from": "fullbook",
        "stylesheet": "bookbuilder.xsl",
        "to": "!fo"
    }
~~~

- - - -
