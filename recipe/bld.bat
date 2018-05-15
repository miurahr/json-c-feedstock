call cmake --help
call cmake -G "%CMAKE_GENERATOR%" .
if errorlevel 1 exit 1

dir
dir work

call msbuild "json-c.vcxproj" /p:Configuration=Release;OutDir=%LIBRARY_LIB%
if errorlevel 1 exit 1

md %LIBRARY_INC%\json-c
copy json.h %LIBRARY_INC%\json-c\*
copy debug.h %LIBRARY_INC%\json-c\*
copy linkhash.h %LIBRARY_INC%\json-c\*
copy arraylist.h %LIBRARY_INC%\json-c\*
copy json_util.h %LIBRARY_INC%\json-c\*
copy json_object.h %LIBRARY_INC%\json-c\*
copy json_tokener.h %LIBRARY_INC%\json-c\*
copy json_object_iterator.h %LIBRARY_INC%\json-c\*
copy json_c_version.h %LIBRARY_INC%\json-c\*
copy json_inttypes.h %LIBRARY_INC%\json-c\*
copy include\json_config.h %LIBRARY_INC%\json-c\*
copy json_object_private.h %LIBRARY_INC%\json-c\*
