# FormattedText.SetBoldStatus(TextRange, Boolean) Method

---  
Sets the characters in a given text range to be bold or not bold. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public void SetBoldStatus(
    	TextRange textRange,
    	bool isBold
    )
    
    Public Sub SetBoldStatus ( 
    	textRange As TextRange,
    	isBold As Boolean
    )
    
    public:
    void SetBoldStatus(
    	TextRange^ textRange, 
    	bool isBold
    )
    
    member SetBoldStatus : 
            textRange : TextRange * 
            isBold : bool -> unit 
#### Parameters
textRange [TextRange](8a00baaf-8cb8-d9f0-e0a0-eaa5aa16e55e.htm)
     The given text range. 
isBold Boolean
     The desired bold status of characters in the given text range. True to set bold, false to set not bold. 
Exception| Condition  
---|---  
[ArgumentException](2e6e4206-97a8-dd4b-df5d-4269f4bb6088.htm)|  This text range is empty. -or- This start index of this text range is not within the text range identifying the entire text. -or- The end of this text range is not within the text range identifying the entire text.   
[ArgumentNullException](631e1424-60f4-929b-4e52-dda9dcd26316.htm)|  A non-optional argument was null   
To make the numbers or letters in a list bold, apply the bold status to the carriage return character that ends the list paragraph. 
The given text range should not be empty. 
#### Reference
[FormattedText Class](79a92343-2342-8325-1b51-f12c4fb05481.htm)
[SetBoldStatus Overload](03b043e7-7056-6476-b223-d81c15b5ccc3.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)