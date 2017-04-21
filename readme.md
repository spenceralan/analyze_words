# Palindrome, Anagram, Antigram OH MY!

This web app will tell you if the words you input are anagrams, palindromes, or antigrams! Clearly you need this app in your life. This will make the world a better place!

### Prerequisites

Web browser with ES6 compatibility
Examples: Chrome, Safari

Ruby 2.4.1
Bundler

### Installing

Installation is quick and easy! First you can open this link https://stormy-bastion-48587.herokuapp.com/ to see the webpage in action live online. Or you can clone this repository to your machine, navigate to the file path in your terminal, and run 'app.rb' by typing '$ruby app.rb'. If you chose to clone the repository, after you run 'app.rb' you will need to copy the localhost path into your web browswer. 

## Built With

* Ruby
* Sinatra
* HTML
* CSS
* Bootstrap https://getbootstrap.com/

## Specifications

| behavior |  input   |  output  |
|----------|:--------:|:--------:|
| downcase user input | HELLO | hello |
| whitespace and sybols will be stripped out of user input | h$llo | hllo |
| check to see if word is a valid word (has vowel) | GTTR | invalid |
| check to see if words are anagrams | 'sublime' 'limb use' | this is an anagram! |
| check to see if words are palindromes | 'civic' 'civic' | this is a palindrome! |
| check to see if words are antigrams | 'hello' 'baby' | this is an antigram! |
 
## Authors

* **Spencer A Ruiz**

## License

Copyright © 2017 Spencer A Ruiz