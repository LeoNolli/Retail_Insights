USE retail_db;

CREATE TABLE clientes(
	cliente_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50)NOT NULL,
    last_name VARCHAR(100)NOT NULL,
    data_nascimento DATE,
     PRIMARY KEY (cliente_id)
);
CREATE TABLE enderecos(
	endereco_id INT NOT NULL AUTO_INCREMENT,
    cliente_id INT NOT NULL,
    address VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    location GEOMETRY,
    PRIMARY KEY(endereco_id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);
CREATE TABLE pagamentos(
	pagamento_id INT NOT NULL AUTO_INCREMENT,
    cliente_id INT NOT NULL,
    amount DECIMAL (10,2),
    payment_date DATETIME,
    last_update TIMESTAMP,
    PRIMARY KEY(pagamento_id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

INSERT INTO clientes(first_name, last_name, data_nascimento)
VALUES
	('José', 'Noli', '2002-04-26'), 
    ('Maria', 'Oliveira', '1995-08-12'),
	('Carlos', 'Drummond', '1980-10-30'),
	('Ana', 'Beatriz', '2005-01-15'),
	('Ricardo', 'Santos', '1992-11-22');
    
INSERT INTO enderecos (cliente_id, address, phone, location) 
VALUES 
	(1, 'Rua das Flores, 123', '11988887777', ST_GeomFromText('POINT(-23.5505 -46.6333)')),
	(2, 'Av. Paulista, 1500', '11977776666', ST_GeomFromText('POINT(-23.5596 -46.6580)')),
	(3, 'Rua Bahia, 45', '31966665555', ST_GeomFromText('POINT(-19.9167 -43.9345)')),
	(4, 'Praça da Sé, 10', '11955554444', ST_GeomFromText('POINT(-23.5503 -46.6339)')),
	(5, 'Rua do Ouvidor, 100', '21944443333', ST_GeomFromText('POINT(-22.9035 -43.1759)'));

INSERT INTO pagamentos (cliente_id, amount, payment_date) 
VALUES 
	(1, 150.50, '2026-04-01 10:30:00'),
	(2, 89.90, '2026-04-05 14:20:00'),
	(3, 450.00, '2026-04-10 09:00:00'),
	(1, 75.00, '2026-04-15 18:45:00'),
	(4, 1200.00, '2026-04-20 11:00:00'),
	(5, 300.25, '2026-04-25 16:30:00'),
	(2, 45.00, '2026-04-27 13:10:00');