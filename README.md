

# Plantish : Gardeners Marketplace
## T2A2 - Marketplace Project

---
### Q1. Identification of the problem I am trying to solve by building this app

### ☘️ Ans: 

Plantish is a uniq market place to sell the garden products. As a gardener myself I Have grown a lot of fresh vegetables sometimes that could not be stored or consumed so the idea of building a platform to sell those extra fresh grown foods came to my mind.


---

### Q2. Why is it a problem that needs solving

### ☘️ Ans:

Rather the letting the extra harvest go waste Plantish will give the opportunity to sell them in the neighbourhood. It will also create an extra source of income. It will also create a community bonding among the gardeners.


---


### Q3. A link (URL) to my deployed app

### ☘️ Ans:

#### The link to Plantish deployed on Heroku : https://plantish.herokuapp.com/


---

### Q4. A link to my GitHub repository (repo) -Ensure the repo is accessible

### ☘️ Ans:


---

### Q5. Description of your marketplace app (website), including:
- Purpose
- Functionality / features
- Sitemap
- Screenshots
- Target audience
- Tech stack (e.g. html, css, deployment platform, etc)

### ☘️ Ans:

#### Purpose: 
 * Creating a place to let gardener sell their product
 
#### Functinality:
 * User can buy and sell products.
 
#### Sitemap:
![](https://i.imgur.com/jRFRqhj.jpg)

#### Screenshots:

#### Target audience:
  - Age range: 30 - 80yrs old
  - Gender: All
  - Living in house with backyard / space to do gardening
  - Living in a suburb away from main city

#### Tech stack:
  
  - HTML
  - CSS
  - Ruby on Rails
  - Postgresql
  - Heroku
  - Lucid chart
  - DBDISGINER
  - Trello
  - Balsamiq

---

### Q6. User stories for your app

### ☘️ Ans:

 ### As an user:
  - I want to login to my account.
  - I want to edit my login settings
  - I want to create an account, so that I can make a profile so my location and other informations stay saved in my profile
  - I want to edit my profile
  - I want to stay in the community group
  
 
 
 ### As a buyer:
 
  - I want to buy a product by adding the product to the cart and finishing payment
  
 -  I want to look for product by category
 - I want to see the list of my confirmed ordered products after payment is done
 
 ### As a seller:
 
- I want to add my product details
- I want to edit my product details







---

### Q7. Wireframes for your app

### ☘️ Ans:

---

### Q8. An ERD for your app

### ☘️ Ans:

#### ERD(entity relationship diagram) for Plantish:
  ![](https://i.imgur.com/j24CU5P.png)



---

### Q9. Explain the different high-level components (abstractions) in your app

### ☘️ Ans:

---

### Q10. Detail any third party services that your app will use

### ☘️ Ans:

### Third party services used in Plantish:
 - Heroku: To deploy the app.
 - AWS S3 Bucket: To upload the product image and profile picture of user.
 - Stripe:  To process payment.

---

### Q11. Describe your projects models in terms of the relationships (active record associations) they have with each other

### ☘️ Ans:

---

### Q12. Discuss the database relations to be implemented in your application

### ☘️ Ans:

---

### Q13. Provide your database schema design

### ☘️ Ans:


---

### Q14. Describe the way tasks are allocated and tracked in your project

### ☘️ Ans:


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
