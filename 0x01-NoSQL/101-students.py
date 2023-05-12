#!/usr/bin/env python3
"""
a Python function that returns all students sorted by average score
"""


def top_students(mongo_collection):
    """
    get all students sorted by average score
    :param mongo_collection:
    :return:
    """
    return mongo_collection.aggregate([
        {"$project": {
            "name": "$name",
            "averageScore": {"$avg": "$topics.score"}
        }},
        {"$sort": {"averageScore": -1}}
    ])
