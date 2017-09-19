ramit = {
  'name': 'Ramit',
  'email': 'ramit@gmail.com',
  'interests': ['movies', 'tennis'],
  'friends': [
    {
      'name': 'Jasmine',
      'email': 'jasmine@yahoo.com',
      'interests': ['photography', 'tennis']
    },
    {
      'name': 'Jan',
      'email': 'jan@hotmail.com',
      'interests': ['movies', 'tv']
    }
  ]
}

# 1. Write a python expression that gets the email address of Ramit.
# 2. Write a python expression that gets the first of Ramit's interests.
# 3. Write a python expression that gets the email address of Jasmine.
# 4. Write a python expression that gets the second of Jan's two interests.

print(ramit["email"])
print(ramit["interests"][0])
print(ramit["friends"][0]["email"])
print(ramit["friends"][1]["interests"][1])
