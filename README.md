

# Plantish : Gardeners Marketplace
**Developed by: Syeda Ismat Farjana | Assignment: T2A2**
 **[Link to Github repository](https://github.com/ismatfarjana/T2A2_Rails_marketplace) | [Live site (deployed on Heroku)](https://plantish.herokuapp.com/)**

---

## Introduction:
Plantish is a two-way unique marketplace app for selling and buying garden grown fruits, vegetables, seeds, seedlings, renting or gardening tools and more.

## Problem I am trying to solve:
 
As a gardener myself I Have grown a lot of fresh vegetables sometimes that could not be stored or consumed. So the idea of building a platform to sell those extra fresh grown foods came to my mind. It also allowes seller to sell the seedlings they don't have enough space to grow. They can sell grafted small plants. Also, having the pandemic situation on, the aggravated need of fresh fruits and vegetables can easily managed if we can get them from each other by maintaining the safety protocols.

## Why:

Rather the letting the extra harvest go waste Plantish will give the opportunity to sell them in the neighbourhood. It will also create an extra source of income for the gardener. It will also create a community bonding among the gardeners.


---

## Description

### Purpose
The purpose of Plantish is to creating a place to let anyone to sell their garden related product and also allowing other person to buy it.

### Target audience
  - Age range: 20+
  - Gender: All
  - Living in house with backyard / space to do gardening
  - Living in a suburb away from main city
  - Looking for fresh home grown vegetables, fruits, plants, seelings, seeds, garden tools, indoor plants, terrariums and succulents.

### Tech stack
  **Frontend:**
  - HTML
  - CSS
  - ERB

 **Backend**
  - Ruby
  - Ruby on Rails

 **Database**
  - Postgresql

 **Deployment**
  - Heroku

 **Utilities**
  - AWS S3
  - Stripe
  - Devise


 **DevOps**
  - RubyMine
  - Git
  - Github
  - Lucid chart
  - DBDISGINER
  - Trello
  - Balsamiq

### User stories
#### As an user:
  - I want to login to my account.
  - I want to edit my login settings
  - I want to create an account, so that I can make a profile so my location and other informations stay saved in my profile
  - I want to edit my profile
  - I want to stay in the community group
  
 
 
#### As a buyer:
 
  - I want to buy a product by adding the product to the cart and finishing payment
 -  I want to look for product by category
 - I want to see the list of my confirmed ordered products after payment is done
 
#### As a seller:
 
- I want to add my product details
- I want to edit my product details

### Functinality
 #### User Profile: 
  The site visitor can create profile with informations (profile picture, email address, password, phone number, name, address, postcode, suburb) inorder to add products to their product list and to add product to the cart indorder to buy it. It also gives access to the registered user to the Plantish community where they can find other members as well. The visitor who doesnot have created any profile is allowed to browse the website.
  
####  Product list:
 Registered user can upload product to "My PRODUCT" list. User can specify the type of product from the category selection option( seeds, seedlings, vegetables, fruits, flowers, indoor plants, succulents, terrariums, small plants, garden tools) in the form. User will fix the price for each product . The amount of the selling product is also fixed by the user(seller). ***IF THE PRODUCT IS SOLD ALREADY THE SELLER CAN DELETE THE PRODUCT FROM THE PRODUCT LIST***
 
 #### Payment:
  After the product is added to cart buyer can see their choosen product list in the cart and proceed to payment. After the payment is successful the buyer will be redirected to the paid order list. (The payment system is on demo mode at this moment. To have a test run follow the instruction showed in the cart page)
 
 ---

## Sitemap:
Mockup of Plantish sitemap
![](https://i.imgur.com/jRFRqhj.jpg)


---

## Screenshots





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






---

## Wireframes

### Desktop:
![](https://i.imgur.com/8oaoLOY.png)

### Tab:
![](https://i.imgur.com/EQurPBc.png)



### Mobile phone:

![](https://i.imgur.com/uKdWDSc.png)



---

## ERD(entity relationship diagram) for Plantish:
  ![](https://i.imgur.com/j24CU5P.png)



---


## High-level Components (Abstractions)


### User: 
 User is the first component of this app. An user will be able to browse all the category and see all the products.

### Profile:
 The Profile includes informations reated to the registered user. One needs to create a profile in order to be able to start selling their own product or buying others item.
 
### Plantish community
This community holds all the registered users contact information so they can connect to each other and make the internal bond stornger by helping each other with their gardening skills or by any means.

### Product of different categories
 Different category ranged items make it easy to browse the items. The registered buyer user will be able to add the product to te cart and proceed to the next step.
 
### Cart
  The cart holds all the chossen product of the buyer.

### Payment
 The payment system will allow the buyer to pay for the items. (This stage is under construction, a demo code is given to test the functionality of the infrastructure of the payment system)

---


## Third party services used in Plantish:
 ### Heroku: 
 Plantish gardener market place needs a deploying platform . I have used Heroku for that. Heroku is a cloud based platform which allowes the devepoler to build, run, and operate applications.
 
 ### AWS S3 Bucket: 
 Picture of a product is a mandatory part of a two way market place. People cannot buy a product if there is no picture of the product. To create a trusted profile and upload the image of the product I needed a service that will allow me to give the access to the users of uploading picture of their product and their profile picture. AWS S3 bucket solved thisproblem easily. All  the pictures are protected by the provided credentials of AWS.
 
 ### Stripe:  
 While selling and buying the product, a payment system is mandatory too. I am using stripe to make the payment structure. At this moment this part is on demo/test mode. 
 
---

## Database
### Active Record Model Relationships

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




---

### Database Relations Implementation

 #### User
 
  ![](https://i.imgur.com/oEy6Wju.png)
  
  * The user has more then one has_many and has_one relationship.
  * User table is connected to other tables with foreign keys.
  * It only holds the primery keys

 
 #### Profiles
 
  ![](https://i.imgur.com/ZbO8jJp.png)

  * The profile belongs_to a user, for that it is connected to the user table with foreign key

 
 #### Products
 
   ![](https://i.imgur.com/O3rXqFQ.png)
  * Product belongs_to user(seller) and connected to user table with foreign key.  
 
 #### Orders
 
   ![](https://i.imgur.com/FxRR8O9.png)
* Order belogs_to user as  seller and also as a buyers aspect. It has_many products.
 
 
 
 
 #### Carts
  
  ![](https://i.imgur.com/71oEpVI.png)
* cart holds the product_id and the buyer_id as foreign key.
 
 
---

### Database Schema Design

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



---

### Task Allocation and Tracking



The process is tracked by trello:
![](https://i.imgur.com/7FsujXP.jpg)
![](https://i.imgur.com/NNYHz1O.jpg)
![](https://i.imgur.com/7R7NJCX.jpg)

**[Link to Trello](https://trello.com/b/t3Gl2Y4D/t2a2rails-app)**
To have the access to Trello board send me a request.


---



---









Manual testing and Bug fixing

|  Bug        | Cause      | Solution   | Future plan   |
| ----------- | ----------- | ----------- | -------|
| `Add to cart` page breaks the app when user not logged in.| ERD : Cart is connected to db with user_id and product_id, so if there is no user logged in it is breaking the app on production when trying to add product to cart  | The structure of my ERD is fully based on DATABASE. I did my research and found out that it needs Javascript skill to add the product temporarily in cart. For now, I fixed ths bug by disabeing the `add to cart` buttton for users who are not logged in or sighed in.     | Enabeling the  local cart with script |
| Clicking on **Our Community** page broke the app | User didnot filled all the required info place in form | adding validation to profile model and enabeling the image properly on community page | Enableing the community page to all without logging in to the website |
|**Mobile number** is taking everything in the form| mobile_number is been saved in the db as string | I desgined mobile_number to save as `string` in the database because it is not used for any kind of calculation. So the solution for this problem will be setting a validation on `Profile` model with **Regex** to allow only 10 numeric digits | -


Scope of making Better user experience

| Feature now | Improvement | 
| -------- | -------- | 
|**The cart** is showing **AUD$0** total with **check out** button, which is confusing to user     | Enableing the cart only when there is product added by registered user    | 
|**Product of <user>** showing nothing when no product is added| Need to add the button `add product` to the top and a message letting know that no product is being uploaded yet|
