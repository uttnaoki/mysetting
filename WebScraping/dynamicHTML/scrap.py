from selenium import webdriver

driver = webdriver.PhantomJS()
driver.get('http://judge.u-aizu.ac.jp/onlinejudge/user.jsp?id=tozangezan#2')

pages = driver.find_elements_by_id('sp_1_pager')[0].text
next_button = driver.find_elements_by_id('next_pager')[0]

data = []
for i in range(int(pages)):
    rows = driver.find_elements_by_id('list5')[0].text.split('\n')
    for row in rows:
        elems = row.split(' ')
        data.append(tuple(elems))
    if i < int(pages)-1:
        next_button.click()

for t in data[:]:
    if t[3] != 'JAVA':
        data.remove(t)

for t in data:
    print(t)
print("# of data  : {0}".format(len(data)))
print("# of pages : {0}".format(pages))
