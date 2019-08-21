from selenium import webdriver
from selenium.webdriver.chrome.options import Options

class emulator:
	def openmobiledriver(self):
		mobile_emulation = {

		"deviceMetrics": { "width": 360, "height": 640, "pixelRatio": 3.0 },

		"userAgent": "Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 5 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19" }

		chrome_options = Options()

		chrome_options.add_experimental_option("mobileEmulation", mobile_emulation)

		driver = webdriver.Chrome(chrome_options = chrome_options)
		return chrome_options