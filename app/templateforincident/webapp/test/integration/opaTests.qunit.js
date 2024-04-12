sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'templateforincident/test/integration/FirstJourney',
		'templateforincident/test/integration/pages/GetCatalogList',
		'templateforincident/test/integration/pages/GetCatalogObjectPage',
		'templateforincident/test/integration/pages/GetTemplateObjectPage'
    ],
    function(JourneyRunner, opaJourney, GetCatalogList, GetCatalogObjectPage, GetTemplateObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('templateforincident') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheGetCatalogList: GetCatalogList,
					onTheGetCatalogObjectPage: GetCatalogObjectPage,
					onTheGetTemplateObjectPage: GetTemplateObjectPage
                }
            },
            opaJourney.run
        );
    }
);