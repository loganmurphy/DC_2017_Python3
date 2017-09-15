bill = int(input("What is the total bill amount? "))
service = (input("Rate your service as 'good', 'fair' or 'bad'. ").lower())

if(service == 'good'):
    tip = bill * .20
    total = bill + tip
    split = total/int(input("Split how many ways? "))
    print("Your tip is ${:.2f} and your total including tip is ${:.2f}.".format(tip, total))
    print("Your total is ${:.2f} per person.".format(split))
elif(service == 'fair'):
    tip = bill * .15
    total = bill + tip
    split = total/int(input("Split how many ways? "))
    print("Your tip is ${:.2f} and your total including tip is ${:.2f}.".format(tip, total))
    print("Your total is ${:.2f} per person.".format(split))
else:
    tip = bill * .10
    total = bill + tip
    split = total/int(input("Split how many ways? "))
    print("Your tip is ${:.2f} and your total including tip is ${:.2f}.".format(tip, total))
    print("Your total is ${:.2f} per person.".format(split))
