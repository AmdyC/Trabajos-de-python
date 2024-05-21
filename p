import requests,pyperclip
from bs4 import BeautifulSoup

url=pyperclip.paste()
while True:
    if url != pyperclip.paste():
        url=pyperclip.paste()
        html=requests.get(url)
        html.raise_for_status()
        if html.status_code == 200:
            te=BeautifulSoup(html.text,'html.parser')
            enlaces = te.find_all('p') 
            for enlace in enlaces:
                print(enlace.get_text())    
