from flask import Flask
from app import logger

app = Flask(__name__, instance_relative_config=True)
logger.get_custom_logger(app)