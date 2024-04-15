sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'template1/test/integration/FirstJourney',
		'template1/test/integration/pages/GetCatalogMain'
    ],
    function(JourneyRunner, opaJourney, GetCatalogMain) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('template1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheGetCatalogMain: GetCatalogMain
                }
            },
            opaJourney.run
        );
    }
);