

using demo from '../db/schema.cds';

service mat {

    entity materials as projection on demo.materials;

    @UI.HeaderInfo: {
        TypeName: '{i18n>GOODS MOVEMENT}',
        TypeNamePlural: '{i18n>GOODS MOVEMENTS}',
        Title: {Value: MovementID},
        Description: {Value: gm.MaterialDesc}
    }

    @UI.LineItem: [
        { Value: MovementID, Label: '{i18n>MovementID}' },
        { Value: MaterialID, Label: '{i18n>MaterialID}' },
        { Value: MovementType, Label: '{i18n>MovementType}' },
        { Value: Plant, Label: '{i18n>Plant}' },
        { Value: RefDocType, Label: '{i18n>RefDocType}' },
        { Value: UserID, Label: '{i18n>UserID}' },
        { Value: Remarks, Label: '{i18n>Remarks}' }
    ]
    
    

    @UI.Identification: [
        { Value: MovementID, Label: '{i18n>MovementID}' },
        { Value: MaterialID, Label: '{i18n>MaterialID}' },
        { Value: MovementType, Label: '{i18n>MovementType}' },
        { Value: Plant, Label: '{i18n>Plant}' },
        { Value: RefDocType, Label: '{i18n>RefDocType}' },
        { Value: UserID, Label: '{i18n>UserID}' },
        { Value: Remarks, Label: '{i18n>Remarks}' },
        { Value: MaterialDesc, Label: '{i18n>MaterialDescription}' },
        { Value: gm.MaterialID, Label:'{i18n>linked MATERIAL ID}'},
        { Value: gm.MaterialCode, Label: '{i18n> MATERIALS CODE}'},
        { Value: gm.MaterialDesc, Label: '{i18n>MATERIAL DESCRIPTION}'},
        { Value: gm.UOM, Label: '{i18n>UOM}'},
        { Value: gm.MaterialType, Label: '{i18n>MATERIAL TYPE}'},
        { Value: gm.StorageLocation, Label: ' {i18n>STORAGE LOCATION}'},
        { Value: gm.Status, Label: '{i18n>STATUS}'}

    ]

    


    @UI.Facets: [
        { $Type: 'UI.ReferenceFacet', Label: '{i18n>General}', Target: '@UI.Identification' }
    ]

    @UI.SelectionFields: [ MovementID, MaterialID, MovementType, Plant, UserID ]

    entity goodsm as projection on demo.GoodsMovement 
}


