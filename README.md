# style-share-final
StyleShare is an interactive drawing app utilizing the p5.js creative library.

##Issues

This project had numerous logistical and technological issues (but it was, nonetheless, very fun and educational.)

**App structure**

The first problem I encountered with this project was my initial attempts to build the Rails app into a component-based structure, a la React. I found a tutorial on structuring Rails frontends as components, but it ended up being confusing and convoluted when I tried to integrate the logic for the creative library that is the heart of this drawing app, p5.js.

**P5.js**

Another primary issue was the technological centerpiece of my project, the p5.js library. As a creative library based on Processing.js, p5.js was built to be simple and relatively intuitive to use - which it was when I did my initial HTML/JS test for my app.

The problems with p5 arose when I tried to integrate it into my Rails app. There isn't an abundance of documentation on the use of 
