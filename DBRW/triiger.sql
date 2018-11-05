delimiter $$
CREATE TRIGGER trigger_name BEFORE INSERT ON tabla_productos FOR EACH ROW
BEGIN
  DECLARE next_id INT;

  SET next_id = (SELECT AUTO_INCREMENT FROM information_schema.TABLES WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='tabla_productos');
  SET NEW.codigo_secundario = CONCAT('P', LPAD(next_id, 8, '0'));
END