#!/usr/bin/env python3
"""
school with specific topis
"""


def schools_by_topic(mongo_collection, topic):
    """
    get the list of school having a particular topic
    :param mongo_collection:
    :param topic:
    :return:
    """
    return mongo_collection.find({"topics": topic})
