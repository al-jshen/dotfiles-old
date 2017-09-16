const axios = require('axios');

getPrice = (json) => {
  console.log('BTC-USD:', json.data.amount);
}

const promise = axios.get('https://api.coinbase.com/v2/prices/BTC-USD/spot');
promise.then((response) => {
  getPrice(response.data);
});
