@rem lpt minor changes to make work on windows
@pushd "%~dp0"
set CPM_PATH=%CD%
@popd
set CPM_REGISTRY=http://packages.dojofoundation.org/
@rem cpm install dojox FAILS without my fix for cpm.js
@rem https://github.com/kriszyp/cpm/issues/20
@java -classpath "%CPM_PATH%\jars\js.jar" org.mozilla.javascript.tools.shell.Main -opt -1 "%CPM_PATH%\lib\cpm.js" %*
@rem switching to node is another solution to cpm install dojox issue
@rem node -opt -1 "%CPM_PATH%\lib\cpm.js" %*