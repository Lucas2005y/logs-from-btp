sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'btplogs/test/integration/FirstJourney',
		'btplogs/test/integration/pages/savedLogsList',
		'btplogs/test/integration/pages/savedLogsObjectPage'
    ],
    function(JourneyRunner, opaJourney, savedLogsList, savedLogsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('btplogs') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThesavedLogsList: savedLogsList,
					onThesavedLogsObjectPage: savedLogsObjectPage
                }
            },
            opaJourney.run
        );
    }
);