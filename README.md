# Jungle

Jungle is a mini e-commerce application project which was built with Rails 4.2 for purposes of teaching Rails by example by Lighthouse Labs.
Customers can sign up and automatically logged in to the website.
They can add specific products to the cart, pay with dummy credit card number, then place order.
They can signout and sign in again using the same email.

There is separate admin pages which can only be accessed by admin.
These pages show products and categories, and do specific actions like deleting product and adding new product/category.
Very useful for the business team, right!
I hope you enjoy the app :>


## Demo

*New customer signup.*

!["Signup"](https://github.com/astarinamaulida/jungle-rails/blob/master/public/gif/signup.gif?raw=true)



*The customer can add product(s) to the cart, pay with card and confirm payment.*
*There will be notification popped up at the top of the page that customer's order details has been sent to email*

!["Order process"](https://github.com/astarinamaulida/jungle-rails/blob/master/public/gif/order.gif?raw=true)



*The customer can not proceed with empty cart.*

!["Empty Cart](https://github.com/astarinamaulida/jungle-rails/blob/master/public/gif/empty_cart.gif?raw=true)



*The customer can sign out and login back.*

!["Signout and Login"](https://github.com/astarinamaulida/jungle-rails/blob/master/public/gif/signout_login_back.gif?raw=true)



*Website pages.*

!["Navigation"](https://github.com/astarinamaulida/jungle-rails/blob/master/public/gif/navigate.gif?raw=true)



*Admin-only pages.*

!["Admin-pages"](https://github.com/astarinamaulida/jungle-rails/blob/master/public/gif/admin_navigation.gif?raw=true)



## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
2. Remove Gemfile.lock
3. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
