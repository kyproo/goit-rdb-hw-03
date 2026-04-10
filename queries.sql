-- Домашнє завдання 3. DQL команди
-- GoIT RDB Course

-- Завдання 1а: вибрати всі стовпчики з таблиці products
SELECT * FROM products;

-- Завдання 1б: вибрати тільки name, phone з таблиці shippers
SELECT name, phone FROM shippers;

-- Завдання 2: середнє, максимальне та мінімальне значення ціни
SELECT 
    AVG(price) AS average_price,
    MAX(price) AS max_price,
    MIN(price) AS min_price
FROM products;

-- Завдання 3: унікальні значення category_id та price, сортування за спаданням, 10 рядків
SELECT DISTINCT category_id, price
FROM products
ORDER BY price DESC
LIMIT 10;

-- Завдання 4: кількість продуктів в ціновому діапазоні від 20 до 100
SELECT COUNT(*) AS products_count
FROM products
WHERE price BETWEEN 20 AND 100;

-- Завдання 5: кількість продуктів та середня ціна по кожному постачальнику
SELECT 
    supplier_id,
    COUNT(*) AS products_count,
    AVG(price) AS average_price
FROM products
GROUP BY supplier_id;
