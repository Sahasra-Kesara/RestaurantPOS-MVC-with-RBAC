SELECT TOP (1000) [ItemId]
      ,[Name]
      ,[Price]
      ,[Category]
  FROM [Restaurant_POS_MVC_DB].[dbo].[Items]


INSERT INTO [Restaurant_POS_MVC_DB].[dbo].[Items] ([Name], [Price], [Category]) VALUES 
('Cheeseburger', 5.99, 'Food'),
('French Fries', 2.99, 'Food'),
('Pizza Slice', 3.49, 'Food'),
('Chicken Wings', 6.99, 'Food'),
('Caesar Salad', 4.49, 'Food'),
('Steak', 15.99, 'Food'),
('Spaghetti', 8.99, 'Food'),
('Tacos', 3.99, 'Food'),
('Grilled Cheese', 3.49, 'Food'),
('Vegetable Soup', 4.99, 'Food'),
('Ice Cream', 2.99, 'Food'),
('Chocolate Cake', 3.49, 'Food'),
('Apple Pie', 3.99, 'Food'),
('Orange Juice', 1.99, 'Beverages'),
('Soda', 1.49, 'Beverages'),
('Coffee', 1.99, 'Beverages'),
('Tea', 1.79, 'Beverages'),
('Lemonade', 2.29, 'Beverages'),
('Milkshake', 3.99, 'Beverages'),
('Iced Coffee', 2.49, 'Beverages');




INSERT INTO [Restaurant_POS_MVC_DB].[dbo].[Items] ([Name], [Price], [Category]) VALUES 
-- Additional Food Items
('Fish and Chips', 7.99, 'Food'),
('Burrito', 6.49, 'Food'),
('Nachos', 5.49, 'Food'),
('Sushi Roll', 8.99, 'Food'),
('Burger Combo', 9.99, 'Food'),
('Hot Dog', 2.99, 'Food'),
('Quesadilla', 4.99, 'Food'),
('Pasta Alfredo', 9.49, 'Food'),
('Garlic Bread', 2.49, 'Food'),
('Onion Rings', 3.49, 'Food'),
('Margarita Pizza', 10.99, 'Food'),
('Buffalo Chicken Sandwich', 6.49, 'Food'),
('Chili Bowl', 5.99, 'Food'),
('Pancakes', 4.49, 'Food'),
('Waffles', 4.99, 'Food'),
('Omelette', 5.49, 'Food'),
('Chicken Tenders', 6.49, 'Food'),
('Stuffed Peppers', 7.49, 'Food'),
('Fried Rice', 5.99, 'Food'),
('Pad Thai', 8.49, 'Food'),
('BBQ Ribs', 12.99, 'Food'),
('Lobster Roll', 14.99, 'Food'),
('Veggie Burger', 6.99, 'Food'),
('Chicken Caesar Wrap', 5.99, 'Food'),
('Clam Chowder', 6.99, 'Food'),
('Beef Burrito Bowl', 7.99, 'Food'),
('Eggplant Parmesan', 8.99, 'Food'),
('Shrimp Tacos', 9.49, 'Food'),
('Greek Salad', 5.99, 'Food'),
('Chicken Parmesan', 10.99, 'Food'),

-- Additional Beverage Items
('Hot Chocolate', 2.99, 'Beverages'),
('Espresso', 2.49, 'Beverages'),
('Cappuccino', 3.49, 'Beverages'),
('Green Tea', 1.99, 'Beverages'),
('Herbal Tea', 1.99, 'Beverages'),
('Smoothie', 3.99, 'Beverages'),
('Protein Shake', 4.99, 'Beverages'),
('Apple Juice', 2.29, 'Beverages'),
('Energy Drink', 2.99, 'Beverages'),
('Iced Tea', 2.49, 'Beverages'),
('Sparkling Water', 1.99, 'Beverages'),
('Cranberry Juice', 2.49, 'Beverages'),
('Mango Lassi', 3.49, 'Beverages'),
('Frappe', 3.99, 'Beverages'),
('Cold Brew Coffee', 3.29, 'Beverages'),
('Ginger Ale', 1.79, 'Beverages'),
('Root Beer', 1.79, 'Beverages'),
('Hot Cider', 2.79, 'Beverages'),
('Thai Iced Tea', 3.49, 'Beverages'),
('Kombucha', 3.99, 'Beverages');



INSERT INTO [Restaurant_POS_MVC_DB].[dbo].[Items] ([Name], [Price], [Category], [SubCategory]) VALUES
('Cheeseburger', 5.99, 'Food', 'Burgers & Sandwiches'),
('Burger Combo', 9.99, 'Food', 'Burgers & Sandwiches'),
('Veggie Burger', 6.99, 'Food', 'Burgers & Sandwiches'),
('Chicken Caesar Wrap', 5.99, 'Food', 'Burgers & Sandwiches'),
('Buffalo Chicken Sandwich', 6.49, 'Food', 'Burgers & Sandwiches'),

('French Fries', 2.99, 'Food', 'Fried Foods'),
('Fish and Chips', 7.99, 'Food', 'Fried Foods'),
('Onion Rings', 3.49, 'Food', 'Fried Foods'),
('Chicken Wings', 6.99, 'Food', 'Fried Foods'),
('Chicken Tenders', 6.49, 'Food', 'Fried Foods'),

('Pizza Slice', 3.49, 'Food', 'Pizza & Italian'),
('Margarita Pizza', 10.99, 'Food', 'Pizza & Italian'),
('Spaghetti', 8.99, 'Food', 'Pizza & Italian'),
('Pasta Alfredo', 9.49, 'Food', 'Pizza & Italian'),
('Eggplant Parmesan', 8.99, 'Food', 'Pizza & Italian'),
('Chicken Parmesan', 10.99, 'Food', 'Pizza & Italian'),

('Caesar Salad', 4.49, 'Food', 'Salads & Sides'),
('Greek Salad', 5.99, 'Food', 'Salads & Sides'),
('Garlic Bread', 2.49, 'Food', 'Salads & Sides'),
('Stuffed Peppers', 7.49, 'Food', 'Salads & Sides'),
('Pancakes', 4.49, 'Food', 'Salads & Sides'),
('Waffles', 4.99, 'Food', 'Salads & Sides'),
('Quesadilla', 4.99, 'Food', 'Salads & Sides'),

('Tacos', 3.99, 'Food', 'Asian & Mexican'),
('Burrito', 6.49, 'Food', 'Asian & Mexican'),
('Beef Burrito Bowl', 7.99, 'Food', 'Asian & Mexican'),
('Pad Thai', 8.49, 'Food', 'Asian & Mexican'),
('Shrimp Tacos', 9.49, 'Food', 'Asian & Mexican'),
('Fried Rice', 5.99, 'Food', 'Asian & Mexican'),

('Vegetable Soup', 4.99, 'Food', 'Soups & Stews'),
('Clam Chowder', 6.99, 'Food', 'Soups & Stews'),
('Chili Bowl', 5.99, 'Food', 'Soups & Stews'),

('Ice Cream', 2.99, 'Food', 'Specialties & Desserts'),
('Chocolate Cake', 3.49, 'Food', 'Specialties & Desserts'),
('Apple Pie', 3.99, 'Food', 'Specialties & Desserts'),
('Hot Dog', 2.99, 'Food', 'Specialties & Desserts'),
('Lobster Roll', 14.99, 'Food', 'Specialties & Desserts'),
('BBQ Ribs', 12.99, 'Food', 'Specialties & Desserts'),
('Sushi Roll', 8.99, 'Food', 'Specialties & Desserts'),

('Omelette', 5.49, 'Food', 'Breakfast & Brunch'),
('Steak', 15.99, 'Food', 'Breakfast & Brunch'),
('Grilled Cheese', 3.49, 'Food', 'Breakfast & Brunch');

-- Beverage Items with Subcategories
INSERT INTO [Restaurant_POS_MVC_DB].[dbo].[Items] ([Name], [Price], [Category], [SubCategory]) VALUES
('Soda', 1.49, 'Beverages', 'Cold Drinks'),
('Iced Coffee', 2.49, 'Beverages', 'Cold Drinks'),
('Iced Tea', 2.49, 'Beverages', 'Cold Drinks'),
('Lemonade', 2.29, 'Beverages', 'Cold Drinks'),
('Sparkling Water', 1.99, 'Beverages', 'Cold Drinks'),
('Root Beer', 1.79, 'Beverages', 'Cold Drinks'),
('Ginger Ale', 1.79, 'Beverages', 'Cold Drinks'),
('Energy Drink', 2.99, 'Beverages', 'Cold Drinks'),
('Frappe', 3.99, 'Beverages', 'Cold Drinks'),
('Cold Brew Coffee', 3.29, 'Beverages', 'Cold Drinks'),

('Coffee', 1.99, 'Beverages', 'Hot Drinks'),
('Tea', 1.79, 'Beverages', 'Hot Drinks'),
('Cappuccino', 3.49, 'Beverages', 'Hot Drinks'),
('Espresso', 2.49, 'Beverages', 'Hot Drinks'),
('Hot Chocolate', 2.99, 'Beverages', 'Hot Drinks'),
('Hot Cider', 2.79, 'Beverages', 'Hot Drinks'),
('Green Tea', 1.99, 'Beverages', 'Hot Drinks'),
('Herbal Tea', 1.99, 'Beverages', 'Hot Drinks'),

('Orange Juice', 1.99, 'Beverages', 'Juices & Smoothies'),
('Apple Juice', 2.29, 'Beverages', 'Juices & Smoothies'),
('Cranberry Juice', 2.49, 'Beverages', 'Juices & Smoothies'),
('Mango Lassi', 3.49, 'Beverages', 'Juices & Smoothies'),
('Smoothie', 3.99, 'Beverages', 'Juices & Smoothies'),
('Protein Shake', 4.99, 'Beverages', 'Juices & Smoothies'),

('Milkshake', 3.99, 'Beverages', 'Specialty Drinks'),
('Kombucha', 3.99, 'Beverages', 'Specialty Drinks'),
('Thai Iced Tea', 3.49, 'Beverages', 'Specialty Drinks');

-- Update prices for all food items
UPDATE [Restaurant_POS_MVC_DB].[dbo].[Items]
SET [Price] = [Price] * 350
WHERE [Category] = 'Food';

-- Update prices for all beverage items
UPDATE [Restaurant_POS_MVC_DB].[dbo].[Items]
SET [Price] = [Price] * 350
WHERE [Category] = 'Beverages';
