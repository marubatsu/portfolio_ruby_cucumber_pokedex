# language: en

Feature: Look for Pokémons in the Pokédex
  As a Pokémon Trainer
  I want to look for information about my pokémons in the Pokédex
  In order to win battles

Background: Enter to Pokédex page
  Given I am in the Pokédex page

@regression
Scenario Outline: Pokémon Trainer looks for a pokémon in the Pokédex
  When I enter the pokémon '<pokemon>'
  And I click on search button
  Then the Pokédex displays '<pokemon>'
  And displays the number '<pkmn_number>'
  And displays the type '<pkmn_type>'
  
  Examples:
  |pokemon    |pkmn_number|pkmn_type|
  |Umbreon    |#197       |Dark     |
  |Charmander |#004       |Fire     |

@regression
Scenario Outline: Pokémon Trainer wants to see the evolutions of a Pokémon
  When I enter the pokémon '<pokemon>'
  And I click on search button
  And I click on the pokemon's image
  Then the Pokédex shows pokemon's info
  And displays the list of evolutions '<evolutions>'
  
  Examples:
  |pokemon    |evolutions                  |
  |Caterpie   |Caterpie Metapod Butterfree |
  |Pikachu    |Pichu Pikachu Raichu        |

@regression
Scenario Outline: Pokémon Trainer wants to see the weaknesses of a Pokémon
  When I enter the pokémon '<pokemon>'
  And I click on search button
  And I click on the pokemon's image
  Then the Pokédex shows pokemon's info
  And displays the list of weaknesses '<weaknesses>'
  
  Examples:
  |pokemon    |weaknesses                  |
  |Ponyta     |Ground Rock Water           |
  |Skitty     |Fighting                    |
