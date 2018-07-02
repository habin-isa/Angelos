# Angelos
This is our final project at Makers Academy. We have built a mobile app in 10 days that allows a user to discretely alert an emergency contact if they are in danger.

## Contributors
* Muzzi Aldean https://github.com/muzzi92
* Dione Estabillo https://github.com/dione-dls
* Habin Kim https://github.com/habin-isa
* Jess Stenning https://github.com/jessicastenning
* Charly Mannion https://github.com/CharlyMannion

## Objectives
Before getting started and settling on the idea for our final project, our team discussed and defined our objectives for the next two weeks:
* Build a mobile app
* Learn swift and xcode
* Follow a TDD approach 
* Write clean, readable code and ensure knowledge sharing
* Follow an agile approach; daily stand-ups, check-ins and retros
* Pairing and effective team communication
* Have fun!

## Approach
* When we had agreed our objectives, we defined the idea for our app
* We wrote user stories and added them to a trello board
* With the idea in place, we began exploring the possible technologies
* We decided to use Swift and Xcode after discussing the alternatives (React Native)
* The team began exploring Swift and Xcode by writing small applications
* When we felt we had a basic understanding of the technology, we defined our MVP 
* We diagrammed the domain model, using an OOP approach
* We defined our first two day sprint, and began working on tickets in pairs
* We followed a TDD approach 
* We stuck to our objectives and had daily stand-ups, check-ins retros, and knowledge sharing sessions

## User Stories
```
As a User
To avoid potentially threatening situations
I can discreetly alert a friend via text message

As a User 
To let my emergency contact know who is in trouble
I can enter my name into the application

As a User 
To send an alert to someone
I can enter a friends phone number

As a user
So that it is not obvious that I am using the app
I want it to be disguised

As a user
So my emergency contact knows they are my emergency contact
I want to be able to send an inform message that includes my name

As a user 
So that I can send messages of differing levels of distress
I want to be able to choose from different messages

As a user
So I can give more detail about my situation
I want to be able to write a custom message

As a user 
So my emergency contact knows where I am
I want the text to include my location

As a user,
So I am able to help myself if my contact does not respond
I want to be able to initiate a fake phone call

As a user, 
So I can alert multiple people
I want to be able to enter mulitple contacts
```

## Code Snippet

## Test Coverage

## Technologies Used
* Swift
* XCode
* CocoaPods - Nimble, Quick, Alamofire
* Twilio API

## Using the App
* Clone the repo: https://github.com/habin-isa/Angelos
* In your terminal type:
```
gem install cocoapods

install cocoapods

open Angelos_proj.xcworkspace
```
* Plug in an Apple device
* Build and run with your device as the selected target

## Running Tests
* Press Command + U to run tests in Xcode

## Week One

### Day 1

After the groups were announced, our team gathered together and brain stormed ideas. By midday, we decided to build a mobile distress app using Swift and Xcode.

We spent the rest of the day exploring Swift and Xcode in pairs by creating a simple hello world app, and by TDDing FizzBuzz.

### Day 2

In the morning, the team agreed that the main objective of first two day sprint would be to get to our MVP - a user could open an app, enter a number (which would persist if they closed and reopened the app), and then press a button to send an automatic text. We decided to play around with the technologies in practice apps.

* Muzzi and Charly got a text to send using the Twilio API
* Habin, Jess and Dione figured out how to persist a phone number in the app

### Day 3

At our morning stand up we discussed our progress from the previous day, talked through the code we had written and agreed on the next steps required to meet our MVP. We also spent some time modelling our domain. We also decided to swap the pairs to ensure that each person in the group had a good understanding of each part of our application.

* Dione and Muzzi worked on Twilio
* Charly, Jess and Habin began TDDing the domain

### Day 4

We began day 4 by talking through the previous day's work, and dividing the responsibilities for that day. We decided that one group would finish TDDing the basic functionality required to meet our MVP, while the next pair would move on to building a new feature.

* Muzzi, Charly and Dione TDDd the model, view and controller to meet the MVP
* Jess and Habin worked out how to implement a location sharing feature

### Day 5

Now that we had our MVP (a user could open the app, enter their name and an emergency contact number that would persist, and discretely send a text) Friday morning's stand up was spent planning other features that we wanted to implement. We decided to focus on tasks that we felt we could complete before the weekend, then define another two day sprint on Monday morning which would take us to Tuesday's feature freeze.

* Jess and Muzzi continued working on the location feature
* Dione and Charly added functionality to send multiple message types 
* Habin began working on the disguise feature 

## Week 2

### Day 6

On Monday morning's stand-up we planned the two day sprint that would take us up to the feature freeze on Tuesday. We assigned tickets to each pair, and attempted to start building the features. However, things didn't go totally smoothly thanks to a few obstacles with using xcode. But we were back on track and making progress with our code by the afternoon. After a few hiccups using xcode, we were beginning to understand it's 2* rating in the app store...

* Charly and Jess implemented features to add multiple contacts, rallow a user to send a custom message, and started working on adding a date/time stamp
* Dione, Muzzi and Jess started exploring how we might implement an IM chat feature

### Day 7

### Day 8

### Day 9

### Day 10

Our final day!

