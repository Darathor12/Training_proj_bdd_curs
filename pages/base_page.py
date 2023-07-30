from driver import Driver

from selenium.webdriver.common.by import By


class BasePage(Driver):
    SEARCH_INPUT = (By.ID, "small-searchterms")

    def find(self, locator):
        return self.driver.find_element(*locator)

    def click(self, locator):
        self.find(locator).click()

    def type(self, locator, text):
        self.find(locator).send_keys(text)

    def is_element_displayed(self, locator):
        return self.find(locator).is_displayed()

    def get_text(self, locator):
        return self.find(locator).text
