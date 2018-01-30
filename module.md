
# teaching plan


## Week 1 - The basics

The mysterious creature that is the DOM, what a webpage actually is, and using the DevTools.  

We'll have a look at the very basics of working with the web. Having done the pre-course work (Codecademy Javascript tutorial), we hopefully won't lost much time. No set-up involved, just simple practical exercises in a web browser


### Session 1: practical exercises


### Session 2: more exercises


## Week 2 - Working with Python and data

A foundation session in which we'll talk about some basics such as file formats and, er, where do you write code in the first place. We'll rattle through some online resources and communities where you can get help if you're stuck with a problem.
During the second session we'll see the basics of the Python programming language.


### Session 1: file formats, writing code


### Session 2: intro to Python


## Week 3 - Concrete scraping examples in Python

A heavy session made up of short examples we'll study and extract data from.


### Session 1: simple scraping


### Session 2: more complex scraping, saving data


## Week 4 - R in the newsroom

Armed with our new best friend RStudio, we'll introduce the R programming language and explore the fantastic \`tidyverse\`, as well as plotting our first charts.


### Session 1: the tidyverse


### Session 2: ggplot


## Week 5 - Concrete R exercises

We'll touch on statistics concepts and keep proving how great R is at prototyping and wrangling data and charts.


### Session 1: data cleaning exercises


### Session 2: enough stats to keep you out of trouble


## Week 6 - More R

???


## Week 7 - Into Javascript charts world

An overview of what is data viz and how central D3.js is to the discipline. We'll however pivot quickly towards Highcharts.js for its simplicity. As for the R sessions, we'll work through basic plotting then more complex examples.


### Session 1: overview of the discipline, Highcharts


### Session 2: Highcharts + misc explorations


## Weeks 8, 9, 10 - Project work

We will go round the room and take questions from students about their final project. Come prepared with actual problems, be happy to work collaboratively and to make progress in class while we tackle challenges collectively, on the big screen. These sessions are usually the time when "ha-ha" moments happen.


# moodle


## DONE week-by-week outline


# 1.1: The basics


## module information

Module code: JOM299
Title: Advanced Data and Coding

-   Module and assessment outline
-   The self-learner attitude
-   Useful resources
-   Intro to the DevTools, the DOM, and debugging your things


## topics covered in this module

-   Introduction to programming and the web with Javascript
-   Basic web scraping with Python
-   Exploratory analysis and day-to-day work with R
-   Putting charts on the web


## module outline and goals according to the spec

-   Develop a **complex skillset**
-   Gain an **understanding of data** and of modern digital journalism
-   Develop a **problem-solving philosophy**
-   Acquire **self-direction in learning**


## and I add to this:

**Have a crucial advantage over others in the industry**


## assessment: mark split between&#x2026;


### 25% presentation and brief

Will take place on **week 5**

i.e.

-   Wed 21
-   or Fri 23


### 75% final project

mid-April?


## cherry on top: build in JS week 3

> Build a simple interactive thing, in Javascript. This can be a series of buttons on which to click to change a displayed information, for example. The action triggered will involve a function. Example: display "1". Upon clicking this button, a function adds 2 and displays "3". Ask the user for a number to add, display the result of 3+n.

We'll talk about this project in class


## assessment two: final project

> Your project should identify and solve a journalistic problem, using data and coding work. Typically this will focus on a story &#x2013; either a complete story or an interactive feature forming part of a story. It could also be something for use in a newsroom (eg a tool helpful to journalists). 

that's from the course specs


## more about the final project

Your project must be relevant to journalism (see above), operate at a functional level (at least as a working prototype), and involve all of the following:

-   data techniques, involving scraping, cleaning, analysis and/or presentation, as needed/appropriate to your project
-   adding value through user interactivity
-   use and modification of html, CSS, Javascript, Python, R, d3
-   and/or other code (not simply plug-and-play elements)
-   use of free and/or low-cost tools
-   problem-solving.

(that's also from the spec)


## the self-learner attitude - what is that?

I want you to engage in the community of data-journalists, news hackers and tinkerers

-   [Tips for self-learning (Hacker News)](https://news.ycombinator.com/item?id=13148319)
-   [/r/dataisbeautiful community](https://www.reddit.com/r/dataisbeautiful/)
-   [News Nerdery (Slack)](http://newsnerdery.org/)
-   RSS feeds, Twitter&#x2026;


## without further ado&#x2026;


## what is the DOM?

[<http://domenlightenment.com/#1.1>]

> The DOM is a hierarchy/tree of Javascript node objects

-   It looks like the HTML you wrote
-   It actually is the programming interface around it


## programming interface?

    <body>
      <article>
        <h1>This is a simple title</h1>
    
        <h1 id="special">This is another title... 
          <em>with a twist!</em>
        </h1>
      </article>
    </body>

Let's have a look: [Codepen](http://codepen.io/basilesimon/pen/PWNXEK)


## wait, console.log()?

The Dev Tools: the Swiss army knife of web work

What you can do with Dev Tools:

-   Edit the DOM directly
-   Change styles of any page
-   See Javascript code and errors
-   See and edit any file loaded by the page


## let's access the Dev Tools

On Chrome and Firefox

-   \`Ctrl\` + \`Shift\` + \`I\`
-   or \`Cmd\` + \`Opt\` + \`I\` on a Mac


## do things with the Dev Tools

Inspect and edit pages and style: 

-   [exercise one](https://developers.google.com/web/tools/chrome-devtools/inspect-styles/)
-   [exercise two](https://developers.google.com/web/tools/chrome-devtools/inspect-styles/edit-styles)
-   [exercise three](https://developers.google.com/web/tools/chrome-devtools/inspect-styles/edit-dom)


## editing HTML with the Dev Tools

Example: make Donald Trump say anything with the Dev Tools!


## hiding things with the Dev Tools

Example: hide something on the [Google homepage](https://www.google.co.uk/)


## homework

-   [Fix these images](http://codepen.io/basilesimon/pen/BQgwxG?editors=1100#0)
-   [Hide DOM elements](http://codepen.io/basilesimon/pen/PWjJwg)
-   [Play with the dom](http://discover-devtools.codeschool.com/chapters/1?locale=en)


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


## homework


# 2.1: File formats, writing code


## file formats

as for scripts (instructions) and web pages, we sometimes need to store data in files ("datasets").

that's what you'd get from the ONS, data.gov.uk, an API, etc.

there are different file formats for different purposes.


## file formats: CSV

standing for Comma-Separated Values, CSV will be of much use to us when it comes to data.

    myfile.csv

think of a spreadsheet without any formatting: 

-   every line in the file is a row,
-   every comma-separated value is a cell


### CSV structure

    name, occupation, height
    basile, journalist, 187
    donald, politician, 188


## file formats: JSON

standing for JavaScript Object Notation, JSON is almost universally used on the web.

    myfile.json

structure in objects (\`var anObject = {};\`) separated by commas.
made up of \`key: value\` pairs.


### JSON structure

    var json = {
      "name": "Basile Simon",
      "occupation": "journalist",
      "friends": [ "pierre", "donald", "theresa"]
    }

    json.name => "Basile Simon"
    json.friends[0]` => "pierre"

<https://codepen.io/basilesimon/pen/MrZWZg?editors=1010>#


## JSON and CSV in this course

we're likely to store data when scraping, cleaning, etc. in CSV format.
we'll probably use, or "parse" CSV data into JSON for the web.

d3.js has a CSV parser: from the CSV above

    name, occupation, height
    basile, journalist, 187
    donald, politician, 188

we parse it as JSON, so we can run \`data.name\` and get "basile" back


## file formats: Excel, databases

Excel/ Google Spreadsheets are ****visual representations**** or CSV data

Databases come with, as the DOM does, their programming interface and language (eg SQL)


## a word about Python


## Python

Python is a programming language created in 1991.

It is the most taught programming language around the world.


### Why Python?

Newsroom use: <https://www.poynter.org/news/introduction-newsroom-programming-technologies>

Python is very easy to read and to use - and many newsrooms use it.

****If you can write Python, you can write anything.****


## What Python looks like

****Javascript****

    var foo = 'bar';
    function myFunction(parameter) {
      console.log(parameter);
    };

****Python****

    foo = 'bar'
    def myFunction(parameter):
        print(parameter)


## running your pythons: the notebook

Python also comes with a set of utilities bundled in a GUI: [the Jupyter Notebook](http://nbviewer.jupyter.org/github/jupyter/notebook/blob/master/docs/source/examples/Notebook/Notebook%20Basics.ipynb)

We can run Python notebooks from the university computers.

![img](./images/jupyter.png)


## data wrangling in Python


### white house visitors


### school earnings


## links

[A good notebook tutorial](https://plot.ly/python/ipython-notebook-tutorial/)
[Plots in Python with Plotly (easy)](https://plot.ly/python/getting-started/)
[An excellent notebook with scraping and plotting](http://nbviewer.jupyter.org/github/jvns/pandas-cookbook/blob/v0.1/cookbook/Chapter%205%20-%20Combining%20dataframes%20and%20scraping%20Canadian%20weather%20data.ipynb)
[Advanced data science methods](https://www.analyticsvidhya.com/blog/2016/01/complete-tutorial-learn-data-science-python-scratch-2/)


# TODO 2.2: An intro to Python


## DONE Running your Pythons

A Python script is a file, eg **example.py**

You run this file through the ****command line**** with 

    > `python example.py`


## DONE wait what?


## DONE To write code, you use a text editor

[for example, Sublime Text](https://www.sublimetext.com)

> Why not Word, Mac's TextEdit?

These softwares are word processors. They add <span class="underline">lots</span> of code around the words you actually see on screen.


## TODO The command line


## TODO Let's see some syntax


### Variables


### Variables (2)


### Variables (3)


### Conditional execution: \`if/else\`


### Conditional execution: \`if/else\` (2)


### Control flow: \`for\` loop


### Methods and functions


# TODO 3.1: Simple scraping in Python

use session from last year


# TODO 3.2: More complex scraping in Python?

write twitter api scraping tutorial


# 4.1: R in the newsroom: the tidyverse

<https://tidyverse-intro.github.io/index.html>


# 4.2: R in the newsroom: ggplot


# 5.1: Data cleaning in R


# 5.2: Some stats in R

