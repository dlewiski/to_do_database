# Hangman

#### A web application built to explore 3d modeling in html and css, 01.21.2018

#### By Russell Hofvendahl

## Description

Hangman is a game where a user must solve for some hidden word by guessing letters that may be present. If the user guesses a correct letter, it appears in string of letter placeholders; if the user guesses incorrectly, an additional portion of a gallows is drawn. The user wins when all letters are guessed or loses after some number of guesses.

## Specs

#### Back-end

1. Generate word from preset list
  Example input:
  Example output: "dog"
2. Test if word contains guessed letter
  Example input: "o"
  Example output: true
3. Update placeholder string and guessed letters
  Example input: "o"
  Example output: "-o-"
4. update guessed letters
  Example input: "o"; "p"
  Example output: "op"
5. Update placeholder string for multiple occurrences of guessed letter
  Example input (for rare): "r"
  Example output: "r-r-"

[KEEP TRACK OF WRONG GUESSES, GAME LOOP, WIN/LOSE CONDITION, GALLOWS]

#### Front-end

[CLEAN INPUT]

1. Update and render gallows

## Setup/Installation Requirements

Zenscape is viewable online at http://zenscape.us

To view the source code:
1. visit https://github.com/rhofvendahl/Zenscape
2. clone or download
3. open index.html in Google Chrome

## Technologies Used

Zenscape was created entirely with html and css styling, as well as the JQuery library.

## License

This software is licensed under the MIT license.
