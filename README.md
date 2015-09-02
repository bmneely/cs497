## Project Title
Very Good Ecommerce Website

## What is it going to do?
An ecommerce website that does the following:
* Allow sellers to create a customizable storefronts to sell goods
* Allow sellers to pick custom styles, colors, and pictures for their store front
* Allow sellers to manage their inventory
* Allow sellers to turn on commenting for their items
* Allow buyers to browse seller stores
* Allow buyers to add items to a persistent "cart"
* Allow buyers to comment on seller items
* Securely store credit card information for buyers
* Securely store payment information for sellers
* Automatically payout to sellers on a weekly basis

TLDR: It's basically Etsy, but hopefully more customizable

## Target Audience
The target audience is anyone who wants to sell anything to anyone (except for illegal things).

## Data will it manage
* User accounts
* User credit cards
* User bank accounts
* Images
* Inventory Items - price, quantity, images
* Comments on items
* API responses from Stripe

## Web technologies will it use
* Ruby on Rails
* Heroku
* JavaScript
* Amazon S3
* [Pundit](https://github.com/elabs/pundit)
* [Devise](https://github.com/plataformatec/devise)
* [RSpec](http://rspec.info/)
* [FactoryGirl](https://www.youtube.com/watch?v=9UZmtqpc6wM)
* [Stripe](https://stripe.com/)
* [SendGrid](https://sendgrid.com/)

## Stretch Goals
* Comprehensive test coverage
* Allow sellers to specify a domain name, then automatically register the domain and redirect the domain to their storefront
* Allow sellers to pull images from the Instagram API
* Allow users to create accounts/sign in with Facebook/Google/Twitter
* Automatically generate shipping labels
* Allow users to create a blog for their store front with simple CMS
* Create an internal Angular app for the shopping cart
