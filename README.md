# House Salad Base

This repo is used as a base for the Consuming API lesson taught in Backend Module 3. To complete the lesson you will need to sign-up for an API key from the [ProPublica Congress API](https://projects.propublica.org/api-docs/congress-api/).

## Reflection

In this exercise, I refactored the process of consuming the ProPublica api. The previous lesson had us set up the api consumption in the controller,
so there was really no abstraction and encapsulation in this process. The refactor started by creating member objects to pass to the view.
We did this because it allows us to pass encapsulated objects to the view rather than an array of hashes. We then made a SearchResults object to handle the creation of the member objects. In order to adhere to SRP we then created a PropublicaService object to handle the connection to the api.
This allows us to keep all of the api interaction to one object and the handling of the results in another object. I think this is an all around
more efficient way to lay out the process of consuming this api because we broke it down different responsibilities and created objects to handle those
responsibilities.

One thing I am still trying to wrap my head around is the use of POROs in this refactor. I understand why the PropublicaResults object is a PORO
because it takes information from PropublicaService and turns it into Member objects and doesn't have any other purpose, but why isn't the Member
object a PORO? It is not stored in the database and only exists to pass encapsulated sets of data to the view so to me it would make sense to put
this in the PORO folder as well.
### Versions

Rails 5.1.7
Ruby 2.5.3

### Setup

```bash
git clone https://github.com/turingschool-examples/house-salad-base house-salad

cd house-salad

rails db:{create,migrate}
```

### Exercise

Write a test and complete this user story

*NOTE: Please use the existing form in the application.*

```
As a user
When I visit "/"
And I select "Colorado" from the dropdown
And I click on "Locate Members of the House"
Then my path should be "/search" with "state=CO" in the parameters
And I should see a message "7 Results"
And I should see a list of the 7 members of the house for Colorado
And I should see a name, role, party, and district for each member
```
