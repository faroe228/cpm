@rem lpt minor changes to make work on windows
@pushd "%~dp0"
set CPM_PATH=%CD%
@popd
set CPM_REGISTRY=http://packages.dojofoundation.org/
java -classpath "%CPM_PATH%\jars\js.jar" org.mozilla.javascript.tools.shell.Main -opt -1 "%CPM_PATH%\lib\cpm.js" %*