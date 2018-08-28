class PokedexMainPage
  def initialize driver
  	$driver = driver
  	@url = "https://www.pokemon.com/us/pokedex/"
  	self.open
  end

  def open
    $driver.get @url
    $driver.manage.timeouts.implicit_wait = 5
  end

  def cookie_dismisser_element
    $driver.find_element(id: "cookie-dismisser")
  end

  def cookie_dismisser?
  	wait_for(5) { $driver.find_element(id: "cookie-dismisser").displayed? }
    $driver.find_element(id: "cookie-dismisser").displayed?
  end

  def cookie_dismisser
  	if cookie_dismisser?
  	  self.cookie_dismisser_element.click
  	else
  	  fail "cookie dismisser was not found."
  	end
  end

  def search_text_field_element
  	$driver.find_element(id: "searchInput")
  end

  def search_text_field?
  	wait_for(5) { $driver.find_element(id: "searchInput").displayed? }
    $driver.find_element(id: "searchInput").displayed?
  end

  def search_text_field= pokemon
  	if search_text_field?
  	  self.search_text_field_element.send_keys(pokemon)
  	else
      fail "Search text field was not found"
  	end
  end

  def search_button_element
  	$driver.find_element(id: "search")
  end

  def search_button?
  	wait_for(5) { $driver.find_element(id: "search").displayed? }
    $driver.find_element(id: "search").displayed?
  end

  def search_button
  	if search_button?
  	  self.search_button_element.click
  	  $driver.manage.timeouts.implicit_wait = 5
  	else
      fail "Search button was not found"
  	end
  end

  def h5_pokemon_name_element
    $driver.find_element(xpath: "//h5")
  end

  def h5_pokemon_name?
  	wait_for(5) { $driver.find_element(xpath: "//h5").displayed? }
    $driver.find_element(xpath: "//h5").displayed?
  end

  def h5_pokemon_name
    if h5_pokemon_name?
  	  self.h5_pokemon_name_element.text
  	else
      fail "Pokémon's name was not found"
  	end
  end

  def id_pokemon_number_element
    $driver.find_element(xpath: "//p[@class='id']")
  end

  def id_pokemon_number?
  	wait_for(5) { $driver.find_element(xpath: "//p[@class='id']").displayed? }
    $driver.find_element(xpath: "//p[@class='id']").displayed?
  end

  def id_pokemon_number
    if id_pokemon_number?
  	  self.id_pokemon_number_element.text.strip
  	else
      fail "Pokémon's number was not found"
  	end
  end

  def div_pokemon_type_element
    $driver.find_element(xpath: "//div[@class='abilities']/span")
  end

  def div_pokemon_type?
  	wait_for(5) { $driver.find_element(xpath: "//div[@class='abilities']/span").displayed? }
    $driver.find_element(xpath: "//div[@class='abilities']/span").displayed?
  end

  def div_pokemon_type
    if div_pokemon_type?
  	  self.div_pokemon_type_element.text.strip
  	else
      fail "Pokémon's type was not found"
  	end
  end

  def found_pokemon_element
  	$driver.find_element(xpath: "//li/figure/a/img")
  end

  def found_pokemon?
  	wait_for(5) { $driver.find_element(xpath: "//li/figure/a/img").displayed? }
    $driver.find_element(xpath: "//li/figure/a/img").displayed?
  end

  def found_pokemon
  	if found_pokemon?
  	  self.found_pokemon_element.click
  	else
      fail "Pokémon was not found"
  	end
  end

def wait_for(seconds)
  Selenium::WebDriver::Wait.new(timeout: seconds).until { yield }
end

#Another way to find if an element is present or not
  def element? elements
  	if elements.count > 0
      return true
    else
      return false
    end
  end

end
