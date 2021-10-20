import logging
from flask import Flask

app = Flask(__name__)
logger = logging.getLogger(__name__)

@app.route('/')
def hello():
    logger.info("Oh yes!")
    return 'Hello, World!'