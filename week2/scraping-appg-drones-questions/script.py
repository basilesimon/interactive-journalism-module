import requests
from BeautifulSoup import BeautifulSoup

# this is a variable
# we could change it later
# it will hold the URL of the page we'll scrape
url = "http://appgdrones.org.uk/parliamentary-questions/"

# GET requests
response = requests.get(url)

# the response has methods and parameters, such as its status
# docs: http://docs.python-requests.org/en/master/
print "Status code: (200 is good):", response.status_code

if response.status_code is 200:
    print "Is out status code 200?"
    print True
else:
    print "ERROR! aborting"
    sys.exit()

# parses the HTML
html = response.content

# magic beautifulsoup method
soup = BeautifulSoup(html)

# find a <table> element with a given HTML class
# and store it into a variable
table= soup.find('tbody')

# empty list
# [row one, row two, row three, etc.]
list_of_rows = []

# control flow: for loop
# find all <tr>, rows
for row in table.findAll('tr'):

    # empty list
    list_of_cells = []

    # find all cells
    for cell in row.findAll('td'):
        list_of_cells.append(cell.text)

    list_of_rows.append(list_of_cells)

print list_of_rows
print len(list_of_rows)
