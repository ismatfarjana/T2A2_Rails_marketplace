
![Twitter Follow](https://img.shields.io/twitter/follow/ismat_farjana?style=social)  ![GitHub followers](https://img.shields.io/github/followers/ismatfarjana?style=social) 
![GitHub language count](https://img.shields.io/github/languages/count/ismatfarjana/T2A2_Rails_marketplace) ![GitHub watchers](https://img.shields.io/github/watchers/ismatfarjana/T2A2_Rails_marketplace?style=social) ![GitHub top language](https://img.shields.io/github/languages/top/ismatfarjana/T2A2_Rails_marketplace) ![GitHub repo size](https://img.shields.io/github/repo-size/ismatfarjana/T2A2_Rails_marketplace)


# Plantish : Gardeners Marketplace
**Developed by: Syeda Ismat Farjana | Assignment: T2A2**

**[Link to Github repository](https://github.com/ismatfarjana/T2A2_Rails_marketplace) | [Live site (deployed on Heroku)](https://plantish.herokuapp.com/)**

---

## Introduction
Plantish is a two-way unique marketplace app for selling and buying garden grown fruits, vegetables, seeds, seedlings, renting or gardening tools and more.

## Problem I am trying to solve
 
As a gardener myself I Have grown a lot of fresh vegetables sometimes that could not be stored or consumed. So the idea of building a platform to sell those extra fresh grown foods came to my mind. It also allows sellers to sell the seedlings they don't have enough space to grow. They can sell grafted small plants. Also, having the pandemic situation on, the aggravated need of fresh fruits and vegetables can easily be managed if we can get them from each other by maintaining the safety protocols.

## Why

Rather than letting the extra harvest go waste Plantish will give the opportunity to sell them in the neighbourhood. It will also create an extra source of income for the gardener. It will also create a community bonding among the gardeners.

---

## Setup on Local Machine

<details>
    <summary>Click here to expand</summary>

* clone repository by running `git clone git@github.com:ismatfarjana/T2A2_Rails_marketplace.git`
* navigate into app folder by running `cd T2A2_Rails_marketplace`
* update config/database.yml with your postgresql username & password
* update config/credentials.yml with your variable for Stripe, AWS S3
* run `bundle install`
* run `rails db:setup`
* run `rails db:migrate`
* run `rails server`
* type `localhost:3000` on your favourite browser to see the project in action

</details>

---

## Description

## Purpose
The purpose of Plantish is to create a place to let anyone sell their garden related product and also allow other people to buy it.

## Target audience
  - Age range: 20+
  - Gender: All
  - Living in house with backyard / space to do gardening
  - Living in a suburb away from main city
  - Looking for fresh home grown vegetables, fruits, plants, seedlings, seeds, garden tools, indoor plants, terrariums and succulents.
  
  ---

## Tech stack

<details>
    <summary>Click here to expand</summary>

  **Frontend:**
  - HTML
  - CSS
  - ERB

 **Backend**
  - Ruby 2.6.3
  - Ruby on Rails ~> 6.0.3, >= 6.0.3.2

 **Database**
  - Postgresql

 **Deployment**
  - Heroku

 **Utilities**
  - AWS S3 
   -- upload images
  - Stripe
   -- process payment 
  - Devise
   -- user authentication


 **Tools**
  - RubyMine 
   -- as text editor
  - Git
  - Github
  - Lucid chart 
   -- create site map
  - DBDESIGNER 
   -- create ERD
  - Trello 
   -- tracking development of website
  - Balsamiq 
   -- create wireframes

  
 **Test**
  - Rspec 
  -- unit test
  
  </details>  
  
  ---

## User stories

<details>
    <summary>Click here to expand</summary>

#### As an user:
  - I want to create an Account and log in 
  - I want to have access to the authorised parts of the website.
  - I want to edit account
  - I want to make a profile so my location and other informations stay saved in my profile
  - I want to edit my profile
  - I want to delete my profile
  - I want to have the access to the private community group
  
 
 
#### As a buyer:

  - I want to look for product by category
  - I want to add the product to the cart
  - I want to buy a product 
  - I want to pay for the product I buy
  - I want to see the list of my confirmed ordered products after payment is done
 
#### As a seller:
 
- I want to add my product details
- I want to edit my product details
- I want to delete my product if not available any more

</details>

---

## Functionality

<details>
    <summary>Click here to expand</summary>

 ### User Profile: 
  The site visitor can create a profile with information (profile picture, email address, password, phone number, name, address, postcode, suburb) in order to add products to their product list and to add product to the cart in order to buy it. It also gives access to the registered user to the Plantish community where they can find other members as well. The visitor who doesn't have created any profile is allowed to browse the website.
  
  **To create profile**
   - user needs to sign up an account and log in to the account
   - after logging is, user needs to click on **Add Profile** on the *navigation bar* which will take the registered user to the **new profile form**
   - after submitting the form with required information the registered user will be redirected to **My Profile** page, where all the information added by the user will be displayed.
   - **My profile** page also includes **Edit Profile** button which will take the profile holder to edit their profile page.
   
   **What is happening under the hood**
   - after registering/ signing up into the website
    -- a new user instance is created in the **users_table**
   - after creating profile
    -- a new profile profile instance is created in the **profiles_table**
   - **profiles_table** is connected to the users_table with foreign_key which is the primary key of the **users_table** 
    
  
###  Product list:
 Only a Registered user can upload products to "My PRODUCT" list as a seller. Sellers can specify the type of product from the category selection option( seeds, seedlings, vegetables, fruits, flowers, indoor plants, succulents, terrariums, small plants, garden tools) in the form. Seller will fix the price for each product . The amount of the selling product is also fixed by the user(seller). *IF THE PRODUCT IS SOLD ALREADY THE SELLER CAN DELETE THE PRODUCT FROM THE PRODUCT LIST*

**To add product**
- seller needs to own a profile with the informations required
- **My products** option creates when user creates a profile
- in **My products** page there is a **Add product** button to take the profile holder to add a new product form.
- after submitting all the required information of the product, the user will be redirected to a newly added product showing page.
     
**What is happening under the hood**  
- after submitting the product with all informations, a new product instance is created in products_table
- after adding the product
-- product belongs_to 
--- the seller until it has been sold
--- the buyer when it is sold


     
 
### Private Community:
 Only a registered user will have the access to the private community of this website. 
- registered user can
 -- see other members of the community
 -- see the uploader products of other members of the community
 -- see the contact information of other members of the community
 
 
 ### Payment with Stripe:
  After the product is added to cart buyers can see their chosen product list in the cart and proceed to payment. After the payment is successful the buyer will be redirected to the paid order list. (The payment system is on demo mode at this moment. To have a test run follow the instruction shown in the cart page)
  
**The process of payment**
- at the **cart** page , clicking the **pay with card** button will take buyer to add card details page
- after adding and submitting the credit card number (test mood: card number 4242 4242 4242 4242), date(enter any future date) and the cvv (test mood: cvv - enter any three digits number), buyer will be redirected to the order fulfill message page.

**What is happening here** 
- after clicking on pay amount button on browser it sends a **post** request to routes , which finds the create action in **transactions_controller** 
- here, using the **Stripe** API keys, a *new customer* and *charge* is been created 
- a new Order instance is created in **orders_table** 
- *order_item* is created in orderItem table to hold and save the orders items of the cart 
- after saving the items, *cart* is being *destroyed* to keep buyers cart clean for next round shopping 
- if orderitems are not been saved , the whole process is being rescued by redirecting buyer to the **carts_path** 
- if order items are saved successfully , buyer is redirected to order confirmation page.  

![](https://i.imgur.com/WOqPnKO.png)|




</details>


 ---

## Sitemap:

<details>
    <summary>Click here to expand</summary>
    
### Mockup of Plantish sitemap

![](https://i.imgur.com/jRFRqhj.jpg)

### Main Sitemaps:



| user status | sitemap | 
| -------- | -------- | 
|  Not logged in    | ![](https://i.imgur.com/FZCM9wJ.png)    |
| logged in(no profile created) | ![](https://i.imgur.com/tMGcYUb.png)|
| logged in(profile created) | ![](https://i.imgur.com/wFhqBty.png) |

</details>








---

## Screenshots


<details>
    <summary>Click here to expand</summary>
    


| Screenshots         |                Mobile                | Tablet                               | Desktop                              |
| ------------------- |:------------------------------------:| ------------------------------------ | ------------------------------------ |
| Home                | ![](https://i.imgur.com/Kejvk8X.png) | ![](https://i.imgur.com/GfLYwRO.png) | ![](https://i.imgur.com/wLzTqiv.jpg) |
| Create Profile      | ![](https://i.imgur.com/I88kf0o.png) | ![](https://i.imgur.com/UoHlhkA.png) | ![](https://i.imgur.com/1FnJSjc.png) |
| My Profile          | ![](https://i.imgur.com/raY5o1t.png) | ![](https://i.imgur.com/Ci0wW9c.png) | ![](https://i.imgur.com/54Ia5VD.png) |
| My Products         | ![](https://i.imgur.com/21h6IEK.png) | ![](https://i.imgur.com/XtadL0h.png) | ![](https://i.imgur.com/LDZiZV8.png) |
| Add product         | ![](https://i.imgur.com/5LQmtpi.png) | ![](https://i.imgur.com/3QREz8X.png) | ![](https://i.imgur.com/MQQeAWT.png) |
| Product by Category | ![](https://i.imgur.com/nyAPILK.png) | ![](https://i.imgur.com/Em7x6g3.png) | ![](https://i.imgur.com/HeLq5FE.jpg) |
| Each Product        | ![](https://i.imgur.com/UmT1ztr.png) | ![](https://i.imgur.com/UmT1ztr.png) | ![](https://i.imgur.com/MifbtYu.jpg) |
| Cart                | ![](https://i.imgur.com/BchvcdQ.png) | ![](https://i.imgur.com/REgJ5Aa.png) | ![](https://i.imgur.com/SfqMvmn.png) |
| Payment             |      ![](https://i.imgur.com/bHfOV5Q.png) | ![](https://i.imgur.com/GOOYa2P.png) | ![](https://i.imgur.com/rUcJn8U.png) |         
| Community           |  ![](https://i.imgur.com/VAQOO4x.png) |![](https://i.imgur.com/Abit3d1.png)  | ![](https://i.imgur.com/t8S0goW.png)      |
| About us            |  ![](https://i.imgur.com/DSG2Wbt.png) | ![](https://i.imgur.com/7Jj85UV.png) |![](https://i.imgur.com/zZCoeuE.jpg) |
| Contact us          |                 Text                 | Text                                 | ----                                 |


</details>







---

## Wireframes

<details>
    <summary>Click here to expand</summary>

| Different screens | Wireframes |  
| -------- | -------- | 
| **Desktop**    | ![](https://i.imgur.com/IFP0cKu.png)    | 
| **Tablet** | ![](https://i.imgur.com/iXjhuTR.png) |
| **Mobile phone** | ![](https://i.imgur.com/TkneKiL.png) |

</details>




---


## High-level Components (Abstractions)

<details>
    <summary>Click here to expand</summary>

### User: 
 User is the first component of this app. An user will be able to browse all the categories and see all the products.

### Profile:
 The Profile includes information related to the registered user. One needs to create a profile in order to be able to start selling their own product or buying others items.
 
### Plantish community
This community holds all the registered users' contact information so they can connect to each other and make the internal bond stronger by helping each other with their gardening skills or by any means.

### Product of different categories
 Different category ranged items make it easy to browse the items. The registered buyer user will be able to add the product to the cart and proceed to the next step.
 
### Cart
  The cart holds all the chosen products of the buyer.

### Payment
 The payment system will allow the buyer to pay for the items. (This stage is under construction, a demo code is given to test the functionality of the infrastructure of the payment system)

</details>

---


## Third party services used in Plantish:

<details>
    <summary>Click here to expand</summary>

 ### Heroku: 
 Plantish gardener market place needs a deploying platform . I have used Heroku for that. Heroku is a cloud based platform which allows the developer to build, run, and operate applications.
 
 ### AWS S3 Bucket: 
 Picture of a product is a mandatory part of a two way marketplace. People cannot buy a product if there is no picture of the product. To create a trusted profile and upload the image of the product I needed a service that will allow me to give the access to the users of uploading pictures of their product and their profile picture. AWS S3 bucket solved this problem easily. All  the pictures are protected by the provided credentials of AWS.
 
 ### Stripe:  
 While selling and buying the product, a payment system is mandatory too. I am using Stripe to make the payment structure. At this moment this part is on demo/test mode. 

</details>

---

## Database

## ERD(entity relationship diagram) for Plantish:

<details>
    <summary>Click here to expand</summary>

## ERD before production:
  ![](https://i.imgur.com/jhRgetd.png)


## ERD after production:
 For the perfection and the simplicity of the website, the main frame of ERD is followed strictly throughout the development process. 
 One exception: Initially I wanted to use AWS API to save the image as string in my database. Later I used Active storage to save the images in AWS S3 bucket.
 Future improvement plan: order_items table was created for giving sellers the access to manage order from each seller, which is under the future improvement plan.
 
 </details>

---

## Active Record Model Relationships

<details>
    <summary>Click here to expand</summary>
    
#### An User:
 * has_one profile, a profile belongs_to a user
 * has_many products, a product belongs_to a seller( under the class user)
 * has_many orders, an order belongs_to a buyer( under the class user)
 * has_many carts, a cart belongs_to a buyer( under the class user) and product
 
 ![](https://i.imgur.com/y57MwnI.png)


#### A profile:
 * has_one_attached picture, a profile belongs_to a user
 
 ![](https://i.imgur.com/j1MZ3vg.png)


 
#### A product:
 * a product belongs_to a seller(under the class user)
 * has_one_attached image
 * has_many carts, a cart belongs_to a buyer and a product

![](https://i.imgur.com/mErFMn8.png)

 
#### An order:
 * belongs_to a buyer
 * has_many carts
 * has_many order_items

![](https://i.imgur.com/amdptfw.png)

#### An order_item
 * has_one product, a product belongs_to a seller(under the class user)
 * has_one order, an order belongs_to a buyer(under the class user)
![](https://i.imgur.com/R5VYDgz.png)


 
#### A cart: 
 * belongs_to a product, a product belongs_to a seller(under the class user)
 * belong_to a buyer
 ![](https://i.imgur.com/WbZoY0K.png)






</details>




---

## Database Relations Implementation


<details>
    <summary>Click here to expand</summary>
    
#### User
  
  ![](https://i.imgur.com/LZRpe4N.png)
  
  * The user has more then one has_many and has_one relationship.
  * User table is connected to other tables with foreign keys.
  * It only holds the primary keys

 
 #### Profiles
  
  ![](https://i.imgur.com/quZ2qeJ.png)

  * The profile belongs_to a user, for that it is connected to the user table with foreign key

 
 #### Products
   
   ![](https://i.imgur.com/tf8aERC.png)
  * Product belongs_to user(seller) and connected to user table with foreign key.  
 
 #### Orders
 
   ![](https://i.imgur.com/047RzYK.png)
* Order belogs_to user as  seller and also as a buyers aspect. It has_many products.
 
 #### OrderItems
   
   ![](https://i.imgur.com/ik1Op4A.png)
* OrderItem belongs_to product and belongs_to order
* this table is now being used in transaction_controller to save the order items before destroying the cart
  
 
 
 #### Carts
  
  ![](https://i.imgur.com/hAGgW6u.png)
* cart holds the product_id and the buyer_id as foreign keys.
 



</details>

 
 
---

## Database Schema Design

<details>
    <summary>Click here to expand</summary>
    
Users:
* email: string
* encryped_password: string
* reset_password_token: string
* reset_password_sent_at: datetime
* remember_created_at: datetime
* created_at: datetime
* updated_at: datetime

Profiles:
* first_name: string
* last_name: string
* abn: string
* address: text
* suburb: string
* state: string
* postcode: string
* mobile_number: string
* user_id: references

Products:
* title: string
* category: string
* price: integer
* description: text
* seller_id: references

Orders: 
* buyer_id: references
* paid: boolean
* amount: float
* fulfilled: boolean

OrderItems:
* product_id: references
* order_id: references

Carts:
* product_id: references
* buyer_id: references



</details>





---

## Task Allocation and Tracking


<details>
    <summary>Click here to expand</summary>
    
The process is tracked by trello:

![](https://i.imgur.com/7FsujXP.jpg)

![](https://i.imgur.com/NNYHz1O.jpg)

![](https://i.imgur.com/C2vraca.jpg)

![](https://i.imgur.com/7R7NJCX.jpg)



**[Link to Trello](https://trello.com/b/t3Gl2Y4D/t2a2rails-app)**
To have access to the Trello board send me a request.
</details>




---
## Query Implementation with Comments

<details>
    <summary>Click here to expand</summary>
 
 

| Query implementation with comments in | controller | 
| -------- | -------- | 
|**profiles_controller**|![](https://i.imgur.com/72NGBQJ.png)![](https://i.imgur.com/5Tg7wW5.png)|
| **products_controller**|![](https://i.imgur.com/xsX3YmY.png)![](https://i.imgur.com/cG50DSL.png)| 
| **carts_controller** |![](https://i.imgur.com/td1g46a.png)| 
| **orders_controller** |![](https://i.imgur.com/jENXSLs.png)| 
|**transactions_controller** | ![](https://i.imgur.com/ndJJDbh.png)| 

</details>

---

## Sanitise and validates input to maintain data integrity
<details>
    <summary>Click here to expand</summary>

### Profile

  * **Sanitization**:
  Sanitization of user input by permitting specific keys in profile_params
  ![](https://i.imgur.com/h9zcT2z.png)

  * **Validation**:
   Validating different field of the profiles table
  ![](https://i.imgur.com/fm74hzE.png)

  

### Product

  * **Sanitization**:
  Sanitization of user input by permitting specific keys in product_params
  ![](https://i.imgur.com/cV617ZC.png)

  * **Validation**:
  Validating different field of the products table
  ![](https://i.imgur.com/9hdoun2.png)
  

  
### Cart

  * **Sanitization**:
  Sanitization of user input by permitting specific keys in cart_params
  ![](https://i.imgur.com/JuEkZcA.png)
  * **Validation**:
   Validating different field of the carts table
  ![](https://i.imgur.com/48hejmi.png)

</details>

---



## Rspec Unit Test

<details>
    <summary>Click here to expand</summary>
    
* **Product**

    Added products_controller unit test for testing create action
    
    ![](https://i.imgur.com/41aXQcZ.png)

    
</details>    





## Manual testing and Bug fixing

<details>
    <summary>Click here to expand</summary>

|  Bug        | Cause      | Solution   | Future plan   |
| ----------- | ----------- | ----------- | -------|
| `Add to cart` page breaks the app when the user is not logged in.| ERD : Cart is connected to db with user_id and product_id, so if there is no user logged in it is breaking the app on production when trying to add product to cart  | The structure of my ERD is fully based on DATABASE. I did my research and found out that it needs Javascript skill to add the product temporarily in cart. For now, I fixed this bug by disabling the `add to cart` button for users who are not logged in or signed in.     | Enabling the  local cart with script |
| Clicking on **Our Community** page broke the app | User did not filled all the required info place in form | adding validation to profile model and enabling the image properly on community page | Enabling the community page to all without logging in to the website |
|**Mobile number** is taking everything in the form| mobile_number is been saved in the db as string | I designed mobile_number to save as `string` in the database because it is not used for any kind of calculation. So the solution for this problem will be setting a validation on `Profile` model with **Regex** to allow only 10 numeric digits | -
| Add to cart button on each product show not working, giving error, param was showing empty| the cart was not having the access of the product id from the show page, which is mandatory to add that specific product to cart | product_id access to add to cart button  added | - |

</details>

## Scope of making Better user experience

<details>
    <summary>Click here to expand</summary>

| Feature now | Improvement plan | State |
| -------- | -------- | --- |
|**The cart** is showing **AUD$0** total with **check out** button, which is confusing to user     | Enabling the cart only when there is product added by registered user    | Done |
|**Product of <user>** showing nothing when no product is added| Need to add the button `add product` to the top and a message letting know that no product is being uploaded yet|
| Community is only showing the information of the member | To make the community more alive by adding features like- enabling internal message sending option , adding a blog site to the community, adding status update field for the members |
| Contact us page is currently under development | To make it properly functional with Sendgrid |

</details>


## Future plan  

* Adding an Admin dashboard to administrate the whole website 
* Giving the access to the seller to manage each order 
* Giving the access to buyer to cancel the order 


