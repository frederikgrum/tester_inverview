### 1: Who broke the password validation?!
A tester comes up to you.

He is clearly nervous and saying that a bug was found in the production environment.
Apparently passwords are not being validated correctly, he had been very busy when 
writing the validation, so he didn't find it. He is now asking you for help and gives
you the password requirements that the Product Owner specified. 
    Security requirements for a password: 
     * it must be over 6 characters
     * it must be under 15 characters

#### Your task:
You're on cleanup duty and have to fix the bug that got through
and find out why it wasn't caught in the password validation.

Try starting out by running 'rake exercise1and2' in the terminal

How would you have made the validation? 

### 2: The product owner wants more security!
Just when you finished cleaning up the password validation, a new ticket lands in our lap!
Our Product Owner thinks we need more secure password on the site. He gives you a list
of new system requirements:
   New Security requirements for a password:
    * it must be over 6 characters
    * it must be under or equal 28 characters
    * it must contain a number
    * it must contain a capital letter

#### Your task:
 * overwrite the old password functionality in `exercise1and2/password.rb` with a brand new one!
 * Validate the different requirements
 
### 3: A Watir example:
We break the old format to make an exercise with a WATIR project.

In `exercise3/` you will see a small WATIR & cucumber project.
Take a look around.

You are not expected to understand everything, but the most important parts are
 * The `.feature` files include a Gherkin definition of the feature under test
 * The `step_definitions` translate the Gherkin into concrete actions and
 * The `pages` contain all interaction with whatever site is under test

#### Your task:
The project tests a few features of the Google search. You can see the scenarios
under test in `exercise3/features/search.feature`
One of them is marked as work in progress. Remove the tag and implement a test
for this scenario. You may want to take a look at the first two scenarios for
inspiration.

#### Bonus info:
Cucumber can generate snippets for your step file. If you run a scenario that
is missing steps the scenario will be reported as status `undefined` and
the console output will include cucumbers best guess at a cucumber expression
for those steps

Also if you are having trouble identifying DOM elements, remember that you
can always call `:flash` on an element locator to make the DOM element blink

#### Bonus points:
Consider the page object pattern seen in this project. An object is made for
each page and contains all behaviour and accessing data from that page.

Consider then testing a [Single Page Application](https://en.wikipedia.org/wiki/Single-page_application)
where a lot of behaviour is associated with one page. Keeping all of that
behaviour in a single object can easily create a [God Object](https://en.wikipedia.org/wiki/God_object)
which has way too many methods to keep track of.

What concrete steps could be taken to break apart such an object?

Could steps be taken on our google search page object right now? - if so try
taking such measures now, even though the example is still an easily managable
size
