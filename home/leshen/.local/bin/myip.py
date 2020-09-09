#!/bin/bash

import urllib.request

url = 'https://checkip.amazonaws.com'

def check():
    data = urllib.request.urlopen(url)
    data = data.read().decode('utf-8').replace('\n', '')
    print(data)
    return data

check()