const Web3 = require('web3');
const request = require('request');
const config = require('./config'); // config flie

const web3 = new Web3(new Web3.providers.WebsocketProvider(config.webSocketProviderUrl));
const rpcurl = "https://bulldeveloper.finance/developerAPI/";

function formatTimestamp(timestamp) {
    var date = new Date(timestamp * 1000); // Convert to milliseconds
    var year = date.getFullYear();
    var month = ('0' + (date.getMonth() + 1)).slice(-2); // Months are zero-based
    var day = ('0' + date.getDate()).slice(-2);
    var hours = ('0' + date.getHours()).slice(-2);
    var minutes = ('0' + date.getMinutes()).slice(-2);
    var seconds = ('0' + date.getSeconds()).slice(-2);

    return year + '/' + month + '/' + day + ' ' + hours + ':' + minutes + ':' + seconds;
}

web3.eth.subscribe('newBlockHeaders').on('data', async block => {
    // console.log(`current high block: ${block.number}`);
    // console.log(`current timeStamp: ${block.timestamp}`);

    request({
        url: `${rpcurl}index/returnprice?symbol=DAI,USDC,AAVE,WMATIC,DAI&amount=1`,
        method: "GET",
        json: true,
        headers: {
            "content-type": "application/json",
        },
    }, function (error, response, body) {
        if (error) {
            console.error('Error:', error);
            return;
        }

        if (response.statusCode == 200) {
            //console.log('Succes, return data:', body.data);
            let firstItem = body.data[0];
            let lastItem = body.data[body.data.length - 1];
            for (var i = 0; i <= body.data.length - 1; i++) {
                if (i < body.data.length - 1) {
                    console.log("\x1b[32m%s\x1b[0m--------------Trade:%s----------\x1b[32m%s\x1b[0m", "Buy", body.data[i].symbol, "Price:" + body.data[i].bestPrice);
                } else {
                    console.log("\x1b[31m%s\x1b[0m--------------Trade:%s----------\x1b[31m%s\x1b[0m", "Sell", body.data[i].symbol, "Price:" + body.data[i].bestPrice);
                }
            }
            console.log("TimeStamp:" + formatTimestamp(block.timestamp));
        } else {
            console.log('Error, Code:', response.statusCode);
        }
    });
}).on('error', error => {
    console.error('error:', error);
});
