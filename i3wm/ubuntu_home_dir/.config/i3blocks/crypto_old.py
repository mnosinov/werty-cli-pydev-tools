#!/usr/bin/env python3
# coding=utf-8

import json
from requests import Request, Session
from requests.exceptions import ConnectionError, Timeout, TooManyRedirects
import os
import sys

# API_KEY = "adc56965-bd1a-4149-9444-368d19168b39"
PRICE_CHANGE_PERIOD = '1h' # Available: '1h', '24h', '7d'
PRICE_CHANGE_URGENT_PERCENT = 10


# API_URL = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest'
# API_URL = 'https://api.binance.com/api/v3/last'
API_URL = 'https://api.binance.com/api/v3/ticker/price'
coin = os.environ.get('BLOCK_INSTANCE', 'BTC')

if coin == 'ETH':
    coin = 'TRX'


parameters = {
    'symbol': coin + 'USDT'     # по умолчанию пары берем к USDT
}
# headers = {
#     'Accepts': 'application/json',
#     'X-CMC_PRO_API_KEY': API_KEY,
# }

session = Session()
# session.headers.update(headers)

r = session.get(API_URL, params=parameters)
data = json.loads(r.text)
price = float(data['price'])

if price > 100: precision = 0
elif price > 0.1: precision = 5
else: precision = 6

output = ('{}: {:.' + str(precision) + 'f}').format(coin, price)

if False:
    if price < 58450.0 and coin=='BTC':
        output += 'SL'
        print(output) # Short Text
        exit(33)
    elif price > 59400.0 and coin=='BTC':
        output += 'TP'
        print(output) # Short Text
        exit(33)

print(output) # Short Text
