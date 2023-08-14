#!/usr/bin/python3
# 8-multiple_returns.py


def multiple_returns(sentence):
    """Provides the initial character and the size of a given string."""
    if sentence == "":
        return (0, None)
    return (len(sentence), sentence[0])
