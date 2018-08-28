# Testing Pokédex

This project is just for practice (and for fun!). It tests several flows in the Pokédex as a Pokémon Trainer.  

## Language and tools
* Ruby 
* Selenium WebDriver
* Cucumber
* ReportBuilder (Please check it here! https://github.com/rajatthareja/ReportBuilder)

## Tests Execution
In the terminal, go to the folder with the project and enter `cucumber`.
A HTML report will be created in 'results' folder from the json created by Cucumber (Check cucumber.yml)

## Coverage
* Pokémon Trainer looks for a pokémon in the Pokédex
* Pokémon Trainer wants to see the evolutions of a Pokémon
* Pokémon Trainer wants to see the weaknesses of a Pokémon

## Notes
* I'll be adding more scenarios.
* Currently this is working just for Chrome in MacOS. I will add some options for environment in the future :D
* I had several problems with the message about cookies, so I preferred not to click on it.