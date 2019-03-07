from selenium import webdriver
from selenium.webdriver.common.keys import Keys

#ここをIEに変更する。
browser = webdriver.InternetExplorerDriver()

browser.get('target_page_is_here')
assert 'Page_Title' in browser.title

elem = browser.find_element_by_name('p')  # Find the search box
elem.send_keys('keyword + Keys.RETURN)

browser.quit()
