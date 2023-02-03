@echo off
set "inputFile=C:\Users\lstieme\source\repos\WebsitezuPDF\WebsitezuPDF\bin\Debug\websites.txt"
set "outputPath=C:\Etiscan\Backup\pdf"

for /f "usebackq tokens=*" %%a in ("%inputFile%") do (
  start chrome --headless --disable-gpu --print-to-pdf="%outputPath%\%%~na.pdf" "%%a"
)

echo alle pdfs wurden erstellt
pause
