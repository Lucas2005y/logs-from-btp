using LogService as service from '../../srv/service';

annotate service.savedLogs with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: createdAt,
                Label: '{@i18n>Criado_Em}',
            },
            {
                $Type: 'UI.DataField',
                Value: createdBy,
                Label: '{@i18n>Criado_Por}',
            },
            {
                $Type: 'UI.DataField',
                Value: ID,
                Label: '{@i18n>ID}',
            },
            {
                $Type: 'UI.DataField',
                Value: app,
                Label: '{@i18n>Aplicacao}',
            },
            {
                $Type: 'UI.DataField',
                Value: message,
                Label: '{@i18n>Mensagem}',
            },
            {
                $Type: 'UI.DataField',
                Value: userId,
                Label: '{@i18n>Usuario}',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Value: createdAt,
            Label: '{@i18n>Criado_Em}',
        },
        {
            $Type: 'UI.DataField',
            Value: createdBy,
            Label: '{@i18n>Criado_Por}',
        },
        {
            $Type: 'UI.DataField',
            Value: ID,
            Label: '{@i18n>ID}',
        },
        {
            $Type: 'UI.DataField',
            Value: app,
            Label: '{@i18n>Aplicacao}',
        },
        {
            $Type: 'UI.DataField',
            Value: timestamp,
            Label: '{@i18n>Data_Hora}',
        },
    ],
    UI.SelectionFields           : [
        ID,
        userId,
        app,
    ],
     UI.PresentationVariant       : {
        SortOrder     : [{
            Property  : createdAt,
            Descending: true,
        }],
        Visualizations: ['@UI.LineItem']
    },

);

annotate service.savedLogs with {
    ID @Common.Label: '{@i18n>ID}'
};