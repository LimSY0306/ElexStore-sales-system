# 🛒 ELEX STORE
### Online Electronics Shopping System

An online shopping system where members can browse products, manage their shopping cart, place orders, and manage their profiles. Administrators can manage products, inventory, orders, and staff accounts.

---

## ✨ Features

### 👨‍💼 Admin Features
- **Admin Panel:** Access the system's administrative control center.
- **Staff Management:** Create, update, and delete staff accounts.
- **Account Status:** Manually change staff account status between Active and Blocked.
- **Product Management:** Create, view, update, and delete products.
- **Inventory Management:** Manually add or update product stock.
- **Order Management:** View member orders and manually update order statuses.
- **Access Control:** Only authorized administrators can access the admin panel, product management, order listing, and admin management.

### 🛍️ Member Features
- **Shopping Cart:** Add and manage products in the cart.
- **Persistent Cart:** Cart items remain available after logout and login.
- **Checkout:** Place orders using items in the shopping cart.
- **Automatic Stock Update:** Product stock decreases automatically after checkout.
- **Order History:** View previous orders and order details.
- **Forgot Password:** Reset passwords through the member's registered email.
- **Profile Management:** Update email, phone number, and password.
- **Profile Photo:** Upload a profile photo or select one from the default photo gallery.
- **Account Security:** Username cannot be changed through profile settings.

---

## 🔐 Login Credentials (Testing)

> **For testing purposes only. Do not use these credentials in production.**

| Role | Username | Password |
|---|---|---|
| 👨‍💼 Admin | `admin2` | `admin123` |
| 🛍️ Member | `john_doe` | `member123` |

---

## 🧪 Testing Instructions

### 1. Admin Testing
- [ ] Log in using the admin credentials.
- [ ] Access the admin panel.
- [ ] Create, update, and delete staff accounts.
- [ ] Change staff account status between Active and Blocked.
- [ ] Add or update product stock.
- [ ] Create, update, and delete products.
- [ ] View member orders.
- [ ] Manually update order statuses.
- [ ] Verify that only authorized administrators can access admin functions.

### 2. Member Testing
- [ ] Log in using the member credentials.
- [ ] Add products to the shopping cart.
- [ ] Log out and log in again to verify cart persistence.
- [ ] Update cart items.
- [ ] Check out items from the cart.
- [ ] Verify that product stock decreases automatically.
- [ ] View order history and order details.
- [ ] Update email, phone number, and password.
- [ ] Verify that the username cannot be changed.
- [ ] Upload a profile photo.
- [ ] Select a profile photo from the default gallery.
- [ ] Test the forgot password function using the registered email.

### 3. Access Control Testing
- [ ] Verify that members cannot access admin-only pages.
- [ ] Verify that unauthenticated users cannot access protected pages.
- [ ] Verify that blocked staff accounts cannot access restricted admin functions.

---

## 🔄 System Workflow

1. **Admin** manages staff accounts, products, inventory, and orders.
2. **Member** logs in and adds products to the shopping cart.
3. **Member** checks out the selected products.
4. **System** creates the order and updates product stock.
5. **Member** views order history and manages profile information.
6. **Admin** updates the order status when necessary.

---

## 📝 Notes
- Import the dba.sql first before open the project.
- The provided credentials are for demonstration and testing.
- Password reset requires access to the member's registered email.
- Cart persistence depends on the application's implementation.
- Ensure sufficient product stock before testing checkout.
- Use a test environment and test accounts when performing these instructions.

---

⭐ **ELEX STORE** — Online Shopping Made Simple.
