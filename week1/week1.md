JOM299 - welcome!
========================================================
author: Basile Simon - @basilesimon
date: 
autosize: true

MA in Interactive Journalism - Advanced Data & Coding module
========================================================

Module code: JOM299

- Module and assessment outline
- The self-learner attitude
- Useful resources
- Intro to the DevTools, the DOM, and debugging your things

Topics of this module
========================================================
  
- Introduction to programming and the web with Javascript
- Basic web scraping with Python
- Exploratory analysis and day-to-day work with R
- Putting charts on the web

Module outline, aims. And a bit more
========================================================

   - Develop a complex skillset
   - Gain an understanding of data and of modern digital journalism
   - Develop a problem-solving philosophy
   - Acquire self-direction in learning
   - Have a crucial advantage over others in the industry

Assessment: a split mark
========================================================

tktktk

Assessment: mark one
========================================================

tktktk

Assessment: mark two - final project
========================================================

> Your project should identify and solve a journalistic problem, using data and coding work. Typically this will focus on a story -- either a complete story or an interactive feature forming part of a story. It could also be something for use in a newsroom (eg a tool helpful to journalists). 

(that's from the course spec)

Assessment: more about your final project
========================================================

Your project must be relevant to journalism (see above), operate at a functional level (at least as a working prototype), and involve all of the following:

-  data techniques, involving scraping, cleaning, analysis and/or presentation, as needed/appropriate to your project
-  adding value through user interactivity
-  use and modification of html, CSS, Javascript, Python, R, d3 
-  and/or other code (not simply plug-and-play elements)
-  use of free and/or low-cost tools
-  problem-solving.

(that's also from the spec)

The self-learner attitude
========================================================
Engage in the community of data-journalists, news hackers and tinkerers

* [Tips for self-learning (Hacker News)](https://news.ycombinator.com/item?id=13148319)  
* [/r/dataisbeautiful community](https://www.reddit.com/r/dataisbeautiful/)  
* [News Nerdery (Slack)](http://newsnerdery.org/)
* RSS feeds, Twitter...

More about self-learning
========================================================

## Never forget this: it's *always* about the story you're telling

The DOM
========================================================

What is the DOM?   
<http://domenlightenment.com/#1.1>

**The DOM is a hierarchy/tree of Javascript node objects**

* It looks like the HTML you wrote
* It actually is the programming interface around it

The DOM - a programming interface?
========================================================


```
<body>

  <article>
  
    <h1>This is a simple title</h1>

    <h1 id="special">This is another title... 
      <em>with a twist!</em>
    </h1>
    
  </article>
  
</body>
```

Let's have a look: <http://codepen.io/basilesimon/pen/PWNXEK>

Wait, console.log()? About the devtools
========================================================

What you can do with Dev Tools:
- Edit the DOM directly
- Change styles of any page
- See Javascript code and errors
- See and edit any file loaded by the page

Access the Dev Tools
========================================================

On Chrome and Firefox
- `Ctrl` + `Shift` + `I` 
- or `Cmd` + `Opt` + `I` on a Mac


Dev Tools
========================================================
title: false

![](images/tools.png)

<https://airwars.org/data/russia-barchart/>

Do things with the Dev Tools
========================================================
Inspect and edit pages and style: 

- <https://developers.google.com/web/tools/chrome-devtools/inspect-styles/>
- <https://developers.google.com/web/tools/chrome-devtools/inspect-styles/edit-styles>
- <https://developers.google.com/web/tools/chrome-devtools/inspect-styles/edit-dom>


The Dev Tools: edit HTML
========================================================

Example: make Donald Trump say anything with the Dev Tools!

![trump tweet](images/trump-tweet.png)

The Dev Tools: hide some things
========================================================

Example: hide something on the [Google homepage](https://www.google.co.uk/)

![](images/google.png)

And now, hands on
========================================================

## Learn Javascript on Codecademy
<https://www.codecademy.com/learn/learn-javascript>

## Learn the command line on Codecademy
<https://www.codecademy.com/learn/learn-the-command-line>


Homework
========================================================
* Fix these images: <http://codepen.io/basilesimon/pen/BQgwxG?editors=1100#0>  
* Hide DOM elements: <http://codepen.io/basilesimon/pen/PWjJwg>  
* Play with the dom: <http://discover-devtools.codeschool.com/chapters/1?locale=en>

