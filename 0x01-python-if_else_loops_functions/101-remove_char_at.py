#!/usr/bin/python3
# 8-uppercase.py


#!/usr/bin/python3
# 101-remove_char_at.py


def remove_char_at(str, n):
    """Generate a string copy excluding character at index n."""
    if n < 0:
        return (str)
    return (str[:n] + str[n+1:])
