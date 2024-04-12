sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'templateforincident',
            componentId: 'GetTemplateObjectPage',
            contextPath: '/GetCatalog/to_templates'
        },
        CustomPageDefinitions
    );
});