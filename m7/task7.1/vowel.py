def vowel_count(str):  
    count = 0
    vowel = set("aeiouAEIOU") 
    for letter in str: 
        if letter in vowel: 
            count = count + 1
    print("Quantity of vowels :", count) 
str = "kjjs"
vowel_count(str)