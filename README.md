# Day2-Sql-internship

# 📘 SQL Task 2: Data Insertion and Null Handling

## 🧠 Objective

This task focuses on practicing **Data Manipulation Language (DML)** operations like `INSERT`, `UPDATE`, and `DELETE` while handling **NULLs**, **default values**, and **foreign key constraints** in an **e-commerce database**.

---

## 🛠 Tools Used

- **MySQL**
- **MySQL Workbench**
- **GitHub** for version control

---

## 🗂️ Database Structure

The following tables were created:

1. `categories`
2. `products`
3. `customers`
4. `orders`
5. `order_items`
6. `payments`

Each table is connected using appropriate **foreign key constraints**.

---

## ✅ SQL Operations Performed

### 🔹 `INSERT` Statements
- Inserted records into all tables.
- Demonstrated:
  - `DEFAULT` values for `stock_quantity`.
  - `NULL` insertion for optional columns.
  - Partial column inserts (e.g., omitting `stock_quantity`).

### 🔹 `UPDATE` Statements
- Updated product stock after purchase.
- Changed order status.
- Modified customer contact details.

### 🔹 `DELETE` Statements
- Deleted an entry from `order_items`.
- Deleted a payment record.

---

## 📌 NULL & DEFAULT Handling

- Used `NULL` in the `status` column during order insertion.
- Omitted `stock_quantity` to use its default value (0).

---

## 🧪 Sample Queries Used

```sql
-- Insert with NULL
INSERT INTO orders (customer_id, order_date, status)
VALUES (3, '2025-08-05', NULL);

-- Insert using DEFAULT value
INSERT INTO products (product_name, price, category_id)
VALUES ('Notebook', 50, 2);

-- Update operation
UPDATE products
SET stock_quantity = stock_quantity - 1
WHERE product_id = 1;

-- Delete operation
DELETE FROM order_items
WHERE orderitems_id = 4;
