#!/usr/bin/env python3
"""
get all documents in Python
"""


def list_all(mongo_collection):
    """
    get all documents in a collection
    :param mongo_collection:
    :return:
    """
    return mongo_collection.find()
