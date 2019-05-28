from flask import Flask, request, redirect, session, url_for, escape
from flask import render_template as render
from flask import make_response as respond
from flask import json as fson
import simplejson as json
from collections import namedtuple


app = Flask(__name__)
app.secret_key = b'_9%!@L"9Ylg58zCP]0'

@app.route('/')
@app.route('/index')
@app.route('/home')
def index():
    if 'username' in session:
        return render('index.html', logged=escape(session['username']))
    return render('index.html')

@app.route('/brute')
def brute():
    return render('brute.html')

@app.route('/certificados')
def certificados():
    return render('certificados.html')

@app.route('/login')
def login():
    return render('login.html')

@app.route('/past', methods=['POST', 'GET'])
def past():
    if method
    return render('past.html')



# CODIGO ANTIGO PODE SER USADO COMO EXEMPLO"#
# Ver __ex.py
