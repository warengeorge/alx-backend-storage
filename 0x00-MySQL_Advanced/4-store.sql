-- a SQL script that triggers the decrease of an item after adding new order
CREATE TRIGGER decrement_qty AFTER INSERT ON orders FOR EACH ROW
UPDATE items SET quantity = quantity - NEW.number WHERE name=NEW.item_name;
