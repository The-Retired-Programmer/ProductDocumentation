title=Extexp version 1.1 released
date=2021-11-15
type=post
tags=Extexp, NetBeans_Plugins
status=published
~~~~~~

Extexp has been updated and a new version (1.1) has been released.  The NBM is available for
download from GitHub.

This release includes a new control command "ForList", a loop construct which runs a command
once for each element in a list.  The actual element value is presented via a special parameter
"\_\_ELEMENT\_\_".  The element list is a string using the '|' character as the element delimiter.

Examples of syntax:

~~~ json
    {
        "ForList": "${pageorder}",
        "do": {
            "Use": "PAGEBUILDERWITHCONTENTSSIDEBAR",
            "page": "${__ELEMENT__}"
        }
    }
~~~

~~~ json
    {
        "ForList": "apple|lemon|pear",
        "do": {
            "Do": "message",
            "text": "the fruit is ${__ELEMENT__}"
        }
    }
~~~
