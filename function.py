def greet(noun):
    print("This is my name " + noun )

greet("Fridolin")


def summation(num1,num2):
    summation = int(num1) * float(num2)
    print(summation)
summation("5","7.2")


is_fat = False
is_slim = True

if is_fat and is_slim:
    print("He is fat")

else:
    print("He is not fat")


a_boy = True
a_girl = False

if a_boy or a_girl:
    print("This one is a boy")

else:
    print("This is not a boy")
