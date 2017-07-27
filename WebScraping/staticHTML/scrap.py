from bs4 import BeautifulSoup as bs
import urllib.request

def readHtml(path):
	f = open(path, 'r')
	html = f.read()
	f.close()
	return html

def downloadHtml(url):
	html = urllib.request.urlopen(url)
	return html

def extractText(html):
	soup = bs(html)
	div_target = soup.find('div')
	p_tag = div_target.find('p')
	text = p_tag.text
	return text

def extractAllLinks(html):
	soup = bs(html)
	a_tags = soup.find_all('a')
	links = [a.get('href') for a in a_tags]
	return links

def test1():
	html = readHtml('./test.html')
	text = extractText(html)
	print(text)

def test2():
	html = downloadHtml('http://d-cradle.or.jp/')
	links = extractAllLinks(html)
	print(links)
	


if __name__=="__main__":
	test1()
	test2()
	
