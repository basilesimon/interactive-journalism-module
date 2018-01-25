# 1.2: More exercises


## useful links

-   [The Times and Sunday Times work experience](https://www.thetimes.co.uk/article/digital-news-work-experience-qmg8f9585)

[- The Guardian work experience](https://www.theguardian.com/gnmeducationcentre/journalism-work-experience-opportunities-young-people)


## final projects

<https://ellawilksharper.github.io/a-day-in-the-life-of-mps/>
<https://nellmooney.github.io/thecasting/>
<https://alexandrama.github.io/trump-frequent-mentions/>


## recap from last session

-   what is the DOM: a tree-like structure and a programming interface around it
-   HTML structures
-   Basics of Javascript: our way to interact with the DOM (among others)

Let's have a look: [Codepen](http://codepen.io/basilesimon/pen/PWNXEK)


## picking up the homework: exercise 1

-   [Fix these images](http://codepen.io/basilesimon/pen/BQgwxG?editors=1100#0)


### Image one: spot the typo

    <img src="http://some-url/image.jpg" />

    <img scr="http://some-url/image.jpg" />

we want \`src=&#x2026;\`, not \`scr=&#x2026;\` - pay attention to typos!


### Image two

missing closing bracket \`>\`

    // bad
    <img src="http://some-url/image.jpg"

    // good
    <img src="http://some-url/image.jpg" />


### Image three: all good


## picking up the homework: exercise 2


### "how to hide div css" google search

[google search](https://www.sitepoint.com/five-ways-to-hide-elements-in-css/)


### solution

    #toHide { visibility: hidden; }

or

    #toHide { display: none; }


## codecademy homework


## what's a variable?

A variable is a store, in which you can put different data:

-   your age (a number)
-   your name (a string)
-   the result of a logical operation (true/false)

    var myAge = 26;
    var myName = "Basile";
    var doITeachAtCity = true;


## what are the different data types?

-   **string**: takes quotation marks around it. example:

    var name = "basile"; var age = "30";

-   **number**: no quotation marks. example:

    var number = 10; var budget = 1245.5;

-   **boolean**: logical operators:

    var basileIsHere = true; var basileIsShaved = false;

-   **array/list** (more later)
-   **object** (more later)
-   **null/undefined**


## data types: lists/arrays

    var thisIsAList = [1,2,3,'basile'];

contained between brackets, they store items in them. we can access these items like so:

    thisIsAList[0] // 1
    thisIsAList[3] // 'basile'

Note: lists are said 'zero-padded'


## data types: objects

    var thisIsAnObject = { name: 'basile', age: 26 };

kind of like lists, but object items can be accessed by their key, like so:

    console.log(thisIsAnObject.name); // 'basile'
    console.log(thisIsAnObject.age); // 26


## what we use data types for

different data have different use cases.

-   text is obviously a ****string****
-   if you try to plot numbers on a chart or do maths, you better use ****numbers****, not strings
-   ****booleans**** will be useful to do logical checks, e.g. "show me all MPs whose age is over 60"


## what we use data types for (repeat)

different data have different use cases.

-   ****lists**** can be **iterated over**, i.e. "for each element in this list, do that"
    
    think of an Excel column with a formula that you drag down to apply it to all cells

-   ****objects**** are excellent **data stores** and more rich than so-called **flat** lists


## the for loop

very useful pattern: \`for\` iterates over list items.

    var myList = [1,2,10,37];
    
    myList.forEach(function(element) {
      console.log(element);
      console.log(element + 1);
    }
    // 1, 2, 10, 37
    // 2, 3, 11, 38

-   for each item  in my array,
-   log the said item plus one.


## the function

functions are used to break down your code into separate, simple tasks

    function sayMyName(name) {
      console.log('HELLO' + name);
    };
    sayMyName('basile') // HELLO basile


## the function (repeat)

iterating over an array with a function

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


## writing code: online code editors

Purpose: no need to put files on your computer
Just write code and go

Tip: you might need the devtools to see your javascript!

-   JSBin
-   Codepen


## let's have a look

<https://codepen.io/basilesimon/pen/GybzoE?editors=1010#0>
<https://codepen.io/basilesimon/pen/XVLOXv?editors=1010>


## online code editor demo: week 3 project


## examples

<https://codepen.io/basilesimon/pen/xpmGmN?editors=1010>


## let's practice

an addition I made yesterday to my dataviz catalogue for the Times:

<https://github.com/times/dataviz-catalogue/pull/28>

practice: <https://codepen.io/basilesimon/pen/MrMNXX>

<https://codepen.io/basilesimon/pen/ppXGBz>


