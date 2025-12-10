using mat as service from '../../srv/mat';
annotate service.materials with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'MaterialID',
                Value : MaterialID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MaterialCode',
                Value : MaterialCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MaterialDesc',
                Value : MaterialDesc,
            },
            {
                $Type : 'UI.DataField',
                Label : 'UOM',
                Value : UOM,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MaterialType',
                Value : MaterialType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'StorageLocation',
                Value : StorageLocation,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : Status,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'MaterialID',
            Value : MaterialID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'MaterialCode',
            Value : MaterialCode,
        },
        {
            $Type : 'UI.DataField',
            Label : 'MaterialDesc',
            Value : MaterialDesc,
        },
        {
            $Type : 'UI.DataField',
            Label : 'UOM',
            Value : UOM,
        },
        {
            $Type : 'UI.DataField',
            Label : 'MaterialType',
            Value : MaterialType,
        },
    ],
);

