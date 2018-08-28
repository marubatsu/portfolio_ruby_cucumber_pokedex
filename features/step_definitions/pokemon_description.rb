
Then(/^the Pokédex shows pokemon's info$/) do
  @pkmn_description = PokedexPkmnDescription.new($driver)
end

And(/^displays the list of evolutions '(.*)'$/) do |pkmn_evolutions|
  if  @pkmn_description.evolutions_list != pkmn_evolutions.split
    fail "Pokémon's evolutions list is not correct: #{@pkmn_description.evolution_list}"
  end
end

And(/^displays the list of weaknesses '(.*)'$/) do |weaknesses|
  if  @pkmn_description.weaknesses_list != weaknesses.split
    fail "Pokémon's wearknesses list is not correct: #{@pkmn_description.weaknesses_list}"
  end
end