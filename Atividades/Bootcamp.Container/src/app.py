# ################################################################################
#  Copyright (c) 2025  Claudio André <portfolio-2025br at claudioandre.slmail.me>
#      ____              __                                _       _________  __
#     / __ )____  ____  / /__________ _____ ___  ____     | |     / / ____/ |/ /
#    / __  / __ \/ __ \/ __/ ___/ __ `/ __ `__ \/ __ \    | | /| / / __/  |   /
#   / /_/ / /_/ / /_/ / /_/ /__/ /_/ / / / / / / /_/ /    | |/ |/ / /___ /   |
#  /_____/\____/\____/\__/\___/\__,_/_/ /_/ /_/ .___/     |__/|__/_____//_/|_|
#                                            /_/
#
# This program comes with ABSOLUTELY NO WARRANTY; express or implied.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, as expressed in version 2, seen at
# https://www.gnu.org/licenses/gpl-2.0.html
# ################################################################################

"""
Provides some code to use in my Bootcamp desafio
"""

import time

import redis
from flask import Flask

app = Flask(__name__)
cache = redis.Redis(host="redis", port=6379)


def get_total_visitas():
    """Incrementa o contador de visitas ao site"""
    retries = 3
    while True:
        try:
            return cache.incr("hits")
        except redis.exceptions.ConnectionError as exc:
            if retries == 0:
                raise exc
            retries -= 1
            time.sleep(0.5)


@app.route("/")
def hello():
    """Rotina principal"""
    count = get_total_visitas()
    return f"Olá! Você esteve por aqui {count} vezes.\n"
