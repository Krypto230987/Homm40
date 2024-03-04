-- 1
ALTER TABLE suppliers
ADD COLUMN balance DECIMAL(10, 2);
-- 2
CREATE TABLE payments (
    id INT PRIMARY KEY,
    payment_date DATETIME,
    supplier_id INT,
    pay_sum DECIMAL(10, 2),
    description VARCHAR(255)
);
-- 3

UPDATE suppliers AS supplier
SET balance = (
    SELECT COALESCE(SUM(payment.pay_sum), 0) - COALESCE(SUM(action.qty * action.price), 0)
    FROM payments AS payment
    JOIN actions action ON payment.supplier_id = action.supplier_id
    WHERE action.supplier_id = supplier.id
    GROUP BY action.supplier_id
);
-- 4

START TRANSACTION;
SET @supplier_id = 2;
SET @payment_date = '2023-03-08';
SET @pay_sum = 1000.00;
SET @description = 'Оплата за поставку №123';
INSERT INTO payments (supplier_id, payment_date, pay_sum, description)
VALUES (@supplier_id, @payment_date, @pay_sum, @description);
UPDATE suppliers
SET balance = balance - @pay_sum
WHERE id = @supplier_id;
COMMIT;


