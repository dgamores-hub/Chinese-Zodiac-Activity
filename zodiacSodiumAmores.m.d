# Activity 3: Implementing Selection Structure - Chinese Zodiac Sign

## Requirements

This program asks the user for a birth year and determines the Chinese Zodiac sign using the year only.

- The baseline year is 1900.
- A year earlier than 1900 is invalid.
- The program stops after displaying the invalid-year message.
- The Chinese Zodiac repeats every 12 years.
- The zodiac cycle begins with Rat (鼠 / Shǔ) in 1900.

## Actual Code

```python
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
```

## Explanation of the Logic

The program uses:

```
(birth_year - 1900) % 12
```

The remainder tells us where the birth year falls in the 12-year cycle.

| Remainder | Zodiac Sign |
|-----------|--------------|
| 0         | Rat          |
| 1         | Ox           |
| 2         | Tiger        |
| 3         | Rabbit       |
| 4         | Dragon       |
| 5         | Snake        |
| 6         | Horse        |
| 7         | Goat         |
| 8         | Monkey       |
| 9         | Rooster      |
| 10        | Dog          |
| 11        | Pig          |

### Example

For 2000:

```
(2000 - 1900) % 12
100 % 12 = 4
```

Remainder 4 corresponds to Dragon, so the output is:

```
Enter your birth year: 2000

Your Chinese Zodiac Sign is : Dragon (龙 / Lóng)
```

## Testing

**Test 1: Valid input**
```
Enter your birth year: 2000

Your Chinese Zodiac Sign is : Dragon (龙 / Lóng)
```

**Test 2: Invalid input**
```
Enter your birth year: 1800

Invalid Year, it should not be earlier than 1900
```

**Test 3: Boundary year**
```
Enter your birth year: 1900

Your Chinese Zodiac Sign is : Rat (鼠 / Shǔ)
```

## Output Screenshot



## Notes for Submission

- Save the Python file as `zodiacSectionLN.py`.
- Run and test the program before submitting.
- Screenshots show the valid 2000 test and the invalid 1800 test.
- README.md is updated with links to these files.
- Changes are committed and pushed to the GitHub repository.
