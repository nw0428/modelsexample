# README
Lets get started with models.
For this class we are going to first look at a couple of models that act alone (basically just ruby objects)
After that we will add a migration for an ActiveRecord model (a proper rails model designed to be read and written to a database).

Migrations:
A migration is a set of instructions designed to be run exactly once to update a database (usually by creating, modifying or deleting tables). We will discuss more fully what a database, a schema and a migration are down the line but for now the important things to know about migrations are as follows:
1. Once you have shared a migration file with someone else (i.e. pushed it up to github/commited it in git) you should not edit it because it will cause things to break/not act as expected.
1. Migrations should, usually, be reversible. Rails makes most typical migrations reversible auto-magically™

Models
There are (pretty much) two kinds of models you are allowed to use in rails. ActiveModel models and ApplicationRecord models. The difference between these two is that the ActiveModel model is going to represent something not stored in the database. The other difference is that ActiveModel models tend to inherit things a bit differently. ApplicationRecord models have all of the possible features of ActiveModel pre-built in.

ActiveModel models are VERY rarely used and will not likely be necessary for any of the homework in this class. They are used here exclusively for educational purposes.

ActiveRecord models are now in Rails5 called ApplicationRecord models. They are EXACTLY equivalent with the small exception that you as a developer are encouraged to make changes to the ApplicationRecord class but should not make changes to the ActiveRecord class because it could possibly break things.

Throughout all the excercises we will make use of the rails console.

Excercise 1 is a car. Find it in app/models/car.rb. It is going to be an ActiveModel model.