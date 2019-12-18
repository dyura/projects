' Find and Replace Text in a Text File by vbscript
Const ForReading = 1

Const ForWriting = 2


strFileName = Wscript.Arguments(0)

strOldText = Wscript.Arguments(1)

strNewText = Wscript.Arguments(2)

Set objFSO = CreateObject("Scripting.FileSystemObject")

Set objFile = objFSO.OpenTextFile(strFileName, ForReading)

strText = objFile.ReadAll

objFile.Close

strNewText = Replace(strText, strOldText, strNewText)

Set objFile = objFSO.OpenTextFile(strFileName, ForWriting)

objFile.WriteLine strNewText

objFile.Close

'cscript replace.vbs "C:\Scripts\Text.txt" "Jim " "James "
