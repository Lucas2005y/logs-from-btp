using {LogService as srv} from './service';
annotate srv.savedLogs {

    @description: '{i18n>Descricao_Logs_BTP}'

    @title: '{i18n>ID}'
    ID;

    @title: '{i18n>Aplicacao}'
    application;

    @title: '{i18n>Mensagem}'
    message;

    @title: '{i18n>Criado_Em}'
    createdAt;

    @title: '{i18n>Criado_Por}'
    createdBy;

    @title: '{i18n>Modificado_Em}'
    modifiedAt;

    @title: '{i18n>Modificado_Por}'
    modifiedBy;
}

annotate srv.savedLogs with @UI.DeleteHidden : true;
//with @odata.draft.enabled