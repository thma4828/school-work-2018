import requests
import urllib
from bs4 import BeautifulSoup

r = urllib.urlopen("https://www.amazon.com/Poin2-Chromebook-11-6-Inch-Purple-LT0101-02US/dp/B01MQ5T4FO/ref=sr_1_1_sspa?s=electronics&ie=UTF8&qid=1519584012&sr=1-1-spons&keywords=computers&psc=1").read()
soup = BeautifulSoup(r, 'html.parser')

prices = soup.find_all('div', {'id': 'unifiedPrice_feature_div'})
p = prices

print(p)

rating = soup.find_all('span', {'class':"reviewCountTextLinkedHistogram noUnderline"})
print(rating)

