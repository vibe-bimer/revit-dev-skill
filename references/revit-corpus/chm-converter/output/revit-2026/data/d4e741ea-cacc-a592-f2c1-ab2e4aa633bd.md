# ControlledApplication.ElementTypeDuplicating Event

---  
Subscribe to the ElementTypeDuplicating event to be notified when Revit is just about to duplicate an element type. 
**Namespace:** [Autodesk.Revit.ApplicationServices](91957e18-2935-006c-83ab-3b5b9dbb5928.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public event EventHandler<ElementTypeDuplicatingEventArgs> ElementTypeDuplicating
    
    Public Event ElementTypeDuplicating As EventHandler(Of ElementTypeDuplicatingEventArgs)
    
    public:
     event EventHandler<ElementTypeDuplicatingEventArgs^>^ ElementTypeDuplicating {
    	void add (EventHandler<ElementTypeDuplicatingEventArgs^>^ value);
    	void remove (EventHandler<ElementTypeDuplicatingEventArgs^>^ value);
    }
    
    member ElementTypeDuplicating : IEvent<EventHandler<ElementTypeDuplicatingEventArgs>,
        ElementTypeDuplicatingEventArgs>
#### Value
EventHandler[ElementTypeDuplicatingEventArgs](a507c83d-21c0-badf-ee5d-f5e4c76886a8.htm)
This event is raised when Revit is just about to duplicate an element type.
Event is cancellable. To cancel it, call the 'Cancel()' method in event's argument to True. Your application is responsible for providing feedback to the user about the reason for the cancellation.
The following API functions are not available for the current document during this event: 
  * All overloads of Autodesk.Revit.DB.Document.Import()
  * [Close](da2f27b9-7255-4950-82a2-86e1432ff9f0.htm) and similar overloads.
  * [Save](8dec13b6-71f4-45d2-74e3-b109153721b5.htm) .
  * [SaveAs(String)](25c44d4a-b220-5898-b28c-a2cf6a8a8673.htm) and similar overloads.

Exception [InvalidOperationException](9e715f03-3884-e539-4dd6-8d7545733adc.htm) will be thrown if any of the above methods is called during this event.
Another [ElementTypeDuplicated](07386cf7-236a-d8cc-2423-298467b1f441.htm) event will be raised immediately after duplicating an element type is finished.
#### Reference
[ControlledApplication Class](35859972-2407-3910-cb07-bbb337e307e6.htm)
[Autodesk.Revit.ApplicationServices Namespace](91957e18-2935-006c-83ab-3b5b9dbb5928.htm)