# Dog Data

This repo is used as an example in the Consuming API lesson taught in Backend Module 3. Please sign-up for an API key for the [TheDogAPI](https://thedogapi.com/) to complete this exercise.

### Versions

Rails 5.2.4.3

Ruby 2.5.3

### Setup

```bash
git clone https://github.com/turingschool-examples/dog-data

cd dog-data

rails db:{create,migrate}
```

### Exercise

Write a test and complete the user story below.

_NOTE: Please use the existing form in the application._

```
As a user,
When I visit the "/"
And I select "5" from the dropdown
And I click on "Fetch Dogs"
Then my path should be "/search"
And I should see a message "5 Results"
And I should see the following information for each result:
  - image
  - breed name
  - life span
  - temperament
```
