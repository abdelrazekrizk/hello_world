#!/usr/bin/env python
from flask import Flask
app = Flask(__name__)

@app.route('/')
@app.route('/hello/')
def hello_world():
    
    new_var = 'Hello World Finising AWS DevOps Course!\n'
    return new_var

if __name__ == '__main__':
    app.run(host='0.0.0.0')     # open for everyone
