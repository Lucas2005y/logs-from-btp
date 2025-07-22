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
                Value: application,
                Label: '{@i18n>Aplicacao}',
            },
            {
                $Type: 'UI.DataField',
                Value: message,
                Label: '{@i18n>Mensagem}',
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
            Value: application,
            Label: '{@i18n>Aplicacao}',
        },

    ],
    UI.SelectionFields           : [
        ID,
        application,
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
    application @Common.Label: '{@i18n>Aplicacao}'
};