from .api import CSLAM_API
from .manager import manager

import os
import logging

logging.basicConfig()
logger = logging.getLogger('CSLAM:API')
logger.setLevel(
    logging.DEBUG if os.environ.get('DEBUG', '0').lower() in ['1', 'yes', 'true'] else logging.INFO
)