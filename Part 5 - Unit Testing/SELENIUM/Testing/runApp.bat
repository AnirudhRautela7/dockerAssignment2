@Echo Off

FOR /f "tokens=2 delims==" %%G in ('wmic os get localdatetime /value') do set datetime=%%G
set mytimestamp=%datetime:~0,4%%datetime:~4,2%%datetime:~6,2%-%time:~0,2%%time:~3,2%%time:~6,2%
echo %mytimestamp%

set reportStyle="Html"
set commonPath="C:\Users\Anirudh Rautela\Desktop\DevOps Handson\dockerAssignment2\Part 5 - Unit Testing\SELENIUM\Testing"
set pythonPath="C:\Users\Anirudh Rautela\AppData\Local\Programs\Python\Python312"

%pythonPath%\python -m pip install flask
%pythonPath%\python "E:\12)DevOps\CarbonPipeline\CarbonPipeline\SampleCode\app.py" 
