# ShopX
#### E-Commerce Flutter App Using Firebase and MobX State Management
UI by [Soumitro_Sobuj](https://dribbble.com/shots/6876936-Product-App-Exploration)

Download [apk](https://github.com/Ali-Amin/shopx/releases/tag/1.0%2B1)

<img src="https://user-images.githubusercontent.com/41022464/62838374-73b8c900-bc7b-11e9-9e7a-8538d1dd72c7.gif" alt="alt text" width=240 height=480> <img src="https://user-images.githubusercontent.com/41022464/62838376-7c110400-bc7b-11e9-9c70-6f30930efef9.gif" alt="alt text" width=240 height=480>






## Features
- [x] Fetch product data from Firebase Cloud Firestore
- [x] View product information
- [x] Use MobX only for state management
- [ ] Cache images
- [ ] Find a more appropriate font
- [ ] Cart
- [ ] Checkout
- [ ] Comments
- [ ] Ratings
- [ ] Favourites
- [ ] Profile


## Firestore structure
### Collections
#### Categories
```
uid: String
name: String
```
![CAT](https://user-images.githubusercontent.com/41022464/63609186-e9575a00-c5d6-11e9-805b-e4f7df9ffe23.PNG)
###
#### Products
```
backgroundColor: String
category: String
description: String
name: String
photos: String[]
price: number
uid: string
```
![PROD](https://user-images.githubusercontent.com/41022464/63609190-ea888700-c5d6-11e9-90e5-bf455d05f056.PNG)
### Issues
- [ ] Bottom Navigation Bar has blue background, should be transparent
- [ ] AppBar should fade out intro the screen instead of cutting it off


