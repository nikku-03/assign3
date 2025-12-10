sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"materials/test/integration/pages/materialsList",
	"materials/test/integration/pages/materialsObjectPage"
], function (JourneyRunner, materialsList, materialsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('materials') + '/test/flp.html#app-preview',
        pages: {
			onThematerialsList: materialsList,
			onThematerialsObjectPage: materialsObjectPage
        },
        async: true
    });

    return runner;
});

