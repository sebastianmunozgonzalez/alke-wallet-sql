USE AlkeWallet;

-- DML 1: MODIFICAR CORREO DE UN USUARIO

-- Ver estado ANTES del cambio
SELECT userid, nombre, correo_electronico
FROM usuario
WHERE userid = 1;

START TRANSACTION;

UPDATE usuario
SET correo_electronico = 'carlos_actualizado@email.com'
WHERE userid = 1;

-- Ver estado DESPUÉS del cambio
SELECT userid, nombre, correo_electronico
FROM usuario
WHERE userid = 1;

COMMIT;

-- DML 2: ELIMINAR UNA TRANSACCIÓN COMPLETA

-- Ver transacción ANTES de eliminar
SELECT * FROM transaccion
WHERE transactionid = 6;

START TRANSACTION;

DELETE FROM transaccion
WHERE transactionid = 6;

-- Verificar que se eliminó
SELECT * FROM transaccion;

COMMIT;

-- VERIFICACIÓN FINAL

SELECT * FROM usuario;
SELECT * FROM transaccion;
SELECT * FROM moneda;