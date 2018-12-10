## Background & Objectives

You are having a drink with an old American entrepreneur talking about your next billion-dollar idea. Suddenly you notice two malicious French guys sitting next to you seem to be listening and taking notes. To keep the conversation private, your American friend suggests you to switch to good old Pig-Latin.😊

### A bit of research

* Pig-Latin is an old type of English slang. Read [this article](https://en.wikipedia.org/wiki/Pig_Latin) to find out a bit more about it.
* Very simply, you take a normal English word like **'HELLO'**. You take the first consonant group (letters before the first vowel) and you put that first consonant group at the end of the word, followed by the suffixe -ay. **So 'HELLO' becomes 'OLLEHAY'.**
* If the word starts with a vowel, you don't change it but add one of the following suffixes at the end: ay, way, hay, nay, yay. **So 'EAT' becomes 'EATWAY' or 'EATHAY' for instance.** Easy right? 😉
* Ask yourself what the main issues are going to be when building your translator (choice of the suffix, how to handle beginning of words, what the different scenarios are for a given word in input...)

### Write the pseudo-code

Pseudocode is primarily used to communicate the essence of an algorithm without getting bogged down in language-specific syntax. A good programmer can take well-written pseudocode and translate it into functional code in the language of his choice.

* Write the pseudo-code for you piglatin translator.
* Start small with a program that can only translate a single English word in piglatin
* Then try to extend it to sentences.

Two Pig Latin words that have entered into mainstream American English are "ixnay" or "icksnay", the Pig Latin version of "nix" (itself a borrowing of German nichts[7]), which is used as a general negative; and "amscray", Pig Latin for "scram", meaning "go away" or "get out of here"

## Specs

- **constraint**: any one-letter words like 'a' should not be translated
- **constraint**: for words beginning with consonants ('beer', 'wine'), you'll have to take the first *consonant group* (all the letters before the first vowel) and put it at the end and add the suffix 'ay' at the end ('wagon' should give 'agonway')
- **constraint**: words beginning with a vowel are not changed but you should still add a random suffix at the end ('always' should give 'alwaysway' or  'alwayshay' for instance)
- **constraint**: the random suffix for words beginning with a vowel should be one of these: `['ay', 'way', 'hay', 'nay', 'yay']`
- **enhancement**: ideally your program should be able to translate any complicated sentence, regardless of punctuation

## Further suggestions & resources

- We all know the `#split` method by now, but did you know you can also pass a string pattern as an argument of the `split` method? Don't worry, we will have a look at Regular Expressions soon but for now, let's try `'hello, friend!!'.split(/\b/)` in irb, can you see why it could be useful for the enhancement part of the exercise? 😉
- You pseudo code should follow [these principles](http://www.cs.cornell.edu/courses/cs211/2000fa/materials/using_pseudo_code.htm)
