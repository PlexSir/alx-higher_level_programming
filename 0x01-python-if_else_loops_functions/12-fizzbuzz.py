def fizzbuzz():
    """Print 1-100, 
	replacing multiples of 3 with Fizz
	5 with Buzz
	3 & 5 with FizzBuzz.
	"""
    for number in range(1, 101):
        if number % 3 == 0 and number % 5 == 0:
            print("FizzBuzz ", end="")
        elif number % 3 == 0:
            print("Fizz ", end="")
        elif number % 5 == 0:
            print("Buzz ", end="")
        else:
            print("{} ".format(number), end="")
