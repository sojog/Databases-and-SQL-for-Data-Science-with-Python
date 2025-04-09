import requests
from pprint import pprint

URL = "https://randomuser.me/api/"

response = requests.get(URL)
pprint(response.json())

human_json = response.json()
first_name = human_json['results'][0]['name']['first']
last_name = human_json['results'][0]['name']['last']
birthday = human_json['results'][0]['dob']['date']

print('Rezulat:', first_name, last_name, birthday)


