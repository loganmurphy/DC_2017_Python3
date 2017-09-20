class Person:
    def __init__(self, name, email, phone, friends="NONE", greeting_count=0, have_greeted=[]):
        self.name = name
        self.email = email
        self.phone = phone
        self.friends = []
        self.greeting_count = 0
        self.have_greeted = []
    def greet(self, other_person):
        print('Hello {}, I am {}!'.format(other_person.name, self.name))
        self.greeting_count += 1
        if other_person.name not in self.have_greeted:
            self.have_greeted.append(str(other_person.name))
    def num_unique_people_greeted(self):
        print(len(self.have_greeted))
    def print_contact(self):
        print('Name: ', self.name, ', ', 'Email: ', self.email, ', ', 'Phone: ', self.phone, ', ', 'Friends: ', self.friends)
    def add_friend(self, other_person):
        self.friends.append(other_person)
    def num_friends(self):
        print(len(self.friends))
    def __str__(self):
        return ('Person: {}, Email: {}, Phone: {}'.format(self.name, self.email, self.phone))
sonny = Person('Sonny', 'sonny@hotmail.com', '483-485-4948')
jordan = Person('Jordan', 'jordan@aol.com', '495-586-3456')
dee_ann = Person('Dee-ann', 'dee-ann@hotmail.com', '281-485-4948')
steven = Person('Steven', 'steve-o@hotmail.com', '713-485-4948')

class Vehicle:
    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year
    def print_info(self):
        print('Make:', self.make, ',', 'Model:', self.model, ',', 'Year:', self.year)

car1 = Vehicle('Nissan', 'Leaf', 2015)
car1.print_info()

sonny.friends.append(person2.name)
jordan.friends.append(person1.name)
sonny.print_contact()
jordan.print_contact()
print(len(sonny.friends))
print(len(jordan.friends))

sonny.add_friend(jordan.name)
sonny.print_contact()

sonny.num_friends()

sonny.greet(jordan)
sonny.greet(dee_ann)
sonny.greet(steven)

sonny.num_unique_people_greeted()
# print(sonny.greeting_count)
# print(sonny)
