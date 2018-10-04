
# Hot Spots

## Live
  [Live](https://hot-spots-app.herokuapp.com/#/)

## Intro

Hot-Spots is a full-stack clone of the popular site Yelp. Hot Spots is a community based website to help users explore restaurants and food around the San Francisco, Bay Area. Visitors can search for places and types of food, while members can place reviews to influence ratings.

This project was built in a 2 week time span, and more features are intended to be
implemented soon.

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

### Overview

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

Businesses also contain tags of their type of food available allowing users to search
from one category to the next without having to explicitly use the
search bar for new queries.

### Searching

Searching is implemented in a searches controller, where it takes in user inputs. Currently only names of tags or businesses are searched. Search starts by checking if the input string is too short. If the length is long enough, the controller invokes an ActiveRecord SQL query for businesses of similar name.

``` ruby
def show
  name = search_params[:name].downcase]
  if name.length < 3
    @search_results = []
    render 'api/searches/show'
  else
    biz_results = Business.includes(:images, :categories)
      .where('LOWER(name) like ?', "#{name}%")
      .references(:images, :categories)
```

If the results is empty? The controller proceeds to search for tags of similar name, which is compartmentalized in a helper method.

``` ruby
  # name is the search query
  ...
    if biz_results.empty?
      biz_results = [];
      category_results = find_by_category(name) # finds businesses by category name
```

Otherwise successful searches will take the first businesses and iterate through the tags to find other stores with associated tags.

``` ruby
  ...
    else
      tags = biz_results.first.categories.pluck(:category)
      category_results = []
      tags.each do |tag|
        category_results.concat(find_by_category(tag.downcase))
      end
    end

    @search_results = (biz_results + category_results).uniq
    render 'api/searches/show'
  end
end
```


### Tags

Tags were deployed to allow people to search for businesses based on categories like pizza or burgers. This was implemented using a categories table with associations to businesses. Tags can be pulled with each query of a business and tags can be displayed as an HTML hyper-link to find businesses similar in the search query.

### Image Animations

Images on a business show page are animated based on if a cursor is hovering over the image or not. The middle picture of the picture display by default is expanded but shrinks when other pictures are hovered. This is implemented using event listeners on DOM elements and taking advantage of React life cycle methods.


Here are the callbacks that add classes that transform the middle image element.

``` JavaScript
growImage() {
  const middle = document.querySelector('.biz-show-img-1')
  middle.classList.add('biz-img-default')
}

shrinkImage() {
  const middle = document.querySelector('.biz-show-img-1')
  middle.classList.remove('biz-img-default')
}

```

Once the image component mounts, add event listeners onto the DOM elements, removing event listeners are needed when unmounting as well.

``` JavaScript

componentDidMount() {
  const imageContainer = document.querySelector('.biz-images')
  const middle = document.querySelector('.biz-show-img-1')

  if (middle) {
    imageContainer.addEventListener('mouseleave', this.growImage);
    imageContainer.addEventListener('mouseenter', this.shrinkImage);
  }
}
```


### Dynamically assigning HTML classes

HTML classes are changed based on the state of the component or props passed in. Examples include determining if buttons belong to a splash page or standard view and the stars displayed on businesses and reviews. The below example takes advantage of React router's match props to determine the HTML element's class name inside a React component function.

``` JavaScript
const UserHeader = ({ currentUser, requestLogout, match, demoLogin}) => {
  const splash = match.isExact ?  'splash-': '';
  .
  .
  .
  return (
    <div className={`${splash}login-signup`}>
      {loginLink}
      &nbsp;&nbsp;
      <Link className={`${splash}signup`} to="/signup">Sign up</Link>
      {splash ? demo : null}
    </div>
);
}
```
