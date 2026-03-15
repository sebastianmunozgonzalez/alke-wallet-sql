-- INSERTAR MONEDAS
INSERT INTO moneda (currencyname, currencysymbol) VALUES ('Peso Chileno', 'CLP');
INSERT INTO moneda (currencyname, currencysymbol) VALUES ('Dólar',        'USD');
INSERT INTO moneda (currencyname, currencysymbol) VALUES ('Euro',         'EUR');

-- INSERTAR USUARIOS
INSERT INTO usuario (nombre, correo_electronico, contraseña, saldo) VALUES ('Carlos Perez',   'carlos@email.com', '1234pass', 150000.00);
INSERT INTO usuario (nombre, correo_electronico, contraseña, saldo) VALUES ('Maria Gonzalez', 'maria@email.com',  'abcdpass', 320000.00);
INSERT INTO usuario (nombre, correo_electronico, contraseña, saldo) VALUES ('Juan Rodriguez', 'juan@email.com',   'xyzpass',   80000.00);
INSERT INTO usuario (nombre, correo_electronico, contraseña, saldo) VALUES ('Ana Martinez',   'ana@email.com',    'passabc',  500000.00);
INSERT INTO usuario (nombre, correo_electronico, contraseña, saldo) VALUES ('Luis Fernandez', 'luis@email.com',   'pass123',   25000.00);

-- INSERTAR TRANSACCIONES
INSERT INTO transaccion (senderuserid, receiveruserid, importe, currencyid) VALUES (1, 2, 50000.00, 1);
INSERT INTO transaccion (senderuserid, receiveruserid, importe, currencyid) VALUES (2, 3, 200.00,   2);
INSERT INTO transaccion (senderuserid, receiveruserid, importe, currencyid) VALUES (4, 1, 100.00,   3);
INSERT INTO transaccion (senderuserid, receiveruserid, importe, currencyid) VALUES (3, 5, 30000.00, 1);
INSERT INTO transaccion (senderuserid, receiveruserid, importe, currencyid) VALUES (5, 4, 500.00,   2);
INSERT INTO transaccion (senderuserid, receiveruserid, importe, currencyid) VALUES (1, 3, 75000.00, 1);

-- VERIFICAR DATOS INSERTADOS
SELECT * FROM moneda;
SELECT * FROM usuario;
SELECT * FROM transaccion;
