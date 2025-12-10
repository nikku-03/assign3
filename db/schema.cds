namespace demo;
entity materials{
    key MaterialID : Integer;
        MaterialCode: String;	
        MaterialDesc: String;	
        UOM: String;
        MaterialType: String;	
        StorageLocation: String;
        Status: String
}

entity GoodsMovement{
    key MovementID: Integer;
    	MaterialID: Integer;
    	MovementType: String;
    	Plant: String;
    	RefDocType: String;
    	UserID: String;
    	Remarks: String;

    gm: Association to materials ON gm.MaterialID = MaterialID; 
}

