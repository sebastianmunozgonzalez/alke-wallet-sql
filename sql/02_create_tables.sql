-- TABLA MONEDA
CREATE TABLE moneda (
    currencyid     SERIAL        PRIMARY KEY,
    currencyname   VARCHAR(50)   NOT NULL,
    currencysymbol VARCHAR(5)    NOT NULL
);

-- TABLA USUARIO
CREATE TABLE usuario (
    userid             SERIAL        PRIMARY KEY,
    nombre             VARCHAR(100)  NOT NULL,
    correo_electronico VARCHAR(100)  NOT NULL UNIQUE,
    contraseña         VARCHAR(255)  NOT NULL,
    saldo              DECIMAL(15,2) NOT NULL DEFAULT 0
);

-- TABLA TRANSACCION
CREATE TABLE transaccion (
    transactionid   SERIAL        PRIMARY KEY,
    senderuserid    INT           NOT NULL,
    receiveruserid  INT           NOT NULL,
    importe         DECIMAL(15,2) NOT NULL,
    transactiondate TIMESTAMP     DEFAULT CURRENT_TIMESTAMP,
    currencyid      INT           NOT NULL,
    FOREIGN KEY (senderuserid)   REFERENCES usuario(userid),
    FOREIGN KEY (receiveruserid) REFERENCES usuario(userid),
    FOREIGN KEY (currencyid)     REFERENCES moneda(currencyid)
);
