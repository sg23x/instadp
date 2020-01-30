from flask import Flask, request, jsonify
import requests
from bs4 import BeautifulSoup as bs 

app = Flask(__name__)

@app.route('/api', methods = ['GET'])
def hello():
    q = str(request.args['Query'])
    
    insta_url ='https://www.instagram.com'
    inta_username = q
    
    response = requests.get(f"{insta_url}/{inta_username}/") 
    
    if response.ok: 
        html = response.text
        bs_html = bs(html, features ="html.parser") 
        bs_html = bs_html.text 
        index = bs_html.find('profile_pic_url_hd')+21
        remaining_text = bs_html[index:] 
        remaining_text_index = remaining_text.find('requested_by_viewer')-3
        string_url = remaining_text[:remaining_text_index] 
        string_url = string_url.replace("\\u0026","&")
        d = {}
        d['Query'] = string_url
        return jsonify(d)

app.run()
