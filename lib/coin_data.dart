import 'package:bitcoin_ticker/services/networking.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const apiKey = '';
const apiURL = 'https://rest.coinapi.io/v1/exchangerate/BTC/USD';

class CoinData {
  Future getCoinData() async {
    NetworkHelper helper = NetworkHelper('$apiURL?apikey=$apiKey');

    var coinData = await helper.getData();
    return coinData;
  }
}
