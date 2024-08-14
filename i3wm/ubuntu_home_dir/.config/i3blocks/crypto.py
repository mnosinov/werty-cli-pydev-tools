#!/usr/bin/env python3
# coding=utf-8

import json
from requests import Request, Session
from requests.exceptions import ConnectionError, Timeout, TooManyRedirects
import os
import sys


API_URL = 'https://api.binance.com/api/v3/ticker/price'
WATCHLIST_FILE = '/home/mirbek/.config/i3blocks/watchlist.json'
numbered_coin = os.environ.get('BLOCK_INSTANCE', 'COIN1')

with open(WATCHLIST_FILE) as f:
    watchlist = json.load(f)

coin = watchlist[numbered_coin]['coin'].upper()

if not coin:
    print('')
    exit(0)


high_stop = watchlist[numbered_coin]['high_stop'] or float('inf')
low_stop = watchlist[numbered_coin]['low_stop']

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

if True:
    if price < low_stop:
        output += 'SL'
        print(output) # Short Text
        exit(33)
    elif price > high_stop:
        output += 'TP'
        print(output) # Short Text
        exit(33)

print(output) # Short Text
