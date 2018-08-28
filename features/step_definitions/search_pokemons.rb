Given(/^I am in the Pokédex page$/) do
  @pokedex_page = PokedexMainPage.new($driver)
  @pokedex_page.open
  #@pokedex_page.cookie_dismisser
end

When(/^I enter the pokémon '(.*)'$/) do |pokemon|
  @pokedex_page.search_text_field= pokemon
end

And(/^I click on search button$/) do
  @pokedex_page.search_button
end

Then(/^the Pokédex displays '(.*)'$/) do |pokemon|
  if @pokedex_page.h5_pokemon_name != pokemon
	  fail "Pokémon's was not found in the database."
  end
end

And(/^displays the number '(.*)'$/) do |pkmn_number|
  if @pokedex_page.id_pokemon_number != pkmn_number
    fail "Pokémon's was not found in the database."
  end
end

Then(/^displays the type '(.*)'$/) do |pkmn_type|
  if @pokedex_page.div_pokemon_type != pkmn_type
    fail "Pokémon's was not found in the database."
  end
end

When(/^I click on the pokemon's image$/) do
  @pokedex_page.found_pokemon
end