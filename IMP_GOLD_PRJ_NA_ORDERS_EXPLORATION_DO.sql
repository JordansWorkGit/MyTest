1.INVALIDATE METADATA



invalidate metadata @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_tmp;
invalidate metadata @DB_LEVEL@_edm_gold.f_sales_order_line;
invalidate metadata @DB_LEVEL@_edm_gold.f_sales_order_line_extn;
invalidate metadata @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na;
invalidate metadata @DB_LEVEL@_edm_gold.f_sales_invoice_line;
invalidate metadata @DB_LEVEL@_edm_gold.d_org;
invalidate metadata @DB_LEVEL@_cld_oraerp_silver.inv_organization_definitions_v;
invalidate metadata @DB_LEVEL@_cld_cpq_silver.cpq_quote_headers;
invalidate metadata @DB_LEVEL@_ora_alice_gold.d_contractsubline;
invalidate metadata @DB_LEVEL@_ora_alice_gold.d_contractheader;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_csi_item_instances;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_CSI_INST_EXTEND_ATTRIB_V;
invalidate metadata @DB_LEVEL@_mdm_hub_gold.d_customer_header_v;
invalidate metadata @DB_LEVEL@_edm_gold.d_party;
invalidate metadata @DB_LEVEL@_edm_gold.d_legacy_customer_account;
invalidate metadata @DB_LEVEL@_mdm_hub_gold.d_customer_address_v;
invalidate metadata @DB_LEVEL@_edm_gold.d_legacy_customer_loc;
invalidate metadata @DB_LEVEL@_edm_gold.d_product;
invalidate metadata @DB_LEVEL@_edm_gold.d_product_catalog;
invalidate metadata @DB_LEVEL@_edm_gold.d_sales_rep;
invalidate metadata @DB_LEVEL@_cld_cpq_silver.cpq_dt_salesrepdetails;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_sku;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.ref_accountsflag_sku;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.ref_customerparentaccounts; 
invalidate metadata @DB_LEVEL@_ershvm_silver.hvm_ers_projectmaster;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.sku_gph_lookup;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.customer_data;
invalidate metadata @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_bookings;
invalidate metadata @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_sales_order;
invalidate metadata @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_business;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.GSA_Customer_LES;
invalidate metadata @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_address;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.parent_account_type;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.enterprise_industry;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.parent_gsc;
invalidate metadata @DB_LEVEL@_edm_gold.d_xrate;
invalidate metadata @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_shipment;
invalidate metadata @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_shipment_line;
invalidate metadata @DB_LEVEL@_cld_oraerp_silver.doo_fulfill_lines_all;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.rep_office_info;
invalidate metadata @DB_LEVEL@_impartner_silver.account;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.Varsdatabase_Sellingmotion;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_oe_order_lines_all;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_oe_order_headers_all;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_accounts;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.cpq_commission_split_tbl;
invalidate metadata @DB_LEVEL@_cld_cpq_silver.cpq_commission_split_clean;
invalidate metadata @DB_LEVEL@_sql_saleswh_silver.supplier_classification;
invalidate metadata @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_bkp;
invalidate metadata @DB_LEVEL@_na_cld_osc_gold.orders_exploration_alice_commn_temp_na;
invalidate metadata @DB_LEVEL@_sql_saleswh_gold.LES_commission_split_vw;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.Commissions_territory_tmp_tbl;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.Commissions_non_territory_tmp_tbl;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.Commissions_territory_tmp1_tbl;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.Commissions_non_territory_tmp1_tbl;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.Orders_Commissions_stage_tbl;
invalidate metadata @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_tmp1;

invalidate metadata @DB_LEVEL@_geist_silver.geist_orders;
invalidate metadata @DB_LEVEL@_geist_silver.geist_hist_orders;
invalidate metadata @DB_LEVEL@_geist_silver.geist_arcusto;
invalidate metadata @DB_LEVEL@_geist_silver.geist_ship_to;
invalidate metadata @DB_LEVEL@_geist_silver.geist_bill_to;
invalidate metadata @DB_LEVEL@_GEIST_SILVER.GEIST_ORD_DETAIL;
invalidate metadata @DB_LEVEL@_GEIST_SILVER.GEIST_HIST_ORD_DETAIL;
invalidate metadata @DB_LEVEL@_GEIST_SILVER.geist_ORD_DETAIL_COMMISSIONS;
invalidate metadata @DB_LEVEL@_geist_silver.geist_salespeople;
invalidate metadata @DB_LEVEL@_geist_silver.geist_pce_multicurrency_usd_order;
invalidate metadata @DB_LEVEL@_geist_silver.geist_releases;
invalidate metadata @DB_LEVEL@_geist_silver.geist_hist_releases;
invalidate metadata @DB_LEVEL@_geist_silver.geist_G_Arinvt_Tech_Info;
invalidate metadata @DB_LEVEL@_geist_silver.geist_arinvt;
invalidate metadata @DB_LEVEL@_geist_silver.geist_eplant;
invalidate metadata @DB_LEVEL@_geist_silver.geist_currency;



2.orders_exploration_data_na_tmp

insert overwrite @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_tmp
select
row_wid ,
party_wid ,
bill_to_customer_account_wid ,
ship_to_customer_account_wid ,
sold_to_customer_account_wid ,
end_customer_account_wid ,
bill_to_customer_loc_wid ,
ship_to_customer_loc_wid ,
sold_to_customer_loc_wid ,
end_customer_loc_wid ,
product_wid ,
operating_unit_org_wid ,
inventory_org_wid ,
sales_rep_wid ,
sub_region_wid ,
order_create_dt_wid ,
order_delivery_promise_dt_wid ,
customer_requested_dt_wid ,
actual_shipment_dt_wid ,
order_line_create_dt_wid ,
legacy_party_id ,
legacy_bill_to_customer_account_id ,
legacy_bill_to_customer_loc_id ,
legacy_ship_to_customer_account_id ,
legacy_ship_to_customer_loc_id ,
legacy_sold_to_customer_account_id ,
legacy_sold_to_customer_loc_id ,
legacy_end_customer_account_id ,
legacy_end_customer_loc_id ,
legacy_product_id ,
a.product_num ,
customer_account_num ,
sales_order_status_cd ,
sales_order_line_status_cd ,
sales_order_type_cd ,
sales_order_ship_method ,
a.order_num ,
a.order_line_num ,
order_detail_line_num ,
order_source ,
order_shipment_priority_cd ,
customer_po_num ,
payment_term_cd ,
freight_term_cd ,
order_cancelled_flg ,
return_reason_cd ,
sales_channel ,
order_category_cd ,
customer_requested_dt ,
order_create_dt ,
order_acknowledged_dt ,
order_booked_dt ,
order_delivery_promise_dt ,
schedule_shipment_dt ,
actual_shipment_dt ,
last_order_acknowledged_dt ,
schedule_arrival_dt ,
customer_arrival_dt ,
order_line_create_dt ,
cancelled_qty ,
shipped_qty ,
/*case 
	when a.src_system_name = 'ALICE' 
	then pao.sum_order_qty
	else a.ordered_qty 
end as ordered_qty , -- SV-05Apr2022 New requirement with Joining condition.*/
a.ordered_qty, -- SV-25Apr2022 Above feature has been desabled until we dont know how to remove duplicates.
invoiced_qty ,
sale_usd_amt ,
sale_lcl_amt ,
unit_selling_price_usd_amt ,
unit_selling_price_lcl_amt ,
unit_list_price_usd_amt ,
unit_list_price_lcl_amt ,
order_return_flg ,
return_reference ,
legacy_reporting_flg ,
legacy_inventory_org_id ,
legacy_operating_unit_org_id ,
order_clssfctn ,
project_type_desc ,
project_ref ,
parent_order_num ,
parent_order_detail_line_num ,
sales_office_number ,
sales_office_name ,
uom_cd ,
sales_order_line_type ,
end_user_co_type ,
product_application ,
order_cancel_reason ,
order_cancel_comment ,
subinventory ,
quote_ref ,
demand_class_cd ,
key_account ,
emea_legacy_sales_country_cd ,
emea_legacy_sales_region_cd ,
legacy_orig_ref_num ,
integration_id ,
w_insert_dtm ,
w_insert_by ,
w_update_dtm ,
w_update_by ,
src_update_dtm ,
sale_trx_amt ,
unit_selling_price_trx_amt ,
unit_list_price_trx_amt ,
lcl_currency_cd ,
trx_currency_cd ,
customer_po_dt ,
src_order_line_insert_by ,
src_order_line_last_update_by ,
customer_po_receipt_dt ,
project_id BIG,
task_id BIG,
header_creation_dt ,
a.src_system_name ,
top_model_line_id ,
ulp_a ,
sua_a ,
elp_a
from 
(
select
ordr.*,'' top_model_line_id, 0 ulp_a,0 sua_a,0 elp_a, '' header_creation_dt
from
@DB_LEVEL@_edm_gold.f_sales_order_line ordr
where
(ordr.src_system_name IN ('ORACLEERPCLOUD', 'ERS_HVM', 'SAP_AVOCENT', 'SAP_ESNA')
or (ordr.src_system_name = 'LES' and (ordr.shipped_qty != 0 or shipped_qty is null)))
Union
-- Query to only include topmodellineid with lineid
select
ordr.*,cast(ordr_extn.top_model_line_id as string) top_model_line_id , ordr_agg.ulp_a,ordr_agg.sua_a,ordr_agg.elp_a, '' header_creation_dt
from
@DB_LEVEL@_edm_gold.f_sales_order_line ordr
inner join
(select *
from @DB_LEVEL@_edm_gold.f_sales_order_line_extn
WHERE src_system_name IN ('ALICE')
AND cast(top_model_line_id as string) = cast(integration_id as string)
) ordr_extn
on ordr_extn.row_wid = ordr.row_wid
inner join
(select
ordr.order_num,ordr_extn.top_model_line_id, sum(ordr.unit_list_price_usd_amt) ulp_a,sum(ordr.sale_usd_amt) sua_a,sum(ordr.unit_list_price_usd_amt * CAST(ordr.ordered_qty AS DOUBLE)) elp_a from
@DB_LEVEL@_edm_gold.f_sales_order_line ordr
inner join
(select *
from @DB_LEVEL@_edm_gold.f_sales_order_line_extn
WHERE src_system_name IN ('ALICE')
) ordr_extn
on ordr_extn.row_wid = ordr.row_wid
and ordr.src_system_name IN ('ALICE')
group by ordr.order_num,ordr_extn.top_model_line_id
) ordr_agg
on ordr_agg.order_num = ordr.order_num and cast(ordr_agg.top_model_line_id as string) = cast(ordr_extn.top_model_line_id as string)
and ordr.src_system_name IN ('ALICE')
Union
-- Query to exclude topmodellineid with lineid orders & its child data and include others.
select
ordr.*,cast(ordr_extn.top_model_line_id as string) top_model_line_id, 0 ulp_a,0 sua_a,0 elp_a, '' header_creation_dt
from
@DB_LEVEL@_edm_gold.f_sales_order_line ordr
inner join
(select *
from @DB_LEVEL@_edm_gold.f_sales_order_line_extn
WHERE src_system_name IN ('ALICE')
and row_wid not in
(select row_wid
from @DB_LEVEL@_edm_gold.f_sales_order_line_extn
WHERE src_system_name IN ('ALICE')
AND cast(top_model_line_id as string) in
(
select cast(top_model_line_id as string)
from @DB_LEVEL@_edm_gold.f_sales_order_line_extn
WHERE src_system_name IN ('ALICE')
AND cast(top_model_line_id as string) = cast(integration_id as string)
)
)
) ordr_extn
on ordr_extn.row_wid = ordr.row_wid
and ordr.src_system_name IN ('ALICE')
)a
/*LEFT OUTER JOIN -- SV-05Apr2022 New code logic inserted as a join condition to include cancelled orders. With this change we would see existing order and cancelled Order for same line number.
(
	SELECT order_num,order_line_num,src_system_name,product_num,snpsht_dt_cd,cast(sum(ordered_qty) as  DECIMAL(25,8)) sum_order_qty,sum(cancelled_qty) sum_cancl_qty,sum(sale_usd_amt) sum_usd_amt
	FROM @DB_LEVEL@_edm_gold.f_sales_order_line_tracker
	where src_system_name = 'ALICE' --and order_num = '1055023' and  order_line_num like '1' and product_num = 'FLEX17-BATT-HEAT-PAD-NX-OC'
	group by order_num,order_line_num,src_system_name,product_num, snpsht_dt_cd
	having sum(ordered_qty) != 0
) pao
on a.order_num = pao.order_num and a.order_line_num = pao.order_line_num and a.src_system_name = pao.src_system_name and a.product_num = pao.product_num*/
where upper(a.sales_order_status_cd) not in ('FORECASTED ORDER','ENTERED','IR ISO ORDER US','IR ISO ORDER CA') -- <SV 20042022 This condition was intraduced as part of filtering Non Booked orders>
;

compute stats @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_tmp;


3.Insert_into_orders_exploration


insert overwrite @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na
SELECT
    account_type_aop,
	AccountAM,
	AccountCSM,
	AccountLead,
	AccountPresence,
	AccountServiceSales,
	AccountSubType,
	AccountType,
	upper(AOP_Account_Name),
	AOP_Category,
	BillToAccountRole,
	upper(BillToCustomer),
	upper(BillToCustomerAddress),
	upper(BillToCustomerCustomerType1),
	upper(BillToCustomerEnterpriseIndustry),
	upper(BillToCustomerGSC),
	upper(BillToCustomerIndustry1),
	upper(BillToCustomerName) BillToCustomerName,
	upper(BillToCustomerName2),
	BillToCustomerNumber,
	upper(BillToCustomerParentAccount),
	BillToCustomerPostalCode,
	upper(BillToCustomerStandardizedName),
	upper(BillToCustomerVertical),
	bsid,
	ChannelFlag,	
	upper(COE),
	upper(COE_New),
	ContractType,
	CustomerPurchaseOrderNumber,
	CustomerRequestDate,
	Data_Last_Refreshed,
	upper(EndCustomer),
	upper(EndCustomerAccountRole),
	upper(EndCustomerAddress),
	upper(EndCustomerCity),
	upper(EndCustomerCountry),
	upper(EndCustomerCustomerType1),
	upper(EndCustomerEnterpriseIndustry),
	upper(EndCustomerGSC),
	upper(EndCustomerIndustry1),
	upper(EndCustomerName) EndCustomerName,
	EndCustomerNumber,
	upper(EndCustomerParentAccount),
	EndCustomerPostalCode,
	upper(EndCustomerStandardizedExists),
	upper(EndCustomerStandardizedName),
	upper(EndCustomerState),
	upper(EndCustomerState2),
	upper(EndCustomerVertical),
	ExchangeRateUsed,
	ExtendedListPrice,
	upper(GBU),
	growth_target,
	alicecommissionoverridepercent,
	upper(Level_6),
	ListPrice,
	upper(LOB),
	NetSalesRevenue,
	Office_Group,
	office_website,
	OrderCoordinator,
	OrderCreateDate,
	OrderLastUpdateDate,
	OrderEXLineNumber,
	PartnerWebFolderID,
	PartnerWebQuoteNumber,
	Plant,
	PlantDescription,
	upper(Product_Category),
	upper(Product_Category_New),
	upper(Product_Family),
	upper(Product_Family_New),
	PROShipmentNumber,
	QuantityOrdered,
	quoteid,
	UPPER(RecordSource) RecordSource,
	SalesOfficeName,
	SalesOfficeNumber,
	SalesOfficePrincipalEmail,
	SalesOfficeReferenceNumber,
	SalesOrderNumber,
	SalesRegionName,
	SalesRegionNumber,
	SalesRepEmail,
	SalesRepID,
	SalesRepName,
	SalesRepType,
	SAPOEMTag,
	Selling_Motion,
	OrderDeliveryPromisedDate,
	Segment,
	SFR_Category,
	ShipDate,
	ShipmentCarrierName,
	ShippedQuantity,
	upper(ShipToCustomerAddress),
	upper(ShipToCustomerCountry),
	upper(ShipToCustomerCustomerType1),
	upper(ShipToCustomerEnterpriseIndustry),
	upper(ShipToCustomerGSC),
	upper(ShipToCustomerIndustry1),
	upper(ShipToCustomerName)ShipToCustomerName,
	ShipToCustomerNumber,
	upper(ShipToCustomerParentAccount),
	upper(ShipToCustomerStandardizedName),
	upper(ShipToCustomerVertical),
	sizecategory,
	upper(SKU_rollup),
	upper(SKUDescription),
	SMSBatteriesOnlyFlag,
	SMSBatteryRBSM,
	SMSContractEndDate,
	SMSContractExpireDate,
	SMSContractPMs,
	SMSContractSequence,
	SMSContractStartDate,
	SMSContractStatus,
	SMSCustomerType,
	SMSEquipmentSegment,
	SMSRevCat,
	SMSSiteId,
	SMSStackedWhenBooked,
	SMSTagNumber,
	SMSTicketNumber,
	SMSTicketType,
	upper(SoldToCustomerCustomerType1),
	upper(SoldToCustomerEnterpriseIndustry),
	upper(SoldToCustomerGSC),
	upper(SoldToCustomerIndustry1),
	upper(SoldToCustomerName) SoldToCustomerName,
	upper(SoldToCustomerParentAccount),
	upper(SoldToCustomerStandardizedName),
	upper(SoldToCustomerVertical),
	SPEED_DIAL,
	Sales_Area,
	effective_user() as w_insert_by,
	now() as w_insert_dtm,
    'SalesOps' as src_system_name,
    resellernumber,
	resellerbranchnumber,
	resellerbranchname,
	office_type,
	uom,
	sales_order_line_type,
	Order_type,
	Class_code,
	OEM_FLAG,
	--SO-621 new attributes addition starts
	upper(BillToCustomerClassCode),
	upper(EndCustomerClassCode),
	upper(ShipToCustomerClassCode),
	upper(SoldToCustomerClassCode),
	upper(BillToCustomerPartnerClassCode),
	upper(EndCustomerPartnerClassCode),
	upper(ShipToCustomerPartnerClassCode),
	upper(SoldToCustomerPartnerClassCode),
	BillToOracleRegistryID, 
	EndOracleRegistryID,
	ShipToOracleRegistryID,
	SoldToOracleRegistryID,
	upper(BillToCustomerIndustry3),
	upper(EndCustomerIndustry3),
	upper(ShipToCustomerIndustry3),
	upper(SoldToCustomerIndustry3),
	upper(BillToCustomerSubVertical),
	upper(EndCustomerSubVertical),
	upper(ShipToCustomerSubVertical),
	upper(SoldToCustomerSubVertical),
	upper(BillToReportingSubParent1),
	upper(EndReportingSubParent1),
	upper(ShipToReportingSubParent1),
	upper(SoldToReportingSubParent1),
	BillToDefinitiveIDNID,
	EndDefinitiveIDNID,
	ShipToDefinitiveIDNID,
	SoldToDefinitiveIDNID,
	BillToDefinitiveIDNIDParentID,
	EndDefinitiveIDNIDParentID,
	ShipToDefinitiveIDNIDParentID,
	SoldToDefinitiveIDNIDParentID,
	BillToNCESLEAID,
	EndNCESLEAID,
	ShipToNCESLEAID,
	SoldToNCESLEAID,
	upper(SoldToCustomerAddress),
	upper(BillToCustomerCity),
	upper(ShipToCustomerCity),
	upper(SoldToCustomerCity),
	upper(BillToCustomerState),
	upper(ShipToCustomerState),
	upper(SoldToCustomerState),
	upper(BillToCustomerProvince),
	upper(EndCustomerProvince),
	upper(ShipToCustomerProvince),
	upper(SoldToCustomerProvince),
	upper(BillToCustomerCountry),
	upper(SoldToCustomerCountry),
	ShipToCustomerPostalCode,
	SoldToCustomerPostalCode,
	BillToOraclePartySiteNumber,  
	EndOraclePartySiteNumber,
	ShipToOraclePartySiteNumber,
	SoldToOraclePartySiteNumber,
	BillToDefinitiveID,
	EndDefinitiveID,
	ShipToDefinitiveID,
	SoldToDefinitiveID,
	BillToNCESSCHID,
	EndNCESSCHID,
	ShipToNCESSCHID,
	SoldToNCESSCHID,
	--so-621 new atttributes addition ends
	--so-661 new attributes addition starts
	upper(BillToAccountType),
	upper(EndAccountType),
	upper(ShipToAccountType),
	upper(SoldToAccountType),
	--so-661 new attributes addition ends
	productcommissionclasscode,
	'Orders' as Measure,
	Calendar_Month,
	Calendar_Year,
	Local_Currency,
	Sales_Office,
	Unit_Price,
	UNIT_PRICE_FXD_USD,
	upper(BillToServicesMajorAcc),--so-665 new attributes addition starts
	upper(EndServicesMajorAcc),
	upper(ShipToServicesMajorAcc),
	upper(SoldToServicesMajorAcc),--so-665 new attributes addition ends
	upper(BillToCustomerSubClass), --so-728 new attributes addition starts
    upper(EndCustomerSubClass),
    upper(ShipToCustomerSubClass),
    upper(SoldToCustomerSubClass), --so-728 new attributes addition ends
	upper(aop_customer_sub_class)
from (
  SELECT
	*,
	CASE
WHEN trim(upper(account_type_aop)) = 'VERTIV DIRECT ACCOUNT' THEN 'N'
WHEN upper(account_type_aop) = 'ENTERPRISE ACCOUNT' AND upper(office_type) = 'LVO' AND (upper(sizecategory) = 'PROJECT' OR  upper(sizecategory) = 'FLOW')  THEN 'Y'
WHEN upper(account_type_aop) = 'VERTIV NAMED ACCOUNT' AND upper(office_type) = 'LVO' AND upper(sizecategory) = 'FLOW' THEN 'Y'
WHEN upper(account_type_aop) = 'CHANNEL' THEN 'Y'
WHEN upper(account_type_aop) = 'VERTIV STRATEGIC ACCOUNT' THEN 'N'
WHEN upper(lob) = 'DC POWER' AND upper(endcustomerparentaccount) LIKE '%CENTURYLINK%' THEN 'N'
WHEN upper(lob) = 'DC POWER' AND upper(endcustomerparentaccount) LIKE '%CHARTER%' THEN 'N'
WHEN upper(lob) = 'DC POWER' AND upper(endcustomerparentaccount) LIKE '%COX%' THEN 'N'
WHEN upper(lob) = 'DC POWER' AND upper(endcustomerparentaccount) LIKE '%COMCAST%' THEN 'N'
WHEN upper(lob) = 'DC POWER' AND upper(endcustomerparentaccount) LIKE '%FRONTIER%' THEN 'N'
WHEN upper(endcustomerindustry1) LIKE '%MILITARY%' AND product_category like '%SECURE%' THEN 'N'
WHEN upper(endcustomerindustry1) LIKE '%INTEL%' AND product_category like '%SECURE%' THEN 'N'
WHEN upper(endcustomerindustry1) LIKE '%CIVILIAN%' AND product_category like '%SECURE%' THEN 'N'
WHEN upper(endcustomerparentaccount) LIKE '%UNITED STATES%' AND product_category like '%SECURE%' THEN 'N'
WHEN upper(endcustomerparentaccount) LIKE '%NASA%' AND product_category like '%SECURE%' THEN 'N'
WHEN upper(endcustomerparentaccount) LIKE '%MANTECH INTERNATIONAL%' AND product_category like '%SECURE%' THEN 'N'
WHEN upper(endcustomerparentaccount) LIKE '%NORTHROP GRUMMAN%' AND product_category LIKE '%SECURE%' THEN 'N'
WHEN upper(level_6) = 'SWITCHVIEW SECURE HARDWARE'
OR upper(selling_motion) = 'INTERCOMPANY - CANADA'
OR upper(lob) = 'DC POWER'
OR upper(selling_motion) = 'INTERCOMPANY'
OR upper(endcustomerparentaccount) LIKE '%WORLD WIDE TECH%'
OR upper(billtocustomerparentaccount) LIKE '%WORLD WIDE TECH%'
OR upper(endcustomername) LIKE '%WORLD WIDE TECH%'
OR upper(resellerbranchname) LIKE '%WORLD WIDE TECH%' THEN 'N'
WHEN trim(smscustomertype) IN ('M01','M02','M03','M04','M05','M06','M07','M08', 'M09','M10') THEN 'N'
WHEN upper(lob) = 'OTHER'
OR upper(lob) = 'N/A'
OR upper(lob) = 'EXCLUDE'
OR upper(lob) = 'NO ASSIGNMENT'
OR upper(lob) = 'TARIFF'
OR upper(selling_motion) = 'ACCOUNT'  THEN 'N'
ELSE 'Y'
END growth_target

FROM
	(
	SELECT
		DISTINCT *,
		CASE
	--WHEN nvl(account_type_aop1, 'N') != 'N' THEN upper(account_type_aop1)
    WHEN selling_motion = 'CHANNEL'
         AND upper(account_type_aop1) NOT IN ('VERTIV DIRECT ACCOUNT',
                                              'VERTIV NAMED ACCOUNT',
                                              'VERTIV STRATEGIC ACCOUNT','FEDERAL') THEN 'CHANNEL'
    WHEN (selling_motion = 'FIELD SALES'
         AND upper(account_type_aop1) NOT IN ('VERTIV DIRECT ACCOUNT',
                                              'VERTIV NAMED ACCOUNT',
                                              'VERTIV STRATEGIC ACCOUNT',
                                              'CHANNEL','FEDERAL')) THEN 'ENTERPRISE ACCOUNT'
											  /* OR 
	upper(account_type_aop1) NOT IN ('VERTIV DIRECT ACCOUNT',
                                          'VERTIV STRATEGIC ACCOUNT',
                                          'CHANNEL',
                                          'VERTIV NAMED ACCOUNT') THEN 'ENTERPRISE ACCOUNT' */
    /* WHEN upper(account_type_aop1) NOT IN ('VERTIV DIRECT ACCOUNT',
                                          'VERTIV STRATEGIC ACCOUNT',
                                          'CHANNEL',
                                          'VERTIV NAMED ACCOUNT') THEN 'ENTERPRISE ACCOUNT' */
    WHEN upper(selling_motion) = 'ERS/HVM' THEN 'ERS/HVM'
    --WHEN nvl(accounttypeaop, 'N') != 'N' AND accounttypeaop = 'Federal' THEN upper(accounttypeaop)
   -- WHEN nvl(accounttypeaop1, 'N') != 'N' AND accounttypeaop = 'Federal' THEN upper(accounttypeaop1)
	-- WHEN upper(product_category) LIKE '%SECURE%' THEN 'FEDERAL'
    ELSE account_type_aop1
END account_type_aop

from(
select distinct *,
CASE
		WHEN temp_motion2 = 'FIELD SALES'
		AND (upper(lob) != 'DC POWER'
		OR (nvl(lob,
		'N') = 'N'))
		AND (upper(billtocustomerpartnerclasscode) IN ('SOLUTIONS PARTNER', 'AUTHORIZED DISTRIBUTOR')
		OR upper(recordsource) LIKE '%CONTEXT%'
		OR upper(oem_flag) = 'DELL'
		OR upper(level_6) LIKE '%SECURE%') THEN 'CHANNEL'
		ELSE temp_motion2
	END selling_motion --Modified by Hari SO-689

 
 FROM
    (
	 SELECT
		 DISTINCT *,
			CASE
WHEN nvl(accounttypeaop, 'N') != 'N' THEN upper(accounttypeaop)
WHEN nvl(accounttypeaop1, 'N') != 'N' THEN upper(accounttypeaop1)
/* WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(billtocustomerparentACCOUNT) not like '%COMCAST%' THEN 'VERTIV DIRECT ACCOUNT'
WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(billtocustomerparentACCOUNT) not like '%COX COMMUNICATIONS%' THEN 'VERTIV DIRECT ACCOUNT'
WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(billtocustomerparentACCOUNT) not like '%FRONTIER COMMUNICATIONS%' THEN 'VERTIV DIRECT ACCOUNT'
WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(billtocustomerparentACCOUNT) not like '%CHARTER COMMUNICATIONS%' THEN 'VERTIV DIRECT ACCOUNT'
WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(billtocustomerparentACCOUNT) not like '%CENTURYLINK%' THEN 'VERTIV DIRECT ACCOUNT'
WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(endcustomerparentACCOUNT) not like '%COMCAST%' THEN 'VERTIV DIRECT ACCOUNT'
WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(endcustomerparentACCOUNT) not like '%COX COMMUNICATIONs%' THEN 'VERTIV DIRECT ACCOUNT'
WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(endcustomerparentACCOUNT) not like '%FRONTIER COMMUNICATIONS%' THEN 'VERTIV DIRECT ACCOUNT'
WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(endcustomerparentACCOUNT) not like '%CHARTER COMMUNICATIONS%' THEN 'VERTIV DIRECT ACCOUNT'
WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(endcustomerparentACCOUNT) not like '%CENTURYLINK%' THEN 'VERTIV DIRECT ACCOUNT'
 */-- Modified by Hari on 24 Mar 2022
WHEN upper(lob) = 'DC POWER' and upper(billtocustomervertical) = 'TELECOM' and upper(billtocustomerparentACCOUNT) not like '%COMCAST%' 
and upper(billtocustomerparentACCOUNT) not like '%COX COMMUNICATIONS%' 
and upper(billtocustomerparentACCOUNT) not like '%FRONTIER COMMUNICATIONS%' 
and upper(billtocustomerparentACCOUNT) not like '%CHARTER COMMUNICATIONS%' 
and upper(billtocustomerparentACCOUNT) not like '%CENTURYLINK%' 
and upper(endcustomerparentACCOUNT) not like '%COMCAST%' 
and upper(endcustomerparentACCOUNT) not like '%COX COMMUNICATIONs%' 
and upper(endcustomerparentACCOUNT) not like '%FRONTIER COMMUNICATIONS%' 
and upper(endcustomerparentACCOUNT) not like '%CHARTER COMMUNICATIONS%' 
and upper(endcustomerparentACCOUNT) not like '%CENTURYLINK%' THEN 'VERTIV DIRECT ACCOUNT'
WHEN sm_account_flag = 'Y' THEN 'VERTIV DIRECT ACCOUNT'
WHEN upper(billtocustomervertical) = 'TELECOM' and upper(accounttypeaop) != 'VERTIV DIRECT ACCOUNT' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomervertical) = 'TELECOM' and upper(accounttypeaop1) != 'VERTIV DIRECT ACCOUNT' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%ASCENSION%' or upper(endcustomerparentaccount) like '%ASCENSION%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT)like '%AHOLD DELHAIZE%' or upper(endcustomerparentACCOUNT)like '%AHOLD DELHAIZE%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%ALBERTSONS COMPANIES%' or upper(endcustomerparentACCOUNT) like '%ALBERTSONS COMPANIES%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%ALDI%' or upper(endcustomerparentACCOUNT) like '%ALDI%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%AMERICAN EXPRESS%' or upper(endcustomerparentACCOUNT) like '%AMERICAN EXPRESS%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%ARDENT%' or upper(endcustomerparentACCOUNT) like '%ARDENT%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%AUTOZONE%' or upper(endcustomerparentaccount) like '%AUTOZONE%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%BANK OF AMERICA%' or upper(endcustomerparentaccount) like '%BANK OF AMERICA%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%BARCLAYS%' or upper(endcustomerparentACCOUNT) like '%BARCLAYS%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%BEST BUY%' or upper(endcustomerparentACCOUNT) like '%BEST BUY%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%BLACKROCK%' or upper(endcustomerparentACCOUNT) like '%BLACKROCK%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%CHS%' or upper(endcustomerparentACCOUNT) like '%CHS%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%CITIGROUP%' or upper(endcustomerparentACCOUNT) like '%CITIGROUP%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%COMMONSPIRIT HEALTH%' or upper(endcustomerparentACCOUNT) like '%COMMONSPIRIT HEALTH%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%COSTCO%' or upper(endcustomerparentACCOUNT) like '%COSTCO%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%CREDIT SUISSE%' or upper(endcustomerparentACCOUNT) like '%CREDIT SUISSE%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%CVS%' or upper(endcustomerparentACCOUNT) like '%CVS%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%DEUTSCHE BANK%' or upper(endcustomerparentACCOUNT) like '%DEUTSCHE BANK%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%EDGECORE%' or upper(endcustomerparentACCOUNT) like '%EDGECORE%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%FEDEX%' or upper(endcustomerparentACCOUNT) like '%FEDEX%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%FRONTIER%' or upper(endcustomerparentACCOUNT) like '%FRONTIER%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%GENERAL ELECTRIC HEALTHCARE%' or upper(endcustomerparentACCOUNT) like '%GENERAL ELECTRIC HEALTHCARE%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%GOLDMAN SACHS%' or upper(endcustomerparentACCOUNT) like '%GOLDMAN SACHS%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%HOME DEPOT%' or upper(endcustomerparentACCOUNT) like '%HOME DEPOT%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%HOSPITAL CORPORATION OF AMERICA%' or upper(endcustomerparentACCOUNT) like '%HOSPITAL CORPORATION OF AMERICA%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%JP MORGAN CHASE%' or upper(endcustomerparentACCOUNT) like '%JP MORGAN CHASE%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%KAISER PERMANENTE%' or upper(endcustomerparentACCOUNT) like '%KAISER PERMANENTE%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%KROGER COMPANY%' or upper(endcustomerparentACCOUNT) like '%KROGER COMPANY%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%LEVEL 3%' or upper(endcustomerparentACCOUNT) like '%LEVEL 3%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%LIDL%' or upper(endcustomerparentACCOUNT) like '%LIDL%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%LIFEPOINT%' or upper(endcustomerparentACCOUNT) like '%LIFEPOINT%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%LOWES%' or upper(endcustomerparentACCOUNT) like '%LOWES%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%MENARDS%' or upper(endcustomerparentACCOUNT) like '%MENARDS%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%MORGAN STANLEY%' or upper(endcustomerparentACCOUNT) like '%MORGAN STANLEY%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%NETRALITY%' or upper(endcustomerparentACCOUNT) like '%NETRALITY%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%NOMURA SECURITIES%' or upper(endcustomerparentACCOUNT) like '%NOMURA SECURITIES%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%PHILIPS HEALTHCARE%' or upper(endcustomerparentACCOUNT) like '%PHILIPS HEALTHCARE%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%PROVIDENCE HEALTH & SERVICES%' or upper(endcustomerparentACCOUNT) like '%PROVIDENCE HEALTH & SERVICES%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%PUBLIX SUPER MARKETS%' or upper(endcustomerparentACCOUNT) like '%PUBLIX SUPER MARKETS%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%QSCALE%' or upper(endcustomerparentACCOUNT) like '%QSCALE%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%QUORUM%' or upper(endcustomerparentACCOUNT) like '%QUORUM%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%SECURESWITCH%' or upper(endcustomerparentACCOUNT) like '%SECURESWITCH%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%SIEMENS HEALTHINEERS%' or upper(endcustomerparentACCOUNT) like '%SIEMENS HEALTHINEERS%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%TARGET%' or upper(endcustomerparentACCOUNT) like '%TARGET%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%U.S. BANCORP%' or upper(endcustomerparentACCOUNT) like '%U.S. BANCORP%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%UBS%' or upper(endcustomerparentACCOUNT) like '%UBS%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%UNITED PARCEL SERVICE%' or upper(endcustomerparentACCOUNT) like '%UNITED PARCEL SERVICE%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%UNITEDHEALTH GROUP%' or upper(endcustomerparentACCOUNT) like '%UNITEDHEALTH GROUP%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%WALGREENS%' or upper(endcustomerparentACCOUNT) like '%WALGREENS%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%WALMART%' or upper(endcustomerparentACCOUNT) like '%WALMART%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%WELLS FARGO%' or upper(endcustomerparentACCOUNT) like '%WELLS FARGO%' THEN 'VERTIV NAMED ACCOUNT'
WHEN upper(billtocustomerparentACCOUNT) like '%WORLD WIDE TECHNOLOGY%' or upper(endcustomerparentACCOUNT) like '%WORLD WIDE TECHNOLOGY%' THEN 'VERTIV NAMED ACCOUNT'
WHEN lob = 'AC POWER' and (upper(billtocustomerparentACCOUNT) like '%AT&T%' or upper(billtocustomerparentACCOUNT) like '%VERIZON%' or upper(billtocustomerparentaccount) like '%T-MOBILE%') THEN 'VERTIV STRATEGIC ACCOUNT'
WHEN lob = 'THERMAL' and (upper(billtocustomerparentACCOUNT) like '%AT&T%' or upper(billtocustomerparentACCOUNT) like '%VERIZON%' or upper(billtocustomerparentaccount) like '%T-MOBILE%') THEN 'VERTIV STRATEGIC ACCOUNT'
WHEN lob = 'SERVICES' and (upper(billtocustomerparentACCOUNT) like '%AT&T%' or upper(billtocustomerparentACCOUNT) like '%VERIZON%' or upper(billtocustomerparentaccount) like '%T-MOBILE%') THEN 'VERTIV STRATEGIC ACCOUNT'
WHEN lob = 'AC POWER' and (upper(endcustomerparentACCOUNT) like '%AT&T%' or upper(endcustomerparentACCOUNT) like '%VERIZON%' or upper(endcustomerparentACCOUNT) like '%T-MOBILE%') THEN 'VERTIV STRATEGIC ACCOUNT'
WHEN lob = 'THERMAL' and (upper(endcustomerparentACCOUNT) like '%AT&T%' or upper(endcustomerparentACCOUNT) like '%VERIZON%' or upper(endcustomerparentACCOUNT) like '%T-MOBILE%') THEN 'VERTIV STRATEGIC ACCOUNT'
WHEN lob = 'SERVICES' and (upper(endcustomerparentACCOUNT) like '%AT&T%' or upper(endcustomerparentACCOUNT) like '%VERIZON%' or upper(endcustomerparentACCOUNT) like '%T-MOBILE%') THEN 'VERTIV STRATEGIC ACCOUNT'
--WHEN upper(selling_motion) = "ERS/HVM" Then "ERS/HVM"
WHEN upper(product_category) like '%SECURE%' THEN 'FEDERAL'
ELSE 'OTHER'
END  account_type_aop1,
CASE
            WHEN sum_netsales > 3000000 THEN 'MEGA'
            WHEN upper(lob) = 'AC POWER' and upper(gbu) = 'INFRASTRUCTURE & SOLUTIONS' and sum_netsales < 750000 THEN 'FLOW'
            WHEN upper(lob) = 'DC POWER' and upper(gbu) = 'INFRASTRUCTURE & SOLUTIONS' and sum_netsales < 750000 THEN 'FLOW'
            WHEN upper(lob) = 'THERMAL' and upper(gbu) = 'INFRASTRUCTURE & SOLUTIONS' and sum_netsales < 500000 THEN 'FLOW'
            when upper(lob) = 'DIGITAL ECOSYSTEM' and upper(gbu) = 'SERVICES & SPARES' and sum_netsales <50000 THEN 'FLOW'
            when upper(lob) = '1 PHASE UPS' and upper(gbu) = 'INTEGRATED RACK SOLUTIONS' and sum_netsales < 100000 THEN 'FLOW'
            when upper(lob) = 'EDGE THERMAL' and upper(gbu) = 'INTEGRATED RACK SOLUTIONS' and sum_netsales < 100000 THEN 'FLOW'
            when upper(lob) = 'RACK PDU' and upper(gbu) = 'INTEGRATED RACK SOLUTIONS' and sum_netsales < 100000 THEN 'FLOW'
            when upper(lob) = 'RACKS' and upper(gbu) = 'INTEGRATED RACK SOLUTIONS' and sum_netsales < 100000 THEN 'FLOW'
            WHEN upper(lob) = 'GLOBAL EDGE SYSTEMS' and upper(gbu) = 'INTEGRATED RACK SOLUTIONS' and sum_netsales < 100000 THEN 'FLOW'
            when upper(lob) = 'IT SYSTEMS' and upper(gbu) = 'INTEGRATED RACK SOLUTIONS' and sum_netsales < 100000 THEN 'FLOW'
            WHEN upper(lob) = 'ENERGY STORAGE' and upper(gbu) = 'INFRASTRUCTURE & SOLUTIONS' and sum_netsales < 750000 THEN 'FLOW'
            when upper(lob) in ('REGIONAL SERVICES','VERTIV SERVICES') and upper(gbu) = 'SERVICES & SPARES'  THEN 'SERVICES'
            when upper(lob) = 'IMS/CUSTOM' THEN 'PROJECT'
            ELSE 'PROJECT'
            END AS sizecategory,
	    CASE
		    WHEN temp_motion = 'FIELD SALES'
		    AND ((upper(endcustomerclasscode) = 'GLOBAL STRATEGIC ACCOUNT'
		    OR upper(billtocustomerclasscode) = 'GLOBAL STRATEGIC ACCOUNT')
		    OR (plant IN ('102', '103', '105', '106')
		    AND upper(recordsource) IN ('ORACLEERPCLOUD'))
		    OR upper(oem_flag) IN ('LENOVO', 'IBM', 'HPE')) THEN 'ACCOUNT'
		    WHEN temp_motion = 'FIELD SALES'
		    AND upper(recordsource) = 'ERS_HVM'
		    AND upper(billtoaccounttype) != 'INTERNAL' THEN 'ERS/HVM'
		    ELSE temp_motion
	        END temp_motion2, --Modified by Hari SO-689
		CASE
			WHEN aop_account_name = 'DELL' THEN 'NULL'
			WHEN nvl(dc_h.customer_sub_class, 'N') != 'N' THEN dc_h.customer_sub_class
			WHEN nvl(b.sm_sku, 'N') != 'N'  THEN 'OEM'
			ELSE 'NULL'
		END aop_customer_sub_class
FROM
	(
	SELECT
		a.*,
		CASE
			WHEN a.BillToCustomerParentAccount IN (a.bill_customer) THEN 'Y'
			WHEN a.EndCustomerParentAccount IN (a.end_customer) THEN 'Y'
			WHEN a.SKU IN (a.af_sku) THEN 'Y'
			ELSE 'N'
		END accounts_flag,
		CASE
			WHEN a.BillToCustomerGSC IS NULL THEN 'N'
			ELSE 'Y'
		END BillToGSC_Flag,
		CASE
			WHEN a.EndCustomerGSC IS NULL THEN 'N'
			ELSE 'Y'
		END EndCustomerGSC_Flag,
		CASE
			WHEN a.ShipToCustomerGSC IS NULL THEN 'N'
			ELSE 'Y'
		END ShipToGSC_Flag,
		CASE
			WHEN EndCustomerParentAccount LIKE ('%Microsoft%')
			OR EndCustomerParentAccount LIKE ('%Switch%')
			OR EndCustomerParentAccount LIKE ('%Facebook%')
			OR EndCustomerParentAccount LIKE ('%NTT%')
			OR EndCustomerParentAccount LIKE ('%Ragingwire%')
			OR EndCustomerParentAccount LIKE ('%Google%')
			OR EndCustomerParentAccount LIKE ('%CyrusOne%')
			OR EndCustomerParentAccount LIKE ('%Apple%')
			OR EndCustomerParentAccount LIKE ('%Amazon%')
			OR EndCustomerParentAccount LIKE ('%Crown Castle%')
			OR EndCustomerParentAccount LIKE ('%American Tower%')
			OR EndCustomerParentAccount LIKE ('%SBA%')
			OR EndCustomerParentAccount LIKE ('%Ericson%')
			OR EndCustomerParentAccount LIKE ('%Nokia%')
			OR EndCustomerParentAccount LIKE ('%Oracle%') THEN 'Vertiv Direct Account'
			WHEN a.LOB = 'DC Power'
			AND BillToCustomerVertical = 'Telecom'
			AND (NOT BillToCustomerParentAccount LIKE ('%Comcast%')
			OR NOT BillToCustomerParentAccount LIKE ('%Cox Communications%')
			OR NOT BillToCustomerParentAccount LIKE ('%Charter Communications%')
			OR NOT BillToCustomerParentAccount LIKE ('%CenturyLink%')
			OR NOT BillToCustomerParentAccount LIKE ('%Frontier Communications%')) THEN 'Vertiv Direct Account'
			WHEN a.LOB = 'DC Power'
			AND BillToCustomerVertical = 'Telecom'
			AND (NOT EndCustomerParentAccount LIKE ('%Comcast%')
			OR NOT EndCustomerParentAccount LIKE ('%Cox Communications%')
			OR NOT EndCustomerParentAccount LIKE ('%Charter Communications%')
			OR NOT EndCustomerParentAccount LIKE ('%CenturyLink%')
			OR NOT EndCustomerParentAccount LIKE ('%Frontier Communications%')) THEN 'Vertiv Direct Account'
			WHEN BillToCustomerParentAccount LIKE ('%Microsoft%')
			OR BillToCustomerParentAccount LIKE ('%Switch%')
			OR BillToCustomerParentAccount LIKE ('%Facebook%')
			OR BillToCustomerParentAccount LIKE ('%NTT%')
			OR BillToCustomerParentAccount LIKE ('%Ragingwire%')
			OR BillToCustomerParentAccount LIKE ('%Google%')
			OR BillToCustomerParentAccount LIKE ('%CyrusOne%')
			OR BillToCustomerParentAccount LIKE ('%Apple%')
			OR BillToCustomerParentAccount LIKE ('%Amazon%')
			OR BillToCustomerParentAccount LIKE ('%Crown Castle%')
			OR BillToCustomerParentAccount LIKE ('%American Tower%')
			OR BillToCustomerParentAccount LIKE ('%SBA%')
			OR BillToCustomerParentAccount LIKE ('%Ericson%')
			OR BillToCustomerParentAccount LIKE ('%Nokia%')
			OR BillToCustomerParentAccount LIKE ('%Oracle%') THEN 'Vertiv Direct Account'
			ELSE 'Other'
		END AOP_Category,
		
        /* CASE
            WHEN (upper(BillToCustomerName) LIKE '%VERTIV%'
            OR upper(BillToCustomerName) LIKE '%LIEBERT%'
            OR upper(BillToCustomerName) LIKE '%GEIST%'
            OR upper(BillToCustomerName) LIKE '%ATLAS ASIA LIMITED 33CH0104%'
            OR upper(BillToCustomerName) LIKE '%UNIFIED POWER%'
            OR upper(EndCustomerParentAccount) LIKE '%UNIFIED POWER%')
            OR (upper(BillToCustomerParentAccount) LIKE '%VERTIV%'
            OR upper(BillToCustomerParentAccount) LIKE '%GEIST%'
            OR upper(BillToCustomerParentAccount) LIKE '%LIEBERT%'
            OR upper(BillToCustomerParentAccount) LIKE '%ATLAS ASIA LIMITED 33CH0104%') THEN 'INTERCOMPANY'
            WHEN upper(region) = 'CANADA' THEN 'INTERCOMPANY - CANADA'
            WHEN (nvl(sa.flag,'N') = 'N' and nvl(sb.flag, 'N') = 'N' and nvl(sm_ACCOUNT_flag,'N') = 'N') AND (upper(recordsource) LIKE '%CDW%'
            OR upper(recordsource) LIKE '%TECH%'
            OR upper(recordsource) LIKE '%INGRAM%'
            OR upper(recordsource) LIKE '%SYNNEX%'
            OR upper(recordsource) LIKE '%PC CONNECT%'
            OR upper(recordsource) LIKE '%GRAYBAR%'
            OR upper(recordsource) LIKE '%D AND H%'
            OR upper(recordsource) LIKE '%AMAZON%'
            OR upper(recordsource) LIKE '%ARROW%'
            OR upper(recordsource) LIKE '%CONTEXT%'
            OR upper(recordsource) LIKE '%CONTEXT_CONNECTION%'
            OR upper(recordsource) LIKE '%CONTEXT_CDW LOGISTICS%'
            OR upper(recordsource) LIKE '%CONTEXT_INGRAM MICRO%'
            OR upper(recordsource) LIKE '%CONTEXT_TECH DATA%'
            OR upper(recordsource) LIKE '%CONTEXT_GRAYBAR%'
            OR upper(recordsource) LIKE '%CONTEXT_TECH DATA%') THEN 'CHANNEL'
            WHEN (nvl(sa.flag,'N') = 'N' and nvl(sb.flag, 'N') = 'N' and nvl(sm_ACCOUNT_flag,'N') = 'N') AND upper(recordsource) = 'ORACLEERPCLOUD' AND plant in ('102', '103', '105', '106') THEN 'ACCOUNT'
            WHEN (nvl(sa.flag,'N') = 'N' and nvl(sb.flag, 'N') = 'N' and nvl(sm_ACCOUNT_flag,'N') = 'N') AND recordsource like '%ERS%' THEN 'ERS/HVM'
            WHEN (sa.flag = 'Y' or sb.flag = 'Y') OR sm_ACCOUNT_flag = 'Y' THEN 'ACCOUNT'
            WHEN sm_ACCOUNT_flag = 'N' THEN 'CHANNEL'
            WHEN nvl(resellerbranchnumber, 'N') != 'N' THEN 'CHANNEL'
            WHEN (upper(BillToCustomerParentAccount) like '%INGRAM MICRO%'
            OR upper(BillToCustomerParentAccount) like '%TECH DATA%'
            OR upper(BillToCustomerParentAccount) like '%SYNNEX%'
            OR upper(BillToCustomerParentAccount) like '%D & H%') THEN 'CHANNEL'
            WHEN nvl(branch_office_nbr, 'N') != 'N' THEN 'CHANNEL'
            ELSE 'FIELD SALES'
            END selling_motion, */
	        CASE
		    WHEN upper(billtoaccounttype) = 'INTERNAL'
		    AND upper(billtocustomercountry) = 'UNITED STATES' THEN 'INTERCOMPANY USA'
		    WHEN upper(billtoaccounttype) = 'INTERNAL'
		    AND upper(billtocustomercountry) = 'CANADA' THEN 'INTERCOMPANY CANADA'
		    WHEN upper(billtoaccounttype) = 'INTERNAL'
		    AND (upper(billtocustomercountry) NOT IN ('UNITED STATES', 'CANADA')
		    OR (nvl(billtocustomercountry,'N') = 'N')) THEN 'INTERCOMPANY OTHER'
		    ELSE 'FIELD SALES'
	        END temp_motion, --Modified by Hari SO-689
		case when recordsource='ALICE' and sku LIKE '%ATO%' THEN nvl(sku_for_ds,sku)
			else sku
		end SKU_rollup,
		CASE
            WHEN nvl(sa.aopaccountname, 'N') != 'N' THEN sa.aopaccountname
            WHEN nvl(sb.aopaccountname, 'N') != 'N' THEN sb.aopaccountname
            WHEN nvl(a.sm_sku, 'N') != 'N' THEN a.aop_account_name_a
            ELSE 'Non Account'
            END aop_account_name,
			sa.accounttypeaop,
			sb.accounttypeaop as accounttypeaop1,
			nvl(sn.sum_netsales,0) sum_netsales,
			so.attribute_char1 as OEM_FLAG 	--	modified by HARI SO-650
            		
	FROM
		(
		SELECT
			pa.account_am AccountAM,
			pa.account_csm AccountCSM,
			pa.account_lead AccountLead,
			pa.account_presence AccountPresence,
			pa.account_service_sales AccountServiceSales,
			pa.account_subtype AccountSubType,
			pa.account_type AccountType,
			/* CASE
            WHEN nvl(sa.aopaccountname, 'N') != 'N' THEN sa.aopaccountname
            WHEN nvl(sb.aopaccountname, 'N') != 'N' THEN sb.aopaccountname
            WHEN nvl(sm.sm_sku, 'N') != 'N' THEN sm.aop_account_name
            ELSE 'Non Account'
            END aop_account_name, */
			'' BillToCustomer,
			'' BillToAccountRole,
			nvl(bill_loc.site_address1_txt ,bill_loc_leg.customer_st_address1 )  BillToCustomerAddress,
			'' BillToCustomerCustomerType1,
			bill_ind.enterprise_industry BillToCustomerEnterpriseIndustry,
			bill_gsc.gsc BillToCustomerGSC,
			--bill_cust.industry BillToCustomerIndustry1,
			--coalesce(bill_acc.industry_classification_1_txt, bill_acc.industry_classification_2_txt, bill_acc.industry_classification_3_txt) BillToCustomerIndustry1,
			/*case when ordr.src_system_name = 'LES' and (nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername ) then
				 nvl(gsa_billto.industry_classification1,coalesce(bill_acc.industry_classification_1_txt, bill_acc.industry_classification_2_txt, bill_acc.industry_classification_3_txt))
				 else coalesce(bill_acc.industry_classification_1_txt, bill_acc.industry_classification_2_txt, bill_acc.industry_classification_3_txt) 
			END BillToCustomerIndustry1,*/
			case when ordr.src_system_name = 'LES' and (nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername ) then
				 nvl(gsa_billto.industry_classification1,coalesce(bill_acc.industry_classification_1_txt, bill_acc.industry_classification_2_txt))
				 else coalesce(bill_acc.industry_classification_1_txt, bill_acc.industry_classification_2_txt) 
			END BillToCustomerIndustry1,--mapping changed for BillToCustomerIndustry1 so-621
			--bill_acc.account_name BillToCustomerName,
			case when ordr.src_system_name = 'LES' then nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) 
				 else nvl(bill_acc.customer_name_txt,bill_acc_leg.account_name) 
			end as BillToCustomerName,
			'' BillToCustomerName2,
			--ordr.legacy_bill_to_customer_account_id BillToCustomerNumber,
			nvl(bill_acc.customer_number,bill_acc_leg.account_num) BillToCustomerNumber,			
			--bill_acc.account_name BillToCustomerParentAccount,
/* 			case when ordr.src_system_name = 'LES' then bill_cust_les.parentaccount 
				 --else nvl(bill_acc.customer_name_txt,bill_acc_leg.account_name) 
				  else COALESCE(bill_acc.ultimate_parent_txt,null)
			end as BillToCustomerParentAccount,	 */
			case when ordr.src_system_name = 'LES' and (nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername ) then COALESCE(gsa_billto.ultimate_parent,bill_acc.ultimate_parent_txt,upper(bill_cust_les.parentaccount) )
            else COALESCE(bill_acc.ultimate_parent_txt, null)
            end as BillToCustomerParentAccount,		
			nvl(bill_loc.site_postal_code_txt ,bill_loc_leg.customer_postal_cd ) BillToCustomerPostalCode,
			bill_cust.StandardizedName BillToCustomerStandardizedName,
			--bill_ind.vertical BillToCustomerVertical,
			/*case when ordr.src_system_name = 'LES' and (nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername ) then
				  nvl(gsa_billto.market_sub_vertical,bill_acc.market_sub_vertical_txt)
				  else bill_acc.market_sub_vertical_txt
			END BillToCustomerVertical,*/
			case when ordr.src_system_name = 'LES' and (nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername ) then
				  nvl(gsa_billto.market_vertical,bill_acc.market_vertical_txt)
				  else bill_acc.market_vertical_txt
			END BillToCustomerVertical,--mapping changed for BillToCustomerVertical so-621
			'' ChannelFlag,
			--cat.catalog_lvl_desc_3 COE,
			/*case when NVL(ordr.product_num,pm.projectcode) = sku_lu.sku and ordr.src_system_name = sku_lu.recordsource then sku_lu.coe
			else cat.catalog_lvl_desc_3 
			end COE,*/
			case when NVL(ordr.product_num,pm.projectcode) = sku_lu.sku and ordr.src_system_name = sku_lu.recordsource then sku_lu.coe
			else COALESCE(cat.catalog_lvl_desc_3,rlpc.catalog_lvl_desc_3,gph_sku.coe)
			end COE,--mapping changed COE so-652 
			'' COE_New,
			'' ContractType,
			ordr.customer_po_num CustomerPurchaseOrderNumber,
			ordr.customer_requested_dt CustomerRequestDate,
			ordr.w_insert_dtm Data_Last_Refreshed,
		    CASE WHEN ordr.src_system_name IN ('LES','ERS_HVM') THEN COALESCE(end_acc.customer_name_txt,end_acc_leg.account_name,leg_cust_attr_saleswh.customer_name_txt) 
			ELSE nvl(end_acc.customer_name_txt,end_acc_leg.account_name)
			END EndCustomer, 		
			'' EndCustomerAccountRole,
			nvl(end_loc.site_address1_txt ,end_loc_leg.customer_st_address1 )  EndCustomerAddress,
			--'' EndCustomerCity,
			end_loc.site_city_txt EndCustomerCity,--mapping changed for EndCustomerCity
			--'' EndCustomerCountry,
			end_loc.site_country_cd EndCustomerCountry,--mapping changed for EndCustomerCountry
			CASE WHEN ordr.src_system_name IN ('LES','ERS_HVM') THEN COALESCE(end_ind.customer_type1,leg_cust_attr_saleswh.customer_type)
			ELSE end_ind.customer_type1
			END EndCustomerCustomerType1,
			end_ind.enterprise_industry EndCustomerEnterpriseIndustry,
			end_gsc.gsc EndCustomerGSC,
			--end_cust.industry EndCustomerIndustry1,
			--coalesce(end_acc.industry_classification_1_txt, end_acc.industry_classification_2_txt, end_acc.industry_classification_3_txt) EndCustomerIndustry1,
			/*case when ordr.src_system_name = 'LES' and (nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) = gsa_endto.billtocustomername) then
				 nvl(gsa_endto.industry_classification1,coalesce(end_acc.industry_classification_1_txt, end_acc.industry_classification_2_txt, end_acc.industry_classification_3_txt))
				 else coalesce(end_acc.industry_classification_1_txt, end_acc.industry_classification_2_txt, end_acc.industry_classification_3_txt) 
			END EndCustomerIndustry1,*/
			CASE
				WHEN ordr.src_system_name = 'LES'
					 AND (nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) = gsa_endto.billtocustomername) THEN nvl(gsa_endto.industry_classification1,coalesce(end_acc.industry_classification_1_txt, end_acc.industry_classification_2_txt, end_acc.industry_classification_3_txt))
				WHEN ordr.src_system_name IN ('LES','ERS_HVM') THEN coalesce(end_acc.industry_classification_1_txt, end_acc.industry_classification_2_txt, end_acc.industry_classification_3_txt,leg_cust_attr_saleswh.industry_classification_1_txt,leg_cust_attr_saleswh.industry_classification_3_txt)
				ELSE coalesce(end_acc.industry_classification_1_txt, end_acc.industry_classification_2_txt, end_acc.industry_classification_3_txt)
			END EndCustomerIndustry1,--- VR 05172022 Customer info fields changes SO-644-- mapping changed for EndCustomerIndustry1 so-621
			--end_acc.account_name EndCustomerName,
			CASE
				WHEN ordr.src_system_name = 'LES' THEN nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name)
				WHEN ordr.src_system_name IN ('LES','ERS_HVM') THEN COALESCE(end_acc.customer_name_txt,end_acc_leg.account_name,leg_cust_attr_saleswh.customer_name_txt)
				ELSE nvl(end_acc.customer_name_txt,end_acc_leg.account_name)
			END AS EndCustomerName, --- VR 05172022 Customer info fields changes SO-644	
			--ordr.legacy_end_customer_account_id EndCustomerNumber,
			nvl(end_acc.customer_number,end_acc_leg.account_num ) EndCustomerNumber,			
			--end_cust.parentaccount EndCustomerParentAccount,
/* 			case when ordr.src_system_name = 'LES' then end_cust_les.parentaccount 
				 --else nvl(end_acc.customer_name_txt,end_acc_leg.account_name) 
				  else COALESCE(end_acc.ultimate_parent_txt,null)
			end as EndCustomerParentAccount, */
			CASE
				WHEN ordr.src_system_name = 'LES'
					 AND (nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) = gsa_endto.billtocustomername) THEN COALESCE(gsa_endto.ultimate_parent,end_acc.ultimate_parent_txt,upper(end_cust_les.parentaccount))
				 WHEN ordr.src_system_name IN ('LES','ERS_HVM') THEN COALESCE(end_acc.ultimate_parent_txt,leg_cust_attr_saleswh.ultimate_parent_txt)
				ELSE COALESCE(end_acc.ultimate_parent_txt, NULL)
			END AS EndCustomerParentAccount,	--- VR 05172022 Customer info fields changes SO-644					
			nvl(end_loc.site_postal_code_txt,end_loc_leg.customer_postal_cd ) EndCustomerPostalCode,
			'' EndCustomerStandardizedExists,
			end_cust.StandardizedName EndCustomerStandardizedName,
			nvl(end_loc.site_state_cd ,end_loc_leg.customer_state_name )  EndCustomerState,
			'' EndCustomerState2,
			/* CASE WHEN end_ind.vertical='Null' THEN NULL
				 WHEN end_ind.vertical='' THEN NULL 
				 ELSE end_ind.vertical
			END EndCustomerVertical, */
			/*case when ordr.src_system_name = 'LES' and (nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) = gsa_endto.billtocustomername) then
				 nvl(gsa_endto.market_sub_vertical,end_acc.market_sub_vertical_txt)
				 else end_acc.market_sub_vertical_txt
			END  EndCustomerVertical,*/
			CASE
				WHEN ordr.src_system_name = 'LES'
					 AND (nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) = gsa_endto.billtocustomername) THEN nvl(gsa_endto.market_vertical,end_acc.market_vertical_txt)
				WHEN ordr.src_system_name IN ('LES','ERS_HVM') THEN COALESCE(end_acc.market_vertical_txt,leg_cust_attr_saleswh.market_vertical_txt)
				ELSE end_acc.market_vertical_txt
			END EndCustomerVertical, --- VR 05172022 Customer info fields changes SO-644 --mapping changed for EndCustomerVertical SO-621
			CASE
				WHEN ordr.order_create_dt < '2017-01-01 00:00:00' THEN fixed_rate.conversion_rate
				ELSE monthly_exch_rate.conversion_rate
			END ExchangeRateUsed,
			--cat.catalog_lvl_desc_1 GBU,
			/*case when NVL(ordr.product_num,pm.projectcode) = sku_lu.sku and ordr.src_system_name = sku_lu.recordsource then sku_lu.gbu 
			else cat.catalog_lvl_desc_1 
			end GBU,*/
			case when NVL(ordr.product_num,pm.projectcode) = sku_lu.sku and ordr.src_system_name = sku_lu.recordsource then sku_lu.gbu 
			else COALESCE(cat.catalog_lvl_desc_1,rlpc.catalog_lvl_desc_1,gph_sku.gbu)
			end GBU,--mapping changed GBU so-652
			'' Growth_Target_Effective_Date,
			'' alicecommissionoverridepercent,
			--cat.catalog_lvl_desc_6 Level_6,
			/*case when NVL(ordr.product_num,pm.projectcode) = sku_lu.sku and ordr.src_system_name = sku_lu.recordsource then sku_lu.level6
			else cat.catalog_lvl_desc_6 
			end Level_6,*/
			case when NVL(ordr.product_num,pm.projectcode) = sku_lu.sku and ordr.src_system_name = sku_lu.recordsource then sku_lu.level6
			else COALESCE(cat.catalog_lvl_desc_6,rlpc.catalog_lvl_desc_6,gph_sku.level_6)
			end Level_6,--mapping changed Level_6 so-652
			CASE 
				WHEN ordr.src_system_name = 'ALICE' and cast(ordr.integration_id as string) = cast(ordr.top_model_line_id as string) then ordr.ulp_a else ordr.unit_list_price_usd_amt end
			as ListPrice,
			--ordr.sale_usd_amt ExtendedListPrice,
			--cat.catalog_lvl_desc_2 LOB,
			/*case when NVL(ordr.product_num,pm.projectcode) = sku_lu.sku and ordr.src_system_name = sku_lu.recordsource then sku_lu.lob
			else cat.catalog_lvl_desc_2
			end LOB,*/
			case when NVL(ordr.product_num,pm.projectcode) = sku_lu.sku and ordr.src_system_name = sku_lu.recordsource then sku_lu.lob
			else COALESCE(cat.catalog_lvl_desc_2,rlpc.catalog_lvl_desc_2,gph_sku.lob)
			end LOB,--mapping changed LOB so-652
			CASE 
				WHEN ordr.src_system_name = 'ALICE' and cast(ordr.integration_id as string) = cast(ordr.top_model_line_id as string) then ordr.sua_a else ordr.sale_usd_amt end
			as NetSalesRevenue,
			CASE 
				WHEN ordr.src_system_name = 'ALICE' and cast(ordr.integration_id as string) = cast(ordr.top_model_line_id as string) then ordr.elp_a else (ordr.unit_list_price_usd_amt * CAST(ordr.ordered_qty AS DOUBLE)) end
			as ExtendedListPrice,
			'' Office_Group,
			roi.office_website office_website,
			'' OrderCoordinator,
			---ordr.order_booked_dt OrderCreateDate,
/*             case when ordr.src_system_name in ('SAP_ESNA','ERS_HVM','SAP_AVOCENT') then ordr.order_create_dt
				else ordr.order_booked_dt
			end as OrderCreateDate, ----VR 05042022 date changes suggested by Ryan	 */
            CASE
				WHEN ordr.src_system_name IN ('SAP_ESNA','ERS_HVM','SAP_AVOCENT') THEN ordr.order_create_dt
				WHEN ordr.src_system_name NOT IN ('SAP_ESNA','ERS_HVM','SAP_AVOCENT')
					AND (ordr.legacy_orig_ref_num like 'CN%' or ordr.legacy_orig_ref_num like 'GN%'  or ordr.legacy_orig_ref_num like 'ZN%')
					THEN ordr.order_create_dt
				ELSE ordr.order_booked_dt ----VR 05112022 date changes suggested by Ryan SO-662	
			END AS OrderCreateDate,			
			'' OrderLastUpdateDate,
			case when ordr.src_system_name = 'ALICE' then ordr.order_detail_line_num
				else ordr.order_line_num
			end as OrderEXLineNumber,
			'' PartnerWebFolderID,
			'' PartnerWebQuoteNumber,
			isnull(ordr.quote_ref, ordr.legacy_orig_ref_num) as 'QuoteID',
			CASE WHEN ordr.src_system_name ='LES' THEN cpqh_les.bs_id ELSE cpqh_others.bs_id
			END AS 'BSID',	
			case when ordr.src_system_name ='ALICE' then dorg.org_cd 
			when ordr.src_system_name = 'ORACLEERPCLOUD' then oraerp_plant.plant
			else shipd.plant end as Plant,
			'' PlantDescription,
			--cat.catalog_lvl_desc_4 Product_Category,
			/*case when NVL(ordr.product_num,pm.projectcode) = sku_lu.sku and ordr.src_system_name = sku_lu.recordsource then sku_lu.Product_Category
			else cat.catalog_lvl_desc_4 
			end Product_Category,*/
			case when NVL(ordr.product_num,pm.projectcode) = sku_lu.sku and ordr.src_system_name = sku_lu.recordsource then sku_lu.Product_Category
			else COALESCE(cat.catalog_lvl_desc_4,rlpc.catalog_lvl_desc_4,gph_sku.product_category)
			end Product_Category,--mapping changed  Product_Category so-652
			'' Product_Category_New,
			--cat.catalog_lvl_desc_5 Product_Family,
			/*case when NVL(ordr.product_num,pm.projectcode) = sku_lu.sku and ordr.src_system_name = sku_lu.recordsource then sku_lu.Product_Family
			else cat.catalog_lvl_desc_5 
			end Product_Family,*/
			case when NVL(ordr.product_num,pm.projectcode) = sku_lu.sku and ordr.src_system_name = sku_lu.recordsource then sku_lu.Product_Family
			else COALESCE(cat.catalog_lvl_desc_5,rlpc.catalog_lvl_desc_5,gph_sku.product_family)
			end Product_Family,--mapping changed Product_Family so-652
			'' Product_Family_New,
			shipd.PRO_NBR_01 PROShipmentNumber,
			CAST(ordr.ordered_qty AS DOUBLE) QuantityOrdered,
			ordr.src_system_name RecordSource,
			'' SalesDistrictName,
			'' SalesDistrictNumber,
			nvl(nvl(ordr.sales_office_name,cpq.officename_t),spc.office_name) SalesOfficeName, --modified by HARI SO-638
			--nvl(ordr.sales_office_name,cpq.officename_t) SalesOfficeName,
			--ordr.sales_office_number SalesOfficeNumber,
            case when length(ordr.sales_office_number)<5 then lpad(ordr.sales_office_number, 5,'0') when ordr.src_system_name = 'ORACLEERPCLOUD' then lpad(cpq.officenumber_t,5,'0')
            else lpad(ordr.sales_office_number, 5,'0')  end as SalesOfficeNumber,
			roi.principal_email SalesOfficePrincipalEmail,
			ordr.sales_office_number SalesOfficeReferenceNumber,
			ordr.order_num SalesOrderNumber,
			roi.sales_region SalesRegionName,
			'' SalesRegionNumber,
			--rep.sales_rep_email SalesRepEmail,
			case when ordr.src_system_name = 'ALICE' then cpqrep.emailaddress else rep.sales_rep_email end as SalesRepEmail,
			--rep.sales_rep_num SalesRepID,
			case when ordr.src_system_name = 'ALICE' then ordr_extn.sales_rep_num else rep.sales_rep_num end as SalesRepID,
			--rep.sales_rep_name SalesRepName,
			case when ordr.src_system_name = 'ALICE' then ordr_extn.sales_rep_name else rep.sales_rep_name end as SalesRepName,
			'' SalesRepType,
			'' SAPOEMTag,
			ordr.order_delivery_promise_dt OrderDeliveryPromisedDate,
			'' Segment,
			'' SFR_Category,
			ordr.actual_shipment_dt ShipDate,
			nvl(LINE.shipping_mode_code,
			shipd.vehicle_nbr) ShipmentCarrierName,
			ordr.shipped_qty ShippedQuantity,
			nvl(ship_loc.site_address1_txt ,ship_loc_leg.customer_st_address1 ) ShipToCustomerAddress,
			--ship_loc.customer_county ShipToCustomerCountry,
			nvl(ship_loc.site_country_cd ,ship_loc_leg.customer_country_name )  ShipToCustomerCountry,
			ship_ind.customer_type1 ShipToCustomerCustomerType1,
			ship_ind.enterprise_industry ShipToCustomerEnterpriseIndustry,
			ship_gsc.gsc ShipToCustomerGSC,
			--ship_cust.industry ShipToCustomerIndustry1,
			--coalesce(ship_acc.industry_classification_1_txt, ship_acc.industry_classification_2_txt, ship_acc.industry_classification_3_txt) ShipToCustomerIndustry1,
			nvl(ship_acc.industry_classification_1_txt, ship_acc.industry_classification_2_txt) ShipToCustomerIndustry1, --mapping changed for ShipToCustomerIndustry1 so-621
			--ship_acc.account_name ShipToCustomerName,
			case when ordr.src_system_name = 'LES' then nvl(nullif(ship_cust_les.customername,''),les_ship.business_name) 
				 else nvl(ship_acc.customer_name_txt,ship_acc_leg.account_name )
			end as ShipToCustomerName,
			--ordr.legacy_ship_to_customer_account_id ShipToCustomerNumber,
			nvl(ship_acc.customer_number ,ship_acc_leg.account_num ) ShipToCustomerNumber,			
			--ship_cust.parentaccount ShipToCustomerParentAccount,
/* 			case when ordr.src_system_name = 'LES' then ship_cust_les.parentaccount 
				-- else nvl(ship_acc.customer_name_txt,ship_acc_leg.account_name )
				 else COALESCE(ship_acc.ultimate_parent_txt,null)
			end as ShipToCustomerParentAccount,		 */	
			case
				when ordr.src_system_name = 'LES' then COALESCE(ship_acc.ultimate_parent_txt,upper(ship_cust_les.parentaccount) )
				else COALESCE(ship_acc.ultimate_parent_txt,	null)
			end as ShipToCustomerParentAccount,			
			ship_cust.StandardizedName ShipToCustomerStandardizedName,
			--ship_ind.vertical ShipToCustomerVertical,
			--nvl(ship_acc.market_sub_vertical_txt,ship_ind.vertical) ShipToCustomerVertical,
			nvl(ship_acc.market_vertical_txt,ship_ind.vertical) ShipToCustomerVertical,--mapping changed for ShipToCustomerVertical so-621
			case when prod.product_num='NOT APPLICABLE' and ordr.src_system_name != 'ERS_HVM' then ordr.product_num 
				 when ordr.src_system_name= 'ALICE' and (prod.product_num is null or prod.product_num='') then ordr.product_num
			     when ordr.src_system_name= 'ERS_HVM' then pm.projectcode
				 else nvl(prod.product_num,gph_sku.sku) end as  SKU,
			--prod.product_desc SKUDescription,
			case when NVL(ordr.product_num,pm.projectcode) = sku_lu.sku and ordr.src_system_name = sku_lu.recordsource then sku_lu.skudescription
			else prod.product_desc
			end SKUDescription,
			'' SMSBatteriesOnlyFlag,
			'' SMSBatteryRBSM,
			'' SMSContractEndDate,
			'' SMSContractExpireDate,
			'' SMSContractPMs,
			'' SMSContractSequence,
			'' SMSContractStartDate,
			'' SMSContractStatus,
			trim(sms.sms_customer_type) SMSCustomerType,
			'' SMSEquipmentSegment,
			'' SMSRevCat,
			'' SMSSiteId,
			'' SMSStackedWhenBooked,
			'' SMSTagNumber,
			'' SMSTicketNumber,
			'' SMSTicketType,
			'' SoldToCustomerCustomerType1,
			'' SoldToCustomerEnterpriseIndustry,
			'' SoldToCustomerGSC,
			--'' SoldToCustomerIndustry1 ,
			--coalesce(sold_acc.industry_classification_1_txt, sold_acc.industry_classification_2_txt, sold_acc.industry_classification_3_txt) SoldToCustomerIndustry1,
			nvl(sold_acc.industry_classification_1_txt, sold_acc.industry_classification_2_txt) SoldToCustomerIndustry1,--mapping changed for SoldToCustomerIndustry1 so-621
			--sold_acc.account_name SoldToCustomerName,
			case when ordr.src_system_name = 'LES' then nvl(nullif(sold_cust_les.customername,''),les_sold.business_name) 
				 else nvl(sold_acc.customer_name_txt ,sold_acc_leg.account_name)
			end as SoldToCustomerName,
/* 			case when ordr.src_system_name = 'LES' then sold_cust_les.parentaccount 
				-- else nvl(sold_acc.customer_name_txt,ship_acc_leg.account_name )
				 else COALESCE(sold_acc.ultimate_parent_txt,null)
			end as SoldToCustomerParentAccount, */	
			case
				when ordr.src_system_name = 'LES' then COALESCE(sold_acc.ultimate_parent_txt,upper(sold_cust_les.parentaccount) )
				else COALESCE(sold_acc.ultimate_parent_txt,	null)
			end as SoldToCustomerParentAccount,					
			--'' SoldToCustomerParentAccount,
			'' SoldToCustomerStandardizedName,
			--'' SoldToCustomerVertical,
			--nvl(sold_acc.market_sub_vertical_txt,'NULL') SoldToCustomerVertical,
			nvl(sold_acc.market_vertical_txt,'NULL') SoldToCustomerVertical,--mapping changed SoldToCustomerVertical so-621
			'' SPEED_DIAL,
			roi.sales_area Sales_Area,
			end_ref.customer end_customer,
			bill_ref.customer bill_customer,
			sm.sm_sku sm_sku,
			sm.sm_account_flag sm_account_flag,
			sm.aop_account_name aop_account_name_a,
			af.af_sku af_sku,
			--sa.acct_name acct_name,
			py.reseller_number resellernumber,
            fix.sku_for_ds as sku_for_ds,
            CASE 
            WHEN nvl(XX.resellerbranchnumber, 'N') != 'N' THEN XX.resellerbranchnumber
            WHEN nvl(h.branch_office_nbr, 'N') != 'N' THEN h.branch_office_nbr
            ELSE NULL
            END resellerbranchnumber,
            CASE 
            WHEN nvl(XX.resellerbranchname, 'N') != 'N' THEN xx.resellerbranchname
            WHEN upper(ordr.src_system_name) like '%CDW%' THEN 'CDW LOGISTICS'
            WHEN upper(ordr.src_system_name) like '%GRAY%' THEN 'GRAYBAR ELECTRIC'
            WHEN upper(ordr.src_system_name) like '%CONNECTION%' THEN 'CONNECTION'
            WHEN nvl(h.business_name, 'N') != 'N' THEN h.business_name
            ELSE NULL
            END resellerbranchname,
			--sa.flag flag,
			--sb.flag as flag1,
			--sa.accounttypeaop,
			--sb.accounttypeaop as accounttypeaop1,
			--nvl(upper(bill_loc.site_country_cd) ,Upper(bill_loc_leg.customer_country_name) ) billtocustomercountry,
            CASE
			WHEN upper(ordr.src_system_name) = 'ERS_HVM' THEN 'FDO'
	        WHEN upper(nvl(ordr.sales_office_name,cpq.officename_t)) like '%VERTIV%'
	        or upper(nvl(ordr.sales_office_name,cpq.officename_t)) like '%LIEBERT%' THEN 'FDO'
	        ELSE 'LVO'
            END office_type,
            h.branch_office_nbr as branch_office_nbr,
            cpqrep.region as region,
			ordr.uom_cd  as UOM, --modified by HARI SO-635
            UPPER(ordr.sales_order_line_type) AS sales_order_line_type,
            ordr.sales_order_type_cd  as  Order_type, --modified by HARI SO-634	
            prc.class_code as Class_code, --	modified by HARI SO-622		
			--SO-621 new  attributes addition starts here	
			bill_acc.customer_class_code_txt BillToCustomerClassCode,
			end_acc.customer_class_code_txt EndCustomerClassCode,
			ship_acc.customer_class_code_txt ShipToCustomerClassCode,
			sold_acc.customer_class_code_txt SoldToCustomerClassCode,
			bill_acc.partner_class_code_txt BillToCustomerPartnerClassCode,
			end_acc.partner_class_code_txt EndCustomerPartnerClassCode,
			ship_acc.partner_class_code_txt ShipToCustomerPartnerClassCode,
			sold_acc.partner_class_code_txt SoldToCustomerPartnerClassCode,
			bill_acc.oracle_cloud_registry_id BillToOracleRegistryID, 
			end_acc.oracle_cloud_registry_id EndOracleRegistryID,
			ship_acc.oracle_cloud_registry_id ShipToOracleRegistryID,
			sold_acc.oracle_cloud_registry_id SoldToOracleRegistryID,
			bill_acc.industry_classification_3_txt BillToCustomerIndustry3,
			end_acc.industry_classification_3_txt EndCustomerIndustry3,
			ship_acc.industry_classification_3_txt ShipToCustomerIndustry3,
			sold_acc.industry_classification_3_txt SoldToCustomerIndustry3,
			case when ordr.src_system_name = 'LES' and (nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername ) then
				  nvl(gsa_billto.market_sub_vertical,bill_acc.market_sub_vertical_txt)
				  else bill_acc.market_sub_vertical_txt
			END BillToCustomerSubVertical,
	        case when ordr.src_system_name = 'LES' and (nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) = gsa_endto.billtocustomername) then
				 nvl(gsa_endto.market_sub_vertical,end_acc.market_sub_vertical_txt)
				 else end_acc.market_sub_vertical_txt
			END EndCustomerSubVertical,
	        nvl(ship_acc.market_sub_vertical_txt,ship_ind.vertical) ShipToCustomerSubVertical,
			nvl(sold_acc.market_sub_vertical_txt,'NULL') SoldToCustomerSubVertical,
			bill_acc.reporting_sub_parent1 BillToReportingSubParent1,
			end_acc.reporting_sub_parent1 EndReportingSubParent1,
			ship_acc.reporting_sub_parent1 ShipToReportingSubParent1,
			sold_acc.reporting_sub_parent1 SoldToReportingSubParent1,
			bill_acc.definitive_idn_id BillToDefinitiveIDNID,
			end_acc.definitive_idn_id EndDefinitiveIDNID,
			ship_acc.definitive_idn_id ShipToDefinitiveIDNID,
			sold_acc.definitive_idn_id SoldToDefinitiveIDNID,
			bill_acc.definitive_idn_parentid BillToDefinitiveIDNIDParentID,
			end_acc.definitive_idn_parentid EndDefinitiveIDNIDParentID,
			ship_acc.definitive_idn_parentid ShipToDefinitiveIDNIDParentID,
			sold_acc.definitive_idn_parentid SoldToDefinitiveIDNIDParentID,
			bill_acc.nces_leaid BillToNCESLEAID,
			end_acc.nces_leaid EndNCESLEAID,
			ship_acc.nces_leaid ShipToNCESLEAID,
			sold_acc.nces_leaid SoldToNCESLEAID,
			nvl(sold_loc.site_address1_txt ,sold_loc_leg.customer_st_address1 )  SoldToCustomerAddress,
			bill_loc.site_city_txt BillToCustomerCity,
			ship_loc.site_city_txt ShipToCustomerCity,
			sold_loc.site_city_txt SoldToCustomerCity,
			nvl(bill_loc.site_state_cd ,bill_loc_leg.customer_state_name )  BillToCustomerState,
			nvl(ship_loc.site_state_cd ,ship_loc_leg.customer_state_name )  ShipToCustomerState,
			nvl(sold_loc.site_state_cd ,sold_loc_leg.customer_state_name )  SoldToCustomerState,
			bill_loc.site_province_cd BillToCustomerProvince,
			end_loc.site_province_cd EndCustomerProvince,
			ship_loc.site_province_cd ShipToCustomerProvince,
			sold_loc.site_province_cd SoldToCustomerProvince,
			bill_loc.site_country_cd BillToCustomerCountry,
			sold_loc.site_country_cd SoldToCustomerCountry,
			nvl(ship_loc.site_postal_code_txt ,ship_loc_leg.customer_postal_cd ) ShipToCustomerPostalCode,
			nvl(sold_loc.site_postal_code_txt ,sold_loc_leg.customer_postal_cd ) SoldToCustomerPostalCode,
			bill_loc.oracle_cloud_party_site_number BillToOraclePartySiteNumber,  
			end_loc.oracle_cloud_party_site_number EndOraclePartySiteNumber,
			ship_loc.oracle_cloud_party_site_number ShipToOraclePartySiteNumber,
			sold_loc.oracle_cloud_party_site_number SoldToOraclePartySiteNumber,
			bill_loc.definitive_id BillToDefinitiveID,
			end_loc.definitive_id EndDefinitiveID,
			ship_loc.definitive_id ShipToDefinitiveID,
			sold_loc.definitive_id SoldToDefinitiveID,
			bill_loc.nces_schid BillToNCESSCHID,
			end_loc.nces_schid EndNCESSCHID,
			ship_loc.nces_schid ShipToNCESSCHID,
			sold_loc.nces_schid SoldToNCESSCHID,
			--SO-621 new attributes addition ends here
			--so-661 new attributes addition starts here
			case when bill_acc.buying_customer_flg ='Y' then bill_acc.customer_type_txt 
			else ''
			END BillToAccountType,
			case when end_acc.buying_customer_flg = 'Y' then end_acc.customer_type_txt 
			else ''
			END EndAccountType,
			case when ship_acc.buying_customer_flg= 'Y' then ship_acc.customer_type_txt 
			else ''
			END ShipToAccountType,
			case when sold_acc.buying_customer_flg= 'Y' then sold_acc.customer_type_txt 
			else '' 
			END SoldToAccountType,
			--SO-661 new attributes addition ends here
			nvl(pcc.attribute_char11,f_c.productcommissionclasscode) as productcommissionclasscode,
			cast('' as int) Calendar_Month,
			cast('' as int) Calendar_Year,
			'' Local_Currency,
			'' Sales_Office,
			cast('' as double) Unit_Price,
			cast('' as double) UNIT_PRICE_FXD_USD,
			bill_acc.services_major_acc BillToServicesMajorAcc,--so-665 new attributes addition starts
			end_acc.services_major_acc EndServicesMajorAcc,
			ship_acc.services_major_acc ShipToServicesMajorAcc,
			sold_acc.services_major_acc SoldToServicesMajorAcc,--so-665 new attributes addition ends
			bill_acc.customer_sub_class BillToCustomerSubClass, --so-728 new attributes addition starts
			end_acc.customer_sub_class EndCustomerSubClass,
			ship_acc.customer_sub_class ShipToCustomerSubClass,
			sold_acc.customer_sub_class SoldToCustomerSubClass --so-728 new attributes addition ends 


			

		FROM
			(
			SELECT * FROM @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_tmp 
			) ordr
			left outer join 
				(select	*
				 from @DB_LEVEL@_edm_gold.f_sales_order_line_extn
				 WHERE src_system_name IN ('ORACLEERPCLOUD', 'LES', 'ERS_HVM', 'SAP_AVOCENT', 'SAP_ESNA' ,'ALICE')
				) ordr_extn
					on ordr_extn.row_wid = ordr.row_wid			
		LEFT OUTER JOIN @DB_LEVEL@_edm_gold.f_sales_invoice_line inv ON
			ordr.row_wid = inv.sales_order_line_wid
			AND ordr.product_wid = inv.product_wid
			AND ordr.product_num = inv.product_num
			AND ordr.order_line_num = inv.invoice_line_num
			AND ordr.integration_id = inv.integration_id
			
		left outer join	 
		(select
             distinct org.row_wid ,
             org.src_system_name ,
             inv.organization_code,
             strleft(inv.organization_code,3) plant,	
        case
            when cast(strleft(regexp_replace(inv.organization_code,	'[^[:digit:]]',	' '),3) as double) is not null then 'numeric'
             else 'string'
             end	as plant_type
             from
                @DB_LEVEL@_edm_gold.d_org org
             join @DB_LEVEL@_cld_oraerp_silver.inv_organization_definitions_v inv on
              org.org_id = cast(inv.organization_id as string))oraerp_plant on
              ordr.inventory_org_wid = oraerp_plant.row_wid  
             AND  ordr.src_system_name = oraerp_plant.src_system_name
             AND  oraerp_plant.plant_type ='numeric'			
					
		LEFT OUTER JOIN @DB_LEVEL@_cld_cpq_silver.cpq_quote_headers cpqh_les on
					ordr.order_num = cpqh_les.orcl_erp_ordernumber_t
					and ordr.src_system_name = 'LES'					
		LEFT OUTER JOIN  (SELECT cqh.*
									FROM @DB_LEVEL@_cld_cpq_silver.cpq_quote_headers cqh 
									JOIN
									(SELECT  transactionid_t,max(_date_added)  as maxdate
									FROM @DB_LEVEL@_cld_cpq_silver.cpq_quote_headers 
									group by transactionid_t) distcpq 
									on cqh.transactionid_t = distcpq.transactionid_t and cqh._date_added = distcpq.maxdate) cpqh_others ON
				    ordr.order_num = cpqh_others.orcl_erp_ordernumber_t
					and ordr.src_system_name in ( 'ALICE','ORACLEERPCLOUD')
					and cpqh_others.opportunityid_t is not null		
		/* New code for adding customer_type OIC Related data issue  starts here*/ 
		LEFT OUTER JOIN 
					(SELECT
						distinct ct.sms_customer_type ,
						csl.contract_number,
						cast(cast(ch.order_number as INT) as STRING) order_number,	
						ch.cust_po_number,
						csl.subline_number
					FROM
						@DB_LEVEL@_ora_alice_gold.d_contractsubline csl
					left outer join @DB_LEVEL@_ora_alice_gold.d_contractheader ch
					on csl.contract_header_id = ch.contract_header_id
					left outer join 
					(
					select distinct
						cii.instance_number,
						cii.instance_id,
						atr.ATTRIBUTE_VALUE "SMS_Customer_Type"
					from
						@DB_LEVEL@_ora_alice_silver.alice_csi_item_instances cii
					join @DB_LEVEL@_ora_alice_silver.alice_CSI_INST_EXTEND_ATTRIB_V atr
					on
						cii.instance_id = atr.instance_id
						and atr.attribute_name = 'Customer Type SMS'
					)ct on csl.instance_number = ct.instance_number
					)sms on 
					ordr.order_num=sms.order_number
					and ordr.customer_po_num=sms.cust_po_number	
					and nvl(ordr.order_detail_line_num,ordr.order_line_num) = sms.subline_number
					and sms.contract_number not like '%WR%'
		/* New code for adding customer_type OIC Related data issue  ends here*/ 					
		/*New customer hub changes */
		left outer join @DB_LEVEL@_mdm_hub_gold.d_customer_header_v ship_acc
			on ordr.legacy_ship_to_customer_account_id = ship_acc.integration_id_join
			and ordr.src_system_name = ship_acc.src_system_name_join
		left outer join  @DB_LEVEL@_mdm_hub_gold.d_customer_header_v bill_acc
			on ordr.legacy_bill_to_customer_account_id = bill_acc.integration_id_join
			and ordr.src_system_name = bill_acc.src_system_name_join
		left outer join @DB_LEVEL@_mdm_hub_gold.d_customer_header_v end_acc
			on ordr.legacy_end_customer_account_id = end_acc.integration_id_join
			and ordr.src_system_name = end_acc.src_system_name_join
		left outer join  @DB_LEVEL@_mdm_hub_gold.d_customer_header_v sold_acc
			on ordr.legacy_sold_to_customer_account_id = sold_acc.integration_id_join
			and ordr.src_system_name = sold_acc.src_system_name_join
		LEFT OUTER JOIN (select distinct party_name,party_st_address2,party_postal_cd,reseller_number from @DB_LEVEL@_edm_gold.d_party) py ON
             bill_acc.customer_name_txt = py.party_name
            and bill_acc.address1_primary_txt = py.party_st_address2
            and bill_acc.postal_code_primary_txt = py.party_postal_cd
		left outer join @DB_LEVEL@_edm_gold.d_legacy_customer_account bill_acc_leg
			on ordr.legacy_bill_to_customer_account_id = bill_acc_leg.Integration_id
			and ordr.src_system_name = bill_acc_leg.src_system_name
		left outer join @DB_LEVEL@_edm_gold.d_legacy_customer_account end_acc_leg
			on ordr.legacy_end_customer_account_id = end_acc_leg.Integration_id
			and ordr.src_system_name = end_acc_leg.src_system_name
		left outer join @DB_LEVEL@_edm_gold.d_legacy_customer_account ship_acc_leg
			on ordr.legacy_ship_to_customer_account_id = ship_acc_leg.Integration_id
			and ordr.src_system_name = ship_acc_leg.src_system_name		
		left outer join @DB_LEVEL@_edm_gold.d_legacy_customer_account sold_acc_leg
			on ordr.legacy_sold_to_customer_account_id = sold_acc_leg.Integration_id
			and ordr.src_system_name = sold_acc_leg.src_system_name
		/*New customer hub changes */
		left outer join  @DB_LEVEL@_mdm_hub_gold.d_customer_address_v ship_loc
			on ordr.legacy_ship_to_customer_loc_id = ship_loc.integration_id_join
			and ordr.src_system_name = ship_loc.src_system_name_join	
		left outer join  @DB_LEVEL@_mdm_hub_gold.d_customer_address_v bill_loc
			on ordr.legacy_bill_to_customer_loc_id = bill_loc.integration_id_join
			and ordr.src_system_name = bill_loc.src_system_name_join	
		left outer join  @DB_LEVEL@_mdm_hub_gold.d_customer_address_v end_loc
			on ordr.legacy_end_customer_loc_id = end_loc.integration_id_join
			and ordr.src_system_name = end_loc.src_system_name_join	
		left outer join @DB_LEVEL@_mdm_hub_gold.d_customer_address_v sold_loc
			on ordr.legacy_sold_to_customer_loc_id = sold_loc.integration_id_join
			and ordr.src_system_name = sold_loc.src_system_name_join	
		left outer join @DB_LEVEL@_edm_gold.d_legacy_customer_loc ship_loc_leg
			on ordr.legacy_ship_to_customer_loc_id = ship_loc_leg.Integration_id
			and ordr.src_system_name = ship_loc_leg.src_system_name
		left outer join @DB_LEVEL@_edm_gold.d_legacy_customer_loc bill_loc_leg
			on ordr.legacy_bill_to_customer_loc_id = bill_loc_leg.Integration_id
			and ordr.src_system_name = bill_loc_leg.src_system_name
		left outer join @DB_LEVEL@_edm_gold.d_legacy_customer_loc end_loc_leg
			on ordr.legacy_end_customer_loc_id = end_loc_leg.Integration_id
			and ordr.src_system_name = end_loc_leg.src_system_name
		left outer join @DB_LEVEL@_edm_gold.d_legacy_customer_loc sold_loc_leg
			on ordr.legacy_sold_to_customer_loc_id = sold_loc_leg.Integration_id
			and ordr.src_system_name = sold_loc_leg.src_system_name
        left outer join (select distinct officename_t,officenumber_t,orcl_erp_ordernumber_t from @DB_LEVEL@_cld_cpq_silver.cpq_quote_headers) cpq
            on ordr.order_num = cpq.orcl_erp_ordernumber_t
		     and ordr.sales_office_number = cpq.officenumber_t
             and ordr.sales_office_name = cpq.officename_t
			 
		left outer join (select distinct office_number,office_name from @DB_LEVEL@_sql_saleswh_silver.supplier_classification) spc
		   on case when length(ordr.sales_office_number)<5 then lpad(ordr.sales_office_number, 5,'0') 
		   when ordr.src_system_name = 'ORACLEERPCLOUD' then lpad(cpq.officenumber_t,5,'0')
            else lpad(ordr.sales_office_number, 5,'0') end = spc.office_number	 
		
		left outer join (Select distinct project_id,class_category,class_code from @DB_LEVEL@_ora_alice_silver.alice_pa_project_classes 
        where class_category = 'Project Category' and  class_code between '110' and '119' ) prc on
                    ordr.project_id = prc.project_id
					
		LEFT OUTER JOIN @DB_LEVEL@_mdm_hub_gold.legacy_customer_attributes_assignment_bysalesorder 	leg_cust_attr_saleswh on
		ordr.order_num = leg_cust_attr_saleswh.sales_order_number   --- VR 05172022 Customer info fields changes SO-644				
		
		LEFT OUTER JOIN @DB_LEVEL@_edm_gold.d_product prod ON
		ordr.product_wid = prod.row_wid
	
		LEFT OUTER JOIN @DB_LEVEL@_edm_gold.d_product_catalog cat ON
		prod.row_wid = cat.product_wid		
		LEFT OUTER JOIN @DB_LEVEL@_edm_gold.d_sales_rep rep ON
		ordr.sales_rep_wid = rep.row_wid
		LEFT OUTER JOIN (select distinct fullname,emailaddress,salesrepnumber,region from @DB_LEVEL@_cld_cpq_silver.cpq_dt_salesrepdetails) cpqrep ON    ----salesrepemail new mapping
		(ordr_extn.sales_rep_name = cpqrep.fullname OR initcap(ordr_extn.sales_rep_name) = cpqrep.fullname)
        and nvl(ordr_extn.sales_rep_num, rep.sales_rep_num) = cpqrep.salesrepnumber
        and cpqrep.region = 'CANADA'
		left outer join @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_sku sm on
		prod.product_num = sm.sm_sku
		left outer join @DB_LEVEL@_edm_other_src_silver.ref_accountsflag_sku af on
		prod.product_num = af.af_sku
		left outer join @DB_LEVEL@_edm_other_src_silver.ref_customerparentaccounts bill_ref on
		nvl(bill_acc.customer_name_txt,bill_acc_leg.account_name) = bill_ref.customer		
		left outer join @DB_LEVEL@_ershvm_silver.hvm_ers_projectmaster pm
		on  ordr.order_num = pm.projectnumber
		
		left outer join (select * from @DB_LEVEL@_edm_other_src_silver.GPHSKUAssignments where record_source = 'OPPORTUNITIES') gph_sku on
        COALESCE(prod.product_num, pm.projectcode, ordr.product_num )= gph_sku.sku
		
		left outer join (select distinct egp1.item_number, item_eff.attribute_char11 from (
        select * from @DB_LEVEL@_cld_oraerp_silver.egp_system_items_b) egp1
        left outer join @DB_LEVEL@_cld_oraerp_silver.ego_item_eff_b item_eff on
        egp1.inventory_item_id = item_eff.inventory_item_id
        AND egp1.organization_id = item_eff.organization_id
        where item_eff.context_code = 'Business Unit Price Control'
        AND upper(item_eff.acd_type) = 'PROD' and attribute_char1='Vertiv Corp'
        and organization_code='999_ITEM_MASTER')pcc on 
        COALESCE(prod.product_num, pm.projectcode, ordr.product_num ) = pcc.item_number 
        and pcc.attribute_char11 is not null
		
		LEFT OUTER JOIN
                (SELECT DISTINCT productcommissionclasscode,
                                          sku,
                                     order_number,
                                    invoice_number
                FROM @DB_LEVEL@_edm_gold.f_sales_compensation_hist) f_c on 
                             f_c.sku = ordr.product_num
                         and f_c.order_number = ordr.order_num
                         and f_c.invoice_number = inv.invoice_num
		/* New logic added to override GPH fields for list of SKU  starts*/
		LEFT OUTER join
		(select distinct 
		sku ,
		skudescription ,
		recordsource ,
		gbu ,
		lob ,
		coe ,
		product_category ,
		product_family ,
		level6 from @DB_LEVEL@_edm_other_src_silver.sku_gph_lookup) sku_lu
		on ordr.src_system_name = sku_lu.recordsource
		and NVL(ordr.product_num,pm.projectcode) = sku_lu.sku
		--new join so-652 starts
		left outer join
		(select * from @DB_LEVEL@_edm_gold.d_regional_legacy_product_catalog 
		where src_system_name='ALICE')rlpc  
		on nvl(ordr.product_num,pm.projectcode) = rlpc.product_number
		--new join so-652 ends
		/* New logic added to override GPH fields for list of SKU  ends*/
		LEFT OUTER JOIN (
			SELECT 
				* 
			FROM 
				(
				SELECT
					*,
					row_number() OVER (PARTITION BY-- customerid,
					customername,
					recordsource
				ORDER BY
					to_timestamp(date_of_change,
					'dd-MM-yyyy') DESC,recordid desc) rno
				FROM
					@DB_LEVEL@_edm_other_src_silver.customer_data db
				WHERE
					db.customertype = 'BillTo') p
			WHERE
				p.rno = 1) bill_cust ON
			nvl(bill_acc.customer_name_txt,bill_acc_leg.account_name) = bill_cust.customername
			AND nvl(bill_acc.src_system_name_join ,bill_acc_leg.src_system_name ) = bill_cust.recordsource
			AND bill_cust.customertype = 'BillTo'
		LEFT OUTER JOIN (
			SELECT
				*
			FROM
				(
				SELECT
					*,
					row_number() OVER (PARTITION BY --customerid,
					customername,
					recordsource
				ORDER BY
					to_timestamp(date_of_change,
					'dd-MM-yyyy') DESC,recordid desc) rno
				FROM
					@DB_LEVEL@_edm_other_src_silver.customer_data db) p
			WHERE
				p.rno = 1) end_cust ON
			nvl(end_acc.customer_name_txt,end_acc_leg.account_name) = end_cust.customername
			AND nvl(end_acc.src_system_name_join , end_acc_leg.src_system_name) = end_cust.recordsource
			AND end_cust.customertype = 'End'
		LEFT OUTER JOIN (
			SELECT
				*
			FROM
				(
				SELECT
					*,
					row_number() OVER (PARTITION BY-- customerid,
					customername,
					recordsource
				ORDER BY
					to_timestamp(date_of_change,
					'dd-MM-yyyy') DESC,recordid desc) rno
				FROM
					@DB_LEVEL@_edm_other_src_silver.customer_data db) p
			WHERE
				p.rno = 1) ship_cust ON
			nvl(ship_acc.customer_name_txt,ship_acc_leg.account_name )= ship_cust.customername
			AND nvl(ship_acc.src_system_name_join ,ship_acc_leg.src_system_name)  = ship_cust.recordsource
			AND ship_cust.customertype = 'ShipTo'
			
	        /*Customer tables for LES records*/
			left outer join
			(SELECT distinct a.order_nbr,b.customer_po_nbr,b.bill_to_business,c.business_name,c.business_nbr 
			FROM @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_bookings a 
			join @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_sales_order b on a.order_nbr=b.order_nbr
			join @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_business c on b.bill_to_business=c.business_nbr
			) les_bill 
			on ordr.order_num= les_bill.order_nbr
			and ordr.customer_po_num = les_bill.customer_po_nbr
			and ordr.src_system_name ='LES' 
			left outer join
			(select * from (select *, row_number() over (partition by customerid order by to_timestamp(date_of_change, 'dd-MM-yyyy') desc, recordid desc) rno
							from @DB_LEVEL@_edm_other_src_silver.customer_data 
							where recordsource='LES'
							--and customertype = 'BillTo'
							) p 
			 where p.rno = 1 
			) bill_cust_les
			on concat(les_bill.business_nbr,les_bill.business_name) = bill_cust_les.customerid
            left outer join (select DISTINCT billtocustomername,industry_classification1,market_vertical,customer_class,ultimate_parent,market_sub_vertical
             from @DB_LEVEL@_edm_other_src_silver.GSA_Customer_LES where customer_type ='BillTo') gsa_billto on
                   nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername
			left outer join
			(SELECT distinct a.order_nbr,b.customer_po_nbr, b.ship_to_business,c.business_name,c.business_nbr,d.street_1,ship_to_addr_id 
			FROM @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_bookings a 
			join @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_sales_order b on a.order_nbr=b.order_nbr
			join @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_business c on b.ship_to_business=c.business_nbr
			join  @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_address d on b.ship_to_business =d.business_nbr and c.business_nbr=d.business_nbr --2nd joining condition is redundant
			) les_ship 
			on ordr.order_num= les_ship.order_nbr
			and ordr.customer_po_num = les_ship.customer_po_nbr
			and ordr.src_system_name ='LES'
			left outer join
			(select * from (select *, row_number() over (partition by customerid order by to_timestamp(date_of_change, 'dd-MM-yyyy') desc, recordid desc) rno
							from @DB_LEVEL@_edm_other_src_silver.customer_data 
							where recordsource='LES'
							--and customertype = 'ShipTo'
							) p 
			 where p.rno = 1 
			) ship_cust_les
			on concat(les_ship.business_name,les_ship.street_1) = ship_cust_les.customerid

			left outer join
			(select distinct order_nbr,customer_po_nbr,install_at_addr_name, install_at_addr_line1 
			--,install_at_addr_city,install_at_addr_state,install_at_addr_postal
			--,install_at_addr_county
			from @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_sales_order 
			) les_end 
			on ordr.order_num=les_end.order_nbr
			and ordr.customer_po_num = les_end.customer_po_nbr
			and ordr.src_system_name ='LES'    --redundant
			
			left outer join
			(select * from (select *, row_number() over (partition by customerid order by to_timestamp(date_of_change, 'dd-MM-yyyy') desc, recordid desc) rno
							from @DB_LEVEL@_edm_other_src_silver.customer_data 
							where recordsource='LES'
							--and customertype = 'End'
							) p 
			 where p.rno = 1 
			) end_cust_les
			on concat(les_end.install_at_addr_name,les_end.install_at_addr_line1) = end_cust_les.customerid

            left outer join (select DISTINCT billtocustomername,industry_classification1,market_vertical,customer_class,ultimate_parent,market_sub_vertical
            from @DB_LEVEL@_edm_other_src_silver.GSA_Customer_LES where customer_type ='EndTo') gsa_endto on
            nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) = gsa_endto.billtocustomername
			
			left outer join
			(SELECT distinct b.order_nbr,b.ship_to_business,c.business_name,c.business_nbr 
			FROM @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_bookings a 
			join @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_sales_order b on a.order_nbr=b.order_nbr
			join @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_business c on b.sold_to_business=c.business_nbr
			) les_sold 
			on ordr.order_num=les_sold.order_nbr
			--and ordr.customer_po_num = les_sold.customer_po_nbr 
			--and ordr.src_system_name ='LES'
			left outer join
			(select * from (select *, row_number() over (partition by customerid order by to_timestamp(date_of_change, 'dd-MM-yyyy') desc, recordid desc) rno
							from @DB_LEVEL@_edm_other_src_silver.customer_data 
							where recordsource='LES'
							--and customertype = 'SoldTo'
							) p 
			 where p.rno = 1 
			) sold_cust_les
			on concat(les_sold.business_nbr,les_sold.business_name) = sold_cust_les.customerid
			

		left outer join @DB_LEVEL@_edm_other_src_silver.ref_customerparentaccounts end_ref on
			end_cust.parentaccount = end_ref.customer
		LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.parent_account_type pa ON
			end_cust.parentaccount = pa.parent_account
		LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.enterprise_industry bill_ind ON
			bill_cust.industry = bill_ind.industry1
		LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.enterprise_industry ship_ind ON
			ship_cust.industry = ship_ind.industry1
		LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.enterprise_industry end_ind ON
			end_cust.industry = end_ind.industry1
		LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.parent_gsc bill_gsc ON
			bill_cust.parentaccount = bill_gsc.parent_account
		LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.parent_gsc ship_gsc ON
			ship_cust.parentaccount = ship_gsc.parent_account
		LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.parent_gsc end_gsc ON
			end_cust.parentaccount = end_gsc.parent_account			

		LEFT OUTER JOIN (
			SELECT
				from_currency,
				to_currency,
				conversion_type,
				rate conversion_rate,
				eff_from_dtm,
				eff_to_dtm
			FROM
				@DB_LEVEL@_edm_gold.d_xrate
			WHERE
				conversion_type = 'MONTHLY_GAP_RATE'
				AND to_currency = 'USD'
				AND region = 'NA') monthly_exch_rate ON
			trunc(ordr.order_create_dt,
			'dd') >= monthly_exch_rate.eff_from_dtm
			AND trunc(ordr.order_create_dt,
			'dd') <= monthly_exch_rate.eff_to_dtm
			AND monthly_exch_rate.from_currency = ordr.lcl_currency_cd
		LEFT OUTER JOIN (select distinct org_id,inv_org_flg,org_cd from @DB_LEVEL@_edm_gold.d_org where src_system_name ='ALICE') dorg ON
					dorg.org_id = ordr.legacy_inventory_org_id
					and ordr.src_system_name = 'ALICE'
					and dorg.inv_org_flg = 'Y'			
		LEFT OUTER JOIN (
				SELECT
					SHIP.order_nbr,
					SHIP.shipment_nbr,
					SHIP.PRO_NBR_01,
					ship.origin_date,
					SHIP_L.shipment_plant plant,
					SHIP.vehicle_nbr,
					SHIP_L.marketing_part_nbr
				FROM
					@DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_shipment ship
				INNER JOIN (
					SELECT
						L1.order_nbr,
						L1.shipment_nbr,
						L1.shipment_line_nbr,
						L1.origin_date ,
						L1.shipment_plant,
						L1.marketing_part_nbr
					FROM
						@DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_shipment_line L1,
						(
						SELECT
							order_nbr,
							marketing_part_nbr,
							MAX(shipment_line_nbr) M_ship_line_nbr
						FROM
							@DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_shipment_line
						GROUP BY
							order_nbr,
							marketing_part_nbr) L2
					WHERE
						L1.order_nbr = L2.order_nbr
						AND L1.marketing_part_nbr = L2.marketing_part_nbr
						AND L1.shipment_line_nbr = L2.M_ship_line_nbr ) SHIP_L ON
					SHIP.order_nbr = SHIP_L.order_nbr
					AND SHIP.shipment_nbr = SHIP_L.shipment_nbr
					AND SHIP_L.origin_date = ship.origin_date
					AND SHIP_L.origin_date > '2009-12-31'
					AND ship.origin_date > '2009-12-31') shipd ON
				ordr.order_num = SHIPD.order_nbr 
				AND (prod.product_desc = SHIPD.marketing_part_nbr or ordr.product_num = SHIPD.marketing_part_nbr)
				-- Joining connection corrected
				/*LEFT OUTER JOIN @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_plant les_plant ON
				les_plant.plant_code = SHIPD.shipment_plant */ -- This is no longer required as we are getting Plant information from above flow
		LEFT OUTER JOIN @DB_LEVEL@_cld_oraerp_silver.doo_fulfill_lines_all line ON
			CAST(LINE.FULFILL_LINE_ID AS STRING) = ordr.integration_id
			AND ordr.src_system_name = 'ORACLEERPCLOUD'
		LEFT OUTER JOIN (
			SELECT
				from_currency,
				to_currency,
				conversion_type,
				rate conversion_rate,
				eff_from_dtm,
				eff_to_dtm
			FROM
				@DB_LEVEL@_edm_gold.d_xrate
			WHERE
				conversion_type = 'FIXED_RATE'
				AND to_currency = 'USD'
				AND region = 'NA') fixed_rate ON
			trunc(ordr.order_create_dt,
			'dd') >= fixed_rate.eff_from_dtm
			AND trunc(ordr.order_create_dt,
			'dd') <= fixed_rate.eff_to_dtm
			AND fixed_rate.from_currency = ordr.lcl_currency_cd
		LEFT OUTER JOIN (
			SELECT
				DISTINCT office_number,
				office_name,
				office_location,
				office_website,
				sales_area,
				sales_region,
				office_family,
				principal_email,
				principal
			FROM
				@DB_LEVEL@_edm_other_src_silver.rep_office_info) roi ON
			ordr.sales_office_name = roi.office_name
			
left join
(
with TT as (
SELECT distinct branch_id_number__cf as resellerbranchnumber, oracle_company_nbr__cf as customer_number
FROM @DB_LEVEL@_impartner_silver.account
where oracle_company_nbr__cf is not null and oracle_company_nbr__cf != '0' and region_hidden__cf = 'North America'
union all
SELECT distinct branch_id_number__cf as resellerbranchnumber, les_code__cf as customer_number
FROM @DB_LEVEL@_impartner_silver.account
where les_code__cf is not null and region_hidden__cf = 'North America'
)
SELECT customer_number, src_system_name_join,resellerbranchnumbernew as resellerbranchnumber, resellerbranchname, mdm_hdr_id, customer_name_txt, ultimate_parent_txt
FROM (
SELECT *,
case
WHEN resellerbranchnumber is null then null
WHEN resellerbranchnumber = '1939' and mdm_hdr_id in (388004) and ultimate_parent_txt = 'DELL' then 'DELL COMPUTER CORP'
WHEN resellerbranchnumber = '1939' and mdm_hdr_id in (387997) and ultimate_parent_txt = 'DELL' then 'DELL CANADA'
WHEN resellerbranchnumber = '1939' and mdm_hdr_id not in (388004,387997) and ultimate_parent_txt = 'DELL' then null
WHEN resellerbranchnumber = '491' and mdm_hdr_id in (240861,240870,240872,240878,240887,240895,484110,484111,499021) and ultimate_parent_txt = 'NTT/RAGINGWIRE' then 'NTT DATA'
WHEN resellerbranchnumber = '491' and mdm_hdr_id in (113487) and ultimate_parent_txt = 'NTT/RAGINGWIRE' then 'ELECTRONIC ENVIRONMENTS CO. LLC'
WHEN resellerbranchnumber = '491' and mdm_hdr_id not in (240861,240870,240872,240878,240887,240895,484110,484111,499021) and ultimate_parent_txt = 'NTT/RAGINGWIRE' then null
WHEN resellerbranchnumber in ('1134','108') and mdm_hdr_id in (33364,33365,33366,33367) and ultimate_parent_txt = 'AT&T' then 'AT&T MOBILITY'
WHEN resellerbranchnumber in ('1134','108') and mdm_hdr_id in (492626,368870) and ultimate_parent_txt = 'AT&T' then 'WIRE TECHNOLOGIES'
WHEN resellerbranchnumber in ('1134','108') and mdm_hdr_id not in (33364,33365,33366,33367,492626,368870) and ultimate_parent_txt = 'AT&T' then null
else nvl(ultimate_parent_txt, customer_name_txt)
end as resellerbranchname,
case
WHEN resellerbranchnumber is null then null
WHEN resellerbranchnumber = '1939' and mdm_hdr_id in (388004) and ultimate_parent_txt = 'DELL' then '1939'
WHEN resellerbranchnumber = '1939' and mdm_hdr_id in (387997) and ultimate_parent_txt = 'DELL' then '1939'
WHEN resellerbranchnumber = '1939' and mdm_hdr_id not in (388004,387997) and ultimate_parent_txt = 'DELL' then null
WHEN resellerbranchnumber = '491' and mdm_hdr_id in (240861,240870,240872,240878,240887,240895,484110,484111,499021) and ultimate_parent_txt = 'NTT/RAGINGWIRE' then '443'
WHEN resellerbranchnumber = '491' and mdm_hdr_id in (113487) and ultimate_parent_txt = 'NTT/RAGINGWIRE' then '491'
WHEN resellerbranchnumber = '491' and mdm_hdr_id not in (33364,33365,33366,33367,492626,368870) and ultimate_parent_txt = 'NTT/RAGINGWIRE' then null
WHEN resellerbranchnumber in ('1134','108') and mdm_hdr_id in (33364,33365,33366,33367) and ultimate_parent_txt = 'AT&T' then '108'
WHEN resellerbranchnumber in ('1134','108') and mdm_hdr_id in (492626,368870) and ultimate_parent_txt = 'AT&T' then '1134'
WHEN resellerbranchnumber in ('1134','108') and mdm_hdr_id not in (33364,33365,33366,33367,492626,368870) and ultimate_parent_txt = 'AT&T' then null
else resellerbranchnumber
end as resellerbranchnumbernew
from
(
SELECT customer_number, src_system_name_join, mdm_hdr_id, customer_name_txt,ultimate_parent_txt, max(resellerbranchnumber1)
OVER (PARTITION BY nvl(ultimate_parent_txt,customer_name_txt)) AS 'resellerbranchnumber'
FROM
(
SELECT b.resellerbranchnumber,nvl(a.customer_number,a.integration_id_join) as customer_number, a.src_system_name_join, a.mdm_hdr_id, a.ultimate_parent_txt, a.customer_name_txt
, max(b.resellerbranchnumber) OVER (PARTITION BY a.mdm_hdr_id) AS 'resellerbranchnumber1'
FROM @DB_LEVEL@_mdm_hub_gold.d_customer_header_v a
left join TT b
on a.customer_number = b.customer_number
) c
) d
) e
) AS XX
ON nvl(bill_acc.customer_number,bill_acc_leg.account_num) = XX.customer_number and nvl(XX.customer_number,'N') != 'N' and ordr.src_system_name = xx.src_system_name_join
left Join  @DB_LEVEL@_edm_other_src_silver.Varsdatabase_Sellingmotion h on 
nvl(bill_acc.customer_number,bill_acc_leg.account_num) = h.Business_Nbr			
			
			
LEFT OUTER JOIN 			
(SELECT Cast(order_number AS STRING) AS order_number,
                               orig_sys_line_ref            AS order_line,
                               ol.line_number,
                               ol.header_id,
                               ol.ordered_item,
                               ol.item_type_code,
                               xx.ordered_item              AS Sku_for_DS,
                               'ALICE'                      AS JoinRecordSource
                        FROM   @DB_LEVEL@_ora_alice_silver.alice_oe_order_lines_all ol
                               JOIN
                       @DB_LEVEL@_ora_alice_silver.alice_oe_order_headers_all oh
                                 ON ol.header_id = oh.header_id
                               JOIN (SELECT header_id,
                                            ordered_item,
                                            item_type_code,
                                            top_model_line_id
                                     FROM
                               @DB_LEVEL@_ora_alice_silver.alice_oe_order_lines_all
                                     WHERE  item_type_code = 'CONFIG') xx
                                 ON xx.header_id = ol.header_id
                                    AND
                       xx.top_model_line_id = ol.top_model_line_id
                        WHERE  ol.top_model_line_id = ol.line_id                       
                       ) fix on ordr.order_num = fix.order_number
							 AND nvl(ordr.product_num,prod.product_num) = fix.ordered_item
							 AND ordr.src_system_name = fix.joinrecordsource
					         AND Split_part(ordr.order_detail_line_num, '.', 1) = Cast(fix.line_number AS STRING) 
		) a
		left outer join @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_accounts sa on
		  upper(a.billtocustomerparentaccount) = upper(sa.acct_name)			
        left outer join @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_accounts sb on
		  upper(a.EndCustomerParentAccount) = upper(sb.acct_name)
		left outer join (select distinct 
           egp1.item_number,
           item_eff.attribute_char1 from (
           select * from @DB_LEVEL@_cld_oraerp_silver.egp_system_items_b) egp1
        left outer join @DB_LEVEL@_cld_oraerp_silver.ego_item_eff_b item_eff  on
        egp1.inventory_item_id = item_eff.inventory_item_id
        AND egp1.organization_id = item_eff.organization_id
        where  item_eff.context_code like '%OEM%'
        and user_item_type = 'Finished Good')so on a.sku = so.item_number
		left outer join 
		(
		 select a.salesordernumber, a.orderexlinenumber, a.lob, a.gbu, sum(netsalesrevenue) sum_netsales from @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na a
			group by a.salesordernumber, a.orderexlinenumber, a.lob, a.gbu 
		) sn on a.salesordernumber = sn.salesordernumber and a.orderexlinenumber = sn.orderexlinenumber and a.lob = sn.lob and a.gbu = sn.gbu 
		) b 
		 left outer join (select distinct customer_sub_class,customer_name_txt from @DB_LEVEL@_mdm_hub_gold.d_customer_header) dc_h on
				  upper(aop_account_name) = upper(dc_h.customer_name_txt)
		)dt )tt )st)s1;
		
	--Query created by Kedar for Geist data 06/06/2022
	--salesOps requirement
	insert into @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na
		
	SELECT
    account_type_aop,
	AccountAM,
	AccountCSM,
	AccountLead,
	AccountPresence,
	AccountServiceSales,
	AccountSubType,
	AccountType,
	AOP_Account_Name,
	AOP_Category,
	BillToAccountRole,
	BillToCustomer,
	BillToCustomerAddress,
	BillToCustomerCustomerType1,
	BillToCustomerEnterpriseIndustry,
	BillToCustomerGSC,
	BillToCustomerIndustry1,
	BillToCustomerName,
	BillToCustomerName2,
	BillToCustomerNumber,
	BillToCustomerParentAccount,
	BillToCustomerPostalCode,
	BillToCustomerStandardizedName,
	BillToCustomerVertical,
	bsid,
	ChannelFlag,	
	COE,
	COE_New,
	ContractType,
	CustomerPurchaseOrderNumber,
	CustomerRequestDate,
	Data_Last_Refreshed,
	EndCustomer,
	EndCustomerAccountRole,
	EndCustomerAddress,
	EndCustomerCity,
	EndCustomerCountry,
	EndCustomerCustomerType1,
	EndCustomerEnterpriseIndustry,
	EndCustomerGSC,
	EndCustomerIndustry1,
	EndCustomerName,
	EndCustomerNumber,
	EndCustomerParentAccount,
	EndCustomerPostalCode,
	EndCustomerStandardizedExists,
	EndCustomerStandardizedName,
	EndCustomerState,
	EndCustomerState2,
	EndCustomerVertical,
	ExchangeRateUsed,
	ExtendedListPrice,
	GBU,
	growth_target,
	alicecommissionoverridepercent,
	Level_6,
	ListPrice,
	LOB,
	NetSalesRevenue,
	Office_Group,
	office_website,
	OrderCoordinator,
	OrderCreateDate,
	OrderLastUpdateDate,
	OrderEXLineNumber,
	PartnerWebFolderID,
	PartnerWebQuoteNumber,
	Plant,
	PlantDescription,
	Product_Category,
	Product_Category_New,
	Product_Family,
	Product_Family_New,
	PROShipmentNumber,
	QuantityOrdered,
	quoteid,
	RecordSource,
	SalesOfficeName,
	SalesOfficeNumber,
	SalesOfficePrincipalEmail,
	SalesOfficeReferenceNumber,
	SalesOrderNumber,
	SalesRegionName,
	SalesRegionNumber,
	SalesRepEmail,
	SalesRepID,
	SalesRepName,
	SalesRepType,
	SAPOEMTag,
	Selling_Motion,
	OrderDeliveryPromisedDate,
	Segment,
	SFR_Category,
	ShipDate,
	ShipmentCarrierName,
	ShippedQuantity,
	ShipToCustomerAddress,
	ShipToCustomerCountry,
	ShipToCustomerCustomerType1,
	ShipToCustomerEnterpriseIndustry,
	ShipToCustomerGSC,
	ShipToCustomerIndustry1,
	ShipToCustomerName,
	ShipToCustomerNumber,
	ShipToCustomerParentAccount,
	ShipToCustomerStandardizedName,
	ShipToCustomerVertical,
	sizecategory,
	SKU,
	SKUDescription,
	SMSBatteriesOnlyFlag,
	SMSBatteryRBSM,
	SMSContractEndDate,
	SMSContractExpireDate,
	SMSContractPMs,
	SMSContractSequence,
	SMSContractStartDate,
	SMSContractStatus,
	SMSCustomerType,
	SMSEquipmentSegment,
	SMSRevCat,
	SMSSiteId,
	SMSStackedWhenBooked,
	SMSTagNumber,
	SMSTicketNumber,
	SMSTicketType,
	SoldToCustomerCustomerType1,
	SoldToCustomerEnterpriseIndustry,
	SoldToCustomerGSC,
	SoldToCustomerIndustry1,
	SoldToCustomerName,
	SoldToCustomerParentAccount,
	SoldToCustomerStandardizedName,
	SoldToCustomerVertical,
	SPEED_DIAL,
	Sales_Area,
	effective_user() as w_insert_by,
	now() as w_insert_dtm,
    'SalesOps' as src_system_name,
    resellernumber,
	resellerbranchnumber,
	resellerbranchname,
	office_type,
	uom,
	sales_order_line_type,
	Order_type,
	Class_code,
	OEM_FLAG,
	BillToCustomerClassCode,
	EndCustomerClassCode,
	ShipToCustomerClassCode,
	SoldToCustomerClassCode,
	BillToCustomerPartnerClassCode,
	EndCustomerPartnerClassCode,
	ShipToCustomerPartnerClassCode,
	SoldToCustomerPartnerClassCode,
	BillToOracleRegistryID, 
	EndOracleRegistryID,
	ShipToOracleRegistryID,
	SoldToOracleRegistryID,
	BillToCustomerIndustry3,
	EndCustomerIndustry3,
	ShipToCustomerIndustry3,
	SoldToCustomerIndustry3,
	BillToCustomerSubVertical,
	EndCustomerSubVertical,
	ShipToCustomerSubVertical,
	SoldToCustomerSubVertical,
	BillToReportingSubParent1,
	EndReportingSubParent1,
	ShipToReportingSubParent1,
	SoldToReportingSubParent1,
	BillToDefinitiveIDNID,
	EndDefinitiveIDNID,
	ShipToDefinitiveIDNID,
	SoldToDefinitiveIDNID,
	BillToDefinitiveIDNIDParentID,
	EndDefinitiveIDNIDParentID,
	ShipToDefinitiveIDNIDParentID,
	SoldToDefinitiveIDNIDParentID,
	BillToNCESLEAID,
	EndNCESLEAID,
	ShipToNCESLEAID,
	SoldToNCESLEAID,
	SoldToCustomerAddress,
	BillToCustomerCity,
	ShipToCustomerCity,
	SoldToCustomerCity,
	BillToCustomerState,
	ShipToCustomerState,
	SoldToCustomerState,
	BillToCustomerProvince,
	EndCustomerProvince,
	ShipToCustomerProvince,
	SoldToCustomerProvince,
	BillToCustomerCountry,
	SoldToCustomerCountry,
	ShipToCustomerPostalCode,
	SoldToCustomerPostalCode,
	BillToOraclePartySiteNumber,  
	EndOraclePartySiteNumber,
	ShipToOraclePartySiteNumber,
	SoldToOraclePartySiteNumber,
	BillToDefinitiveID,
	EndDefinitiveID,
	ShipToDefinitiveID,
	SoldToDefinitiveID,
	BillToNCESSCHID,
	EndNCESSCHID,
	ShipToNCESSCHID,
	SoldToNCESSCHID,
	BillToAccountType,
	EndAccountType,
	ShipToAccountType,
	SoldToAccountType,
	productcommissionclasscode,
	'Orders' as Measure,
	Calendar_Month,
	Calendar_Year,
	Local_Currency,
	Sales_Office,
	Unit_Price,
	UNIT_PRICE_FXD_USD,
	BillToServicesMajorAcc,
	EndServicesMajorAcc,
	ShipToServicesMajorAcc,
	SoldToServicesMajorAcc,
	BillToCustomerSubClass, 
    EndCustomerSubClass,
    ShipToCustomerSubClass,
    SoldToCustomerSubClass, 
	aop_customer_sub_class
	
	from(
select distinct *,
CASE
		WHEN temp_motion2 = 'FIELD SALES'
		AND (upper(lob) != 'DC POWER'
		OR (nvl(lob,
		'N') = 'N'))
		AND (upper(billtocustomerpartnerclasscode) IN ('SOLUTIONS PARTNER', 'AUTHORIZED DISTRIBUTOR')
		OR upper(recordsource) LIKE '%CONTEXT%'
		OR upper(oem_flag) = 'DELL'
		OR upper(level_6) LIKE '%SECURE%') THEN 'CHANNEL'
		ELSE temp_motion2
	END selling_motion
	
from(
select distinct *,
 CASE
		    WHEN temp_motion = 'FIELD SALES'
		    AND ((upper(endcustomerclasscode) = 'GLOBAL STRATEGIC ACCOUNT'
		    OR upper(billtocustomerclasscode) = 'GLOBAL STRATEGIC ACCOUNT')
		    OR (plant IN ('102', '103', '105', '106')
		    AND upper(recordsource) IN ('ORACLEERPCLOUD'))
		    OR upper(oem_flag) IN ('LENOVO', 'IBM', 'HPE')) THEN 'ACCOUNT'
		    WHEN temp_motion = 'FIELD SALES'
		    AND upper(recordsource) = 'ERS_HVM'
		    AND upper(billtoaccounttype) != 'INTERNAL' THEN 'ERS/HVM'
		    ELSE temp_motion
	        END temp_motion2	
			
from(
select distinct *,
 CASE
		    WHEN upper(billtoaccounttype) = 'INTERNAL'
		    AND upper(billtocustomercountry) = 'UNITED STATES' THEN 'INTERCOMPANY USA'
		    WHEN upper(billtoaccounttype) = 'INTERNAL'
		    AND upper(billtocustomercountry) = 'CANADA' THEN 'INTERCOMPANY CANADA'
		    WHEN upper(billtoaccounttype) = 'INTERNAL'
		    AND (upper(billtocustomercountry) NOT IN ('UNITED STATES', 'CANADA')
		    OR (nvl(billtocustomercountry,'N') = 'N')) THEN 'INTERCOMPANY OTHER'
		    ELSE 'FIELD SALES'
	        END temp_motion
			
		FROM
           (
       SELECT
		'' account_type_aop,
		'' AccountAM,
		'' AccountCSM,
		'' AccountLead,
		'' AccountPresence,
		'' AccountServiceSales,
		'' AccountSubType,
		'' AccountType,
		'' AOP_Account_Name,
		'' AOP_Category,
		'' BillToAccountRole,
		upper(b.attn) BillToCustomer,
		CASE
		WHEN b.addr1 IS NOT NULL
		AND b.addr2 IS NOT NULL
		AND b.addr3 IS NULL THEN upper(concat(b.addr1,' ,',b.addr2))
		WHEN b.addr1 IS NOT NULL
		AND b.addr2 IS NOT NULL
		AND b.addr3 IS NOT NULL THEN upper(concat(b.addr1,' ,',b.addr2,' ,',b.addr3))
		WHEN b.addr1 IS NOT NULL
		AND b.addr2 IS NULL
		AND b.addr3 IS NOT NULL THEN upper(concat(b.addr1,' ,',b.addr3))
		WHEN b.addr1 IS NULL
		AND b.addr2 IS NOT NULL
		AND b.addr3 IS NOT NULL THEN upper(concat(b.addr2,' ,',b.addr3))
		ELSE upper(coalesce(b.addr1,b.addr2,b.addr3))
		END as BillToCustomerAddress,
		'' BillToCustomerCustomerType1,
		'' BillToCustomerEnterpriseIndustry,
		'' BillToCustomerGSC,
		'' BillToCustomerIndustry1,
		upper(b.attn) BillToCustomerName,
		'' BillToCustomerName2,
		trim(upper(c.custno)) BillToCustomerNumber,
		'' BillToCustomerParentAccount,
		trim(upper(b.zip)) BillToCustomerPostalCode,
		upper(b.attn) BillToCustomerStandardizedName,
		'' BillToCustomerVertical,
		'' bsid,
		'' ChannelFlag,
		upper(catl.catalog_lvl_desc_3) COE,
		'' COE_New,
		'' ContractType,
		'' CustomerPurchaseOrderNumber,
		cast('' as timestamp) CustomerRequestDate,
		cast('' as timestamp) Data_Last_Refreshed,
		upper(s.attn) EndCustomer,
		'' EndCustomerAccountRole,
		CASE
		WHEN s.addr1 IS NOT NULL
		AND s.addr2 IS NOT NULL
		AND s.addr3 IS NULL THEN upper(concat(s.addr1,' ,',s.addr2))
		WHEN s.addr1 IS NOT NULL
		AND s.addr2 IS NOT NULL
		AND s.addr3 IS NOT NULL THEN upper(concat(s.addr1,' ,',s.addr2,' ,',s.addr3))
		WHEN s.addr1 IS NOT NULL
		AND s.addr2 IS NULL
		AND s.addr3 IS NOT NULL THEN upper(concat(s.addr1,' ,',s.addr3))
		WHEN s.addr1 IS NULL
		AND s.addr2 IS NOT NULL
		AND s.addr3 IS NOT NULL THEN upper(concat(s.addr2,' ,',s.addr3))
		ELSE upper(coalesce(s.addr1,s.addr2,s.addr3))
		END AS EndCustomerAddress,
		trim(upper(s.city)) EndCustomerCity,
		trim(upper(s.country)) EndCustomerCountry,
		'' EndCustomerCustomerType1,
		'' EndCustomerEnterpriseIndustry,
		'' EndCustomerGSC,
		'' EndCustomerIndustry1,
		upper(s.attn) EndCustomerName,
		trim(upper(c.custno)) EndCustomerNumber,
		'' EndCustomerParentAccount,
		trim(upper(s.zip)) EndCustomerPostalCode,
		'' EndCustomerStandardizedExists,
		'' EndCustomerStandardizedName,
		upper(s.state) EndCustomerState,
		'' EndCustomerState2,
		'' EndCustomerVertical,
		cast('' as double) ExchangeRateUsed,
		CASE WHEN i.nuser4 <> 0 and sub.no_of_comm <> 0
		THEN round(nvl(i.nuser4,0)* nvl(r.QUAN,0)/nvl(sub.no_of_comm,1),2)
		ELSE 0
		END as ExtendedListPrice,
		upper(catl.catalog_lvl_desc_1) GBU,
		'' growth_target,
		'' alicecommissionoverridepercent,
		upper(catl.catalog_lvl_desc_6) Level_6,
		nvl(i.nuser4,0) ListPrice,
		--'RACK PDU' LOB,
		upper(catl.catalog_lvl_desc_2)  LOB,
		CASE WHEN od.UNIT_PRICE <> 0 and sub.no_of_comm <> 0
		THEN round(nvl(od.UNIT_PRICE,0) * nvl(r.QUAN,0)/nvl(sub.no_of_comm,1),2)
		ELSE 0
		END as NetSalesRevenue,
		'' Office_Group,
		'' office_website,
		'' OrderCoordinator,
		cast(o.ord_date as timestamp) OrderCreateDate,
		cast(o.date_taken as string) OrderLastUpdateDate,
		'' OrderEXLineNumber,
		'' PartnerWebFolderID,
		'' PartnerWebQuoteNumber,
		cast(e.id as string) Plant,
		'' PlantDescription,
		upper(g.Primary_Category) Product_Category,
		upper(g.subcategory) Product_Category_New,
		upper(g.product_class) Product_Family,
		upper(g.product_line) Product_Family_New,
		'' PROShipmentNumber,
		CASE WHEN sub.no_of_comm <> 0 
		THEN nvl(r.QUAN /nvl(sub.no_of_comm,1),0)
		ELSE 0
		END as QuantityOrdered,
		'' quoteid,
		'GEIST' RecordSource,
		upper(sa.last_name) SalesOfficeName,
		upper(sa.sales_code) SalesOfficeNumber,
		'' SalesOfficePrincipalEmail,
		'' SalesOfficeReferenceNumber,
		o.orderno SalesOrderNumber,
		upper(sa.first_name) SalesRegionName,
		'' SalesRegionNumber,
		'' SalesRepEmail,
		'' SalesRepID,
		'' SalesRepName,
		'' SalesRepType,
		'' SAPOEMTag,
		cast('' as timestamp) OrderDeliveryPromisedDate,
		'' Segment,
		'' SFR_Category,
		r.promise_date ShipDate,
		'' ShipmentCarrierName,
		CASE WHEN sub.no_of_comm <> 0 
		THEN nvl(r.SHIPPED_QUAN / nvl(sub.no_of_comm,1),0)
		ELSE 0
		END as ShippedQuantity,
		CASE
		WHEN s.addr1 IS NOT NULL
		AND s.addr2 IS NOT NULL
		AND s.addr3 IS NULL THEN upper(concat(s.addr1,' ,',s.addr2))
		WHEN s.addr1 IS NOT NULL
		AND s.addr2 IS NOT NULL
		AND s.addr3 IS NOT NULL THEN upper(concat(s.addr1,' ,',s.addr2,' ,',s.addr3))
		WHEN s.addr1 IS NOT NULL
		AND s.addr2 IS NULL
		AND s.addr3 IS NOT NULL THEN upper(concat(s.addr1,' ,',s.addr3))
		WHEN s.addr1 IS NULL
		AND s.addr2 IS NOT NULL
		AND s.addr3 IS NOT NULL THEN upper(concat(s.addr2,' ,',s.addr3))
		ELSE upper(coalesce(s.addr1,s.addr2,s.addr3))
		END AS ShipToCustomerAddress,
		trim(upper(s.country)) ShipToCustomerCountry,
		'' ShipToCustomerCustomerType1,
		'' ShipToCustomerEnterpriseIndustry,
		'' ShipToCustomerGSC,
		'' ShipToCustomerIndustry1,
		upper(s.attn) ShipToCustomerName,
		trim(upper(c.custno)) ShipToCustomerNumber,
		'' ShipToCustomerParentAccount,
		'' ShipToCustomerStandardizedName,
		'' ShipToCustomerVertical,
		'' sizecategory,
		upper(trim(i.itemno)) as SKU,
		upper(i.descrip) SKUDescription,
		'' SMSBatteriesOnlyFlag,
		'' SMSBatteryRBSM,
		'' SMSContractEndDate,
		'' SMSContractExpireDate,
		'' SMSContractPMs,
		'' SMSContractSequence,
		'' SMSContractStartDate,
		'' SMSContractStatus,
		'' SMSCustomerType,
		'' SMSEquipmentSegment,
		'' SMSRevCat,
		'' SMSSiteId,
		'' SMSStackedWhenBooked,
		'' SMSTagNumber,
		'' SMSTicketNumber,
		'' SMSTicketType,
		'' SoldToCustomerCustomerType1,
		'' SoldToCustomerEnterpriseIndustry,
		'' SoldToCustomerGSC,
		'' SoldToCustomerIndustry1,
		'' SoldToCustomerName,
		'' SoldToCustomerParentAccount,
		'' SoldToCustomerStandardizedName,
		'' SoldToCustomerVertical,
		'' SPEED_DIAL,
		'' Sales_Area,
		effective_user() as w_insert_by,
		now() as w_insert_dtm,
		'SalesOps' as src_system_name,
		'' resellernumber,
		'' resellerbranchnumber,
		'' resellerbranchname,
		'' office_type,
		'' uom,
		'' sales_order_line_type,
		'' Order_type,
		'' Class_code,
		pro.oem_flag OEM_FLAG,
		dch_v.customer_class_code_txt BillToCustomerClassCode,
		dch_v.customer_class_code_txt EndCustomerClassCode,
		'' ShipToCustomerClassCode,
		'' SoldToCustomerClassCode,
		dch_v.partner_class_code_txt BillToCustomerPartnerClassCode,
		'' EndCustomerPartnerClassCode,
		'' ShipToCustomerPartnerClassCode,
		'' SoldToCustomerPartnerClassCode,
		'' BillToOracleRegistryID, 
		'' EndOracleRegistryID,
		'' ShipToOracleRegistryID,
		'' SoldToOracleRegistryID,
		'' BillToCustomerIndustry3,
		'' EndCustomerIndustry3,
		'' ShipToCustomerIndustry3,
		'' SoldToCustomerIndustry3,
		'' BillToCustomerSubVertical,
		'' EndCustomerSubVertical,
		'' ShipToCustomerSubVertical,
		'' SoldToCustomerSubVertical,
		'' BillToReportingSubParent1,
		'' EndReportingSubParent1,
		'' ShipToReportingSubParent1,
		'' SoldToReportingSubParent1,
		'' BillToDefinitiveIDNID,
		'' EndDefinitiveIDNID,
		'' ShipToDefinitiveIDNID,
		'' SoldToDefinitiveIDNID,
		'' BillToDefinitiveIDNIDParentID,
		'' EndDefinitiveIDNIDParentID,
		'' ShipToDefinitiveIDNIDParentID,
		'' SoldToDefinitiveIDNIDParentID,
		'' BillToNCESLEAID,
		'' EndNCESLEAID,
		'' ShipToNCESLEAID,
		'' SoldToNCESLEAID,
		'' SoldToCustomerAddress,
		trim(upper(b.city)) BillToCustomerCity,
		trim(upper(s.city)) ShipToCustomerCity,
		'' SoldToCustomerCity,
		upper(b.state) BillToCustomerState,
		upper(s.state) ShipToCustomerState,
		'' SoldToCustomerState,
		'' BillToCustomerProvince,
		'' EndCustomerProvince,
		'' ShipToCustomerProvince,
		'' SoldToCustomerProvince,
		trim(upper(b.country)) BillToCustomerCountry,
		'' SoldToCustomerCountry,
		trim(upper(s.zip)) ShipToCustomerPostalCode,
		'' SoldToCustomerPostalCode,
		'' BillToOraclePartySiteNumber,  
		'' EndOraclePartySiteNumber,
		'' ShipToOraclePartySiteNumber,
		'' SoldToOraclePartySiteNumber,
		'' BillToDefinitiveID,
		'' EndDefinitiveID,
		'' ShipToDefinitiveID,
		'' SoldToDefinitiveID,
		'' BillToNCESSCHID,
		'' EndNCESSCHID,
		'' ShipToNCESSCHID,
		'' SoldToNCESSCHID,
		/* case when dch_v.buying_customer_flg ='Y' then dch_v.customer_type_txt 
         else ''
        END BillToAccountType, */
		CASE WHEN (dch_v.buying_customer_flg IS NULL AND dch_v.customer_type_txt = 'EXTERNAL')
		THEN dch_v.customer_type_txt
		WHEN dch_v.buying_customer_flg ='Y' THEN dch_v.customer_type_txt
		ELSE ''
		END BillToAccountType,
		'' EndAccountType,
		'' ShipToAccountType,
		'' SoldToAccountType,
		CASE
		WHEN trim(CAST(com_code.attribute_char11 AS STRING)) = ''
		OR CAST(com_code.attribute_char11 AS STRING) IS NULL THEN 'NA'
		ELSE CAST(com_code.attribute_char11 AS STRING)
		END productcommissionclasscode,
		'Orders' as Measure,
		cast(extract(month from o.ord_date) as int) as Calendar_Month,
		cast(extract(year from o.ord_date) as int) as Calendar_Year,
		u.curr_code as Local_Currency,
		upper(e.company) as Sales_Office,
		nvl(od.unit_price,0) as Unit_Price,
		CASE nvl(u.CURR_CODE,'USD')
			WHEN 'GBP' THEN round(nvl (od.UNIT_PRICE,0) * nvl(et.rate,0),2)
			WHEN 'EUR' THEN round(nvl(od.UNIT_PRICE,0) * nvl(et.rate,0),2)
			WHEN 'CNY' THEN round(nvl(od.UNIT_PRICE,0) * nvl(et.rate,0),2)
			else round(nvl(od.UNIT_PRICE,0),2) end as Unit_Price_FXD_USD,
		'' BillToServicesMajorAcc,--so-665 new attributes addition starts
		'' EndServicesMajorAcc,
		'' ShipToServicesMajorAcc,
		'' SoldToServicesMajorAcc,--so-665 new attributes addition ends
		'' BillToCustomerSubClass, --so-728 new attributes addition starts
		'' EndCustomerSubClass,
		'' ShipToCustomerSubClass,
		'' SoldToCustomerSubClass, --so-728 new attributes addition ends
		'' aop_customer_sub_class
	

from (SELECT ID, ORDERNO, ord_date, DATE_TAKEN, EPLANT_ID, arcusto_id, ship_to_id, bill_to_id, CURRENCY_ID FROM @DB_LEVEL@_geist_silver.geist_orders
  UNION
  SELECT ID, ORDERNO, ord_date, DATE_TAKEN, EPLANT_ID, arcusto_id, ship_to_id, bill_to_id, CURRENCY_ID FROM @DB_LEVEL@_geist_silver.geist_hist_orders) o
left outer join @DB_LEVEL@_geist_silver.geist_arcusto c on o.arcusto_id = C.Id
left outer join @DB_LEVEL@_geist_silver.geist_ship_to s on o.ship_to_id = s.id
left outer join @DB_LEVEL@_geist_silver.geist_bill_to b on o.bill_to_id = b.id
left outer join (SELECT ID, ORDERS_ID, unit_price, arinvt_id
                FROM @DB_LEVEL@_geist_silver.geist_ORD_DETAIL 
                UNION
                SELECT ID, ORDERS_ID, unit_price, arinvt_id
                FROM @DB_LEVEL@_geist_silver.geist_HIST_ORD_DETAIL) od on o.id=od.orders_id
left outer join @DB_LEVEL@_geist_silver.geist_ORD_DETAIL_COMMISSIONS odc on od.id = odc.ORD_DETAIL_ID
left outer join @DB_LEVEL@_geist_silver.geist_salespeople sa on odc.SALESPEOPLE_ID = sa.id
left outer join @DB_LEVEL@_geist_silver.geist_pce_multicurrency_usd_order p on p.ord_detail_id = od.id
left outer join  (select id, promise_date, request_date, quan, shipped_quan, ord_detail_id
              from @DB_LEVEL@_geist_silver.geist_releases
              union 
              select id, promise_date, request_date, quan, shipped_quan, ord_detail_id
              from @DB_LEVEL@_geist_silver.geist_hist_releases
              ) r on  od.id = r.ord_detail_id
left outer join @DB_LEVEL@_geist_silver.geist_G_Arinvt_Tech_Info g on od.arinvt_id = g.arinvt_id
    left outer join @DB_LEVEL@_geist_silver.geist_arinvt i on od.arinvt_id = i.id
    left outer join @DB_LEVEL@_geist_silver.geist_eplant e on o.eplant_id = e.id
    left outer join @DB_LEVEL@_geist_silver.geist_currency u on o.CURRENCY_ID = u.id

LEFT OUTER JOIN(
select aa.rate,aa.eff_to_dtm,aa.eff_from_dtm,aa.from_currency
from (SELECT r.rate,r.eff_to_dtm,r.eff_from_dtm,r.from_currency,
row_number() OVER (PARTITION BY r.from_currency,r.to_currency ORDER BY r.eff_to_dtm desc ) rno
FROM @DB_LEVEL@_edm_gold.d_xrate r
where r.from_currency = 'GBP'
and r.to_currency = 'USD')aa where aa.rno=1
union all
select bb.rate,bb.eff_to_dtm,bb.eff_from_dtm,bb.from_currency
from
(SELECT r.rate,r.eff_to_dtm,r.eff_from_dtm,r.from_currency,
row_number() OVER (PARTITION BY r.from_currency,r.to_currency ORDER BY r.eff_to_dtm desc ) rno
FROM @DB_LEVEL@_edm_gold.d_xrate r
where r.from_currency = 'EUR'
and r.to_currency = 'USD')bb where bb.rno=1
union all
select cb.rate,cb.eff_to_dtm,cb.eff_from_dtm,cb.from_currency
from
(SELECT r.rate,r.eff_to_dtm,r.eff_from_dtm,r.from_currency,
row_number() OVER (PARTITION BY r.from_currency,r.to_currency ORDER BY r.eff_to_dtm desc ) rno
FROM @DB_LEVEL@_edm_gold.d_xrate r
where
r.from_currency = 'CNY'
and r.to_currency = 'USD')cb where cb.rno=1
) ET
ON u.CURR_CODE = ET.FROM_CURRENCY
left outer join (select ord_detail_id, count(ord_detail_id) as no_of_comm from @DB_LEVEL@_geist_silver.geist_ord_detail_commissions group by ord_detail_id) sub on od.id = sub.ord_detail_id
LEFT OUTER JOIN @DB_LEVEL@_edm_gold.d_product pro ON
upper(trim(i.itemno))=pro.part_num
LEFT OUTER JOIN @DB_LEVEL@_edm_gold.d_product_catalog catl ON
pro.row_wid = catl.product_wid 
LEFT JOIN @DB_LEVEL@_mdm_hub_gold.d_customer_header_v dch_v on
dch_v.customer_number = c.custno
and dch_v.src_system_name = 'POS-CONTEXT-GEIST'
LEFT OUTER JOIN (
	SELECT * FROM
		(SELECT * FROM
			(
			SELECT EGP1.ORGANIZATION_CODE,EGP1.DESCRIPTION,EGP1.ITEM_NUMBER,ROW_NUMBER() OVER (PARTITION BY ITEM_EFF.INVENTORY_ITEM_ID,ITEM_EFF.ORGANIZATION_ID,ITEM_EFF.CONTEXT_CODE ORDER BY ITEM_EFF.LAST_UPDATE_DATE DESC) ROWNUM,item_eff.*
			FROM
				@DB_LEVEL@_cld_oraerp_silver.egp_system_items_b egp1,
				@DB_LEVEL@_cld_oraerp_silver.ego_item_eff_b item_eff
			WHERE
				EGP1.INVENTORY_ITEM_ID = ITEM_EFF.INVENTORY_ITEM_ID
				AND EGP1.ORGANIZATION_ID = ITEM_EFF.ORGANIZATION_ID
				AND ITEM_EFF.CONTEXT_CODE = 'Business Unit Price Control'
				AND upper(ITEM_EFF.ACD_TYPE) = 'PROD') a
		WHERE ROWNUM = 1) ego_comm_class_code) com_code ON 
		COM_CODE.ORGANIZATION_CODE = '999_ITEM_MASTER'
		AND upper(trim(COM_CODE.ITEM_NUMBER)) = upper(trim(I.ITEMNO))
where trim(c.custno) not in ('LIEBERT','LBRTORACLE','V100','V1032')
and not(trim(i.Itemno) in ('FREIGHT','GEIST NOTES','ITW NOTES','ITWFREIGHT','SEE'))
and extract (year from o.ord_date) >2017
AND ((trim(C.CUSTNO) NOT IN ('GA777','GT50') AND O.EPLANT_ID=3)
    OR (trim(C.CUSTNO) NOT IN ('GE-GEI03') AND O.EPLANT_ID=6)
    OR O.EPLANT_ID IN (5))
	AND e.company IN ('Vertiv Corporation', 'Vertiv Canada', 'Vertiv Canada ULC')
)Gt )s1 )s2 )s3;	
compute stats @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na;
                        
                            
                            
							
4.populate_comm_split_and_order_bkp_tbl

-----Populate cpq_commission_split_tbl from cpq_commission_split_vw to improve performance.

insert overwrite @DB_LEVEL@_edm_other_src_silver.cpq_commission_split_tbl
(
quotenumber,
sales_office_number,
sales_office_name,
split_percent,
commission_allocation,
lob_group,
internal_office_principal_email,
sales_office_region,
participant_email ,
sales_rep_name
)
SELECT distinct quotenumber,
Sales_Office_Number,
split_officename as Sales_Office_Name,
Split_Percent,
commission_allocation,
LOB_GROUP,
SuppClass.principal_email as internal_office_principal_email,
SuppClass.sales_Region as Sales_Office_Region,
CAST(NULL AS STRING) as participant_email,
upper(nvl(salesrepdetails.fullname, cpq_split.sales_rep_name)) as sales_rep_name
FROM
  (SELECT concat_ws('_', cpq_header_lvo.transactionid_t, nvl(split_type, 'NA'), nvl(row_number, 'NA')) split_comm_identifier,
          cpq_header_lvo.transactionid_t quotenumber,
          cpq_header_lvo.bs_id bs_id,      
          split_type,
          commission_allocation,
          LOB_GROUP ,        
           nvl(cpq_comm_split.split_office_number, cpq_header_lvo.officenumber_t) as Sales_Office_Number,       
        nvl(cpq_comm_split.split_officename,cpq_header_lvo.officename_t) as split_officename  ,     
         nvl(cpq_comm_split.split_salesrepnumber,cpq_header_lvo.salesassociatenumber_t) as sales_rep_id,
         split_part(cpq_comm_split.sales_rep,'-',2) as sales_rep_name,      
         CAST(nvl(cpq_comm_split.Split_Percent,'100') AS DECIMAL(25,3)) as Split_Percent
   From @DB_LEVEL@_cld_cpq_silver.cpq_quote_headers cpq_header_lvo
   join (select transactionid_t, max(lastupdateddate_t) as maxdate from @DB_LEVEL@_cld_cpq_silver.cpq_quote_headers
   where status_t in ('ORDER REVIEW','ORDER SUBMITTED','CR-RESOLVED')
   group by transactionid_t )  maxdate on maxdate.transactionid_t=cpq_header_lvo.transactionid_t and maxdate.maxdate=lastupdateddate_t   
   --FROM @DB_LEVEL@_cld_cpq_gold.cpq_quote_headers_ext_vw cpq_header_lvo
   LEFT OUTER JOIN
     (SELECT bs_id split_bs_id,
             split_type,
             row_number,
             rep_type commission_allocation,
             office,
             trim(split_part(Office, '-', 1)) split_office_number,
             --trim(split_part(Office, '-', 2)) split_officename,
			 substr(office, (instr(Office,'-')+1 )) split_officename, --VR 03072022 office name incorrect changes
             salesrepnumber split_salesrepnumber,
             sales_rep,
             'ORDER_DEFAULT' LOB_GROUP,
                             order_default Split_Percent
      FROM @DB_LEVEL@_cld_cpq_silver.cpq_commission_split_clean
      WHERE split_type != 'lVOTransaction_t'
        AND CAST(row_number AS DECIMAL(25,0)) > 0
      UNION SELECT bs_id split_bs_id,
                   split_type,
                   row_number,
                   rep_type commission_allocation,
                   office,
                   trim(split_part(Office, '-', 1)) split_office_number,
                   --trim(split_part(Office, '-', 2)) split_officename,
				   substr(office, (instr(Office,'-')+1 )) split_officename, --VR 03072022 office name incorrect changes
                   salesrepnumber split_salesrepnumber,
                   sales_rep,
                   'AC_POWER' LOB_GROUP,
                              AC_POWER Split_Percent
      FROM @DB_LEVEL@_cld_cpq_silver.cpq_commission_split_clean
      WHERE split_type != 'lVOTransaction_t'
        AND CAST(row_number AS DECIMAL(25,0)) > 0
      UNION SELECT bs_id split_bs_id,
                   split_type,
                   row_number,
                   rep_type commission_allocation,
                   office,
                   trim(split_part(Office, '-', 1)) split_office_number,
                   --trim(split_part(Office, '-', 2)) split_officename,
				   substr(office, (instr(Office,'-')+1 )) split_officename, --VR 03072022 office name incorrect changes
                   salesrepnumber split_salesrepnumber,
                   sales_rep,
                   'DC_POWER' LOB_GROUP,
                              DC_POWER Split_Percent
      FROM @DB_LEVEL@_cld_cpq_silver.cpq_commission_split_clean
      WHERE split_type != 'lVOTransaction_t'
        AND CAST(row_number AS DECIMAL(25,0)) > 0
      UNION SELECT bs_id split_bs_id,
                   split_type,
                   row_number,
                   rep_type commission_allocation,
                   office,
                   trim(split_part(Office, '-', 1)) split_office_number,
                   --trim(split_part(Office, '-', 2)) split_officename,
				   substr(office, (instr(Office,'-')+1 )) split_officename, --VR 03072022 office name incorrect changes
                   salesrepnumber split_salesrepnumber,
                   sales_rep,
                   'THERMAL' LOB_GROUP,
                             THERMAL Split_Percent
      FROM @DB_LEVEL@_cld_cpq_silver.cpq_commission_split_clean
      WHERE split_type != 'lVOTransaction_t'
        AND CAST(row_number AS DECIMAL(25,0)) > 0
      UNION SELECT bs_id split_bs_id,
                   split_type,
                   row_number,
                   rep_type commission_allocation,
                   office,
                   trim(split_part(Office, '-', 1)) split_office_number,
                   --trim(split_part(Office, '-', 2)) split_officename,
				   substr(office, (instr(Office,'-')+1 )) split_officename, --VR 03072022 office name incorrect changes
                   salesrepnumber split_salesrepnumber,
                   sales_rep,
                   'MONITORING' LOB_GROUP,
                                MONITORING Split_Percent
      FROM @DB_LEVEL@_cld_cpq_silver.cpq_commission_split_clean
      WHERE split_type != 'lVOTransaction_t'
        AND CAST(row_number AS DECIMAL(25,0)) > 0
      UNION SELECT bs_id split_bs_id,
                   split_type,
                   row_number,
                   rep_type commission_allocation,
                   office,
                   trim(split_part(Office, '-', 1)) split_office_number,
                   --trim(split_part(Office, '-', 2)) split_officename,
				   substr(office, (instr(Office,'-')+1 )) split_officename, --VR 03072022 office name incorrect changes
                   salesrepnumber split_salesrepnumber,
                   sales_rep,
                   'SERVICES' LOB_GROUP,
                              SERVICES Split_Percent
      FROM @DB_LEVEL@_cld_cpq_silver.cpq_commission_split_clean
      WHERE split_type != 'lVOTransaction_t'
        AND CAST(row_number AS DECIMAL(25,0)) > 0
      UNION SELECT bs_id split_bs_id,
                   split_type,
                   row_number,
                   rep_type commission_allocation,
                   office,
                   trim(split_part(Office, '-', 1)) split_office_number,
                   --trim(split_part(Office, '-', 2)) split_officename,
				   substr(office, (instr(Office,'-')+1 )) split_officename, --VR 03072022 office name incorrect changes
                   salesrepnumber split_salesrepnumber,
                   sales_rep,
                   'CHANNEL' LOB_GROUP,
                             CHANNEL Split_Percent
      FROM @DB_LEVEL@_cld_cpq_silver.cpq_commission_split_clean
      WHERE split_type != 'lVOTransaction_t'
        AND CAST(row_number AS DECIMAL(25,0)) > 0
      UNION SELECT bs_id split_bs_id,
                   split_type,
                   row_number,
                   rep_type commission_allocation,
                   office,
                   trim(split_part(Office, '-', 1)) split_office_number,
                   --trim(split_part(Office, '-', 2)) split_officename,
				   substr(office, (instr(Office,'-')+1 )) split_officename, --VR 03072022 office name incorrect changes
                   salesrepnumber split_salesrepnumber,
                   sales_rep,
                   'SOLUTIONS' LOB_GROUP,
                               SOLUTION Split_Percent
      FROM @DB_LEVEL@_cld_cpq_silver.cpq_commission_split_clean
      WHERE split_type != 'lVOTransaction_t'
        AND CAST(row_number AS DECIMAL(25,0)) > 0
      UNION SELECT bs_id split_bs_id,
                   split_type,
                   row_number,
                   rep_type commission_allocation,
                   office,
                   trim(split_part(Office, '-', 1)) split_office_number,
                   --trim(split_part(Office, '-', 2)) split_officename,
				   substr(office, (instr(Office,'-')+1 )) split_officename, --VR 03072022 office name incorrect changes
                   salesrepnumber split_salesrepnumber,
                   sales_rep,
                   'NO_COMM' LOB_GROUP,
                             non_commissionable Split_Percent
      FROM @DB_LEVEL@_cld_cpq_silver.cpq_commission_split_clean
      WHERE split_type != 'lVOTransaction_t'
        AND CAST(row_number AS DECIMAL(25,0)) > 0) cpq_comm_split ON cpq_header_lvo.bs_id = cpq_comm_split.split_bs_id
  -- AND upper(cpq_header_lvo.LVO_flag) = 'TRUE'
   AND nvl(cpq_comm_split.split_office_number, '') != 'Default/Final'
   AND CAST(Split_Percent AS DOUBLE) >= 0   -- Commenting out as we need data for 0 split % to flow in --Vishal, July 25 2022.
   ) cpq_split
LEFT OUTER JOIN
  (SELECT DISTINCT Sales_office_no,
                   office_number,
                   office_name,
                   Office_type,
                   principal_email,
                   principal,
                   sales_Region,
                   sales_contact_email
   FROM @DB_LEVEL@_sql_saleswh_silver.supplier_classification) suppclass ON cpq_split.Sales_Office_Number = SuppClass.office_number
LEFT OUTER JOIN
  (SELECT *
   FROM
     (SELECT salesrepnumber,
             fullname,
             row_number() OVER (PARTITION BY salesrepnumber
                                ORDER BY w_insert_dtm DESC) rownum
      FROM @DB_LEVEL@_cld_cpq_silver.cpq_dt_salesrepdetails) a
   WHERE rownum = 1) salesrepdetails ON salesrepdetails.salesrepnumber = cpq_split.sales_rep_id  
;


---Back up of orders table being created.

insert overwrite @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_bkp
select * from @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na WHERE sku not in ('CSHMVECTD','CSHMVEDTC','REBATE-ACP','REBATE-AVCT','VATWHND','BACKCHARGE-MRKTG');


5.new_commissions_split_logic



--Step1#
--Populate the territory temp table
TRUNCATE TABLE @DB_LEVEL@_edm_other_src_silver.Commissions_territory_tmp_tbl ;

INSERT INTO @DB_LEVEL@_edm_other_src_silver.Commissions_territory_tmp_tbl
SELECT DISTINCT cast(oe.order_number AS string) AS Alice_order_Number,
       orcl_erp_ordernumber_t AS ORERP_Order_number,
       csp.*,
       zip_code,
       emailaddress,
       fullname,
       officenumber,
       salesrepnumber
FROM (SELECT * FROM  @DB_LEVEL@_edm_other_src_silver.cpq_commission_split_tbl WHERE commission_allocation='Territory') csp
LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_oe_order_headers_all oe ON oe.orig_sys_document_ref = csp.quotenumber
JOIN @DB_LEVEL@_cld_cpq_silver.cpq_quote_headers qh ON csp.quotenumber=qh.transactionid_t
JOIN @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_bkp Core on Core.salesordernumber = cast(oe.order_number AS string)
JOIN @DB_LEVEL@_edm_other_src_silver.zip_counties_rep_region sclass ON sclass.office_number = csp.sales_office_number
and sclass.zip_code = core.endcustomerpostalcode
LEFT JOIN
  (SELECT DISTINCT emailaddress,
                   fullname,
                   officenumber,
                   salesrepnumber
   FROM @DB_LEVEL@_cld_cpq_silver.cpq_dt_salesrepdetails) srdtl ON upper(csp.sales_rep_name) =upper(srdtl.fullname)
AND csp.sales_office_number=srdtl.officenumber
WHERE order_number IS NOT NULL
  AND zip_code IS NOT NULL;
  
-------------------------------------------
--Step2# 
--Populate the non territory temp table 

TRUNCATE TABLE @DB_LEVEL@_edm_other_src_silver.Commissions_non_territory_tmp_tbl ;

INSERT INTO @DB_LEVEL@_edm_other_src_silver.Commissions_non_territory_tmp_tbl
SELECT cast(oe.order_number AS string) AS Alice_order_Number,
       orcl_erp_ordernumber_t AS ORERP_Order_number,
       csp.*,
       emailaddress,
       fullname,
       officenumber,
       salesrepnumber
FROM (SELECT * FROM  @DB_LEVEL@_edm_other_src_silver.cpq_commission_split_tbl  WHERE commission_allocation<>'Territory') csp
LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_oe_order_headers_all oe ON oe.orig_sys_document_ref = csp.quotenumber
LEFT OUTER JOIN @DB_LEVEL@_cld_cpq_silver.cpq_quote_headers qh ON csp.quotenumber=qh.transactionid_t --LEFT OUTER JOIN @DB_LEVEL@_sql_saleswh_silver.supplier_classification sclass ON sclass.office_number = csp.sales_office_number
--and csp.commission_allocation<>'Territory'
LEFT JOIN
  (SELECT DISTINCT emailaddress,
                   fullname,
                   officenumber,
                   salesrepnumber
   FROM @DB_LEVEL@_cld_cpq_silver.cpq_dt_salesrepdetails) srdtl ON upper(csp.sales_rep_name) =upper(srdtl.fullname)
AND csp.sales_office_number=srdtl.officenumber
WHERE order_number IS NOT NULL
  ;
  
-------------------------------------------  
--Step3#  
--Populate the territory temp1 table
TRUNCATE TABLE @DB_LEVEL@_edm_other_src_silver.Commissions_territory_tmp1_tbl; 

INSERT INTO @DB_LEVEL@_edm_other_src_silver.Commissions_territory_tmp1_tbl
SELECT DISTINCT cast(oe.order_number AS string) AS Alice_order_Number,
       orcl_erp_ordernumber_t AS ORERP_Order_number,
       csp.*,
       zip_code,
       emailaddress,
       fullname,
       officenumber,
       salesrepnumber
FROM (SELECT * FROM @DB_LEVEL@_edm_other_src_silver.cpq_commission_split_tbl WHERE commission_allocation='Territory' ) csp
LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_oe_order_headers_all oe ON oe.orig_sys_document_ref = csp.quotenumber
LEFT OUTER JOIN @DB_LEVEL@_cld_cpq_silver.cpq_quote_headers qh ON csp.quotenumber=qh.transactionid_t
LEFT OUTER JOIN @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_bkp Core on Core.salesordernumber = cast(oe.order_number AS string)
LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.zip_counties_rep_region sclass ON sclass.office_number = csp.sales_office_number
and sclass.zip_code = core.endcustomerpostalcode
LEFT JOIN
  (SELECT DISTINCT emailaddress,
                   fullname,
                   officenumber,
                   salesrepnumber
   FROM @DB_LEVEL@_cld_cpq_silver.cpq_dt_salesrepdetails) srdtl ON upper(csp.sales_rep_name) =upper(srdtl.fullname)
AND csp.sales_office_number=srdtl.officenumber
WHERE order_number IS NOT NULL;

 

-------------------------------------------
--Step4#   
--Populate the non territory temp1 table
TRUNCATE TABLE @DB_LEVEL@_edm_other_src_silver.Commissions_non_territory_tmp1_tbl;

INSERT INTO @DB_LEVEL@_edm_other_src_silver.Commissions_non_territory_tmp1_tbl
SELECT cast(oe.order_number AS string) AS Alice_order_Number,
       orcl_erp_ordernumber_t AS ORERP_Order_number,
       csp.*,
       zip_code,
       emailaddress,
       fullname,
       officenumber,
       salesrepnumber
FROM (SELECT * FROM @DB_LEVEL@_edm_other_src_silver.cpq_commission_split_tbl WHERE commission_allocation<>'Territory') csp
LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_oe_order_headers_all oe ON oe.orig_sys_document_ref = csp.quotenumber
LEFT OUTER JOIN @DB_LEVEL@_cld_cpq_silver.cpq_quote_headers qh ON csp.quotenumber=qh.transactionid_t
LEFT OUTER JOIN @DB_LEVEL@_sql_saleswh_silver.supplier_classification sclass ON sclass.office_number = csp.sales_office_number
LEFT JOIN
  (SELECT DISTINCT emailaddress,
                   fullname,
                   officenumber,
                   salesrepnumber
   FROM @DB_LEVEL@_cld_cpq_silver.cpq_dt_salesrepdetails) srdtl ON upper(csp.sales_rep_name) =upper(srdtl.fullname)
AND csp.sales_office_number=srdtl.officenumber
WHERE order_number IS NOT NULL;


-------------------------------------------  
--Step5# 
--populate the final stage table using territory temp table
TRUNCATE TABLE @DB_LEVEL@_edm_other_src_silver.Orders_Commissions_stage_tbl;

INSERT INTO @DB_LEVEL@_edm_other_src_silver.Orders_Commissions_stage_tbl
SELECT DISTINCT recordsource,
                quoteid,
                salesordernumber,
                Lob,
                endcustomerpostalcode,
                zip_code AS Territory_Zip_Match,
                nvl(split_percent,100) AS split_percent,
                replace(replace(sales_office_name,'-', ' '),',','') AS sales_office_name,
                sales_rep_name,
                commission_allocation,
                emailaddress,
                fullname,
                officenumber,
                salesrepnumber
FROM
  (SELECT DISTINCT recordsource,
                   quoteid,
                   salesordernumber,
                   Lob,
                   endcustomerpostalcode,
                   zip_code,
                   split_percent,
                   sales_office_name,
                   sales_rep_name,
                   commission_allocation,
                   emailaddress,
                   fullname,
                   nvl(officenumber,Terr.sales_office_number) as officenumber,
                   salesrepnumber
   FROM @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_bkp Core
   LEFT OUTER JOIN
     (SELECT * FROM @DB_LEVEL@_edm_other_src_silver.Commissions_territory_tmp_tbl) Terr
	 ON Core.salesordernumber=terr.Alice_order_Number
   AND core.endcustomerpostalcode=terr.zip_code
   AND CASE
           WHEN lob IN ('AC POWER', 'ENERGY STORAGE') THEN 'AC_POWER'
           WHEN lob IN ('RACKS','EDGE THERMAL','IT SYSTEMS','GLOBAL EDGE SYSTEMS','1 PHASE UPS','RACK PDU') THEN 'CHANNEL'
           WHEN lob = 'DC POWER' THEN 'DC_POWER'
           WHEN lob = 'DIGITAL ECOSYSTEM' THEN 'MONITORING'
           WHEN lob IN ('TARRIF SURCHARGE','GENERAL SURCHARGE','NOT APPLICABLE') THEN 'NO_COMM'
           WHEN lob IN ('SERVICES','PARTS','DC POWER SERVICES','VERTIV SERVICES','PROJECT SERVICES','SERVICE AND SOFTWARE SOLUTIONS',
                        'SOFTWARE & SOLUTIONS COE','SOFTWARE SOLUTIONS','REGIONAL SERVICES') THEN 'SERVICES'
           WHEN lob IN ('IMS - ENG & 3RD PARTY','IMS/CUSTOM') THEN 'SOLUTIONS'
           WHEN lob = 'THERMAL' THEN 'THERMAL'
           WHEN lob IN ('GLOBAL SOLUTIONS','DEFAULT','COMPONENT','EXCLUDE','CUSTOM SKU','QSKU',
                        'REGIONAL BUSINESSES','SERVICES & SOFTWARE SOLUTIONS') THEN NULL
			--WHEN ordr.lob = 'DEFAULT' then 'ORDER_DEFAULT'
           ELSE REPLACE(lob,' ','_')
       END = terr.lob_group
   WHERE Core.recordsource='ALICE' 
   and terr.zip_code is not null   
UNION 
SELECT DISTINCT recordsource,
                quoteid,
                salesordernumber,
                Lob,
                endcustomerpostalcode,
                '' AS zip_code,
                split_percent,
                sales_office_name,
                sales_rep_name,
                commission_allocation,
                emailaddress,
                fullname,
                nvl(officenumber,Terr.sales_office_number) as officenumber,
                salesrepnumber
   FROM @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_bkp Core
   JOIN
     (SELECT * FROM @DB_LEVEL@_edm_other_src_silver.Commissions_non_territory_tmp_tbl ) Terr
	 ON Core.salesordernumber=terr.Alice_order_Number
   AND (CASE
            WHEN lob IN ('AC POWER',
                         'ENERGY STORAGE') THEN 'AC_POWER'
            WHEN lob IN ('RACKS','EDGE THERMAL','IT SYSTEMS','GLOBAL EDGE SYSTEMS','1 PHASE UPS','RACK PDU') THEN 'CHANNEL'
            WHEN lob = 'DC POWER' THEN 'DC_POWER'
            WHEN lob = 'DIGITAL ECOSYSTEM' THEN 'MONITORING'
            WHEN lob IN ('TARRIF SURCHARGE','GENERAL SURCHARGE','NOT APPLICABLE') THEN 'NO_COMM'
            WHEN lob IN ('SERVICES','PARTS','DC POWER SERVICES','VERTIV SERVICES','PROJECT SERVICES','SERVICE AND SOFTWARE SOLUTIONS',
                         'SOFTWARE & SOLUTIONS COE','SOFTWARE SOLUTIONS','REGIONAL SERVICES') THEN 'SERVICES'
            WHEN lob IN ('IMS - ENG & 3RD PARTY','IMS/CUSTOM') THEN 'SOLUTIONS'
            WHEN lob = 'THERMAL' THEN 'THERMAL'
            WHEN lob IN ('GLOBAL SOLUTIONS','DEFAULT','COMPONENT','EXCLUDE','CUSTOM SKU',
                         'QSKU','REGIONAL BUSINESSES','SERVICES & SOFTWARE SOLUTIONS') THEN NULL
			 --WHEN ordr.lob = 'DEFAULT' then 'ORDER_DEFAULT'
            ELSE REPLACE(lob,' ','_')
        END = terr.lob_group
        OR (terr.lob_group IS NULL
            AND split_percent=100))
   WHERE Core.recordsource='ALICE'     
--- LES DATA
UNION SELECT DISTINCT recordsource,
                      quoteid,
                      salesordernumber,
                      Lob,
                      endcustomerpostalcode,
                      '' AS zip_code,
                      split_percent,
                      sales_office_name,
                      sales_rep_name,
                      commission_allocation,
                      sales_contact_email AS emailaddress,
                      sales_rep_name AS fullname,
                      Sales_office_number AS officenumber,
                      salesrepnumber AS salesrepnumber
   FROM @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_bkp Core
   JOIN @DB_LEVEL@_sql_saleswh_gold.LES_commission_split_vw c ON Core.quoteid=c.reference_les_order
   AND (NVL(upper(c.split_type),'') NOT LIKE '%STARTUP%')
   WHERE BSID IS NULL
     AND Core.recordsource='ALICE'    
   UNION --Oracle ERP DATA
SELECT DISTINCT recordsource,
                quoteid,
                salesordernumber,
                Lob,
                endcustomerpostalcode,
                '' AS zip_code,
                split_percent,
                sales_office_name,
                sales_rep_name,
                commission_allocation,
                emailaddress,
                fullname,
                nvl(officenumber,Terr.sales_office_number) as officenumber,
                salesrepnumber
   FROM @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_bkp Core
   JOIN
     (SELECT * FROM @DB_LEVEL@_edm_other_src_silver.Commissions_territory_tmp1_tbl) Terr 
	 ON Core.salesordernumber=terr.ORERP_Order_number
   AND core.endcustomerpostalcode=terr.zip_code
   AND CASE
           WHEN lob IN ('AC POWER','ENERGY STORAGE') THEN 'AC_POWER'
           WHEN lob IN ('RACKS','EDGE THERMAL','IT SYSTEMS','GLOBAL EDGE SYSTEMS','1 PHASE UPS','RACK PDU') THEN 'CHANNEL'
           WHEN lob = 'DC POWER' THEN 'DC_POWER'
           WHEN lob = 'DIGITAL ECOSYSTEM' THEN 'MONITORING'
           WHEN lob IN ('TARRIF SURCHARGE','GENERAL SURCHARGE','NOT APPLICABLE') THEN 'NO_COMM'
           WHEN lob IN ('SERVICES','PARTS','DC POWER SERVICES','VERTIV SERVICES','PROJECT SERVICES','SERVICE AND SOFTWARE SOLUTIONS',
                        'SOFTWARE & SOLUTIONS COE','SOFTWARE SOLUTIONS','REGIONAL SERVICES') THEN 'SERVICES'
           WHEN lob IN ('IMS - ENG & 3RD PARTY','IMS/CUSTOM') THEN 'SOLUTIONS'
           WHEN lob = 'THERMAL' THEN 'THERMAL'
           WHEN lob IN ('GLOBAL SOLUTIONS','DEFAULT','COMPONENT','EXCLUDE','CUSTOM SKU',
                        'QSKU','REGIONAL BUSINESSES','SERVICES & SOFTWARE SOLUTIONS') THEN NULL
			--WHEN ordr.lob = 'DEFAULT' then 'ORDER_DEFAULT'
           ELSE REPLACE(lob,' ','_')
       END = terr.lob_group
   WHERE recordsource='ORACLEERPCLOUD'
   AND terr.zip_code is not null    
UNION SELECT DISTINCT recordsource,
                      quoteid,
                      salesordernumber,
                      Lob,
                      endcustomerpostalcode,
                      '' AS zip_code,
                      split_percent,
                      sales_office_name,
                      sales_rep_name,
                      commission_allocation,
                      emailaddress,
                      fullname,
                     nvl(officenumber,Terr.sales_office_number) as officenumber,
                      salesrepnumber
   FROM @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_bkp Core
   JOIN
     (SELECT * FROM @DB_LEVEL@_edm_other_src_silver.Commissions_non_territory_tmp1_tbl ) Terr
	 ON Core.salesordernumber=terr.ORERP_Order_number
   AND CASE
           WHEN lob IN ('AC POWER','ENERGY STORAGE') THEN 'AC_POWER'
           WHEN lob IN ('RACKS','EDGE THERMAL','IT SYSTEMS','GLOBAL EDGE SYSTEMS','1 PHASE UPS','RACK PDU') THEN 'CHANNEL'
           WHEN lob = 'DC POWER' THEN 'DC_POWER'
           WHEN lob = 'DIGITAL ECOSYSTEM' THEN 'MONITORING'
           WHEN lob IN ('TARRIF SURCHARGE','GENERAL SURCHARGE','NOT APPLICABLE') THEN 'NO_COMM'
           WHEN lob IN ('SERVICES','PARTS','DC POWER SERVICES','VERTIV SERVICES','PROJECT SERVICES',
                        'SERVICE AND SOFTWARE SOLUTIONS','SOFTWARE & SOLUTIONS COE','SOFTWARE SOLUTIONS','REGIONAL SERVICES') THEN 'SERVICES'
           WHEN lob IN ('IMS - ENG & 3RD PARTY','IMS/CUSTOM') THEN 'SOLUTIONS'
           WHEN lob = 'THERMAL' THEN 'THERMAL'
           WHEN lob IN ('GLOBAL SOLUTIONS','DEFAULT','COMPONENT','EXCLUDE',
                        'CUSTOM SKU','QSKU','REGIONAL BUSINESSES','SERVICES & SOFTWARE SOLUTIONS') THEN NULL
			--WHEN ordr.lob = 'DEFAULT' then 'ORDER_DEFAULT'
           ELSE REPLACE(lob,' ','_')
       END = terr.lob_group
   WHERE recordsource='ORACLEERPCLOUD'
   AND terr.zip_code is not null    
)Query
--ORDER BY LOB,endcustomerpostalcode
;
-------------------------------------------  
--Step6# 
--populate the final orders_exploration_data_na table using commissions_stage_tbl and orders back table


INSERT OVERWRITE @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na 
SELECT  a.account_type_aop ,
		a.accountam ,
		a.accountcsm ,
		a.accountlead ,
		a.accountpresence ,
		a.accountservicesales ,
		a.accountsubtype ,
		a.accounttype ,
		a.aop_account_name ,
		a.aop_category ,
		a.billtoaccountrole ,
		a.billtocustomer ,
		a.billtocustomeraddress ,
		a.billtocustomercustomertype1 ,
		a.billtocustomerenterpriseindustry ,
		a.billtocustomergsc ,
		a.billtocustomerindustry1 ,
		a.billtocustomername ,
		a.billtocustomername2 ,
		a.billtocustomernumber ,
		a.billtocustomerparentaccount ,
		a.billtocustomerpostalcode ,
		a.billtocustomerstandardizedname ,
		a.billtocustomervertical ,
		a.bsid ,
		a.channelflag ,
		a.coe ,
		a.coe_new ,
		a.contracttype ,
		a.customerpurchaseordernumber ,
		a.customerrequestdate ,
		a.data_last_refreshed ,
		a.endcustomer ,
		a.endcustomeraccountrole ,
		a.endcustomeraddress ,
		a.endcustomercity ,
		a.endcustomercountry ,
		a.endcustomercustomertype1 ,
		a.endcustomerenterpriseindustry ,
		a.endcustomergsc ,
		a.endcustomerindustry1 ,
		a.endcustomername ,
		a.endcustomernumber ,
		a.endcustomerparentaccount ,
		a.endcustomerpostalcode ,
		a.endcustomerstandardizedexists ,
		a.endcustomerstandardizedname ,
		a.endcustomerstate ,
		a.endcustomerstate2 ,
		a.endcustomervertical ,
		a.exchangerateused ,		
		CASE
			WHEN a.extendedlistprice<>0
				 AND b.split_percent IS NOT NULL THEN nvl(a.extendedlistprice *(cast(b.split_percent AS DOUBLE)/100),a.extendedlistprice)
			WHEN b.split_percent = 0 THEN 0
			ELSE a.extendedlistprice
		END AS extendedlistprice,
		a.gbu ,
		a.growth_target ,
		cast(b.split_percent as STRING) AS alicecommissionoverridepercent ,
		a.level_6 ,		
		CASE
			WHEN a.listprice<>0
				 AND b.split_percent IS NOT NULL THEN nvl(a.listprice *(cast(b.split_percent AS DOUBLE)/100),a.listprice)
			WHEN b.split_percent = 0 THEN 0
			ELSE a.listprice
		END AS listprice,		
		a.lob ,
		CASE
			WHEN a.netsalesrevenue<>0
				 AND b.split_percent IS NOT NULL THEN nvl(a.netsalesrevenue *(cast(b.split_percent AS DOUBLE)/100),a.netsalesrevenue)
			WHEN b.split_percent = 0 THEN 0
			ELSE a.netsalesrevenue
		END AS netsalesrevenue,		
		a.office_group ,
		a.office_website ,
		a.ordercoordinator ,
		a.ordercreatedate ,
		a.orderlastupdatedate ,
		a.orderexlinenumber ,
		a.partnerwebfolderid ,
		a.partnerwebquotenumber ,
		a.plant ,
		a.plantdescription ,
		a.product_category ,
		a.product_category_new ,
		a.product_family ,
		a.product_family_new ,
		a.proshipmentnumber ,		
		CASE
			WHEN a.quantityordered <>0
				 AND b.split_percent IS NOT NULL THEN nvl(a.quantityordered *(cast(b.split_percent AS DOUBLE)/100),a.quantityordered)
			WHEN b.split_percent = 0 THEN 0
			ELSE a.quantityordered
		END AS quantityordered,
		a.quoteid ,
		a.recordsource ,
		--NVL(b.sales_office_name,a.salesofficename) salesofficename ,  --VR 05202022 SO-672 
		case when a.recordsource ='LES' then NVL(b.sales_office_name,a.salesofficename)
        else b.sales_office_name end salesofficename,
		--NVL(b.officenumber,a.salesofficenumber) salesofficenumber ,   --VR 05202022 SO-672
		case when a.recordsource ='LES' then NVL(b.officenumber,a.salesofficenumber)
        else b.officenumber end salesofficenumber,
		a.salesofficeprincipalemail ,
		b.officenumber salesofficereferencenumber ,
		a.salesordernumber ,
		a.salesregionname ,
		a.salesregionnumber ,
		b.emailaddress salesrepemail ,
		b.salesrepnumber salesrepid ,
		b.sales_rep_name salesrepname ,
		a.salesreptype ,
		a.sapoemtag ,
		a.selling_motion ,
		a.orderdeliverypromiseddate ,
		a.segment ,
		a.sfr_category ,
		a.shipdate ,
		a.shipmentcarriername ,		
		CASE
			WHEN a.shippedquantity <>0
				 AND b.split_percent IS NOT NULL THEN nvl(a.shippedquantity *(cast(b.split_percent AS DOUBLE)/100),a.shippedquantity)
			WHEN b.split_percent = 0 THEN 0
			ELSE a.shippedquantity
		END AS shippedquantity,
		a.shiptocustomeraddress ,
		a.shiptocustomercountry ,
		a.shiptocustomercustomertype1 ,
		a.shiptocustomerenterpriseindustry ,
		a.shiptocustomergsc ,
		a.shiptocustomerindustry1 ,
		a.shiptocustomername ,
		a.shiptocustomernumber ,
		a.shiptocustomerparentaccount ,
		a.shiptocustomerstandardizedname ,
		a.shiptocustomervertical ,
		a.sizecategory ,
		a.sku ,
		a.skudescription ,
		a.smsbatteriesonlyflag ,
		a.smsbatteryrbsm ,
		a.smscontractenddate ,
		a.smscontractexpiredate ,
		a.smscontractpms ,
		a.smscontractsequence ,
		a.smscontractstartdate ,
		a.smscontractstatus ,
		a.smscustomertype ,
		a.smsequipmentsegment ,
		a.smsrevcat ,
		a.smssiteid ,
		a.smsstackedwhenbooked ,
		a.smstagnumber ,
		a.smsticketnumber ,
		a.smstickettype ,
		a.soldtocustomercustomertype1 ,
		a.soldtocustomerenterpriseindustry ,
		a.soldtocustomergsc ,
		a.soldtocustomerindustry1 ,
		a.soldtocustomername ,
		a.soldtocustomerparentaccount ,
		a.soldtocustomerstandardizedname ,
		a.soldtocustomervertical ,
		a.speed_dial ,
		a.sales_area ,
		a.w_insert_by ,
		a.w_insert_dtm ,
		a.src_system_name ,
		a.resellernumber ,
		a.resellerbranchnumber ,
		a.resellerbranchname ,
		a.office_type ,
		a.uom ,
		a.sales_order_line_type ,
		a.order_type,
        a.Class_code,
        a.OEM_FLAG,
		--so-621 new attributes addition starts
		a.billtocustomerclasscode,
		a.endcustomerclasscode,
		a.shiptocustomerclasscode,
		a.soldtocustomerclasscode,
		a.billtocustomerpartnerclasscode,
		a.endcustomerpartnerclasscode,
		a.shiptocustomerpartnerclasscode,
		a.soldtocustomerpartnerclasscode,
		a.billtooracleregistryid, 
		a.endoracleregistryid,
		a.shiptooracleregistryid,
		a.soldtooracleregistryid,
		a.billtocustomerindustry3,
		a.endcustomerindustry3,
		a.shiptocustomerindustry3,
		a.soldtocustomerindustry3,
		a.billtocustomersubvertical,
		a.endcustomersubvertical,
		a.shiptocustomersubvertical,
		a.soldtocustomersubvertical,
		a.billtoreportingsubparent1,
		a.endreportingsubparent1,
		a.shiptoreportingsubparent1,
		a.soldtoreportingsubparent1,
		a.billtodefinitiveidnid,
		a.enddefinitiveidnid,
		a.shiptodefinitiveidnid,
		a.soldtodefinitiveidnid,
		a.billtodefinitiveidnidparentid,
		a.enddefinitiveidnidparentid,
		a.shiptodefinitiveidnidparentid,
		a.soldtodefinitiveidnidparentid,
		a.billtoncesleaid,
		a.endncesleaid,
		a.shiptoncesleaid,
		a.soldtoncesleaid,
		a.soldtocustomeraddress,
		a.billtocustomercity,
		a.shiptocustomercity,
		a.soldtocustomercity,
		a.billtocustomerstate,
		a.shiptocustomerstate,
		a.soldtocustomerstate,
		a.billtocustomerprovince,
		a.endcustomerprovince,
		a.shiptocustomerprovince,
		a.soldtocustomerprovince,
		a.billtocustomercountry,
		a.soldtocustomercountry,
		a.shiptocustomerpostalcode,
		a.soldtocustomerpostalcode,
		a.billtooraclepartysitenumber,  
		a.endoraclepartysitenumber,  
		a.shiptooraclepartysitenumber,  
		a.soldtooraclepartysitenumber,  
		a.billtodefinitiveid,
		a.enddefinitiveid,
		a.shiptodefinitiveid,
		a.soldtodefinitiveid,
		a.billtoncesschid,
		a.endncesschid,
		a.shiptoncesschid,
		a.soldtoncesschid,
		--so-621 new attributes addition ends
		--so-661 new attributes addition starts
		a.billtoaccounttype,
		a.endaccounttype,
		a.shiptoaccounttype,
		a.soldtoaccounttype,
		--so-661 new attributes addition ends
		a.productcommissionclasscode,
		a.measure,
		a.calendar_month,
		a.calendar_year,
		a.local_currency,
		a.sales_office,
		a.unit_price,
		a.unit_price_fxd_usd,
		a.billtoservicesmajoracc, --so-665 new attributes addition starts
		a.endservicesmajoracc,
		a.shiptoservicesmajoracc,
		a.soldtoservicesmajoracc ,--so-665 new attributes addition ends
		a.billtocustomersubclass, --so-728 new attributes addition starts
		a.endcustomersubclass,
		a.shiptocustomersubclass,
		a.soldtocustomersubclass,  --so-728 new attributes addition ends
		a.aop_customer_sub_class
FROM @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_bkp a
LEFT JOIN @DB_LEVEL@_edm_other_src_silver.Orders_Commissions_stage_tbl b 
on a.salesordernumber = b.salesordernumber
and a.endcustomerpostalcode = b.endcustomerpostalcode
and a.lob = b.lob
and a.recordsource = b.recordsource


6.orders_exploration_data_na_Final


insert overwrite @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_tmp1
select 
	account_type_aop,
	AccountAM,
	AccountCSM,
	AccountLead,
	AccountPresence,
	AccountServiceSales,
	AccountSubType,
	AccountType,
	upper(AOP_Account_Name) AOP_Account_Name,
	AOP_Category,
	BillToAccountRole,
	upper(BillToCustomer) BillToCustomer,
	upper(BillToCustomerAddress) BillToCustomerAddress,
	upper(BillToCustomerCustomerType1) BillToCustomerCustomerType1,
	upper(BillToCustomerEnterpriseIndustry) BillToCustomerEnterpriseIndustry,
	upper(BillToCustomerGSC) BillToCustomerGSC,
	upper(BillToCustomerIndustry1) BillToCustomerIndustry1,
	upper(BillToCustomerName) BillToCustomerName,
	upper(BillToCustomerName2) BillToCustomerName2,
	BillToCustomerNumber,
	upper(BillToCustomerParentAccount) BillToCustomerParentAccount,
	BillToCustomerPostalCode,
	upper(BillToCustomerStandardizedName) BillToCustomerStandardizedName,
	upper(BillToCustomerVertical) BillToCustomerVertical,
	bsid,
	ChannelFlag,	
	upper(COE) COE,
	upper(COE_New) COE_New,
	ContractType,
	CustomerPurchaseOrderNumber,
	CustomerRequestDate,
	Data_Last_Refreshed,
	upper(EndCustomer) EndCustomer,
	upper(EndCustomerAccountRole) EndCustomerAccountRole,
	upper(EndCustomerAddress) EndCustomerAddress,
	upper(EndCustomerCity) EndCustomerCity,
	upper(EndCustomerCountry) EndCustomerCountry,
	upper(EndCustomerCustomerType1) EndCustomerCustomerType1,
	upper(EndCustomerEnterpriseIndustry) EndCustomerEnterpriseIndustry,
	upper(EndCustomerGSC) EndCustomerGSC,
	upper(EndCustomerIndustry1) EndCustomerIndustry1,
	upper(EndCustomerName) EndCustomerName,
	EndCustomerNumber,
	upper(EndCustomerParentAccount) EndCustomerParentAccount,
	EndCustomerPostalCode,
	upper(EndCustomerStandardizedExists) EndCustomerStandardizedExists,
	upper(EndCustomerStandardizedName) EndCustomerStandardizedName,
	upper(EndCustomerState) EndCustomerState,
	upper(EndCustomerState2) EndCustomerState2,
	upper(EndCustomerVertical) EndCustomerVertical,
	ExchangeRateUsed,
	ExtendedListPrice,
	upper(a.GBU) GBU,
	growth_target,
	alicecommissionoverridepercent,
	upper(Level_6) Level_6,
	ListPrice,
	upper(a.LOB) LOB,
	NetSalesRevenue,
	Office_Group,
	office_website,
	OrderCoordinator,
	OrderCreateDate,
	OrderLastUpdateDate,
	a.OrderEXLineNumber,
	PartnerWebFolderID,
	PartnerWebQuoteNumber,
	Plant,
	PlantDescription,
	upper(Product_Category) Product_Category,
	upper(Product_Category_New) Product_Category_New,
	upper(Product_Family) Product_Family,
	upper(Product_Family_New) Product_Family_New,
	PROShipmentNumber,
	QuantityOrdered,
	quoteid,
	UPPER(RecordSource) RecordSource,
	SalesOfficeName,
	SalesOfficeNumber,
	SalesOfficePrincipalEmail,
	SalesOfficeReferenceNumber,
	a.SalesOrderNumber,
	SalesRegionName,
	SalesRegionNumber,
	SalesRepEmail,
	SalesRepID,
	SalesRepName,
	SalesRepType,
	SAPOEMTag,
	Selling_Motion,
	OrderDeliveryPromisedDate,
	Segment,
	SFR_Category,
	ShipDate,
	ShipmentCarrierName,
	ShippedQuantity,
	upper(ShipToCustomerAddress) ShipToCustomerAddress,
	upper(ShipToCustomerCountry) ShipToCustomerCountry,
	upper(ShipToCustomerCustomerType1) ShipToCustomerCustomerType1,
	upper(ShipToCustomerEnterpriseIndustry) ShipToCustomerEnterpriseIndustry,
	upper(ShipToCustomerGSC) ShipToCustomerGSC,
	upper(ShipToCustomerIndustry1) ShipToCustomerIndustry1,
	upper(ShipToCustomerName) ShipToCustomerName,
	ShipToCustomerNumber,
	upper(ShipToCustomerParentAccount) ShipToCustomerParentAccount,
	upper(ShipToCustomerStandardizedName) ShipToCustomerStandardizedName,
	upper(ShipToCustomerVertical) ShipToCustomerVertical,
	CASE
            WHEN sum_netsales > 3000000 THEN 'MEGA'
            WHEN upper(a.lob) = 'AC POWER' and upper(a.gbu) = 'INFRASTRUCTURE & SOLUTIONS' and sum_netsales < 750000 THEN 'FLOW'
            WHEN upper(a.lob) = 'DC POWER' and upper(a.gbu) = 'INFRASTRUCTURE & SOLUTIONS' and sum_netsales < 750000 THEN 'FLOW'
            WHEN upper(a.lob) = 'THERMAL' and upper(a.gbu) = 'INFRASTRUCTURE & SOLUTIONS' and sum_netsales < 500000 THEN 'FLOW'
            when upper(a.lob) = 'DIGITAL ECOSYSTEM' and upper(a.gbu) = 'SERVICES & SPARES' and sum_netsales <50000 THEN 'FLOW'
            when upper(a.lob) = '1 PHASE UPS' and upper(a.gbu) = 'INTEGRATED RACK SOLUTIONS' and sum_netsales < 100000 THEN 'FLOW'
            when upper(a.lob) = 'EDGE THERMAL' and upper(a.gbu) = 'INTEGRATED RACK SOLUTIONS' and sum_netsales < 100000 THEN 'FLOW'
            when upper(a.lob) = 'RACK PDU' and upper(a.gbu) = 'INTEGRATED RACK SOLUTIONS' and sum_netsales < 100000 THEN 'FLOW'
            when upper(a.lob) = 'RACKS' and upper(a.gbu) = 'INTEGRATED RACK SOLUTIONS' and sum_netsales < 100000 THEN 'FLOW'
            WHEN upper(a.lob) = 'GLOBAL EDGE SYSTEMS' and upper(a.gbu) = 'INTEGRATED RACK SOLUTIONS' and sum_netsales < 100000 THEN 'FLOW'
            when upper(a.lob) = 'IT SYSTEMS' and upper(a.gbu) = 'INTEGRATED RACK SOLUTIONS' and sum_netsales < 100000 THEN 'FLOW'
            WHEN upper(a.lob) = 'ENERGY STORAGE' and upper(a.gbu) = 'INFRASTRUCTURE & SOLUTIONS' and sum_netsales < 750000 THEN 'FLOW'
            when upper(a.lob) in ('REGIONAL SERVICES','VERTIV SERVICES') and upper(a.gbu) = 'SERVICES & SPARES'  THEN 'SERVICES'
            when upper(a.lob) = 'IMS/CUSTOM' THEN 'PROJECT'
            ELSE 'PROJECT'
            END AS sizecategory,
	upper(a.SKU) SKU,
	upper(SKUDescription) SKUDescription,
	SMSBatteriesOnlyFlag,
	SMSBatteryRBSM,
	SMSContractEndDate,
	SMSContractExpireDate,
	SMSContractPMs,
	SMSContractSequence,
	SMSContractStartDate,
	SMSContractStatus,
	SMSCustomerType,
	SMSEquipmentSegment,
	SMSRevCat,
	SMSSiteId,
	SMSStackedWhenBooked,
	SMSTagNumber,
	SMSTicketNumber,
	SMSTicketType,
	upper(SoldToCustomerCustomerType1) SoldToCustomerCustomerType1,
	upper(SoldToCustomerEnterpriseIndustry) SoldToCustomerEnterpriseIndustry,
	upper(SoldToCustomerGSC) SoldToCustomerGSC,
	upper(SoldToCustomerIndustry1) SoldToCustomerIndustry1,
	upper(SoldToCustomerName) SoldToCustomerName,
	upper(SoldToCustomerParentAccount) SoldToCustomerParentAccount,
	upper(SoldToCustomerStandardizedName) SoldToCustomerStandardizedName,
	upper(SoldToCustomerVertical) SoldToCustomerVertical,
	SPEED_DIAL,
	Sales_Area,
	effective_user() as w_insert_by,
	now() as w_insert_dtm,
    'SalesOps' as src_system_name,
    resellernumber,
	resellerbranchnumber,
	resellerbranchname,
	office_type,
	uom,
	sales_order_line_type,
	Order_type,
	Class_code,
	OEM_FLAG,
	--SO-621 new attributes addition starts
	upper(BillToCustomerClassCode) BillToCustomerClassCode,
	upper(EndCustomerClassCode) EndCustomerClassCode,
	upper(ShipToCustomerClassCode) ShipToCustomerClassCode,
	upper(SoldToCustomerClassCode) SoldToCustomerClassCode,
	upper(BillToCustomerPartnerClassCode) BillToCustomerPartnerClassCode,
	upper(EndCustomerPartnerClassCode) EndCustomerPartnerClassCode,
	upper(ShipToCustomerPartnerClassCode) ShipToCustomerPartnerClassCode,
	upper(SoldToCustomerPartnerClassCode) SoldToCustomerPartnerClassCode,
	BillToOracleRegistryID, 
	EndOracleRegistryID,
	ShipToOracleRegistryID,
	SoldToOracleRegistryID,
	upper(BillToCustomerIndustry3) BillToCustomerIndustry3,
	upper(EndCustomerIndustry3) EndCustomerIndustry3,
	upper(ShipToCustomerIndustry3) ShipToCustomerIndustry3,
	upper(SoldToCustomerIndustry3) SoldToCustomerIndustry3,
	upper(BillToCustomerSubVertical) BillToCustomerSubVertical,
	upper(EndCustomerSubVertical) EndCustomerSubVertical,
	upper(ShipToCustomerSubVertical) ShipToCustomerSubVertical,
	upper(SoldToCustomerSubVertical) SoldToCustomerSubVertical,
	upper(BillToReportingSubParent1) BillToReportingSubParent1,
	upper(EndReportingSubParent1) EndReportingSubParent1,
	upper(ShipToReportingSubParent1) ShipToReportingSubParent1,
	upper(SoldToReportingSubParent1) SoldToReportingSubParent1,
	BillToDefinitiveIDNID,
	EndDefinitiveIDNID,
	ShipToDefinitiveIDNID,
	SoldToDefinitiveIDNID,
	BillToDefinitiveIDNIDParentID,
	EndDefinitiveIDNIDParentID,
	ShipToDefinitiveIDNIDParentID,
	SoldToDefinitiveIDNIDParentID,
	BillToNCESLEAID,
	EndNCESLEAID,
	ShipToNCESLEAID,
	SoldToNCESLEAID,
	upper(SoldToCustomerAddress) SoldToCustomerAddress,
	upper(BillToCustomerCity) BillToCustomerCity,
	upper(ShipToCustomerCity) ShipToCustomerCity,
	upper(SoldToCustomerCity) SoldToCustomerCity,
	upper(BillToCustomerState) BillToCustomerState,
	upper(ShipToCustomerState) ShipToCustomerState,
	upper(SoldToCustomerState) SoldToCustomerState,
	upper(BillToCustomerProvince) BillToCustomerProvince,
	upper(EndCustomerProvince) EndCustomerProvince,
	upper(ShipToCustomerProvince) ShipToCustomerProvince,
	upper(SoldToCustomerProvince) SoldToCustomerProvince,
	upper(BillToCustomerCountry) BillToCustomerCountry,
	upper(SoldToCustomerCountry) SoldToCustomerCountry,
	ShipToCustomerPostalCode,
	SoldToCustomerPostalCode,
	BillToOraclePartySiteNumber,  
	EndOraclePartySiteNumber,
	ShipToOraclePartySiteNumber,
	SoldToOraclePartySiteNumber,
	BillToDefinitiveID,
	EndDefinitiveID,
	ShipToDefinitiveID,
	SoldToDefinitiveID,
	BillToNCESSCHID,
	EndNCESSCHID,
	ShipToNCESSCHID,
	SoldToNCESSCHID,
	--so-621 new atttributes addition ends
	--so-661 new attributes addition starts
	upper(BillToAccountType) BillToAccountType,
	upper(EndAccountType) EndAccountType,
	upper(ShipToAccountType) ShipToAccountType,
	upper(SoldToAccountType) SoldToAccountType,
	--so-661 new attributes addition ends
	productcommissionclasscode,
	'Orders' as Measure,
	Calendar_Month,
	Calendar_Year,
	Local_Currency,
	Sales_Office,
	Unit_Price,
	UNIT_PRICE_FXD_USD,
	upper(BillToServicesMajorAcc) BillToServicesMajorAcc, --so-665 new attributes addition starts
	upper(EndServicesMajorAcc) EndServicesMajorAcc,
	upper(ShipToServicesMajorAcc) ShipToServicesMajorAcc,
	upper(SoldToServicesMajorAcc) SoldToServicesMajorAcc, --so-665 new attributes addition ends
	upper(BillToCustomerSubClass), --so-728 new attributes addition starts
    upper(EndCustomerSubClass),
    upper(ShipToCustomerSubClass),
    upper(SoldToCustomerSubClass), --so-728 new attributes addition ends
	upper(aop_customer_sub_class)
	
from 
@DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na a
left outer join 
		(
		 select a.salesordernumber, a.orderexlinenumber, a.lob, a.gbu, sum(netsalesrevenue) sum_netsales from @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na a
			group by a.salesordernumber, a.orderexlinenumber, a.lob, a.gbu 
		) sn on a.salesordernumber = sn.salesordernumber and a.orderexlinenumber = sn.orderexlinenumber and a.lob = sn.lob and a.gbu = sn.gbu 
;

-- New table creation for computing Sizecategory 
-- By :Srikanth V on 14-03-2022
insert overwrite @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na
select 
	account_type_aop,
	AccountAM,
	AccountCSM,
	AccountLead,
	AccountPresence,
	AccountServiceSales,
	AccountSubType,
	AccountType,
	upper(AOP_Account_Name),
	AOP_Category,
	BillToAccountRole,
	upper(BillToCustomer),
	upper(BillToCustomerAddress),
	upper(BillToCustomerCustomerType1),
	upper(BillToCustomerEnterpriseIndustry),
	upper(BillToCustomerGSC),
	upper(BillToCustomerIndustry1),
	upper(BillToCustomerName) BillToCustomerName,
	upper(BillToCustomerName2),
	BillToCustomerNumber,
	upper(BillToCustomerParentAccount),
	BillToCustomerPostalCode,
	upper(BillToCustomerStandardizedName),
	upper(BillToCustomerVertical),
	bsid,
	ChannelFlag,	
	upper(COE),
	upper(COE_New),
	ContractType,
	CustomerPurchaseOrderNumber,
	CustomerRequestDate,
	Data_Last_Refreshed,
	upper(EndCustomer),
	upper(EndCustomerAccountRole),
	upper(EndCustomerAddress),
	upper(EndCustomerCity),
	upper(EndCustomerCountry),
	upper(EndCustomerCustomerType1),
	upper(EndCustomerEnterpriseIndustry),
	upper(EndCustomerGSC),
	upper(EndCustomerIndustry1),
	upper(EndCustomerName) EndCustomerName,
	EndCustomerNumber,
	upper(EndCustomerParentAccount),
	EndCustomerPostalCode,
	upper(EndCustomerStandardizedExists),
	upper(EndCustomerStandardizedName),
	upper(EndCustomerState),
	upper(EndCustomerState2),
	upper(EndCustomerVertical),
	ExchangeRateUsed,
	ExtendedListPrice,
	upper(GBU),
	CASE
WHEN trim(upper(account_type_aop)) = 'VERTIV DIRECT ACCOUNT' THEN 'N'
WHEN upper(account_type_aop) = 'ENTERPRISE ACCOUNT' AND upper(office_type) = 'LVO' AND (upper(sizecategory) = 'PROJECT' OR  upper(sizecategory) = 'FLOW')  THEN 'Y'
WHEN upper(account_type_aop) = 'VERTIV NAMED ACCOUNT' AND upper(office_type) = 'LVO' AND upper(sizecategory) = 'FLOW' THEN 'Y'
WHEN upper(account_type_aop) = 'CHANNEL' THEN 'Y'
WHEN upper(account_type_aop) = 'VERTIV STRATEGIC ACCOUNT' THEN 'N'
WHEN (upper(lob) = 'DC POWER' AND upper(endcustomerparentaccount) LIKE '%CENTURYLINK%') THEN 'N'
WHEN (upper(lob) = 'DC POWER' AND upper(endcustomerparentaccount) LIKE '%CHARTER%') THEN 'N'
WHEN (upper(lob) = 'DC POWER' AND upper(endcustomerparentaccount) LIKE '%COX%') THEN 'N'
WHEN (upper(lob) = 'DC POWER' AND upper(endcustomerparentaccount) LIKE '%COMCAST%') THEN 'N'
WHEN (upper(lob) = 'DC POWER' AND upper(endcustomerparentaccount) LIKE '%FRONTIER%') THEN 'N'
WHEN upper(endcustomerindustry1) LIKE '%MILITARY%' AND product_category like '%SECURE%' THEN 'N'
WHEN upper(endcustomerindustry1) LIKE '%INTEL%' AND product_category like '%SECURE%' THEN 'N'
WHEN upper(endcustomerindustry1) LIKE '%CIVILIAN%' AND product_category like '%SECURE%' THEN 'N'
WHEN upper(endcustomerparentaccount) LIKE '%UNITED STATES%' AND product_category like '%SECURE%' THEN 'N'
WHEN upper(endcustomerparentaccount) LIKE '%NASA%' AND product_category like '%SECURE%' THEN 'N'
WHEN upper(endcustomerparentaccount) LIKE '%MANTECH INTERNATIONAL%' AND product_category like '%SECURE%' THEN 'N'
WHEN upper(endcustomerparentaccount) LIKE '%NORTHROP GRUMMAN%' AND product_category LIKE '%SECURE%' THEN 'N'
WHEN upper(level_6) = 'SWITCHVIEW SECURE HARDWARE'
OR upper(selling_motion) = 'INTERCOMPANY - CANADA'
OR upper(lob) = 'DC POWER'
OR upper(selling_motion) = 'INTERCOMPANY'
OR upper(endcustomerparentaccount) LIKE '%WORLD WIDE TECH%'
OR upper(billtocustomerparentaccount) LIKE '%WORLD WIDE TECH%'
OR upper(endcustomername) LIKE '%WORLD WIDE TECH%'
OR upper(resellerbranchname) LIKE '%WORLD WIDE TECH%' THEN 'N'
WHEN trim(smscustomertype) IN ('M01','M02','M03','M04','M05','M06','M07','M08', 'M09','M10') THEN 'N'
WHEN upper(lob) = 'OTHER'
OR upper(lob) = 'N/A'
OR upper(lob) = 'EXCLUDE'
OR upper(lob) = 'NO ASSIGNMENT'
OR upper(lob) = 'TARIFF'
OR upper(selling_motion) = 'ACCOUNT'  THEN 'N'
ELSE 'Y'
END growth_target,--modified by HARI (Implemented the growth_target logic in final processor)
	alicecommissionoverridepercent,
	upper(Level_6),
	ListPrice,
	upper(LOB),
	NetSalesRevenue,
	Office_Group,
	office_website,
	OrderCoordinator,
	OrderCreateDate,
	OrderLastUpdateDate,
	OrderEXLineNumber,
	PartnerWebFolderID,
	PartnerWebQuoteNumber,
	Plant,
	PlantDescription,
	upper(Product_Category),
	upper(Product_Category_New),
	upper(Product_Family),
	upper(Product_Family_New),
	PROShipmentNumber,
	QuantityOrdered,
	quoteid,
	UPPER(RecordSource) RecordSource,
	SalesOfficeName,
	SalesOfficeNumber,
	SalesOfficePrincipalEmail,
	SalesOfficeReferenceNumber,
	SalesOrderNumber,
	SalesRegionName,
	SalesRegionNumber,
	SalesRepEmail,
	SalesRepID,
	SalesRepName,
	SalesRepType,
	SAPOEMTag,
	Selling_Motion,
	OrderDeliveryPromisedDate,
	Segment,
	SFR_Category,
	ShipDate,
	ShipmentCarrierName,
	ShippedQuantity,
	upper(ShipToCustomerAddress),
	upper(ShipToCustomerCountry),
	upper(ShipToCustomerCustomerType1),
	upper(ShipToCustomerEnterpriseIndustry),
	upper(ShipToCustomerGSC),
	upper(ShipToCustomerIndustry1),
	upper(ShipToCustomerName)ShipToCustomerName,
	ShipToCustomerNumber,
	upper(ShipToCustomerParentAccount),
	upper(ShipToCustomerStandardizedName),
	upper(ShipToCustomerVertical),
	sizecategory,
	upper(SKU),
	upper(SKUDescription),
	SMSBatteriesOnlyFlag,
	SMSBatteryRBSM,
	SMSContractEndDate,
	SMSContractExpireDate,
	SMSContractPMs,
	SMSContractSequence,
	SMSContractStartDate,
	SMSContractStatus,
	SMSCustomerType,
	SMSEquipmentSegment,
	SMSRevCat,
	SMSSiteId,
	SMSStackedWhenBooked,
	SMSTagNumber,
	SMSTicketNumber,
	SMSTicketType,
	upper(SoldToCustomerCustomerType1),
	upper(SoldToCustomerEnterpriseIndustry),
	upper(SoldToCustomerGSC),
	upper(SoldToCustomerIndustry1),
	upper(SoldToCustomerName) SoldToCustomerName,
	upper(SoldToCustomerParentAccount),
	upper(SoldToCustomerStandardizedName),
	upper(SoldToCustomerVertical),
	SPEED_DIAL,
	Sales_Area,
	effective_user() as w_insert_by,
	now() as w_insert_dtm,
    'SalesOps' as src_system_name,
    resellernumber,
	resellerbranchnumber,
	resellerbranchname,
	office_type,
	uom,
	sales_order_line_type,
	Order_type,
	Class_code,
	OEM_FLAG,
	--SO-621 new attributes addition starts
	upper(BillToCustomerClassCode),
	upper(EndCustomerClassCode),
	upper(ShipToCustomerClassCode),
	upper(SoldToCustomerClassCode),
	upper(BillToCustomerPartnerClassCode),
	upper(EndCustomerPartnerClassCode),
	upper(ShipToCustomerPartnerClassCode),
	upper(SoldToCustomerPartnerClassCode),
	BillToOracleRegistryID, 
	EndOracleRegistryID,
	ShipToOracleRegistryID,
	SoldToOracleRegistryID,
	upper(BillToCustomerIndustry3),
	upper(EndCustomerIndustry3),
	upper(ShipToCustomerIndustry3),
	upper(SoldToCustomerIndustry3),
	upper(BillToCustomerSubVertical),
	upper(EndCustomerSubVertical),
	upper(ShipToCustomerSubVertical),
	upper(SoldToCustomerSubVertical),
	upper(BillToReportingSubParent1),
	upper(EndReportingSubParent1),
	upper(ShipToReportingSubParent1),
	upper(SoldToReportingSubParent1),
	BillToDefinitiveIDNID,
	EndDefinitiveIDNID,
	ShipToDefinitiveIDNID,
	SoldToDefinitiveIDNID,
	BillToDefinitiveIDNIDParentID,
	EndDefinitiveIDNIDParentID,
	ShipToDefinitiveIDNIDParentID,
	SoldToDefinitiveIDNIDParentID,
	BillToNCESLEAID,
	EndNCESLEAID,
	ShipToNCESLEAID,
	SoldToNCESLEAID,
	upper(SoldToCustomerAddress),
	upper(BillToCustomerCity),
	upper(ShipToCustomerCity),
	upper(SoldToCustomerCity),
	upper(BillToCustomerState),
	upper(ShipToCustomerState),
	upper(SoldToCustomerState),
	upper(BillToCustomerProvince),
	upper(EndCustomerProvince),
	upper(ShipToCustomerProvince),
	upper(SoldToCustomerProvince),
	upper(BillToCustomerCountry),
	upper(SoldToCustomerCountry),
	ShipToCustomerPostalCode,
	SoldToCustomerPostalCode,
	BillToOraclePartySiteNumber,  
	EndOraclePartySiteNumber,
	ShipToOraclePartySiteNumber,
	SoldToOraclePartySiteNumber,
	BillToDefinitiveID,
	EndDefinitiveID,
	ShipToDefinitiveID,
	SoldToDefinitiveID,
	BillToNCESSCHID,
	EndNCESSCHID,
	ShipToNCESSCHID,
	SoldToNCESSCHID,
	--so-621 new atttributes addition ends
	--so-661 new attributes addition starts
	upper(BillToAccountType),
	upper(EndAccountType),
	upper(ShipToAccountType),
	upper(SoldToAccountType),
	--so-661 new attributes addition ends
	productcommissionclasscode,
	'Orders' as Measure,
	Calendar_Month,
	Calendar_Year,
	Local_Currency,
	Sales_Office,
	Unit_Price,
	UNIT_PRICE_FXD_USD,
	upper(BillToServicesMajorAcc), --so-665 new attributes addition starts
	upper(EndServicesMajorAcc),
	upper(ShipToServicesMajorAcc),
	upper(SoldToServicesMajorAcc), --so-665 new attributes addition ends
	upper(BillToCustomerSubClass), --so-728 new attributes addition starts
    upper(EndCustomerSubClass),
    upper(ShipToCustomerSubClass),
    upper(SoldToCustomerSubClass), --so-728 new attributes addition ends
	upper(aop_customer_sub_class)
	
from
@DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_tmp1;

invalidate metadata @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_tmp1;

							