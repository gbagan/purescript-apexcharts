const { openBrowser, goto, text, $, closeBrowser, below } = require('taiko');
(async () => {
    try {
        console.log(`Current directory: ${process.cwd()}`);
        await openBrowser();
        await goto("file:///" + process.cwd() + "/examples/BasicChart.html");
        
        [1991,1992,1993,1994,1995,1996,1997,1998,1999].forEach(async el => {
            await text(el.toString(), below($('text.apexcharts-text > tspan'))).exists()
        });
        
        [30,40,35,50,49,60,70,91,125].forEach(async element => {
            await $('.apexcharts-bar-area[val="' + element + '"]').exists();        
        });    
    } catch (error) {
        console.error(error);
    } finally {
        await closeBrowser();
    }
})();


