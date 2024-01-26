#!/usr/bin/env python
def find_peak(list_of_integers):
  """
  Finds a peak in a list of unsorted integers.

  Args:
    list_of_integers: A list of unsorted integers.

  Returns:
    A peak in the list of unsorted integers.
  """

  # Check if the list is empty.
  if not list_of_integers:
    return None

  # Initialize the left and right pointers.
  left = 0
  right = len(list_of_integers) - 1

  # While the left pointer is less than or equal to the right pointer.
  while left <= right:
    # Find the middle index.
    mid = (left + right) // 2

    # Check if the middle element is a peak.
    if (mid == 0 or list_of_integers[mid] >= list_of_integers[mid - 1]) and (mid == len(list_of_integers) - 1 or list_of_integers[mid] >= list_of_integers[mid + 1]):
      return list_of_integers[mid]

    # If the middle element is not a peak, check if the left half of the list contains a peak.
    elif list_of_integers[mid] < list_of_integers[mid + 1]:
      left = mid + 1

    # Otherwise, the right half of the list contains a peak.
    else:
      right = mid - 1

  # Return None if no peak is found.
  return None