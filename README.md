# _Ecommerce Products Site_

#### By _**Jesse Hoare Evans**_

## Description

The user can view all of the products available to them, add them to a shopping cart, finalize their order and checkout.

AJAX Implementation

Users can add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update.
Users can click on a product and show/hide the product detail using AJAX. The product detail should include an image (either Paperclip or an image link), the description, and any other fields you choose to add.
Users can remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated.

## Refactoring
  - Add flash messages for when users sign in, sign up and sign out

  -  Ensure that users can't order a negative number of items.

  - Add admin links to navbar so admins can easily add, update and delete products

  - Add product update and delete functionality for admins.

  - Add admin flash messages for adding, updating and deleting products.

  - Add product validations.

  - Add password validations to ensure a user's password is sufficiently complex.

## Admin Route

  - When signing in use email "manchester@united.com"
  - The password is "arethegreatest"
```
$ git clone https://github.com/jessehoareevans/went-to-bali-mwahaha
$ cd went-to-bali-mwahaha
```

Install required gems:
```
$ bundle install
```

Start postgres:
```
$ postgres
```

Setup Databases
```
* `rake db:setup`
```

Start the webserver:
```
$ rails s
```

Navigate to `localhost:3000` in browser.

## Technologies Used

_Ruby on Rails, HTML, CSS_

### License

*MIT*

Copyright (c) 2017 **_Jesse Hoare Evans_**
