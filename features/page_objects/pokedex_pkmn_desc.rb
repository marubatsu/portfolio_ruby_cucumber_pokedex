class PokedexPkmnDescription
  def initialize driver
    $driver = driver
    $driver.manage.timeouts.implicit_wait = 4
  end

  def evolutions_list_elements
    $driver.find_elements(xpath: "//a/h3")
  end

  def evolution_list?
    wait_for(5) { $driver.find_element(xpath: "//a/h3").displayed? }
    $driver.find_element(xpath: "//a/h3").displayed?
  end

  def evolutions_list
    if evolution_list?
      pkmn_list = "" 
      pkmn_elements = evolutions_list_elements
      pkmn_elements.each do |pkmn_element|
        pkmn = pkmn_element.text
        pkmn_number =  pkmn_element.text.index("#") - 1
        pkmn = pkmn.slice(0..pkmn_number)
        pkmn_list = pkmn_list + pkmn
      end
      return pkmn_list.split
    else
      fail "Pokémon's evolutions were not found."
    end
  end

  def weaknesses_list_elements
    $driver.find_elements(xpath: "//div[@class='dtm-weaknesses']/ul/li/a/span")
  end

  def weaknesses_list?
    wait_for(5) { $driver.find_element(xpath: "//div[@class='dtm-weaknesses']/ul/li/a/span").displayed? }
    $driver.find_element(xpath: "//div[@class='dtm-weaknesses']/ul/li/a/span").displayed?
  end

  def weaknesses_list
    if weaknesses_list?
      weaknesses_list = "" 
      weaknesses_elements = weaknesses_list_elements
      
      weaknesses_elements.each do |weakness_element|
        weakness = weakness_element.text + " "
        weaknesses_list = weaknesses_list + weakness
      end
      return weaknesses_list.split
    else
      fail "Pokémon's evolutions were not found."
    end
  end


  def wait_for(seconds)
    Selenium::WebDriver::Wait.new(timeout: seconds).until { yield }
  end

end
