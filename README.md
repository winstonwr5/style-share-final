# style-share-final
StyleShare is an interactive drawing app utilizing the p5.js creative library.

##Tech used

StyleShare utilizes a full Rails structure (using Webpacker as my module builder) for the form of the app, but the heart of the drawing functionality is the [p5.js](https://p5js.org/) library, which provides functionality for visual arts creative programming using JavaScript. After constructing a Rails backend to complement my frontend, I switched gears and decided to use Google's [Firebase](https://firebase.google.com) as my backend. This allowed me to create new drawings, save, and update them with ease.

##User Stories
1. "The User should be able to dynamically draw on a customizable digital sketchpad."

2. "The User should have a way to save their drawings."

##Issues

This project had numerous logistical and technological issues (but it was, nonetheless, very fun and educational.) The versatility of all of the technologies used make me want to improve and refine this project even more, but I encountered significant difficulties at this stage of my learning.

**Image Prompt**

The original conception of this app involved pulling a random picture from an api to use as the prompt picture for the drawing.

Inspired by recent social media challenges for people to use drawing as connection, I wanted to shift that idea to have the prompt be any picture that one could upload, using **that** as the prompt.

I was able to create the proper form for this task with Rails, but I was not able to produce the prompt on the page. In my troubleshooting of the problem, I'm highly suspicious that I had a problem with the methods on my Page controller that wouldn't allow me to append the image to the page. I greatly look forward to reformulating and solving this problem in the near future.

**App structure**

Another of my issues arose early I encountered with this project was my initial attempts to build the Rails app into a component-based structure, a la React. I found a tutorial on structuring Rails frontends as components, but it ended up being confusing and convoluted when I tried to integrate the logic for the creative library that is the heart of this drawing app, p5.js.

**P5.js**

Another primary issue was the technological centerpiece of my project, the p5.js library. As a creative library based on Processing.js, p5.js was built to be simple and relatively intuitive to use - which it was when I did my initial HTML/JS test for my app.

The problems with p5 arose when I tried to integrate it into my Rails app. There isn't an abundance of documentation on the use of p5 with Rails, so I initially was using *three* versions of the same library in one project (which, of course, led to issues.) The second iteration of my project used p5 provided through NPM (which I researched as a possibility even with a full Rails app) but it also led to problems with my project's file structure.

During the third iteration of my project, I used the p5.js CDN to much better, smoother effect.

I'm very enamored with the p5.js library and I am excited to explore it more after this project.

##Considerations for the Future / Things to Tweak

In addition to creating better styling and pictorial representation (either through thumbnails or full pictures) of the saved user sketches. I'd like to create a more robust user system for the database with reformulated authorization.

I also would *really* like to add a color palette so users can change the color of their line strokes and have even *more* creative freedom.

Lastly, I've always intended for this app to viral, so I would like to use ActionCable or maybe even just social media links to allow people to send their saved pictures to their social connections.

##Link to Live Site

https://style-share.herokuapp.com/

Thanks for checking out the app! Please enjoy!
