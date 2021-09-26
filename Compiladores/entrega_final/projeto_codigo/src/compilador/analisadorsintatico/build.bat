(for %%i in (*) do if not "%%~i" == "Analisador.jj" (if not "%%~i" == "build.bat" (del "%%~i") )) && javacc Analisador.jj


REM (for %%i in (*) do if not "%%~i" == "Analisador.jj" (if not "%%~i" == "build.bat" (del "%%~i") )) && javacc Analisador.jj && javac *.java
REM (for %%i in (*) do if not "%%~i" == "Analisador.jj" (if not "%%~i" == "build.bat" (del "%%~i") )) && javacc Analisador.jj && javac *.java & java Analisador.java