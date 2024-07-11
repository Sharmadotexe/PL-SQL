-- language: plsql


create table vendor(
   vendorID Number Primary Key,
   Vendor_name Varchar2(20),
   ContactName VARCHAR2(100),
   ContactEmail VARCHAR2(100),
   ContactPhone VARCHAR2(20),
   Address VARCHAR2(255)
);

create table items(
 itemId Number Primary Key,
 items_name Varchar2(100),
 Item_description CLOB,
 UnitPrice Number (10,2)
);





CREATE TABLE Buyers (
    BuyerID NUMBER PRIMARY KEY,
    BuyerName VARCHAR2(100),
    Department VARCHAR2(100),
    ContactEmail VARCHAR2(100),
    ContactPhone VARCHAR2(20)
);


create table Purchase_order(
 POnumber Number Primary key,
 VendorID Number,
 OrderDate Date,
 DeliveryDate Date,
 StatusId Number,
 TotalPrice Number(10,2),
 PaymentTerms VARCHAR2(100),
 Comments CLOB,
 ChargeAccountID NUMBER
);


CREATE TABLE ShipmentHeader (
    ShipmentID NUMBER PRIMARY KEY,
    ShipmentNumber VARCHAR2(20),
    ShipmentDate DATE,
    PONumber NUMBER,
    FOREIGN KEY (PONumber) REFERENCES Purchase_order(PONumber)
);


CREATE TABLE ShipmentLines (
    ShipmentLineID NUMBER PRIMARY KEY,
    ShipmentID NUMBER,
    ItemID NUMBER,
    QuantityShipped NUMBER,
    FOREIGN KEY (ShipmentID) REFERENCES ShipmentHeader(ShipmentID),
    FOREIGN KEY (ItemID) REFERENCES Items(ItemID)
);



CREATE TABLE Statuses (
    StatusID NUMBER PRIMARY KEY,
    StatusName VARCHAR2(50)
);


describe statuses;






SELECT p.PONUMBER, v.VENDORID, p.DELIVERYDATE, s.STATUSNAME
FROM Purchase_order p
INNER JOIN Vendor v ON p.VendorID = v.VendorID
INNER JOIN STATUSES s ON  p.STATUSID = s.STATUSID;




SELECT
    a.CONSTRAINT_NAME,
    a.TABLE_NAME AS CHILD_TABLE,
    c.COLUMN_NAME AS CHILD_COLUMN,
    a.R_CONSTRAINT_NAME,
    b.TABLE_NAME AS PARENT_TABLE,
    d.COLUMN_NAME AS PARENT_COLUMN
FROM
    USER_CONSTRAINTS a
    JOIN USER_CONS_COLUMNS c ON a.CONSTRAINT_NAME = c.CONSTRAINT_NAME
    JOIN USER_CONSTRAINTS b ON a.R_CONSTRAINT_NAME = b.CONSTRAINT_NAME
    JOIN USER_CONS_COLUMNS d ON b.CONSTRAINT_NAME = d.CONSTRAINT_NAME
WHERE
    a.CONSTRAINT_TYPE = 'R'
    AND b.TABLE_NAME = 'PURCHASE_ORDER';
  

--
SELECT p.PONUMBER, v.VENDORID, p.DELIVERYDATE,v.VENDOR_NAME, v.CONTACTNAME, v.CONTACTPHONE
FROM Purchase_order p
FULL JOIN Vendor v ON p.VendorID = v.VendorID
WHERE v.VENDOR_NAME='Vendor A';



SELECT p.PONUMBER, v.VENDORID, p.DELIVERYDATE,v.VENDOR_NAME, v.CONTACTNAME, v.CONTACTPHONE
FROM Purchase_order p
FULL JOIN Vendor v ON p.VendorID = v.VendorID
WHERE v.VENDOR_NAME='Vendor A';




SELECT * FROM VENDOR

SELECT * FROM PURCHASE_ORDER;


SELECT *
FROM Purchase_order p
RIGHT JOIN Vendor v ON p.VendorID = v.VendorID;