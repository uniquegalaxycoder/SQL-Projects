-- Leads Table 


create table campaign (
  campaign_id bigint primary key,
  campaign_name varchar(50),
  campaign_date date,
  campaign_cost float(10,2),
  campaign_media varchar(50)
);

create table leads(
  leads_id bigint primary key,
  event_date date,
  event varchar(50),
  phone_number VARCHAR(15) CHECK (phone_number REGEXP '^[0-9]+$'),
  ingested_at datetime,
  campaign_id bigint ,
  foreign key (campaign_id)references campaign(campaign_id)
);

create table sales (
  sales_id bigint primary key,
  assigned_date date,
  calling_campaign varchar(40),
  call_date date,
  invoice_id bigint,
  invoice_date date,
  invoice_amount float(10,2),
  discount_offered float(2,2),
  payment_source varchar(10),
  leads_id bigint,
  foreign key(leads_id)references leads(leads_id)
);

INSERT INTO campaign (campaign_id, campaign_name, campaign_date, campaign_cost, campaign_media) VALUES
(1, 'BrandAwareness_Video_SummerLaunch', '2024-01-01', 56000.00, 'Instagram'),
(2, 'Engagement (likes, shares)', '2024-01-05', 65000.50, 'Facebook'),
(3, 'Pause Ads', '2024-01-10', 29000.00, 'YouTube'),
(4, 'Display Campaigns', '2024-01-12', 50000.00, 'Google'),
(5, 'Seasonal Sale', '2024-01-15', 22500.00, 'Website Traffic');

INSERT INTO leads (leads_id, event_date, event, phone_number, ingested_at, campaign_id) VALUES
( 1,'2024-01-19','ad_click','2801505892','2024-01-20',4 ),
( 2,'2024-03-11','page_view','2871599553','2024-03-12',1 ),
( 3,'2024-01-22','form_submit','2118868287','2024-01-23',5 ),
( 4,'2024-03-14','video_start','2559427358','2024-03-15',5 ),
( 5,'2024-02-08','form_start','2510165585','2024-02-09',4 ),
( 6,'2024-03-26','view_item','8691773000','2024-03-27',5 ),
( 7,'2024-01-31','scroll','4536739195','2024-02-01',2 ),
( 8,'2024-02-23','click','3610730152','2024-02-24',4 ),
( 9,'2024-01-11','page_visit','8228406734','2024-01-12',3 ),
( 10,'2024-03-25','view_search_results','3165173852','2024-03-26',2 ),
( 11,'2024-01-29','form_submit','7986640597','2024-01-30',5 ),
( 12,'2024-02-25','ad_click','9288282685','2024-02-26',3 ),
( 13,'2024-03-05','video_start','253517805','2024-03-06',5 ),
( 14,'2024-03-31','form_start','8041485292','2024-04-01',5 ),
( 15,'2024-01-13','page_view','1390719684','2024-01-14',4 ),
( 16,'2024-03-02','view_item','7128883742','2024-03-03',5 ),
( 17,'2024-03-30','scroll','1566322967','2024-03-31',3 ),
( 18,'2024-02-10','click','8863017913','2024-02-11',4 ),
( 19,'2024-02-08','page_visit','8657152522','2024-02-09',1 ),
( 20,'2024-03-24','view_search_results','4291731073','2024-03-25',3 ),
( 21,'2024-03-29','form_submit','3664894065','2024-03-30',4 ),
( 22,'2024-03-15','ad_click','6178803769','2024-03-16',3 ),
( 23,'2024-01-14','video_start','3620057570','2024-01-15',2 ),
( 24,'2024-03-12','form_start','6801182055','2024-03-13',3 ),
( 25,'2024-03-31','page_view','7895592421','2024-04-01',3 ),
( 26,'2024-01-18','view_item','7147457502','2024-01-19',2 ),
( 27,'2024-01-10','scroll','1039024983','2024-01-11',2 ),
( 28,'2024-03-10','click','7671472626','2024-03-11',1 ),
( 29,'2024-03-24','page_visit','7207285068','2024-03-25',3 ),
( 30,'2024-01-23','form_submit','4898494360','2024-01-24',2 ),
( 31,'2024-03-03','view_search_results','2312676466','2024-03-04',1 ),
( 32,'2024-02-21','form_submit','4034127336','2024-02-22',1 ),
( 33,'2024-02-19','ad_click','6809371722','2024-02-20',3 ),
( 34,'2024-02-19','video_start','9787731215','2024-02-20',5 ),
( 35,'2024-03-27','form_start','102902961','2024-03-28',3 ),
( 36,'2024-03-18','page_view','7889150497','2024-03-19',1 ),
( 37,'2024-01-23','view_item','8154469968','2024-01-24',4 ),
( 38,'2024-03-14','scroll','3321669722','2024-03-15',1 ),
( 39,'2024-03-11','click','518060936','2024-03-12',3 ),
( 40,'2024-03-24','page_visit','1297243189','2024-03-25',1 ),
( 41,'2024-03-12','view_search_results','5068567046','2024-03-13',3 ),
( 42,'2024-01-21','form_submit','165291193','2024-01-22',4 ),
( 43,'2024-02-13','ad_click','389284105','2024-02-14',2 ),
( 44,'2024-02-25','ad_click','1266194197','2024-02-26',4 ),
( 45,'2024-03-08','page_view','7975672357','2024-03-09',4 ),
( 46,'2024-03-31','form_submit','8814430227','2024-04-01',4 ),
( 47,'2024-01-25','video_start','616557798','2024-01-26',4 ),
( 48,'2024-03-07','form_start','7335260587','2024-03-08',1 ),
( 49,'2024-03-06','view_item','3175576690','2024-03-07',1 ),
( 50,'2024-03-22','scroll','5451957570','2024-03-23',5 ),
( 51,'2024-02-02','click','4751004338','2024-02-03',2 ),
( 52,'2024-02-15','page_visit','7742200225','2024-02-16',2 ),
( 53,'2024-03-25','view_search_results','7358664171','2024-03-26',1 ),
( 54,'2024-01-27','form_submit','298170352','2024-01-28',4 ),
( 55,'2024-02-19','ad_click','2159279233','2024-02-20',2 ),
( 56,'2024-01-20','video_start','6911991087','2024-01-21',3 ),
( 57,'2024-03-06','form_start','4418441827','2024-03-07',4 ),
( 58,'2024-02-24','view_search_results','7374697053','2024-02-25',4 ),
( 59,'2024-03-28','form_submit','8205682352','2024-03-29',4 ),
( 60,'2024-01-19','ad_click','5162318712','2024-01-20',3 ),
( 61,'2024-01-21','video_start','9951492137','2024-01-22',2 ),
( 62,'2024-03-25','form_start','1257662713','2024-03-26',3 ),
( 63,'2024-02-07','page_view','811425521','2024-02-08',3 ),
( 64,'2024-01-22','view_item','3522866658','2024-01-23',1 ),
( 65,'2024-03-29','scroll','4039643062','2024-03-30',4 ),
( 66,'2024-01-02','click','5929061143','2024-01-03',2 ),
( 67,'2024-03-02','page_visit','8736815408','2024-03-03',4 ),
( 68,'2024-01-13','view_search_results','129893898','2024-01-14',2 ),
( 69,'2024-01-27','form_submit','2176711867','2024-01-28',4 ),
( 70,'2024-03-17','ad_click','8930984800','2024-03-18',1 ),
( 71,'2024-01-21','ad_click','1980948164','2024-01-22',2 ),
( 72,'2024-03-04','page_view','9784542998','2024-03-05',4 ),
( 73,'2024-03-20','form_submit','7532276021','2024-03-21',1 ),
( 74,'2024-02-19','video_start','8685569093','2024-02-20',5 ),
( 75,'2024-02-29','form_start','8804831462','2024-03-01',3 ),
( 76,'2024-02-13','view_item','4952769415','2024-02-14',3 ),
( 77,'2024-03-03','scroll','5137486353','2024-03-04',1 );

INSERT INTO sales (sales_id, assigned_date, calling_campaign, call_date, invoice_id, invoice_date, invoice_amount, discount_offered, payment_source, leads_id) VALUES
(1,'2024-01-22','Winter_Sale','2024-01-23',101,'2024-01-24', 11500, 0.08, 'Credit', 1 ),
(2,'2024-03-14','Winter_Sale','2024-03-15',102,'2024-03-16', 11200, 0.05, 'Debit', 2 ),
(3,'2024-01-25','Follow_Up',NULL,NULL,NULL, 0, 0, 'None', 3 ),
(4,'2024-01-25','Follow_Up','2024-01-26',103,'2024-01-27', 55500, 0, 'UPI', 3 ),
(5,'2024-03-17','Main_Call','2024-03-18',25,'2024-03-19', 22500, 0.02, 'Credit', 4 ),
(6,'2024-02-11','Direct',NUll,NUll,NULL, 0, 0, 'None', 5 ),
(7,'2024-02-03','Winter_Sale','2024-02-04',720,'2024-02-05', 25000, 0.05, 'Debit', 7 ),
(8,'2024-02-01','Jan_Sales','2024-02-02',NULL,NULL, 0, 0, 'None', 11 ),
(9,'2024-02-01','Jan_Sales','2024-02-02',104,'2024-02-03', 30000, 0.02, 'UPI', 11 ),
(10,'2024-02-28','Direct','2024-02-29',105,'2024-03-01', 56450, 0, 'Credit', 12 ),
(11,'2024-03-08','Main_Call','2024-03-09',106,'2024-03-10', 52100, 0.03, 'Debit', 13 ),
(12,'2024-04-03','Follow_Up','2024-04-04',107,'2024-04-05', 45950, 0, 'UPI', 14 ),
(13,'2024-03-05','Winter_Sale','2024-03-06',NULL,NULL, 0, 0, 'None', 16 ),
(14,'2024-02-13','Direct','2024-02-14',109,'2024-02-15', 41100, 0.05, 'Cash', 18 ),
(15,'2024-04-01','Jan_Sales',NUll,NULL,NULL, 0, 0, 'None', 21 ),
(16,'2024-04-01','Jan_Sales','2024-04-02',110,'2024-04-03', 41800, 0.01, 'UPI', 21 ),
(17,'2024-03-18','Winter_Sale','2024-03-19',111,'2024-03-20', 32700, 0.03, 'Credit', 22 ),
(18,'2024-01-17','Main_Call','2024-01-18',NUll,NULL, 0, 0, 'None', 23 ),
(19,'2024-03-15','Direct','2024-03-16',NULL,NULL, 0, 0, 'None', 24 ),
(20,'2024-03-13','Winter_Sale','2024-03-14',114,'2024-03-15', 93500, 0.02, 'Credit', 28 ),
(21,'2024-03-27','Main_Call','2024-03-28',115,'2024-03-29', 78600, 0, 'Cash', 29 ),
(22,'2024-01-26','Jan_Sales',NULL,NULL,NULL, 0, 0, 'None', 30 ),
(23,'2024-03-29','Direct','2024-03-30',117,'2024-03-31', 89000, 0, 'Debit', 6 ),
(24,'2024-03-28','Follow_Up','2024-03-29',118,'2024-03-30', 20000, 0.04, 'Credit', 10 ),
(25,'2024-01-16','Main_Call','2024-01-17',119,'2024-01-18', 67140, 0, 'UPI', 15 ),
(26,'2024-02-11','Follow_Up','2024-02-12',120,'2024-02-13', 89850, 0.05, 'Cash', 19 ),
(27,'2024-03-27','Direct','2024-03-28',121,'2024-03-29', 90000, 0, 'Credit', 20 ),
(28,'2024-04-03','Winter_Sale','2024-04-04',122,'2024-04-05', 92450, 0, 'Debit', 25 ),
(29,'2024-01-21','Follow_Up','2024-01-22',123,'2024-01-23', 35000, 0.05, 'UPI', 26 ),
(30,'2024-01-13','Main_Call','2024-01-14',124,'2024-01-15', 32000, 0.01, 'Credit', 27 ),
(31,'2024-01-25','Winter_Sale','2024-01-26',201,'2024-01-28', 11500, 0.03, 'Credit', 3 ),
(32,'2024-02-11','Winter_Sale','2024-02-12',202,'2024-02-14', 11200, 0.05, 'Debit', 5 ),
(33,'2024-03-27','Follow_Up',NULL,NULL,NULL, 0, 0, 'None', 29 ),
(34,'2024-01-26','Follow_Up','2024-01-27',203,'2024-01-29', 21000, 0, 'UPI', 30 ),
(35,'2024-03-06','Main_Call','2024-03-07',250,'2024-03-09', 22500, 0.05, 'Credit', 31 ),
(36,'2024-02-24','Direct','2024-02-25',800,'2024-02-27', 88800, 0, 'Cash', 32 ),
(37,'2024-02-22','Winter_Sale','2024-02-23',220,'2024-02-25', 12000, 0.05, 'Debit', 33 ),
(38,'2024-02-22','Jan_Sales',NULL,NULL,NULL, 0, 0, 'None', 34 ),
(39,'2024-03-30','Jan_Sales','2024-03-31',204,'2024-04-02', 30000, 0.02, 'UPI', 35 ),
(40,'2024-03-21','Direct','2024-03-22',305,'2024-03-24', 56450, 0, 'Credit', 36 ),
(41,'2024-01-26','Main_Call','2024-01-27',306,'2024-01-29', 52100, 0.02, 'Debit', 37 ),
(42,'2024-03-17','Follow_Up','2024-03-18',307,'2024-03-20', 45950, 0, 'UPI', 38 ),
(43,'2024-03-14','Winter_Sale','2024-03-15',308,'2024-03-17', 55000, 0.05, 'Credit', 39 ),
(44,'2024-03-27','Direct','2024-03-28',309,'2024-03-30', 41100, 0.05, 'Cash', 40 ),
(45,'2024-03-15','Jan_Sales','2024-03-16',NULL,NULL, 0, 0, 'None', 41 ),
(46,'2024-01-24','Jan_Sales','2024-01-25',310,'2024-01-27', 41800, 0.01, 'UPI', 42 ),
(47,'2024-02-16','Winter_Sale','2024-02-17',Null,NULL, 0, 0, 'None', 43 ),
(48,'2024-02-28','Main_Call','2024-02-29',312,'2024-03-02', 25150, 0, 'Debit', 44 ),
(49,'2024-03-11','Direct','2024-03-12',NULL,NULL, 0, 0, 'None', 45 ),
(50,'2024-04-03','Winter_Sale','2024-04-04',NULL,NULL, 0, 0, 'None', 46 ),
(51,'2024-01-28','Main_Call','2024-01-29',NUll,NULL, 0, 0, 'None', 47 ),
(52,'2024-03-10','Jan_Sales','2024-03-11',316,'2024-03-13', 52500, 0.02, 'UPI', 48 ),
(53,'2024-03-09','Direct','2024-03-10',317,'2024-03-12', 89000, 0, 'Debit', 49 ),
(54,'2024-03-25','Follow_Up','2024-03-26',NULL,NULL, 0, 0, 'None', 50 ),
(55,'2024-02-05','Main_Call','2024-02-06',419,'2024-02-08', 21000, 0, 'UPI', 51 ),
(56,'2024-02-18','Follow_Up','2024-02-19',NULL,NULL, 0, 0, 'None', 52 ),
(57,'2024-03-28','Direct',NULL,NULL,NULL, 0, 0, 'None', 53 ),
(58,'2024-01-30','Winter_Sale','2024-01-31',422,'2024-02-02', 92450, 0, 'Debit', 54 ),
(59,'2024-02-22','Follow_Up','2024-02-23',423,'2024-02-25', 21000, 0.05, 'UPI', 55 ),
(60,'2024-01-23','Main_Call','2024-01-24',424,'2024-01-26', 92900, 0.01, 'Credit', 56 ),
(61,'2024-03-09','Main_Call','2024-03-10',425,'2024-03-12', 90000, 0.02, 'Credit', 57 );

select * from campaign;
select * from leads;
select * from sales;


with cte1 as (
  select 
    a.campaign_id,
    a.campaign_name,
    a.campaign_date,
    a.campaign_cost,
    a.campaign_media,
    b.leads_id,
    b.event_date,
    b.event,
    b.phone_number,
    b.ingested_at,
    c.sales_id,
    c.assigned_date,
    c.calling_campaign,
    c.call_date,
    c.invoice_id,
    c.invoice_date,
    c.invoice_amount,
    c.discount_offered*100,
    c.payment_source
  from campaign as a 
  left join leads as b 
  on a.campaign_id = b.campaign_id
  left join sales as c 
  on b.leads_id = c.leads_id
),

-- 1. Marketing ROI: under the all campaign which media channel is most profitable?

cte2 as (
select 
  campaign_media,
  campaign_name,
  total_investment as "Invetment",
  gross_revenue as "Gross Revenue",
  concat(round((total_discount_value/gross_revenue)*100,2),'%') as "% Discount",
  total_discount_value as "Discount Amount",
  (gross_revenue*(1-discount_ratio))as "Net Revenue",
  round( (gross_revenue - total_investment), 0) as "Net Profit",
  concat(round( ( ( gross_revenue * (1-discount_ratio) )/ total_investment ),2),"%") as "ROI"
from 
    (
      select 
        a.campaign_name,
        a.campaign_media,
        a.campaign_cost as total_investment,
        round(sum(c.invoice_amount),0) as gross_revenue,
        round((sum(c.invoice_amount) * sum(discount_offered) ),0) as total_discount_value,
        round(((sum(c.invoice_amount) * sum(discount_offered) )/sum(c.invoice_amount) ),0) as discount_ratio
      from campaign  as a 
      left join leads as b 
      on a.campaign_id = b.campaign_id
      left join sales as c 
      on b.leads_id = c.leads_id
      group by 
        a.campaign_name,
        a.campaign_media,
        a.campaign_cost
    ) as t1

)

select * from cte2



































