JOM299 - MA in Interactive Journalism - Advanced Data & Coding module
========================================================
author: Basile Simon - @basilesimon
date: 
autosize: true

Recap from last session
=======================================================

- What is the DOM: a tree-like structure and a programming interface around it
- HTML structures
- Basics of Javascript: our way to interact with the DOM (among others)

Homework exercise 1 - fix these images
=======================================================

<http://codepen.io/basilesimon/pen/BQgwxG?editors=1100#0>  

```
<img src="http://a-url-here.com" width="300">
```

Solution
=======================================================

* Image one: we want `src=...`, not `scr=...` - pay attention to typos!
* Image two: missing closing bracket `>`
* Image three: all good!

Homework exercise 2
=======================================================

<http://codepen.io/basilesimon/pen/PWjJwg>  

```
#toHide { visibility: hidden; }
```

or

```
#toHide { display: none; }
```

Codecademy
=======================================================

Introduction to Javascript course

What is a variable?
=======================================================

A variable is a store, in which you can put different data:
- your age (a number)
- your name (a string)
- the result of a logical operation (true/false)

```
var myAge = 26;
var myName = "Basile";
var doITeachAtCity = true;
```

What are the different data types?
=======================================================

## string
takes quotation marks around it. example: `var name = "basile"; var age = "30"`

## number
no quotation marks. example: `var number = 10; var budget = 1245.5`

## boolean

logical operators: `var basileIsHere = true; var basileIsShaved = false;`

Data types: lists/arrays
=======================================================

```
var thisIsAList = [1,2,3,'basile'];
```

contained between brackets, they store items in them. we can access these items like so:

```
thisIsAList[0] // 1
thisIsAList[3] // 'basile'
```

Note: lists are said 'zero-padded'

Data types: objects
=======================================================

```
var thisIsAnObject = { name: 'basile', age: 26 };
```

kind of like lists, but object items can be accessed by their key, like so:

```
thisIsAnObject.name // 'basile'
thisIsAnObject.age // 26
```

Iterating: the for loop
=======================================================

very useful pattern: `for` iterates over list items.

```
var myList = [1,2,10,37];
for (var i = 0; i<myList.length; i++) {
  console.log(myList[i] + 1;
}
// 2, 3, 11, 38
```

> for each item at the i-th place in my array, i being equal to 0, inferior to my list's length so I don't go too far, and i being increment by one everytime I'm done, log the said item plus one.

Pretty: the function
=======================================================

```
function myFunction() {
  // I do things here!
}
```

```
function sayMyName(name) {
  console.log('HELLO' + name);
}
sayMyName('basile') // HELLO BASILE
```

The function
=======================================================

iterating over an array with a function
```js
// define a function like so
function applyFunction(takesAVariableIn) {
  console.log(takesAVariableIn + ' is great'!
}

// define a variable, an array/list in this case
var thisIsAVariable = ['basile', 'city uni'];

// for each element of the array, run the function
thisIsAVariable.forEach(function(element) {
  applyFunction(element);
})
```
