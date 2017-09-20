class Person:
    def __init__(self, name, email, phone):
        self.name = name
        self.email = email
        self.phone = phone
    def greet(self, other_person):
        print('Hello {}, I am {}!'.format(other_person.name, self.name))

person1 = Person('Sonny', 'sonny@hotmail.com', '483-485-4948')
person2 = Person('Jordan', 'jordan@aol.com', '495-586-3456')

person1.greet(person2)
person2.greet(person1)

print("email: ", person1.email, " phone: ", person1.phone)
print("email: ", person2.email, " phone: ", person1.phone)
