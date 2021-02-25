def count_vowels(s):
    vowels = ["a", "e", "i", "o", "u", "y" ]
    s = s.lower()
    i = 0
    res = list(s) 

    for x in range(len(res)): 
        if res[x] in vowels:
            i+=1
    print(i)
    return i

        
count_vowels('dffdids')