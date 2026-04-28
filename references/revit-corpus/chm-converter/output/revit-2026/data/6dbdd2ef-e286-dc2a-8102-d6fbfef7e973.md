# BindingMap.ReInsert(Definition, Binding, ForgeTypeId) Method

---  
Removes an existing parameter and creates a new binding for a given parameter in a specified group.
**Namespace:** [Autodesk.Revit.DB](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)**Assembly:** RevitAPI (in RevitAPI.dll) Version: 26.0.4.0 (26.0.4.0)
    
    public virtual bool ReInsert(
    	Definition key,
    	Binding item,
    	ForgeTypeId groupTypeId
    )
    
    Public Overridable Function ReInsert ( 
    	key As Definition,
    	item As Binding,
    	groupTypeId As ForgeTypeId
    ) As Boolean
    
    public:
    virtual bool ReInsert(
    	Definition^ key, 
    	Binding^ item, 
    	ForgeTypeId^ groupTypeId
    )
    
    abstract ReInsert : 
            key : Definition * 
            item : Binding * 
            groupTypeId : ForgeTypeId -> bool 
    override ReInsert : 
            key : Definition * 
            item : Binding * 
            groupTypeId : ForgeTypeId -> bool 
#### Parameters
key [Definition](8fe04f37-04e1-9e93-ffdb-e3900908e42a.htm)
     A parameter definition which can be an existing definition or one from a shared parameters file. 
item [Binding](47f6ad6f-8d00-af57-995e-dc6db1255f58.htm)
     An InstanceBinding or TypeBinding object which contains the set of categories to which the parameter should be bound. 
groupTypeId [ForgeTypeId](d9fcf276-9566-de83-2b0b-d89b65ccc8af.htm)
     The identifier of the parameter definition's parameter group, or empty if the parameter is not to be associated with any predefined group.
#### Return Value
Boolean
Note the type of the binding object dictates whether the parameter is bound to all instances or just types. A parameter definition cannot be bound to both instances and types. If the parameter binding already exists, remove the binding, create a new parameter binding. If the parameter binding related to the input key doesn't exist in the database, ReInsert will fail and false will be returned. In this case, Insert should be called.
#### Reference
[BindingMap Class](4ce777fb-ab30-6d15-d019-5b430223ac62.htm)
[ReInsert Overload](8ac26661-1c4b-6ba1-417f-e4ea09acf32c.htm)
[Autodesk.Revit.DB Namespace](87546ba7-461b-c646-cbb1-2cb8f5bff8b2.htm)