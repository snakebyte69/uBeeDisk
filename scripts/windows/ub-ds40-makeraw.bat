::==============================================================================
:: ub-ds40-makeraw - Creates a formatted Microbee DS40 raw file.
:: SJK 2010/07/17.
::
:: Usage: ub-ds40-makeraw filename
::
:: Note: options are used here that will overide the format type given in any
:: file extensions!  The verbose level is set to 0 to disable normal
:: reporting.  No format confirmation prompting!
::==============================================================================

if %1x==x goto usage
if NOT %2x==x goto usage

ubeedisk --disk=format --force --verbose=0 --format=ds40 --otype=raw --of=%1
goto done

:usage
echo %0 - Creates a formatted Microbee DS40 raw file.
echo Usage: %0 output_file

:done
