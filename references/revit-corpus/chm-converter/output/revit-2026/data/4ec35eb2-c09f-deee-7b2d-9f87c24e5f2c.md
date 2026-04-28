# ExternalDefinition.OwnerGroup Property

---  
Returns or change the group ID of the external parameter definition.
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public virtual DefinitionGroup OwnerGroup { get; set; }
    
    Public Overridable Property OwnerGroup As DefinitionGroup
    	Get
    	Set
    
    public:
    virtual property DefinitionGroup^ OwnerGroup {
    	DefinitionGroup^ get ();
    	void set (DefinitionGroup^ value);
    }
    
    abstract OwnerGroup : DefinitionGroup with get, set
    override OwnerGroup : DefinitionGroup with get, set
#### Property Value
[DefinitionGroup](f3556557-3140-3296-6321-475b952f9022.htm)
If failed When set the group, an InvalidOperationException will be thrown.
#### Reference
[ExternalDefinition Class](a3e84415-b88e-a8e0-4e11-64795d92da0e.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)