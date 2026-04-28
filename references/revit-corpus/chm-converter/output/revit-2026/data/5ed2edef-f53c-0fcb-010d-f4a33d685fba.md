# SunAndShadowSettings.GetSunrise Method

---  
Identifies the sunrise time for the SunAndShadowSettings element at its current location and indicated date. 
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public DateTime GetSunrise(
    	DateTime date
    )
    
    Public Function GetSunrise ( 
    	date As DateTime
    ) As DateTime
    
    public:
    DateTime GetSunrise(
    	DateTime date
    )
    
    member GetSunrise : 
            date : DateTime -> DateTime 
#### Parameters
date DateTime
     The date for which to determine sunrise time. 
#### Return Value
DateTime The date and time. The value will be in Coordinated Universal Time (UTC). 
The value returned is affected by the value of the [UsesDST](34284848-ddf6-1fda-d1d2-43f8c2e2ad78.htm) flag set for the current location. If this value is true, the sunrise value will be adjusted for Daylight Savings Time, regardless of the value of the input date. 
#### Reference
[SunAndShadowSettings Class](d616614b-a2ed-b0d0-4f11-f0a0b54a22e5.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)