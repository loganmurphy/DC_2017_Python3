bill = int(input("What is the total bill amount? "))
service = (input("Rate your service as 'good', 'fair' or 'bad'. ").lower())

if(service == 'good'):
    tip = bill * .20
    total = bill + tip
    print("Your tip is ${:.2f} and your total including tip is ${:.2f}.".format(tip, total))
elif(service == 'fair'):
    tip = bill * .15
    total = bill + tip
    print("Your tip is ${:.2f} and your total including tip is ${:.2f}.".format(tip, total))
else:
    tip = bill * .10
    total = bill + tip
    print("Your tip is ${:.2f} and your total including tip is ${:.2f}.".format(tip, total))
