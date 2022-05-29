title=Extexp User Documentation - Control Commands
date=2022-05-21
type=document
status=published
nextpage=executors
previouspage=execenv
sectionlistname=extexp_ug
~~~~~~
## Control Commands ##

Control commands manage the flow of control through the command sequences. Commands
exist which can:

*   switch to new command sequences
*   conditionally execute a command
*   repetitively execute a command

Use of these commands may alter the state of the [executor environment](execenv.html)
in which executors will run. 

All controls have a parameter with the key set to the control name and a value
which is the associated option.

An example of this part of the control is:

~~~ json
    {
        "Run": "PAGEBUILDER";
        ...
    }
~~~

- - - -

### If-defined ###  {#ifdefined}

~~~ json
    {
        "If-defined": "<entity to test>";
        ....
    }
~~~

`If-defined` tests for the existence of:

*   a defined parameter
*   the existence of a file (found is either normal or in-memory filestore).

It can have up to two optional parameters `then` and `else`, each of which can have a single command
as its parameter value.  The `then` command will be executed if the parameter is defined,
the `else` command being executed if the parameter is not defined.

The `then` and `else` commands are executed using the current Execution Environment i.e.
 the command makes no changes to environment in preparation for execution,

If you want to execute a sequence of commands for either the `then` or `else` condition, then the
required sequence should be defined as a named sequence and either a `Use` or `Run` command 
inserted as the `then` or `else` parameter value.

Example:

~~~ json
    {
        "If-defined": "topinsert.md";
        "then": {
                    "Do": "markdown";
                    "from": "topinsert.md";
                    "to": "!topinsert";
                };
    }
~~~

- - - -

### Run ### {#run}

~~~ json
    {
        "Run": "<named command sequence>";
        ...
    }
~~~

`Run` executes a named command sequence. It updates the execution environment prior to executing
the command sequence.  Parameters `path` or `inputpath` can be used to update the input
and output file contexts, and a new empty in-memory filestore is created.

Parameter `path` will cause both the input and output file context to be updated, while parameter
`inputpath` will only update the input file context.

Additional parameters can be defined as needed. These parameters are available to the called command sequence,
so provide a method of passing information.

Example:

~~~ json
    {
        "Run": "PAGEBUILDER",
        "title": "Java Installation Notes",
        "inputpath": "index",
        "page": "install-java",
        "navmenu": "Home>index"
    }
~~~

- - - -

### Use ### {#use}

~~~ json
    {
        "Use": "<named command sequence>";
        ...
    }
~~~

`Use` executes a named command sequence.  It is very similar to the `Run` control, the
only difference being that the `Use` control does not create a new in-memory file store.
This allows a `Use` command sequence to return information via the in-memory file store.

Example:

~~~ json
    {
        "Use": "PAGEBUILDER",
        "title": "Java Installation Notes",
        "inputpath": "index",
        "page": "install-java",
        "navmenu": "Home>index"
    }
~~~

- - - -

### For ### {#for}

~~~ json
    {
        "For": "<ext>",
        "do": <command>;
        .....
    }
~~~

`For` executes a command repetitively for each file in the current input context with
the defined file extension.  The `do` parameter defines the command to be executed.
During execution of the command a special parameter `__FILENAME__` will be defined with
a value which is the selected filename.
    
Example:

~~~ json
    {
        "For": "md",
        "do": {
            "Run": "PAGEBUILDER",
            "page": "${__FILENAME__}"
        }
    }
~~~
