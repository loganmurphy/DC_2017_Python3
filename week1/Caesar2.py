
import string
secret_message = "Lbh zhfg hayrnea, jung lbh unir yrnearq."
secret = " "

for char in secret_message.capitalize():
    if((ord(char) > 64) and (ord(char) < 123)):
        if((ord(char) + 13) > 122):
            secret += chr((ord(char) - 13))
        else:
            secret += chr((ord(char) + 13))
    else:
        secret += chr(ord(char))

print(secret)
