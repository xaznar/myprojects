## Background & Objectives

- Get familiar with parsing JSON format
- Learn how to separate responsibilities of your program into several sub-methods

## Specs

If you watch French TV, you may have stumbled upon [_Des chiffres et des lettres_](https://en.wikipedia.org/wiki/Des_chiffres_et_des_lettres). For the English students, you might be more familiar with [_Countdown_](https://www.youtube.com/watch?v=GvV8aVEJmiU)!

The goal of this challenge is to write a simplified version of this game from the terminal where:

- You are given a random set of letters.
- You have to enter the longest english word you can find using only letters in the grid.
- After typing your answer, you get your score combined with the time you took, and eventually an error message if you failed.

Here is how this should work, when running `ruby lib/interface.rb`:

```
********* Welcome to the longest word-game! *********
Here is your grid:
Q F M R K L I T P
*****************************************************
What is your longest word?
lift
******** Now your results ********
Your word: lift
Time Taken to answer: 12.07916
Your score: 3.194722666666667
Message: Well Done!
```

This challenge will let you access a web-API, and parse JSON data returned by this API!

**Constraints**:

- You will use the Wagon Dictionary API. Let's have a look at what we get back from the API when we submit a [correct English word](https://wagon-dictionary.herokuapp.com/apple) and a [wrong one](https://wagon-dictionary.herokuapp.com/zzz). Pay attention to the structure of the URL.
- Your grid must be a random grid where it's possible to embed the same characters multiple times.
- Make sure you are validating that **1)** your word is an actual English word, and **2)** that every letter in your word appears in the grid (remember you can only use each letter once).
- If the word is not valid or is not in the grid, the score will be 0 (and should be accompanied by a message to the player explaining why they didn't score any points).
- The score depends on the time taken to answer, plus the length of the word you submit. The longer the word and the quicker the time, the better the score! Feel free to invent your own penalty rules too!

## Key learning points

- What's a JSON? How is it similar to the structure of a ruby hash?
- How could you refactor your code to separate the responsibilities of each method?

## Further suggestions & resources

This challenge is deliberately not guided. Here are some elements that will help you:

- Write the pseudo code to figure out how to proceed before diving into the code
- You can install the extension [Json Formatter for Chrome](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en) to help you read a JSON rendered by an API (see [JSONView for Mozilla](https://addons.mozilla.org/fr/firefox/addon/jsonview/))
- Use the `open-uri` package from ruby standard library to make HTTP requests to this API and get a JSON result. Use the `json` package to parse returned JSON files.
- For testing the grid inclusion, try making use of `Enumerable#all?`
