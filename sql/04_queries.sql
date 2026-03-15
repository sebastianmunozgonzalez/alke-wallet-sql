USE AlkeWallet;

-- CONSULTA 1: Moneda usada por un usuario específico

SELECT DISTINCT
    u.nombre            AS 'Usuario',
    m.currencyname      AS 'Moneda',
    m.currencysymbol    AS 'Simbolo'
FROM usuario u
JOIN transaccion t ON u.userid     = t.senderuserid
JOIN moneda m      ON t.currencyid = m.currencyid
WHERE u.userid = 1;

-- CONSULTA 2: Todas las transacciones registradas

SELECT
    t.transactionid     AS 'ID',
    emisor.nombre       AS 'Enviado por',
    receptor.nombre     AS 'Recibido por',
    t.importe           AS 'Importe',
    m.currencysymbol    AS 'Moneda',
    t.transactiondate   AS 'Fecha'
FROM transaccion t
JOIN usuario emisor    ON t.senderuserid   = emisor.userid
JOIN usuario receptor  ON t.receiveruserid = receptor.userid
JOIN moneda m          ON t.currencyid     = m.currencyid
ORDER BY t.transactiondate DESC;

-- CONSULTA 3: Todas las transacciones de un usuario específico

SELECT
    t.transactionid     AS 'ID',
    emisor.nombre       AS 'Enviado por',
    receptor.nombre     AS 'Recibido por',
    t.importe           AS 'Importe',
    m.currencysymbol    AS 'Moneda',
    t.transactiondate   AS 'Fecha'
FROM transaccion t
JOIN usuario emisor    ON t.senderuserid   = emisor.userid
JOIN usuario receptor  ON t.receiveruserid = receptor.userid
JOIN moneda m          ON t.currencyid     = m.currencyid
WHERE t.senderuserid   = 1
   OR t.receiveruserid = 1
ORDER BY t.transactiondate DESC;
