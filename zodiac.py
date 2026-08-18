BASELINE_YEAR = 1900

birth_year = input("Enter your birth year: ")

try:
    birth_year = int(birth_year)

    if birth_year < BASELINE_YEAR:
        print("\nInvalid Year, it should not be earlier than 1900")
    else:
        zodiac_year = (birth_year - BASELINE_YEAR) % 12

        if zodiac_year == 0:
            zodiac_sign = "Rat (鼠 / Shǔ)"
        elif zodiac_year == 1:
            zodiac_sign = "Ox (牛 / Niú)"
        elif zodiac_year == 2:
            zodiac_sign = "Tiger (虎 / Hǔ)"
        elif zodiac_year == 3:
            zodiac_sign = "Rabbit (兔 / Tù)"
        elif zodiac_year == 4:
            zodiac_sign = "Dragon (龙 / Lóng)"
        elif zodiac_year == 5:
            zodiac_sign = "Snake (蛇 / Shé)"
        elif zodiac_year == 6:
            zodiac_sign = "Horse (马 / Mǎ)"
        elif zodiac_year == 7:
            zodiac_sign = "Goat (羊 / Yáng)"
        elif zodiac_year == 8:
            zodiac_sign = "Monkey (猴 / Hóu)"
        elif zodiac_year == 9:
            zodiac_sign = "Rooster (鸡 / Jī)"
        elif zodiac_year == 10:
            zodiac_sign = "Dog (狗 / Gǒu)"
        else:
            zodiac_sign = "Pig (猪 / Zhū)"

        print(f"\nYour Chinese Zodiac Sign is : {zodiac_sign}")

except ValueError:
    print("\nInvalid input. Please enter a valid whole-number year.")