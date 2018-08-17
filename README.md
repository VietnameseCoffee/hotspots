
# Hot Spots

## Live
  Live

## Intro

Hot-Spots is a full-stack clone of the popular site Yelp. Hot Spots is a community based website to help users explore restaurants and food around the San Francisco, Bay Area. Visitors can search for places and types of food, while members can place reviews to influence ratings.

This project was built in a 10 day time span, and more features are intended to be
implemented soon.

## Features

In hot spots, users can browse by searching for Restaurants and Foods of their interests.
Searching returns a selection of businesses that match their query including ratings
to which we can click to find out more about said location. Upon expanding a business,
a host of details will be shown about the place such as hours of operation,
wifi availability, parking and most importantly reviews.

Reviews are written by members along with their ratings of the given business
for people to get a gist of the business. To post a review, one has to sign up or
login in order for their review to be posted for others to see. People can also
delete their reviews by clicking on the little trash can on the right bottom side of
their own reviews.

Businesses also contain tags of their type of food available allowing users to
jump from one category of food to the next without having to always use the
search bar for new queries.

## Key Features

### Tags

Tags were made to allow people to search for places based on categories like pizza or burgers. This was implemented using a categories table with associations to businesses. Tags can be pulled with each query of a business and tags can be displayed as a html element with an event handler triggering a search based on its name.

### Dynamically changing html classes

Html classes were changed based on the state of the component or props passed in. Examples include determining if buttons belong to a splash page or standard view and the stars displayed on businesses and reviews.


## Technologies

The technologies are listed below non-exhaustively:
* Ruby on Rails
* React with Redux
* HTML/CSS
* SCSS
* Amazon Web Services
* Google Maps API
* jquery ajax


## Features











Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
