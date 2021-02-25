arr = [n for n in range(0,101)]

def get_reply(num):
    if num%5==0 and num%3==0:
        print("FizzBuzz")
        return "FizzBuzz"
    elif num%3==0:
        print("Fizz")
        return "Fizz"
    elif num%5==0:
        print("Buzz")
        return "Buzz"
    else:
        print("")

for i in arr:
    get_reply(arr[i])

