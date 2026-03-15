USE AlkeWallet;

-- TABLA MONEDA
CREATE TABLE moneda (
    currencyid     INT          PRIMARY KEY AUTO_INCREMENT,
    currencyname   VARCHAR(50)  NOT NULL,
    currencysymbol VARCHAR(5)   NOT NULL
);

-- TABLA USUARIO
CREATE TABLE usuario (
    userid             INT           PRIMARY KEY AUTO_INCREMENT,
    nombre             VARCHAR(100)  NOT NULL,
    correo_electronico VARCHAR(100)  NOT NULL UNIQUE,
    contraseña         VARCHAR(255)  NOT NULL,
    saldo              DECIMAL(15,2) NOT NULL DEFAULT 0
);

-- TABLA TRANSACCION
CREATE TABLE transaccion (
    transactionid   INT           PRIMARY KEY AUTO_INCREMENT,
    senderuserid    INT           NOT NULL,
    receiveruserid  INT           NOT NULL,
    importe         DECIMAL(15,2) NOT NULL,
    transactiondate DATETIME      DEFAULT CURRENT_TIMESTAMP,
    currencyid      INT           NOT NULL,
    FOREIGN KEY (senderuserid)   REFERENCES usuario(userid),
    FOREIGN KEY (receiveruserid) REFERENCES usuario(userid),
    FOREIGN KEY (currencyid)     REFERENCES moneda(currencyid)
);

-- Verificar tablas creadas
SHOW TABLES;
DESCRIBE usuario;
DESCRIBE moneda;
DESCRIBE transaccion;
