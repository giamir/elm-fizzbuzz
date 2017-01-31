# Fizzbuzz in Elm

This is a trivial exercise to practice [Elm](http://elm-lang.org) using a TDD approach.

## What is Fizzbuzz?
Fizzbuzz is a group word game for children to teach them about division. Players take turns to count incrementally, replacing any number `divisible by three` with the word `fizz`, and any number `divisible by five` with the word `buzz`.
```
1, 2, fizz, 4, buzz, fizz, 7, 8, fizz, buzz, 11, fizz, 13, 14, fizzbuzz, 16, 17 [...]
```
## Getting ready to play
💊 [Install Elm and Atom on your machine](https://github.com/knowthen/elm/blob/master/DEVSETUP.md)

Install `elm-test` package globally:

```
$ npm i elm-test -g
```
Clone the repo and navigate inside project folder:
```
$ git clone https://github.com/giamir/elm-fizzbuzz && cd elm-fizzbuzz
```
Install source packages / dependencies:
```
$ elm-package install
```
Check the tests suite is working by running:
```
$ elm test
```
## Red Green Refactor 🚥
This exercise is trivial! DO NOT forget to write your test first, **see it fail** and then write the code to make it pass.

## A quick overview of the Elm architecture
💊 [Elm architecture](https://guide.elm-lang.org/architecture)

In the root of your Elm project start the reactor with:
```
elm-reactor
```
Visit [http://localhost:8000/Main.elm](http://localhost:8000) and try the app.

Have a look inside the `Main.elm` file. Can you understand what's happening? Can you spot any analogy with the **Redux pattern**?

`Main.elm` file is **not** tested! 😱😱😱<br>
Now we know how to test Elm; create a `MainSpec.elm` file in the tests folder and try to test it. Why not starting from the `update` function?

## Useful links
* [Elm documentation](http://elm-lang.org/docs)
* [Elm test framework](https://github.com/elm-community/elm-test)
* [Testing Elm](https://medium.com/@_rchaves_/testing-in-elm-93ad05ee1832#.lyuhln5kx)
* [Elm Html Package](http://package.elm-lang.org/packages/elm-lang/html/2.0.0/)
