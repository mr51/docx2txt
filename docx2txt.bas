
Sub docx2txt マクロ()
'
' dicx2txt Macro
'
'
Dim wordFile As String, msg As String, txtFileName As String, hoge As String
wordFile = Dir("C:¥before¥*.docx")
Do While wordFile <> ""
    txtFileName = "C:¥after¥" & Replace(wordFile, ".docx", ".txt")
    wordFile = "C:¥before¥" & wordFile
    Documents.Open wordFile
    Documents(wordFile).Activate
    ActiveDocument.SaveAs2 FileName:=txtFileName, FileFormat:=wdFormatDOSTextLineBreaks
    ActiveDocument.Close
    msg = msg & txtFileName & vbCrLf
    wordFile = Dir()
Loop
MsgBox msg

End Sub
