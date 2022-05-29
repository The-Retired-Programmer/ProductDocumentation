title=Extexp User Documentation - The Execution Environment
date=2022-05-21
type=document
status=published
nextpage=controls
previouspage=commands
sectionlistname=extexp_ug
~~~~~~

## The Execution Environment ##

The execution environment is the information available to an executor during its processing.

The key information in the environment is:

*   The Parameters

    Parameters are set as part of the executors command definition but also inherited
from any parent controls.

*   The input file locations

    Input files are selected from one of two locations (folders):

    *   The first is the content file location, it is initially the source level folder,
but can be changed to sub folder (as directed by the `path` or `inputpath`
parameters of the `Run` or `Use` command).

    *   The second is the shared input content file location which is always the
source level folder.

    The input file selector will initially attempt a filename match in the content
file location and, if missing, will then attempt the match in the shared content
file location.

*   The output file location

    The output file location (folder) is initially the output folder but can be changed
 to a child folder (as directed by the `path` parameter of the `Run` or `Use` command).

*   The in-memory file store

    The initial in-memory file store is created as an empty store for the main command
sequence. When a `Run` control is executed a new in-memory file system is created for use
by the new command sequence. If it is required to switch to a command sequence but to
continue to use the caller's in-memory file system then the `Use` control should be used
rather than the `Run` control.

    Potential action on the in-memory filestore include:

    *   create new files (prepend the filename with !)

    *   append to the existing files, creating a file if it does not exist (prepend the filename with +)

    *   read existing files


