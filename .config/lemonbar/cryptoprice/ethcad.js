const axios = require('axios');

getPrice = (json) => {
  console.log('ETH-CAD:', json.data.amount);
}

const promise = axios.get('https://api.coinbase.com/v2/prices/ETH-CAD/spot');
promise.then((response) => {
  getPrice(response.data);
});
