
/**                   QUERY SQL TASK 5 (FINAL PROJECT)                     **/
/**                        MAYA INDAH NURROHMAH                            **/

==============================================================================
/***  MENAMPILKAN TABEL DATA CUSTOMER, PRODUCTS, STORE, DAN TRANSACTIONS  ***/
==============================================================================

-- Memanggil Tabel data_customer
select*from data_customer

-- Memanggil Tabel data_customer
select*from data_products

-- Memanggil Tabel data_store
select*from data_store

-- Memanggil Tabel data_transactions
select*from data_transactions

==============================================================================
/***         RATA-RATA UMUR CUSTOMER (BERDASARKAN MARITAL STATUS)         ***/
==============================================================================

select 
	maritalstatus,
	avg(age) as average_age
from
	data_customer
group by 
	maritalstatus;

==============================================================================
/***            RATA-RATA UMUR CUSTOMER (BERDASARKAN GENDER)             ***/
==============================================================================

select 
	gender,
	avg(age) as average_age
from
	data_customer
group by 
	gender;

==============================================================================
/***      LEFT JOIN DATA_TRANSACTION X DATA_STORE X DATA_PRODUCTS         ***/
==============================================================================

/* Melakukan left join data_transactions dengan data_store dan data_products */

select*from data_transactions;
select*from data_store;
select*from data_products;

select 
	a.productid,
	c.productname,
	a.quantity,
	a.totalamount,
	a.storeid,
	b.storenama
from
    data_transactions as a
left join  data_store as b
   on a.storeid = b.storeid
left join  data_products as c
   on a.productid = c.productid;

-- kemudian export data dan save as data_question3_question4.csv
-- memanggil dataset data_question3_question4
 
select*from data_question3_question4
  
==============================================================================
/***               NAMA STORE DENGAN TOTAL QUANTITY TERBANYAK             ***/
==============================================================================
  
select 
	storenama,
	sum(quantity) as totalquantity
from
	data_question3_question4
group by 
	storenama
order by 
	totalquantity desc;

==============================================================================
/***               PRODUK DENGAN TOTAL AMOUNT TERBANYAK             ***/
==============================================================================

select*from data_question3_question4

select 
	productname,
	sum(totalamount) as totalamountfinal
from
	data_question3_question4
group by 
	productname
order by 
	totalamountfinal desc;
	
