1. INVALIDATE METADATA

invalidate metadata @DB_LEVEL@_na_cld_osc_gold.csi_item_instances_na_temp;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_csi_item_instances;
invalidate metadata @DB_LEVEL@_na_cld_osc_gold.service_details_stage_na;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_okc_k_headers_all_b;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_okc_k_lines_b;
invalidate metadata @DB_LEVEL@_ora_alice_gold.f_contract;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_okc_k_rel_objs;
invalidate metadata @DB_LEVEL@_na_cld_osc_gold.service_details_na;
invalidate metadata @DB_LEVEL@_ora_alice_gold.r_renewalcapturerate;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_csi_inst_extend_attrib_v;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.rep_office_info;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_mtl_system_items_b;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_oe_order_headers_all;
invalidate metadata @DB_LEVEL@_ora_alice_gold.d_contractline;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_okc_k_lines_tl;
invalidate metadata @DB_LEVEL@_edm_gold.d_product;
invalidate metadata @DB_LEVEL@_cld_oraerp_silver.egp_system_items_b; 
invalidate metadata @DB_LEVEL@_cld_oraerp_silver.egp_item_categories;
invalidate metadata @DB_LEVEL@_cld_oraerp_silver.egp_category_sets_b;
invalidate metadata @DB_LEVEL@_cld_oraerp_silver.egp_categories_tl;
invalidate metadata @DB_LEVEL@_cld_oraerp_silver.egp_categories_b;
invalidate metadata @DB_LEVEL@_edm_gold.d_regional_legacy_product_catalog_vw;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_oe_order_lines_all;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_csi_instance_party_vwr;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_hz_party_sites;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_hz_locations;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_hz_cust_site_uses_all;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_hz_cust_acct_sites_all;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_hz_parties;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_hz_cust_accounts;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_accounts;
invalidate metadata @DB_LEVEL@_impartner_silver.account;
invalidate metadata @DB_LEVEL@_mdm_hub_gold.d_customer_header_v;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.Varsdatabase_Sellingmotion;
invalidate metadata @DB_LEVEL@_mdm_hub_gold.d_customer_xref;
invalidate metadata @DB_LEVEL@_mdm_hub_gold.d_customer_header;
invalidate metadata @DB_LEVEL@_ora_alice_gold.d_contractsubline;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.customer_data;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.enterprise_industry;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.parent_account_type;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.ref_customerparentaccounts;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.ref_accountsflag_sku;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_sku;
invalidate metadata @DB_level@_na_cld_osc_gold.service_summary_na;
invalidate metadata @DB_LEVEL@_edm_gold.f_sales_order_line;
invalidate metadata @DB_level@_ora_alice_silver.alice_okc_line_styles_v;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_oks_k_lines_b;
invalidate metadata @DB_level@_ora_alice_silver.alice_hr_all_organization_units;
invalidate metadata @DB_LEVEL@_ora_alice_gold.d_contractheader;

2. populate_item_instances_na_temp

Truncate table @DB_LEVEL@_na_cld_osc_gold.csi_item_instances_na_temp;

insert into @DB_LEVEL@_na_cld_osc_gold.csi_item_instances_na_temp
select
	instance_number,
	instance_type_code,
	serial_number,
	install_location_id,
	operational_status_code,
	instance_id,
	inventory_item_id,
	effective_user() w_insert_by,
	now() w_insert_dtm ,
	'ALICE' src_system_name
from
	@DB_LEVEL@_ora_alice_silver.alice_csi_item_instances
where
	active_start_date > add_months(now(),-36);
	
	
3. populate_service_details_stage_na

Truncate table @DB_LEVEL@_na_cld_osc_gold.service_details_stage_na;

insert into @DB_LEVEL@_na_cld_osc_gold.service_details_stage_na
select distinct
--from_utc_timestamp( okh.start_date,'US/Eastern') Booked_Contract_Start_Date,
okh.start_date Booked_Contract_Start_Date, --VR 03282022 updated changes as per Mike Banek
--from_utc_timestamp(to_date(okh.end_date),'US/Eastern') Booked_Contract_End_Date,
okh.end_date Booked_Contract_End_Date, --VR 03282022 updated changes as per Mike Banek
from_utc_timestamp(to_date(okh.end_date),'US/Eastern') Warranty_End_Date,
DATEDIFF(TO_DATE(okh.end_date), TO_DATE(okh.start_date)) Booked_Contract_Length_days,
round(MONTHS_BETWEEN(okh.end_date ,okh.start_date)) length_contract_in_months,
/* okh.ESTIMATED_AMOUNT Booked_Contract_Annual_Revenue,
okh.ESTIMATED_AMOUNT Booked_Contract_Revenue,
okh.ESTIMATED_AMOUNT Potential_Revenue,
okh.ESTIMATED_AMOUNT , */
/* sl.price_negotiated Booked_Contract_Annual_Revenue,
sl.price_negotiated Booked_Contract_Revenue,
sl.price_negotiated Potential_Revenue,
sl.price_negotiated , */
fc.subline_amount Booked_Contract_Annual_Revenue,
fc.subline_amount Booked_Contract_Revenue,
fc.subline_amount Potential_Revenue,
fc.subline_amount estimated_amount,
fc.line_number line_number ,
fc.subline_number subline_number ,
okh.last_update_date,
okh.src_system_name Record_Source,
okh.id ok_id,
okh.contract_number,
okh.inv_organization_id,
okh.AUTHORING_ORG_ID,
sl.chr_id sl_chr_id,
sl.cle_id,
sl.lse_id sl_lse_id,
sl.id sl_id,
/* cl.lse_id,
cl.id, */
'' lse_id,
'' id,
cast(fc.subline_amount as STRING) List_Price,
--oki.object1_id1 oki_object1_id1,
'' oki_object1_id1,
rel.chr_id,
rel.jtot_object1_code,
rel.object1_id1,
cii.*
FROM 
@DB_LEVEL@_ora_alice_silver.alice_okc_k_headers_all_b okh
LEFT JOIN @DB_LEVEL@_ora_alice_silver.alice_okc_k_lines_b sl ON
 okh.id = sl.chr_id
 AND sl.cle_id IS NULL
/* LEFT JOIN @DB_LEVEL@_ora_alice_silver.alice_okc_k_lines_b cl ON
 cl.cle_id = sl.id
 AND sl.cle_id IS NULL */
LEFT JOIN @DB_LEVEL@_ora_alice_gold.f_contract fc ON 
okh.contract_number=fc.contract_number and sl.id=fc.contract_line_id 
/* LEFT JOIN @DB_LEVEL@_ora_alice_silver.alice_okc_k_items oki ON
 cl.id = oki.cle_id
 AND oki.object1_id2 = '#' */
left JOIN @DB_LEVEL@_ora_alice_silver.alice_okc_k_rel_objs rel ON
rel.chr_id = okh.id
and UPPER(rel.jtot_object1_code)= 'OKX_ORDERHEAD' 
RIGHT OUTER JOIN (
select
	instance_number,
	instance_type_code,
	serial_number,
	install_location_id,
	operational_status_code,
	instance_id,
	inventory_item_id,
    last_oe_order_line_id,
	effective_user() w_insert_by,
	now() w_insert_dtm ,
	'ALICE' src_system_name
from
	@DB_LEVEL@_ora_alice_silver.alice_csi_item_instances
 ) cii 
 ON fc.instance_number = CAST(cii.instance_number AS STRING);
 
  
4. populate_service_details_na

INSERT OVERWRITE @DB_LEVEL@_na_cld_osc_gold.service_details_na
WITH SERVICES_QUERY AS 
(
SELECT  distinct
    Account_Type ,
	Account_Type_AOP ,
	Account_AM ,	
	Account_CSM ,
	Account_Lead ,
	Account_Presence ,
	Account_Service_Sales ,
	Account_SubType ,
	Address ,
	Address_2 ,
	upper(AOP_Account_Name) aop_account_name,
	upper(Bill_To_Customer_Name) Bill_To_Customer_Name,
	Booked_Contract_Annual_Revenue ,
	Booked_Contract_Coverage_Class ,
	Booked_Contract_Coverage_Class_Code ,
	Booked_Contract_End_Date ,
	Booked_Contract_End_Date_old,
	booked_contract_length_days ,
	Booked_Contract_Level ,
	Booked_Contract_Monthly_Revenue,
	Booked_Contract_Points ,
	Booked_Contract_Revenue ,
	Booked_Contract_Start_Date ,
	Booked_Contract_Start_Date_old,
	Booking_Type , 
	Capture_Status ,
	Calculated_Potential,
	CE_Name ,
	CE_Number ,
	City ,
	Closed_Within_60_Days ,
	upper(COE) COE,
	Contact_Name ,
	--contract_number,
	booked_contract_number, --VR 06152022 New column name change as per Mike B		
	Count_of_RecordID ,
	Count_of_Right_RecordID ,
	Count_Distinct_Contract_Level ,
	Current_Year_Capture_Status ,
	Customer_Crossreference ,
	Customer_Crossreference_3 ,
	Customer_Name,
	Customer_Type ,
	Customer_Type_Description ,
	Data_Last_Refreshed ,
	Data_Last_Refreshed_2 ,
	Data_Last_Refreshed_SO ,
	--Booked_Contract_End_Date Due_Date,	
	Due_Date,-- VR 03302022 logic changes suggested by Mike Banek
	EMAIL ,
	Engineered_Thermal_Flag ,
	Equipment_Description ,
	Equipment_Model_Num ,
	Equipment_Segment ,
	Equipment_Segment_Description ,
	Equipment_Subtype ,
	Equipment_Type_Code ,
	FDO_All ,
	Extract_date ,
	upper(GBU) GBU,
    growth_target,
	Industry ,
	KVA_Group ,
	KVA_Range ,
	Large_Account_Type ,
	Large_Account_Type_groups ,
	upper(Level_6) Level_6,
	line_number,
	List_Price ,
	upper(LOB) LOB,
	Local_Currency ,
	LVO_All ,
	Model_Number ,
	Multi_Year_Tag ,
	Multiyear_Tag ,
	Office_Num ,
	Office_Group ,
	Office_Name ,
	Office_or_Account_Type ,
	office_type ,
	On_Time_Status ,
	On_Time_YTD_Flag ,
	ordered_item,
	Order_Create_Date ,
	Parent_Account ,
	Serial_number ,
	PartnerWeb_Quote_Number ,
	Potential_Revenue ,
	Point_in_Time_Status ,
	Previous_Contract_Status ,
	Previous_Contract_Annual_Revenue ,
	Previous_Contract_End_Date ,
	Previous_Contract_Length ,
	Previous_Contract_Level ,
	Previous_Contract_Monthly_Revenue ,
	Previous_Contract_Revenue ,
	Previous_Contract_Sequence_Number ,
	Previous_Contract_Start_Date ,
	Previous_Coverage_Class ,
	Previous_Coverage_Class_Code ,
	Previous_List_Price ,
	Principal ,
	Principal_Email ,
	upper(Product_Category) Product_Category,
	upper(Product_Family) Product_Family,
	Product_Sales_Order_Number ,
	Previous_Contract_Points ,
	UPPER(Record_Source) Record_Source ,
	RecordID ,
	Region ,
	Right_RecordID ,
	Office_Group Sales_Group ,
	Sales_Office_Name ,
	Sales_Office_Number ,	
	Sales_Order_Number ,
	Selling_Motion ,
	Service_Territory ,
	Services_District ,
	Services_Region ,
	Site_ID ,
	Standardized_Name ,
	State ,
	Status ,
	Tag_Number ,
	Instance_captured ,
	Tags_Due ,
	Territory ,
	UPS_Flag ,
	Warranty_End_Date ,
	XREFC3 ,
	XREFCS ,
	Zip_Code,
	w_insert_by ,
	w_insert_dtm ,
	src_system_name,
    resellerbranchnumber,
	resellerbranchname,
	Booked_Contract_Length_months	
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
OR upper(Customer_Name) LIKE '%WORLD WIDE TECH%'
OR upper(resellerbranchname) LIKE '%WORLD WIDE TECH%' THEN 'N'
WHEN trim(Customer_Type) IN ('M01','M02','M03','M04','M05','M06','M07','M08', 'M09','M10') THEN 'N'
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
END  account_type_aop1
	
FROM
	(
	SELECT 
		b.*,
		CASE
			WHEN Office_Type NOT IN ('FDO','LVO') THEN
				CASE
					WHEN industry_customer_type = 'Enterprise' THEN 'Others'
					ELSE 'Large Accounts'
				END 
			ELSE Office_Type
		END Office_Group,	
		
		CASE
            WHEN (upper(Bill_To_Customer_Name) LIKE '%VERTIV%'
            OR upper(Bill_To_Customer_Name) LIKE '%LIEBERT%'
            OR upper(Bill_To_Customer_Name) LIKE '%GEIST%'
            OR upper(Bill_To_Customer_Name) LIKE '%ATLAS ASIA LIMITED 33CH0104%'
            OR upper(Bill_To_Customer_Name) LIKE '%UNIFIED POWER%'
            OR upper(EndCustomerParentAccount) LIKE '%UNIFIED POWER%')
            OR (upper(BillToCustomerParentAccount) LIKE '%VERTIV%'
            OR upper(BillToCustomerParentAccount) LIKE '%GEIST%'
            OR upper(BillToCustomerParentAccount) LIKE '%LIEBERT%'
            OR upper(BillToCustomerParentAccount) LIKE '%ATLAS ASIA LIMITED 33CH0104%') THEN 'INTERCOMPANY'
            WHEN upper(region) = 'CANADA' THEN 'INTERCOMPANY - CANADA'
            WHEN (nvl(flag,'N') = 'N' and nvl(flag1, 'N') = 'N' and nvl(sm_ACCOUNT_flag,'N') = 'N') AND (upper(Record_Source) LIKE '%CDW%'
            OR upper(Record_Source) LIKE '%TECH%'
            OR upper(Record_Source) LIKE '%INGRAM%'
            OR upper(Record_Source) LIKE '%SYNNEX%'
            OR upper(Record_Source) LIKE '%PC CONNECT%'
            OR upper(Record_Source) LIKE '%GRAYBAR%'
            OR upper(Record_Source) LIKE '%D AND H%'
            OR upper(Record_Source) LIKE '%AMAZON%'
            OR upper(Record_Source) LIKE '%ARROW%'
            OR upper(Record_Source) LIKE '%CONTEXT%'
            OR upper(Record_Source) LIKE '%CONTEXT_CONNECTION%'
            OR upper(Record_Source) LIKE '%CONTEXT_CDW LOGISTICS%'
            OR upper(Record_Source) LIKE '%CONTEXT_INGRAM MICRO%'
            OR upper(Record_Source) LIKE '%CONTEXT_TECH DATA%'
            OR upper(Record_Source) LIKE '%CONTEXT_GRAYBAR%'
            OR upper(Record_Source) LIKE '%CONTEXT_TECH DATA%') THEN 'CHANNEL'
            WHEN (nvl(flag,'N') = 'N' and nvl(flag1, 'N') = 'N' and nvl(sm_ACCOUNT_flag,'N') = 'N') AND upper(Record_Source) = 'ORACLEERPCLOUD' AND plant in ('102', '103', '105', '106') THEN 'ACCOUNT'
            WHEN (nvl(flag,'N') = 'N' and nvl(flag1, 'N') = 'N' and nvl(sm_ACCOUNT_flag,'N') = 'N') AND Record_Source like '%ERS%' THEN 'ERS/HVM'
            WHEN (flag = 'Y' or flag1 = 'Y') OR sm_ACCOUNT_flag = 'Y' THEN 'ACCOUNT'
            WHEN sm_ACCOUNT_flag = 'N' THEN 'CHANNEL'
            WHEN nvl(resellerbranchnumber, 'N') != 'N' THEN 'CHANNEL'
            WHEN (upper(BillToCustomerParentAccount) like '%INGRAM MICRO%'
            OR upper(BillToCustomerParentAccount) like '%TECH DATA%'
            OR upper(BillToCustomerParentAccount) like '%SYNNEX%'
            OR upper(BillToCustomerParentAccount) like '%D & H%') THEN 'CHANNEL'
            WHEN nvl(branch_office_nbr, 'N') != 'N' THEN 'CHANNEL'
            ELSE 'FIELD SALES'
            END selling_motion,
			CASE
            WHEN netsalesrevenue > 3000000 THEN 'MEGA'
            WHEN upper(lob) = 'AC POWER' and upper(gbu) = 'INFRASTRUCTURE & SOLUTIONS' and netsalesrevenue < 750000 THEN 'FLOW'
            WHEN upper(lob) = 'DC POWER' and upper(gbu) = 'INFRASTRUCTURE & SOLUTIONS' and netsalesrevenue < 750000 THEN 'FLOW'
            WHEN upper(lob) = 'THERMAL' and upper(gbu) = 'INFRASTRUCTURE & SOLUTIONS' and netsalesrevenue < 500000 THEN 'FLOW'
            when upper(lob) = 'DIGITAL ECOSYSTEM' and upper(gbu) = 'SERVICES & SPARES' and netsalesrevenue <50000 THEN 'FLOW'
            when upper(lob) = '1 PHASE UPS' and upper(gbu) = 'INTEGRATED RACK SOLUTIONS' and netsalesrevenue < 100000 THEN 'FLOW'
            when upper(lob) = 'EDGE THERMAL' and upper(gbu) = 'INTEGRATED RACK SOLUTIONS' and netsalesrevenue < 100000 THEN 'FLOW'
            when upper(lob) = 'RACK PDU' and upper(gbu) = 'INTEGRATED RACK SOLUTIONS' and netsalesrevenue < 100000 THEN 'FLOW'
            when upper(lob) = 'RACKS' and upper(gbu) = 'INTEGRATED RACK SOLUTIONS' and netsalesrevenue < 100000 THEN 'FLOW'
            WHEN upper(lob) = 'GLOBAL EDGE SYSTEMS' and upper(gbu) = 'INTEGRATED RACK SOLUTIONS' and netsalesrevenue < 100000 THEN 'FLOW'
            when upper(lob) = 'IT SYSTEMS' and upper(gbu) = 'INTEGRATED RACK SOLUTIONS' and netsalesrevenue < 100000 THEN 'FLOW'
            WHEN upper(lob) = 'ENERGY STORAGE' and upper(gbu) = 'INFRASTRUCTURE & SOLUTIONS' and netsalesrevenue < 750000 THEN 'FLOW'
            when upper(lob) in ('REGIONAL SERVICES','VERTIV SERVICES') and upper(gbu) = 'SERVICES & SPARES'  THEN 'SERVICES'
            when upper(lob) = 'IMS/CUSTOM' THEN 'PROJECT'
            ELSE 'PROJECT'
            END AS sizecategory,		
	/* 		CASE 
				WHEN Booked_Contract_End_Date > now() then '1 ( Closed)'
				ELSE '0 (Opened)'
			END Instance_captured , */
			CASE
				WHEN booked_contract_length_days IS NULL
					 OR booked_contract_length_days =0 THEN '0'
				ELSE '1'
			END Instance_captured,  --VR 03302022 Logic changes suggested by Mike Banek		
			CASE
				WHEN (Booked_Contract_Revenue>0
					  AND length_contract_in_months>0) THEN (Booked_Contract_Revenue/length_contract_in_months)
				ELSE 0
			END Booked_Contract_Monthly_Revenue	
	FROM
		(
		SELECT		   
			pa.account_am Account_AM,
			pa.account_csm Account_CSM,
			pa.account_lead Account_Lead,
			pa.account_presence Account_Presence,
			pa.account_service_sales Account_Service_Sales,
			pa.account_subtype Account_SubType,
			'' Account_Type,
			CASE
            WHEN nvl(sa.aopaccountname, 'N') != 'N' THEN sa.aopaccountname
            WHEN nvl(sb.aopaccountname, 'N') != 'N' THEN sb.aopaccountname
            WHEN nvl(sm.sm_sku, 'N') != 'N' THEN sm.aop_account_name
            ELSE 'Non Account'
            END aop_account_name,
			'' Capture_Status,
			'' CE_Name,
			'' CE_Number,
			'' Count_of_RecordID,
			'' Count_of_Right_RecordID,
			'' Count_Distinct_Contract_Level,
			'' Current_Year_Capture_Status,
			'' Customer_Crossreference,
			'' Customer_Crossreference_3,
			'' Data_Last_Refreshed_2,
			'' Data_Last_Refreshed_SO,
			'' Engineered_Thermal_Flag,
			'' FDO_All,
			'' Extract_date,
			'' Large_Account_Type,
			'' Large_Account_Type_groups,
			'' Local_Currency,
			'' LVO_All,
			'' Multi_Year_Tag,
			'' Multiyear_Tag,
			'' Office_or_Account_Type,
			'' On_Time_Status,
			'' On_Time_YTD_Flag,
			'' PartnerWeb_Quote_Number,
			'' Point_in_Time_Status,
			rc.old_status Previous_Contract_Status,
			'' Previous_Contract_Points,
			'' RecordID,
			'' Right_RecordID,
			'' Service_Territory,
			'' Standardized_Name,
			'' UPS_Flag,
			'' XREFC3,
			'' XREFCS,
			--rc.old_usd_amount Previous_Contract_Annual_Revenue,
			case
				when (datediff(CAST (cast (rc.old_inst_end_date as date format "DD / MM / YYYY") AS TIMESTAMP),
				CAST (cast (rc.old_inst_start_date as date format "DD / MM / YYYY") AS TIMESTAMP) ))= 364 THEN rc.old_usd_amount / 1
				else (rc.old_usd_amount)/((datediff(CAST (cast (rc.old_inst_end_date as date format "DD / MM / YYYY") AS TIMESTAMP),
						CAST (cast (rc.old_inst_start_date as date format "DD / MM / YYYY") AS TIMESTAMP) ))/ 365 
									)
			end as Previous_Contract_Annual_Revenue,	---VR 05182022 Mapping changes correction SO-666		
			--rc.old_end_date Previous_Contract_End_Date,
			CAST (cast (rc.old_end_date as date format "DD/MM/YYYY") AS TIMESTAMP)  Previous_Contract_End_Date,  ---VR 05182022 Mapping changes correction SO-666
			rc.old_contract_duration_months Previous_Contract_Length,
			'' Previous_Contract_Level,
			CASE WHEN (rc.old_usd_amount>0 and rc.old_contract_duration_months>0 )then (rc.old_usd_amount/rc.old_contract_duration_months)
			else 0
		    end Previous_Contract_Monthly_Revenue,			
			rc.old_usd_amount Previous_Contract_Revenue,
			'' Previous_Contract_Sequence_Number,
			--rc.old_start_date Previous_Contract_Start_Date,
			CAST (cast (rc.old_start_date as date format "DD/MM/YYYY") AS TIMESTAMP)  Previous_Contract_Start_Date, ---VR 05182022 Mapping changes correction SO-666
			rc.old_coverage_name Previous_Coverage_Class,
			rc.old_cover_class Previous_Coverage_Class_Code,
			'' Previous_List_Price,
			--cov.item_description Booked_Contract_Coverage_Class_Code,
			--rc.new_coverage_description Booked_Contract_Coverage_Class_Code,
			dcl.coverage_description Booked_Contract_Coverage_Class_Code,
			--cov.item_description Booking_Type ,
			--dcl.coverage_description Booking_Type ,
			dcl.line_type Booking_Type , --VR 03282022 updated mapping as per Mike Banek
			msi.segment1 Model_Number,
			--pending fields start			
			'' Booked_Contract_Level ,
			'' Booked_Contract_Points ,			
			cpe.calculated_potential_revenue Calculated_Potential,
			'' Closed_Within_60_Days ,
			'' KVA_Group ,
			'' KVA_Range, 					
			--pending fields end
			--'' Sales_Group,
			--cust_hdr_end_cust.city_primary_txt City ,
			hl_end_cust_a.city City ,
			--cust_hdr_end_cust.state_primary_cd 'State' ,
			hl_end_cust_a.state 'State' ,
			upper(cust_hdr_bill_to_cust.customer_name_txt) Bill_To_Customer_Name,
			--cust_hdr_end_cust.customer_name_txt Customer_Name, --Old mapping
			upper(hc_end_cust.account_name) Customer_Name,
			-- cust_hdr_end_cust.customer_type_txt Customer_Type, --Old Mapping
			upper(trim(sms.sms_customer_type)) Customer_Type, --New Mapping 
			upper(cust_hdr_end_cust.customer_type_txt) Customer_Type_Description,
			hl_end_cust_a.postal_code Zip_Code,
			--cust_hdr_end_cust.address1_primary_txt Address ,
			hl_end_cust_a.address1 Address,
			hl_end_cust_a.address2 Address_2 ,
			--cov.name Booked_Contract_Coverage_Class   ,
			--rc.new_coverage_name Booked_Contract_Coverage_Class,
			dcl.coverage_name Booked_Contract_Coverage_Class, --VR 03102022 service mapping changes
			--CAST(ooh.order_number AS STRING) Product_Sales_Order_Number,
			CAST(product_sal_num.order_number AS STRING) Product_Sales_Order_Number, --VR 04212022 New mapping changes 
			CAST(ooh.order_number AS STRING) Sales_Order_Number,
			ooh.ordered_date Order_Create_Date,
			--sds.contract_number contract_number,
			sds.contract_number booked_contract_number , --VR 06152022 New column name change as per Mike B
			sds.Booked_Contract_Start_Date Booked_Contract_Start_Date_old, --VR 04222022 New mapping changes 
			sms.start_date Booked_Contract_Start_Date, --VR 04222022 New mapping changes 
			sds.Booked_Contract_End_Date Booked_Contract_End_Date_old,	
			sms.end_date Booked_Contract_End_Date,	
			--date_add(sds.Booked_Contract_End_Date, interval 1 day) Due_Date,
			--date_add(CAST (cast (rc.old_end_date as date format "DD/MM/YYYY") AS TIMESTAMP), interval 1 day   ) as due_Date,	--VR 04222022 New mapping changes as per Mike B	
            date_add(CAST (cast (rc.old_inst_end_date as date format "DD/MM/YYYY") AS TIMESTAMP), interval 1 day ) as due_Date,	--VR 06152022 New mapping changes as per Mike B					
			--sds.Warranty_End_Date Warranty_End_Date, 
			nvl(warr_dt.attribute_value,'') Warranty_End_Date , --VR 04212022 updated mapping changes as per Mike Banek
			--sds.Booked_Contract_Length_days booked_contract_length_days,
			datediff(cast (sms.end_date as date format "YYYY-MM-DD"), cast (sms.start_date as date format "YYYY-MM-DD") ) booked_contract_length_days,
			sds.length_contract_in_months length_contract_in_months,
			--sds.Booked_Contract_Annual_Revenue Booked_Contract_Annual_Revenue,
			--(sds.Booked_Contract_Annual_Revenue)/((datediff(cast (sms.end_date as date format "YYYY-MM-DD"), cast (sms.start_date as date format "YYYY-MM-DD") ))/365) Booked_Contract_Annual_Revenue, 	 --VR 03282022 updated changes as per Mike Banek		
			case
				when datediff(cast (sms.end_date as date format "YYYY-MM-DD"),
				cast (sms.start_date as date format "YYYY-MM-DD"))= 364
						then sds.Booked_Contract_Annual_Revenue / 1
				else (sds.Booked_Contract_Annual_Revenue)/((datediff(cast (sms.end_date as date format "YYYY-MM-DD"),
					cast (sms.start_date as date format "YYYY-MM-DD") ))/ 365)
			end Booked_Contract_Annual_Revenue,			
			sds.Booked_Contract_Revenue Booked_Contract_Revenue,
			--sds.Potential_Revenue Potential_Revenue,
			--rc.old_usd_amount Potential_Revenue ,	
			case when (datediff(CAST (cast (rc.old_inst_end_date as date format "DD / MM / YYYY") AS TIMESTAMP),CAST (cast (rc.old_inst_start_date as date format "DD / MM / YYYY") AS TIMESTAMP) ))=364 THEN rc.old_usd_amount/1
            else (rc.old_usd_amount)/((datediff(CAST (cast (rc.old_inst_end_date as date format "DD / MM / YYYY") AS TIMESTAMP),
			CAST (cast (rc.old_inst_start_date as date format "DD / MM / YYYY") AS TIMESTAMP) ))/365 
						)						
            end as Potential_revenue ,---VR 05182022 Mapping changes correction SO-666
			/*ol.line_number line_number,*/
			--ol.ordered_item ordered_item, 
			pc.product_number ordered_item, --VR 03102022 service mapping changes
			--fc.line_number line_number ,
			sds.line_number line_number , --VR 03102022 service mapping changes
			sds.subline_number subline_number , --VR 03102022 service mapping changes
			--pc.sku ordered_item,
			--oklt.ITEM_DESCRIPTION Equipment_Description,
			--NVL(oklt.ITEM_DESCRIPTION,pc.product_desc ) Equipment_Description,  --VR 03102022 service mapping changes
			msi.description Equipment_Description, --VR 03282022 updated mapping changes as per Mike Banek
			sds.instance_number Tag_Number,
			--cls.name Equipment_Subtype,  ---old
			csie_std.attribute_value Equipment_Subtype,
			sds.List_Price List_Price,
			sds.last_update_date Data_Last_Refreshed ,
			--sds.instance_type_code Equipment_Type_Code , ---old 
			csie_stc.attribute_value Equipment_Type_Code ,
			sds.src_system_name Record_Source,
			sds.serial_number Serial_number,
			--CAST(sds.install_location_id AS STRING) Site_ID,
			hps_end_cust_a.party_site_number Site_ID,  --New mapping for Site ID
			sds.operational_status_code Status,
		    upper(trim(split_part(gph_dtl.category_name, ':', 1))) gbu, 
            upper(trim(split_part(gph_dtl.category_name, ':', 2))) lob, 
            upper(trim(split_part(gph_dtl.category_name, ':', 3))) coe, 
            upper(trim(split_part(gph_dtl.category_name, ':', 4))) product_category, 
            upper(trim(split_part(gph_dtl.category_name, ':', 5))) product_family, 
            upper(trim(split_part(gph_dtl.category_name, ':', 6))) level_6,
			upper(trim(split_part(gph_dtl.category_name, ':', 4))) Equipment_Segment_Description,		
			upper(trim(split_part(gph_dtl.category_name, ':', 4))) Equipment_Segment,
			ei.enterprise_industry Industry ,
			ei.customer_type1 industry_customer_type ,
			msi.segment1 Equipment_Model_Num,
			'1' Tags_Due,
			--hc_end_cust.account_name Parent_Account,
			cust_hdr_sold_to_cust.ultimate_parent_txt as Parent_Account, ---VR 05182022 Mapping changes correction SO-666
			hc_bill_to_cust.account_name BillToCustomerParentAccount,
			hc_end_cust.account_name EndCustomerParentAccount,
			--pc.sku sku,
			pc.product_number sku,
			roi.office_number Office_Num ,
			/* CASE 
				WHEN roi.office_name LIKE '%Vertiv%' then 'FDO'
				ELSE 'LVO'
			END Office_Type	, */	
			 CASE
			 WHEN upper(sds.src_system_name) = 'ERS_HVM' THEN 'FDO'
	         WHEN upper(roi.office_name) like '%VERTIV%'
	         or upper(roi.office_name) like '%LIEBERT%' THEN 'FDO'
	         ELSE 'LVO'
             END office_type ,
			roi.office_name Office_Name ,
			roi.principal Principal ,
			roi.principal_email Principal_Email ,
			roi.sales_region Region ,
			roi.sales_region Territory ,
			'' Services_Region ,
			'' Services_District,
			--pc.sales_office_name Sales_Office_Name , --old 
			--csie_son.attribute_value Sales_Office_Name,
			roi.office_name Sales_Office_Name, --VR 04222022 Changes as suggested by Mike Banek
			--pc.sales_office_number Sales_Office_Number,		
			--case when length(pc.sales_office_number)<5 then lpad(pc.sales_office_number,5,'0') else pc.sales_office_number end as Sales_Office_Number , --old
			case when length(csie_sonu.attribute_value)<5 then lpad(csie_sonu.attribute_value,5,'0') else csie_sonu.attribute_value end as Sales_Office_Number ,			
			cust_ref.customer ,
			af.af_sku af_sku,
			'' SalesDistrictName,
			'' Plant,
			sm.sm_sku ,
			sm.sm_account_flag sm_account_flag,
			sa.acct_name acct_name,
			CONCAT( CONCAT(hp_end_cust.person_first_name , ' ') , hp_end_cust.person_last_name) Contact_Name ,
			hp_end_cust.email_address EMAIL,
/* 			CASE
				WHEN hc_bill_to_cust.account_name IN (cust_ref.customer) THEN 'Y'
				WHEN hc_end_cust.account_name IN (cust_ref.customer) THEN 'Y'
				WHEN pc.sku IN (af_sku) THEN 'Y'
				ELSE 'N'
			END as accounts_flag , */
			CASE
				WHEN hc_bill_to_cust.account_name IN (cust_ref.customer) THEN 'Y'
				WHEN hc_end_cust.account_name IN (cust_ref.customer) THEN 'Y'
				WHEN pc.product_number IN (af_sku) THEN 'Y'
				ELSE 'N'
			END as accounts_flag ,
			effective_user() as w_insert_by ,
			now() w_insert_dtm ,
			'ALICE' src_system_name,
			CASE 
            WHEN nvl(XX.resellerbranchnumber, 'N') != 'N' THEN XX.resellerbranchnumber
            WHEN nvl(h.branch_office_nbr, 'N') != 'N' THEN h.branch_office_nbr
            ELSE NULL
            END resellerbranchnumber,
            CASE 
            WHEN nvl(XX.resellerbranchname, 'N') != 'N' THEN xx.resellerbranchname
            WHEN upper(sds.src_system_name) like '%CDW%' THEN 'CDW LOGISTICS'
            WHEN upper(sds.src_system_name) like '%GRAY%' THEN 'GRAYBAR ELECTRIC'
            WHEN upper(sds.src_system_name) like '%CONNECTION%' THEN 'CONNECTION'
            WHEN nvl(h.business_name, 'N') != 'N' THEN h.business_name
            ELSE NULL
            END resellerbranchname,
			sa.flag flag,
			sb.flag as flag1,
			'' endcustomerindustry1,
			sds.length_contract_in_months Booked_Contract_Length_months,
			h.branch_office_nbr as branch_office_nbr,
			sa.accounttypeaop,
			sb.accounttypeaop as accounttypeaop1,
			cast ('' as INT) netsalesrevenue,
			'' billtocustomervertical
			
		FROM
			(
			SELECT * FROM @DB_LEVEL@_na_cld_osc_gold.service_details_stage_na		
 )sds
LEFT JOIN (
		select
				distinct old_contract_number,
				new_contract_number ,
				instance_number,
				old_usd_amount,
				old_contract_duration_months,
				old_cover_class,
				old_coverage_name,
				old_coverage_description,
				old_start_date,
				old_end_date,
				old_status,
				new_coverage_name,
				new_coverage_description,
				old_inst_start_date,
				old_inst_end_date
			from
				@DB_LEVEL@_ora_alice_gold.r_renewalcapturerate 
		)rc ON sds.instance_number = rc.instance_number 
			AND sds.contract_number = rc.new_contract_number
        LEFT JOIN (select distinct instance_id,attribute_value,description from @DB_LEVEL@_ora_alice_silver.alice_csi_inst_extend_attrib_v) csie_std ON
		csie_std.instance_id = sds.instance_id 
		and csie_std.description ='Sub Type Description'
		LEFT JOIN (select distinct instance_id,attribute_value,description from @DB_LEVEL@_ora_alice_silver.alice_csi_inst_extend_attrib_v) csie_stc ON
		csie_stc.instance_id = sds.instance_id 
		and csie_stc.description ='Sub Type Code'
		LEFT JOIN (select distinct instance_id,attribute_value,description from @DB_LEVEL@_ora_alice_silver.alice_csi_inst_extend_attrib_v) csie_son ON
		csie_son.instance_id = sds.instance_id 
		and csie_son.description ='Sales Office Name'
		LEFT JOIN (select distinct instance_id,attribute_value,description from @DB_LEVEL@_ora_alice_silver.alice_csi_inst_extend_attrib_v) csie_sonu ON
		csie_sonu.instance_id = sds.instance_id 
		and csie_sonu.description ='Sales Office Number'
		LEFT JOIN 	(SELECT DISTINCT office_number,
						office_name,
						principal,
						principal_email,
						sales_region,
						office_location
		FROM @DB_LEVEL@_edm_other_src_silver.rep_office_info ) roi on 
		roi.office_location = case when length(csie_sonu.attribute_value)<5 then lpad(csie_sonu.attribute_value,5,'0') else csie_sonu.attribute_value end	
	
		--VR 04212022 updated mapping changes as per Mike Banek 
		LEFT JOIN ( select b.instance_number,
						a.attribute_code,
						a.attribute_name,
						a.description,
						a.instance_id,
						a.attribute_value
						from @DB_LEVEL@_ora_alice_silver.alice_csi_inst_extend_attrib_v a
						join @DB_LEVEL@_ora_alice_silver.alice_csi_item_instances b on a.instance_id=b.instance_id
						where attribute_code = 'SMS_WARRANTY_END_DATE' ) warr_dt on
         sds.instance_number= warr_dt.instance_number
		 
		 LEFT JOIN  (select distinct order_number,instance_number from @DB_LEVEL@_ora_alice_silver.alice_csi_installed_base_v ) product_sal_num
		         ON sds.instance_number=product_sal_num.instance_number		 
		 left JOIN @DB_LEVEL@_ora_alice_silver.alice_mtl_system_items_b msi ON
			sds.inventory_item_id = msi.inventory_item_id
			AND sds.inv_organization_id = msi.organization_id
		left JOIN @DB_LEVEL@_ora_alice_silver.alice_oe_order_headers_all ooh ON
			sds.object1_id1 = CAST(ooh.header_id AS STRING)
        left join @DB_LEVEL@_ora_alice_gold.d_contractline dcl
		on sds.contract_number = dcl.contract_number
		and sds.line_number=dcl.line_number			
/* 		left join (
			select
				DISTINCT ordr.order_num,
				ordr.product_num sku,
				ordr.sales_office_name,
				ordr.sales_office_number,
				ordr.order_line_num,
                ordr.order_detail_line_num				
			from
				@DB_LEVEL@_edm_gold.f_sales_order_line ordr where src_system_name='ALICE'			
				) pc on
			cast(ooh.order_number AS STRING )= pc.order_num */
		/* LEFT JOIN @DB_LEVEL@_edm_other_src_silver.rep_office_info roi ON
			pc.sales_office_name = roi.office_name */
			--- REP OFFICE INFO JOIN 
		/* INNER JOIN 	@DB_LEVEL@_ora_alice_gold.f_contract fc
		  on sds.contract_number=fc.contract_number 
		  and sds.instance_number =fc.instance_number 
		  and sds.sl_id=fc.contract_line_id */
		  /*and pc.order_line_num =fc.line_number  */
/* 		left JOIN @DB_LEVEL@_ora_alice_silver.alice_okc_line_styles_v sls ON
			sds.sl_lse_id = sls.id
		left JOIN @DB_LEVEL@_ora_alice_silver.alice_okc_line_styles_v cls ON
			sds.lse_id = cls.id
		left JOIN @DB_LEVEL@_ora_alice_silver.alice_oks_k_lines_b kln ON
			sds.sl_id = CAST(kln.cle_id AS STRING)
			and kln.toplvl_adj_price is not null
		LEFT JOIN @DB_LEVEL@_ora_alice_silver.alice_okc_k_lines_tl cov ON
			CAST(kln.coverage_id AS STRING)= cov.id
			AND cov.language = 'US'
		LEFT JOIN @DB_LEVEL@_ora_alice_silver.alice_hr_all_organization_units hro ON
			sds.inv_organization_id = hro.organization_id
		LEFT JOIN @DB_LEVEL@_ora_alice_silver.alice_hr_all_organization_units a ON
			sds.AUTHORING_ORG_ID = a.organization_id */
/* 		LEFT JOIN @DB_LEVEL@_ora_alice_silver.alice_okc_k_lines_tl oklt ON
			sds.sl_id = oklt.id */
		
		LEFT OUTER JOIN ( select  distinct aol.ITEM_DESCRIPTION,aol.id from  (select id,item_description  from  @DB_LEVEL@_ora_alice_silver.alice_okc_k_lines_tl) aol INNER JOIN 
			 (SELECT
					product_desc,
					part_num,
					product_type_cd
				FROM
					@DB_LEVEL@_edm_gold.d_product
				where
					(product_type_cd = 'Service Contract'
						OR product_type_cd = 'Service Offering'
						or product_type_cd = 'Preventive Maintenance'
						or product_type_cd like '%Warranty%')
					and (item_class_name like '%Service Contract%'
						OR item_class_name like '%Service Offering%'
						or item_class_name like '%Preventive Maintenance%'
						or item_class_name like '%Warranty%')
					and part_num not like '%-EBS%'
		  )dprod  ON aol.item_description = dprod.product_desc
		) oklt ON sds.sl_id = oklt.id		
        LEFT OUTER JOIN 
        (SELECT * 
         FROM 
           (SELECT egp.item_number, 
                   egp.description, 
                   egp.organization_code, 
                   cat.category_code, 
                   catl.category_name, 
                   egpc.last_update_date, 
                   row_number() OVER (PARTITION BY egp.item_number 
                                      ORDER BY egpc.last_update_date DESC) rownum 
            FROM @DB_LEVEL@_cld_oraerp_silver.egp_system_items_b egp, 
                 @DB_LEVEL@_cld_oraerp_silver.egp_item_categories egpc, 
                 @DB_LEVEL@_cld_oraerp_silver.egp_category_sets_b cat_set, 
                 @DB_LEVEL@_cld_oraerp_silver.egp_categories_tl catl, 
                 @DB_LEVEL@_cld_oraerp_silver.egp_categories_b cat 
            WHERE egpc.inventory_item_id = egp.inventory_item_id 
              AND egpc.organization_id = egp.organization_id 
              AND egpc.category_set_id = cat_set.category_set_id 
              AND egpc.category_id = cat.category_id 
              AND catl.category_id = cat.category_id 
              AND catl.language = 'US' 
              AND cat_set.catalog_code = 'GLOBAL_PRODUCT_HIERARCHY' 
              AND egp.organization_code = '999_ITEM_MASTER') gph 
         WHERE rownum = 1) gph_dtl ON gph_dtl.item_number = trim(split_part(msi.segment1, '*', 1))	
		 
		/* INNER JOIN (select distinct HEADER_ID,line_number,end_customer_site_use_id,ship_to_org_id,invoice_to_org_id,ordered_item,line_id
			from @DB_LEVEL@_ora_alice_silver.alice_oe_order_lines_all) ol ON
			ooh.HEADER_ID = ol.HEADER_ID
			and pc.sku= ol.ordered_item
            and sds.last_oe_order_line_id=ol.line_id */
			/*and cast(fc.line_number as double)=ol.line_number*/
			
     	LEFT OUTER JOIN  @DB_LEVEL@_edm_gold.d_regional_legacy_product_catalog_vw pc
		on sds.inventory_item_id=pc.inventory_item_id
		and pc.src_system_name='ALICE'	
		
		LEFT OUTER JOIN  (select distinct HEADER_ID,end_customer_site_use_id,ship_to_org_id,invoice_to_org_id
		from @DB_LEVEL@_ora_alice_silver.alice_oe_order_lines_all) ol ON
		ooh.HEADER_ID = ol.HEADER_ID
		
        LEFT OUTER JOIN  @DB_LEVEL@_ora_alice_silver.alice_csi_instance_party_vwr pwr ON
				pwr.instance_number =sds.instance_number			
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_party_sites hps_end_cust_a on
			pwr.location_id = hps_end_cust_a.party_site_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_locations hl_end_cust_a on
			hps_end_cust_a.location_id = hl_end_cust_a.location_id		
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_cust_site_uses_all hcs_end_cust ON       
			hcs_end_cust.site_use_id = ol.end_customer_site_use_id
			
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_cust_acct_sites_all hca_end_cust ON  
			hcs_end_cust.cust_acct_site_id = hca_end_cust.cust_acct_site_id                     
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_party_sites hps_end_cust ON
			hca_end_cust.party_site_id = hps_end_cust.party_site_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_parties hp_end_cust ON
			hps_end_cust.party_id = hp_end_cust.party_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_cust_accounts hc_end_cust ON
			hps_end_cust_a.party_id = hc_end_cust.party_id
			AND hc_end_cust.cust_account_id = hca_end_cust.cust_account_id
			
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_locations hl_end_cust ON
			hps_end_cust.location_id = hl_end_cust.location_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_cust_site_uses_all hcs_ship_to_cust ON   
			hcs_ship_to_cust.site_use_id = ol.ship_to_org_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_cust_acct_sites_all hca_ship_to_cust ON  
			hcs_ship_to_cust.cust_acct_site_id = hca_ship_to_cust.cust_acct_site_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_party_sites hps_ship_to_cust ON          
			hca_ship_to_cust.party_site_id = hps_ship_to_cust.party_site_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_parties hp_ship_to_cust ON               
			hps_ship_to_cust.party_id = hp_ship_to_cust.party_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_cust_accounts hc_ship_to_cust ON         
			hps_ship_to_cust.party_id = hc_ship_to_cust.party_id
			AND hc_ship_to_cust.cust_account_id = hca_ship_to_cust.cust_account_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_locations hl_ship_to_cust ON             
			hps_ship_to_cust.location_id = hl_ship_to_cust.location_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_cust_site_uses_all hcs_sold_to_cust ON   
			--hcs_sold_to_cust.site_use_id = ooh.sold_to_site_use_id
			hcs_sold_to_cust.site_use_id = ooh.end_customer_site_use_id  ---VR 05182022 New join conditions to correct parent 
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_cust_acct_sites_all hca_sold_to_cust ON  
			hcs_sold_to_cust.cust_acct_site_id = hca_sold_to_cust.cust_acct_site_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_party_sites hps_sold_to_cust ON          
			hca_sold_to_cust.party_site_id = hps_sold_to_cust.party_site_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_parties hp_sold_to_cust ON               
			hps_sold_to_cust.party_id = hp_sold_to_cust.party_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_cust_accounts hc_sold_to_cust ON         
			hps_sold_to_cust.party_id = hc_sold_to_cust.party_id
			AND hc_sold_to_cust.cust_account_id = hca_sold_to_cust.cust_account_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_locations hl_sold_to_cust ON             
			hps_sold_to_cust.location_id = hl_sold_to_cust.location_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_cust_site_uses_all hcs_bill_to_cust ON   
			hcs_bill_to_cust.site_use_id = ol.invoice_to_org_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_cust_acct_sites_all hca_bill_to_cust ON  
			hcs_bill_to_cust.cust_acct_site_id = hca_bill_to_cust.cust_acct_site_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_party_sites hps_bill_to_cust ON          
			hca_bill_to_cust.party_site_id = hps_bill_to_cust.party_site_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_parties hp_bill_to_cust ON              
			hps_bill_to_cust.party_id = hp_bill_to_cust.party_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_cust_accounts hc_bill_to_cust ON        
			hps_bill_to_cust.party_id = hc_bill_to_cust.party_id
			AND hc_bill_to_cust.cust_account_id = hca_bill_to_cust.cust_account_id
		left outer join @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_accounts sa on
	        trim(upper(hc_bill_to_cust.account_name)) = upper(sa.acct_name)
		left outer join @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_accounts sb on
	        trim(upper(hc_end_cust.account_name)) = upper(sb.acct_name)
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_locations hl_bill_to_cust ON            
			hps_bill_to_cust.location_id = hl_bill_to_cust.location_id 
		 LEFT OUTER JOIN (
			SELECT
				DISTINCT CAST(source_header_id AS STRING) source_header_id,
				mdm_hdr_id
			FROM
				@DB_LEVEL@_mdm_hub_gold.d_customer_xref
			WHERE
				source_system = 'ORACLE') xref_sold_to_cust ON
			xref_sold_to_cust.source_header_id = hp_sold_to_cust.party_number
		LEFT OUTER JOIN @DB_LEVEL@_mdm_hub_gold.d_customer_header cust_hdr_sold_to_cust ON
			CAST(cust_hdr_sold_to_cust.mdm_hdr_id AS STRING) = xref_sold_to_cust.mdm_hdr_id
	LEFT  JOIN
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
		ON hc_bill_to_cust.account_number = XX.customer_number and nvl(XX.customer_number,'N') != 'N' and sds.src_system_name = xx.src_system_name_join
	    LEFT  JOIN @DB_LEVEL@_edm_other_src_silver.Varsdatabase_Sellingmotion h on
			 hc_bill_to_cust.account_number = h.Business_Nbr 		
			
		LEFT OUTER JOIN (
			SELECT
				DISTINCT CAST(source_header_id AS STRING) source_header_id,
				mdm_hdr_id
			FROM
				@DB_LEVEL@_mdm_hub_gold.d_customer_xref
			WHERE
				source_system = 'ORACLE') xref_end_cust ON
			xref_end_cust.source_header_id = hp_end_cust.party_number
		LEFT OUTER JOIN @DB_LEVEL@_mdm_hub_gold.d_customer_header cust_hdr_end_cust ON
			CAST(cust_hdr_end_cust.mdm_hdr_id AS STRING) = xref_end_cust.mdm_hdr_id
			
		LEFT OUTER JOIN (SELECT
						distinct ct.SMS_customer_type ,
						ct.instance_number,
						csl.contract_number,
						cast(cast(ch.order_number as INT) as STRING) order_number,	
						ch.cust_po_number,
                        csl.subline_number,
						csl.start_date,
						csl.end_date						
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
					)sms ON sds.contract_number = sms.contract_number
					 and sds.instance_number=sms.instance_number
					-- and nvl(pc.order_detail_line_num,pc.order_line_num) = sms.subline_number --VR 03102022 service mapping changes
		/* LEFT OUTER JOIN (
			SELECT
				DISTINCT CAST(source_header_id AS STRING) source_header_id,
				mdm_hdr_id
			FROM
				@DB_LEVEL@_mdm_hub_gold.d_customer_xref
			WHERE
				source_system = 'ORACLE') xref_ship_to_cust ON
			xref_ship_to_cust.source_header_id = hp_ship_to_cust.party_number
		LEFT OUTER JOIN @DB_LEVEL@_mdm_hub_gold.d_customer_header cust_hdr_ship_to_cust ON
			CAST(cust_hdr_ship_to_cust.mdm_hdr_id AS STRING) = xref_ship_to_cust.mdm_hdr_id */
		LEFT OUTER JOIN (
			SELECT
				DISTINCT CAST(source_header_id AS STRING) source_header_id,
				mdm_hdr_id
			FROM
				@DB_LEVEL@_mdm_hub_gold.d_customer_xref
			WHERE
				source_system = 'ORACLE') xref_bill_to_cust ON
			xref_bill_to_cust.source_header_id = hp_bill_to_cust.party_number
			
		LEFT OUTER JOIN @DB_LEVEL@_mdm_hub_gold.d_customer_header cust_hdr_bill_to_cust ON
			CAST(cust_hdr_bill_to_cust.mdm_hdr_id AS STRING) = xref_bill_to_cust.mdm_hdr_id
			AND hc_end_cust.cust_account_id = hca_end_cust.cust_account_id
        LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.customer_data cd ON
             hc_end_cust.account_name =cd.customername
			 and hc_end_cust.status='A'
             and cd.validationtype='Validated'
			 and cd.validationresource ='Management'
			 
        LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.enterprise_industry ei ON
             cd.industry = ei.industry1                    
		LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.parent_account_type pa ON
			pa.parent_account = hc_end_cust.account_name
			--- JOIN on PARENT_ACCOUNT to populate account level fields.
		LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.ref_customerparentaccounts cust_ref on
			hc_end_cust.account_name = cust_ref.customer
		LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.ref_accountsflag_sku af on
			--pc.sku = af.af_sku
			pc.product_number = af.af_sku
		LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_sku sm on
			--pc.sku = sm.sm_sku
			pc.product_number = sm.sm_sku
		LEFT OUTER JOIN 
		(
		 select
			distinct equipment_segment,
			case
				when equipment_segment is not null then (sum_revenue_per_segment / nos_contracts_per_segment)
				else 0
			end calculated_potential_revenue
		from
			(
			select
				equipment_segment,
				instance_number,
				old_contract_number,
				new_contract_number,
				old_usd_amount,
				count(old_contract_number) over (partition by equipment_segment) nos_contracts_per_segment,
				sum(old_usd_amount) over (partition by equipment_segment) sum_revenue_per_segment
			from
				(
				SELECT
					upper(trim(split_part(gph_dtl.category_name, ':', 4))) Equipment_Segment,
					ciia.*,
					rcj.*
				from
					(
					select
						instance_number inn,
						inventory_item_id
					from
						@DB_LEVEL@_ora_alice_silver.alice_csi_item_instances )ciia
				LEFT JOIN @DB_LEVEL@_ora_alice_silver.alice_mtl_system_items_b msi ON
					ciia.inventory_item_id = msi.inventory_item_id
				LEFT JOIN (
					SELECT
						*
					FROM
						(
						SELECT
							egp.item_number,
							egp.description,
							egp.organization_code,
							cat.category_code,
							catl.category_name,
							egpc.last_update_date,
							row_number() OVER (PARTITION BY egp.item_number
						ORDER BY
							egpc.last_update_date DESC) rownum
						FROM
							@DB_LEVEL@_cld_oraerp_silver.egp_system_items_b egp,
							@DB_LEVEL@_cld_oraerp_silver.egp_item_categories egpc,
							@DB_LEVEL@_cld_oraerp_silver.egp_category_sets_b cat_set,
							@DB_LEVEL@_cld_oraerp_silver.egp_categories_tl catl,
							@DB_LEVEL@_cld_oraerp_silver.egp_categories_b cat
						WHERE
							egpc.inventory_item_id = egp.inventory_item_id
							AND egpc.organization_id = egp.organization_id
							AND egpc.category_set_id = cat_set.category_set_id
							AND egpc.category_id = cat.category_id
							AND catl.category_id = cat.category_id
							AND catl.language = 'US'
							AND cat_set.catalog_code = 'GLOBAL_PRODUCT_HIERARCHY'
							AND egp.organization_code = '999_ITEM_MASTER') gph
					WHERE
						rownum = 1)gph_dtl ON
					gph_dtl.item_number = trim(split_part(msi.segment1, '*', 1))
				LEFT OUTER JOIN (
					select
						*
					from
						(
						select
							distinct instance_number,
							old_contract_number ,
							old_usd_amount,
							new_contract_number,
							cast(SUBSTRING(old_start_date, 7, 5) as int ) yr_of_contract,
							cast(year(now()) as int) curr_year
						from
							@DB_LEVEL@_ora_alice_gold.r_renewalcapturerate a )J
					where
						yr_of_contract in (curr_year-1, curr_year-2))rcj on
					ciia.inn = rcj.instance_number )z
			where
				instance_number is not null
			order by
				equipment_segment )u 
		)cpe on 
		upper(trim(split_part(gph_dtl.category_name, ':', 4))) = cpe.equipment_segment			
		WHERE
			1 = 1		
)b )H )dt )tt )st where customer_name is not null
)
SELECT DISTINCT 
Account_Type ,
	Account_Type_AOP ,
	Account_AM ,	
	Account_CSM ,
	Account_Lead ,
	Account_Presence ,
	Account_Service_Sales ,
	Account_SubType ,
	Address ,
	Address_2 ,
	aop_account_name,
	Bill_To_Customer_Name,
	Booked_Contract_Annual_Revenue ,
	Booked_Contract_Coverage_Class ,
	Booked_Contract_Coverage_Class_Code ,
	Booked_Contract_End_Date ,	
	booked_contract_length_days ,
	Booked_Contract_Level ,
	Booked_Contract_Monthly_Revenue,
	Booked_Contract_Points ,
	Booked_Contract_Revenue ,
	Booked_Contract_Start_Date ,	
	Booking_Type , 
	Capture_Status ,
	Calculated_Potential,
	CE_Name ,
	CE_Number ,
	City ,
	Closed_Within_60_Days ,
	COE,
	Contact_Name ,
	--contract_number,
	booked_contract_number , --VR 06152022 New column name change as per Mike B
	Count_of_RecordID ,
	Count_of_Right_RecordID ,
	Count_Distinct_Contract_Level ,
	Current_Year_Capture_Status ,
	Customer_Crossreference ,
	Customer_Crossreference_3 ,
	Customer_Name,
	Customer_Type ,
	Customer_Type_Description ,
	Data_Last_Refreshed ,
	Data_Last_Refreshed_2 ,
	Data_Last_Refreshed_SO ,	
	Due_Date,
	EMAIL ,
	Engineered_Thermal_Flag ,
	Equipment_Description ,
	Equipment_Model_Num ,
	Equipment_Segment ,
	Equipment_Segment_Description ,
	Equipment_Subtype ,
	Equipment_Type_Code ,
	FDO_All ,
	Extract_date ,
	GBU,
    growth_target,
	Industry ,
	KVA_Group ,
	KVA_Range ,
	Large_Account_Type ,
	Large_Account_Type_groups ,
	Level_6,
	line_number,
	List_Price ,
	LOB,
	Local_Currency ,
	LVO_All ,
	Model_Number ,
	Multi_Year_Tag ,
	Multiyear_Tag ,
	Office_Num ,
	Office_Group ,
	Office_Name ,
	Office_or_Account_Type ,
	office_type ,
	On_Time_Status ,
	On_Time_YTD_Flag ,
	ordered_item,
	Order_Create_Date ,
	Parent_Account ,
	Serial_number ,
	PartnerWeb_Quote_Number ,
	Potential_Revenue ,
	Point_in_Time_Status ,
	Previous_Contract_Status ,
	Previous_Contract_Annual_Revenue ,
	Previous_Contract_End_Date ,
	Previous_Contract_Length ,
	Previous_Contract_Level ,
	Previous_Contract_Monthly_Revenue ,
	Previous_Contract_Revenue ,
	Previous_Contract_Sequence_Number ,
	Previous_Contract_Start_Date ,
	Previous_Coverage_Class ,
	Previous_Coverage_Class_Code ,
	Previous_List_Price ,
	Principal ,
	Principal_Email ,
	Product_Category,
	Product_Family,
	Product_Sales_Order_Number ,
	Previous_Contract_Points ,
	Record_Source ,
	RecordID ,
	Region ,
	Right_RecordID ,
	Office_Group Sales_Group ,
	Sales_Office_Name ,
	Sales_Office_Number ,	
	Sales_Order_Number ,
	Selling_Motion ,
	Service_Territory ,
	Services_District ,
	Services_Region ,
	Site_ID ,
	Standardized_Name ,
	State ,
	Status ,
	Tag_Number ,
	Instance_captured ,
	Tags_Due ,
	Territory ,
	UPS_Flag ,
	Warranty_End_Date ,
	XREFC3 ,
	XREFCS ,
	Zip_Code,
	w_insert_by ,
	w_insert_dtm ,
	src_system_name,
    resellerbranchnumber,
	resellerbranchname,
	Booked_Contract_Length_months
 FROM SERVICES_QUERY WHERE POTENTIAL_REVENUE IS NOT NULL
UNION
SELECT --tag_number,tags_due,instance_captured,booked_contract_end_date,'Break' as databreak,
				Account_Type ,
                Account_Type_AOP ,
                Account_AM ,
                Account_CSM ,
                Account_Lead ,
                Account_Presence ,
                Account_Service_Sales ,
                Account_SubType ,
                Address ,
                Address_2 ,
                upper(AOP_Account_Name) AOP_Account_Name,
                upper(Bill_To_Customer_Name) Bill_To_Customer_Name,
				0 as Booked_Contract_Annual_Revenue ,
				'' as Booked_Contract_Coverage_Class ,
				'' as Booked_Contract_Coverage_Class_Code ,
				'' as Booked_Contract_End_Date ,
				0 as booked_contract_length_days ,
				'' as Booked_Contract_Level ,
				0 as Booked_Contract_Monthly_Revenue,
				'' as Booked_Contract_Points ,
				0 as Booked_Contract_Revenue ,
				'' as Booked_Contract_Start_Date ,
				'' as Booking_Type , 
                Capture_Status ,
                Calculated_Potential,
                CE_Name ,
                CE_Number ,
                City ,
                Closed_Within_60_Days ,
                upper(COE) COE,
                Contact_Name ,
                --'' as contract_number,
				'' as booked_contract_number, --VR 06152022 New column name change as per Mike B
                Count_of_RecordID ,
                Count_of_Right_RecordID ,
                Count_Distinct_Contract_Level ,
                Current_Year_Capture_Status ,
                Customer_Crossreference ,
                Customer_Crossreference_3 ,
                a.Customer_Name,
                Customer_Type ,
                Customer_Type_Description ,
                Data_Last_Refreshed ,
                Data_Last_Refreshed_2 ,
                Data_Last_Refreshed_SO ,
                --Booked_Contract_End_Date Due_Date, 
				--date_add(Booked_Contract_End_Date_old, interval 1 day) Due_Date, 
				date_add(CAST (cast (b.old_inst_end_date as date format "DD/MM/YYYY") AS TIMESTAMP), interval 1 day ) as due_Date,	--VR 06152022 New mapping changes as per Mike B				
                EMAIL ,
                Engineered_Thermal_Flag ,
                Equipment_Description ,
                Equipment_Model_Num ,
                Equipment_Segment ,
                Equipment_Segment_Description ,
                Equipment_Subtype ,
                Equipment_Type_Code ,
                FDO_All ,
                Extract_date ,
                upper(GBU) GBU,
				growth_target,
                Industry ,
                KVA_Group ,
                KVA_Range ,
                Large_Account_Type ,
                Large_Account_Type_groups ,
                upper(Level_6) Level_6,
                '' as line_number,
				'' as List_Price ,
                upper(LOB) LOB,
                Local_Currency ,
                LVO_All ,
                Model_Number ,
                Multi_Year_Tag ,
                Multiyear_Tag ,
                Office_Num ,
                Office_Group ,
                Office_Name ,
                Office_or_Account_Type ,
                office_type ,
                On_Time_Status ,
                On_Time_YTD_Flag ,
                ordered_item,
                --Order_Create_Date ,  
				case
				when b.new_contract_number is null then ''
				else Order_Create_Date end as Order_Create_Date,-- VR 05132022 New logic change suggested by Mike Banek
                Parent_Account ,
                a.Serial_number ,
                PartnerWeb_Quote_Number ,
                --b.old_usd_amount Potential_Revenue , 
				CASE WHEN datediff(CAST (cast (b.old_inst_end_date as date format "DD / MM / YYYY") AS TIMESTAMP),
				CAST (cast (b.old_inst_start_date as date format "DD / MM / YYYY") AS TIMESTAMP))=364 THEN (b.old_usd_amount)/1
				ELSE (b.old_usd_amount)/((datediff(CAST (cast (b.old_inst_end_date as date format "DD / MM / YYYY") AS TIMESTAMP),
							CAST (cast (b.old_inst_start_date as date format "DD / MM / YYYY") AS TIMESTAMP) ))/365 
									)
				END as Potential_revenue ,---VR 05182022 Mapping changes correction SO-666
                Point_in_Time_Status ,
                --Previous_Contract_Status , 
				b.old_inst_status Previous_Contract_Status, --VR 04202022 New mapping changes as per Mike Banek
				--Booked_Contract_Annual_Revenue as   Previous_Contract_Annual_Revenue ,
				--b.old_usd_amount Previous_Contract_Annual_Revenue, --VR 04202022 New mapping changes as per Mike Banek				
				CASE
					WHEN datediff(CAST (cast (b.old_inst_end_date as date format "DD / MM / YYYY") AS TIMESTAMP),
								CAST (cast (b.old_inst_start_date as date format "DD / MM / YYYY") AS TIMESTAMP))= 364 THEN (b.old_usd_amount)/ 1
					ELSE (b.old_usd_amount)/((datediff(CAST (cast (b.old_inst_end_date as date format "DD / MM / YYYY") AS TIMESTAMP),
								CAST (cast (b.old_inst_start_date as date format "DD / MM / YYYY") AS TIMESTAMP) ))/ 365 
										)
				END AS Previous_Contract_Annual_Revenue,	---VR 05182022 Mapping changes correction SO-666				
				Booked_Contract_End_Date as Previous_Contract_End_Date ,
				--booked_contract_length_months as Previous_Contract_Length ,
				b.old_contract_duration_months Previous_Contract_Length , --VR 06152022 New mapping changes as per Mike B	
				booked_Contract_Level as Previous_Contract_Level ,
				--booked_Contract_Monthly_Revenue as Previous_Contract_Monthly_Revenue ,
				CASE
					WHEN (b.old_usd_amount>0 and b.old_contract_duration_months>0 )
					then (b.old_usd_amount / b.old_contract_duration_months)
					else 0
				end Previous_Contract_Monthly_Revenue, --VR 06152022 New mapping changes as per Mike B	
				
				booked_Contract_Revenue as Previous_Contract_Revenue ,
				'' as Previous_Contract_Sequence_Number ,
				Booked_Contract_Start_Date as Previous_Contract_Start_Date ,
				Booked_Contract_Coverage_Class as Previous_Coverage_Class ,
				booked_Contract_Coverage_Class_Code as Previous_Coverage_Class_Code ,
				List_Price as Previous_List_Price ,
                Principal ,
                Principal_Email ,
                upper(Product_Category) Product_Category,
                upper(Product_Family) Product_Family,
                Product_Sales_Order_Number ,
				booked_Contract_Points as Previous_Contract_Points ,
                UPPER(Record_Source) Record_Source ,
                RecordID ,
                a.Region ,
                Right_RecordID ,
                Office_Group Sales_Group ,
                Sales_Office_Name ,
                Sales_Office_Number ,  
				'' as Sales_Order_Number ,
                Selling_Motion ,
                Service_Territory ,
                Services_District ,
                Services_Region ,
                Site_ID ,
                Standardized_Name ,
                State ,
                Status ,
                Tag_Number ,
                '0' Instance_captured ,
                Tags_Due ,
                Territory ,
                UPS_Flag ,
                Warranty_End_Date ,
                XREFC3 ,
                XREFCS ,
                Zip_Code,
                w_insert_by ,
                w_insert_dtm ,
                src_system_name,
				resellerbranchnumber,
                resellerbranchname,
				cast('' as double) as Booked_Contract_Length_months
FROM SERVICES_QUERY a join @DB_LEVEL@_ora_alice_gold.r_renewalcapturerate b on a.tag_number=b.instance_number
and a.booked_contract_end_date_old=cast (old_end_date as date format "DD/MM/YYYY") and a.booked_contract_start_date_old=cast (old_start_date as date format "DD/MM/YYYY")
and fiscal_year='FY22' and count_renewed=0 
where a.customer_name is not null
;

5. populate_service_summary_na

Insert overwrite @DB_level@_na_cld_osc_gold.service_summary_na
(account_type
,account_type_aop
,aop_account_name
,coverage_end_date
,contract_length
,contract_number
,coverage_start_date
,coverage_start_year
,coe
,customer_crossreference
,customer_crossreference_3
,customer_Name
,customer_type
,coverage_class_code
,Current_status_Flag
,data_last_refreshed
,due_date
,email
,equipment_description
,equipment_model_num
,equipment_segment
,equipment_segment_description
,Equipment_Status
,equipment_subtype
,equipment_type_code
,gbu
,growth_target
,large_account_type
,level_6
,line_number 
,lob
,multi_year_tag
,office_group
,office_name
,office_num
,office_type
,order_create_date
,ordered_item 
,principal
,principal_email
,product_category
,product_family
,record_source
,recordid
,region
,sales_office_name
,sales_office_number
,selling_motion
,site_id
,src_system_name
,tag_number
,territory
,w_insert_by
,w_insert_dtm
,warranty_end_date
,xrefc3
,xrefcs
, Booking_Type
, Coverage_Class
, Coverage_Expire_Date
, Coverage_Type
, Equipment_Sequence
, Inactive_Equipment_Y_N
, Sales_Group
,Instance_captured
,resellerbranchnumber
,resellerbranchname)
select distinct
account_type
,account_type_aop
,upper(aop_account_name)
,coverage_end_date
,contract_length
,contract_number 
,coverage_start_date
,coverage_start_year
,upper(coe)
,upper(customer_crossreference)
,upper(customer_crossreference_3)
,upper(customer_Name)
,upper(customer_type)
,coverage_class_code
,Current_status_Flag
,data_last_refreshed
,Due_Date
,email
,equipment_description
,equipment_model_num
,equipment_segment
,equipment_segment_description
,Equipment_Status
,equipment_subtype
,equipment_type_code
,upper(gbu)
,growth_target
,large_account_type
,upper(level_6)
,line_number 
,upper(lob)
,multi_year_tag
,office_group
,office_name
,office_num
,office_type
,order_create_date
,ordered_item 
,principal
,principal_email
,upper(product_category)
,upper(product_family)
,UPPER(record_source) record_source
,recordid
,region
,sales_office_name
,sales_office_number
,selling_motion
,site_id
,src_system_name
,tag_number
,territory
,w_insert_by
,w_insert_dtm
,warranty_end_date
,xrefc3
,xrefcs
, line_type Booking_Type
, Coverage_Class
, coverage_end_date Coverage_Expire_Date
, coverage_class_code Coverage_Type
, Equipment_Sequence
, Inactive_Equipment_Y_N
, Office_Group Sales_Group 
,Instance_captured
,resellerbranchnumber
,resellerbranchname

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
OR upper(Customer_Name) LIKE '%WORLD WIDE TECH%'
OR upper(resellerbranchname) LIKE '%WORLD WIDE TECH%' THEN 'N'
WHEN trim(Customer_Type) IN ('M01','M02','M03','M04','M05','M06','M07','M08', 'M09','M10') THEN 'N'
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
END  account_type_aop1

 from(
	SELECT 
		b.*,
		case when equipment_status = 'A' then 'Y'
		     else 'N'
		end as current_status_flag,
		year(coverage_start_date) as coverage_start_year,
		CASE
			WHEN Office_Type NOT IN ('FDO','LVO') THEN
				CASE
					WHEN industry_customer_type = 'Enterprise' THEN 'Others'
					ELSE 'Large Accounts'
				END 
			ELSE Office_Type
		END Office_Group,
		
		CASE
            WHEN (upper(Bill_To_Customer_Name) LIKE '%VERTIV%'
            OR upper(Bill_To_Customer_Name) LIKE '%LIEBERT%'
            OR upper(Bill_To_Customer_Name) LIKE '%GEIST%'
            OR upper(Bill_To_Customer_Name) LIKE '%ATLAS ASIA LIMITED 33CH0104%'
            OR upper(Bill_To_Customer_Name) LIKE '%UNIFIED POWER%'
            OR upper(EndCustomerParentAccount) LIKE '%UNIFIED POWER%')
            OR (upper(BillToCustomerParentAccount) LIKE '%VERTIV%'
            OR upper(BillToCustomerParentAccount) LIKE '%GEIST%'
            OR upper(BillToCustomerParentAccount) LIKE '%LIEBERT%'
            OR upper(BillToCustomerParentAccount) LIKE '%ATLAS ASIA LIMITED 33CH0104%') THEN 'INTERCOMPANY'
            WHEN upper(region) = 'CANADA' THEN 'INTERCOMPANY - CANADA'
            WHEN (nvl(flag,'N') = 'N' and nvl(flag1, 'N') = 'N' and nvl(sm_ACCOUNT_flag,'N') = 'N') AND (upper(Record_Source) LIKE '%CDW%'
            OR upper(Record_Source) LIKE '%TECH%'
            OR upper(Record_Source) LIKE '%INGRAM%'
            OR upper(Record_Source) LIKE '%SYNNEX%'
            OR upper(Record_Source) LIKE '%PC CONNECT%'
            OR upper(Record_Source) LIKE '%GRAYBAR%'
            OR upper(Record_Source) LIKE '%D AND H%'
            OR upper(Record_Source) LIKE '%AMAZON%'
            OR upper(Record_Source) LIKE '%ARROW%'
            OR upper(Record_Source) LIKE '%CONTEXT%'
            OR upper(Record_Source) LIKE '%CONTEXT_CONNECTION%'
            OR upper(Record_Source) LIKE '%CONTEXT_CDW LOGISTICS%'
            OR upper(Record_Source) LIKE '%CONTEXT_INGRAM MICRO%'
            OR upper(Record_Source) LIKE '%CONTEXT_TECH DATA%'
            OR upper(Record_Source) LIKE '%CONTEXT_GRAYBAR%'
            OR upper(Record_Source) LIKE '%CONTEXT_TECH DATA%') THEN 'CHANNEL'
            WHEN (nvl(flag,'N') = 'N' and nvl(flag1, 'N') = 'N' and nvl(sm_ACCOUNT_flag,'N') = 'N') AND upper(Record_Source) = 'ORACLEERPCLOUD' AND plant in ('102', '103', '105', '106') THEN 'ACCOUNT'
            WHEN (nvl(flag,'N') = 'N' and nvl(flag1, 'N') = 'N' and nvl(sm_ACCOUNT_flag,'N') = 'N') AND Record_Source like '%ERS%' THEN 'ERS/HVM'
            WHEN (flag = 'Y' or flag1 = 'Y') OR sm_ACCOUNT_flag = 'Y' THEN 'ACCOUNT'
            WHEN sm_ACCOUNT_flag = 'N' THEN 'CHANNEL'
            WHEN nvl(resellerbranchnumber, 'N') != 'N' THEN 'CHANNEL'
            WHEN (upper(BillToCustomerParentAccount) like '%INGRAM MICRO%'
            OR upper(BillToCustomerParentAccount) like '%TECH DATA%'
            OR upper(BillToCustomerParentAccount) like '%SYNNEX%'
            OR upper(BillToCustomerParentAccount) like '%D & H%') THEN 'CHANNEL'
            WHEN nvl(branch_office_nbr, 'N') != 'N' THEN 'CHANNEL'
            ELSE 'FIELD SALES'
            END selling_motion,
			CASE
            WHEN netsalesrevenue > 3000000 THEN 'MEGA'
            WHEN upper(lob) = 'AC POWER' and upper(gbu) = 'INFRASTRUCTURE & SOLUTIONS' and netsalesrevenue < 750000 THEN 'FLOW'
            WHEN upper(lob) = 'DC POWER' and upper(gbu) = 'INFRASTRUCTURE & SOLUTIONS' and netsalesrevenue < 750000 THEN 'FLOW'
            WHEN upper(lob) = 'THERMAL' and upper(gbu) = 'INFRASTRUCTURE & SOLUTIONS' and netsalesrevenue < 500000 THEN 'FLOW'
            when upper(lob) = 'DIGITAL ECOSYSTEM' and upper(gbu) = 'SERVICES & SPARES' and netsalesrevenue <50000 THEN 'FLOW'
            when upper(lob) = '1 PHASE UPS' and upper(gbu) = 'INTEGRATED RACK SOLUTIONS' and netsalesrevenue < 100000 THEN 'FLOW'
            when upper(lob) = 'EDGE THERMAL' and upper(gbu) = 'INTEGRATED RACK SOLUTIONS' and netsalesrevenue < 100000 THEN 'FLOW'
            when upper(lob) = 'RACK PDU' and upper(gbu) = 'INTEGRATED RACK SOLUTIONS' and netsalesrevenue < 100000 THEN 'FLOW'
            when upper(lob) = 'RACKS' and upper(gbu) = 'INTEGRATED RACK SOLUTIONS' and netsalesrevenue < 100000 THEN 'FLOW'
            WHEN upper(lob) = 'GLOBAL EDGE SYSTEMS' and upper(gbu) = 'INTEGRATED RACK SOLUTIONS' and netsalesrevenue < 100000 THEN 'FLOW'
            when upper(lob) = 'IT SYSTEMS' and upper(gbu) = 'INTEGRATED RACK SOLUTIONS' and netsalesrevenue < 100000 THEN 'FLOW'
            WHEN upper(lob) = 'ENERGY STORAGE' and upper(gbu) = 'INFRASTRUCTURE & SOLUTIONS' and netsalesrevenue < 750000 THEN 'FLOW'
            when upper(lob) in ('REGIONAL SERVICES','VERTIV SERVICES') and upper(gbu) = 'SERVICES & SPARES'  THEN 'SERVICES'
            when upper(lob) = 'IMS/CUSTOM' THEN 'PROJECT'
            ELSE 'PROJECT'
            END AS sizecategory,		
/* 		CASE 
			WHEN coverage_end_date > now() then '1 ( Closed)'
			ELSE '0 (Opened)'
		END Instance_captured, */		
		CASE
			WHEN booked_contract_length_days IS NULL
				 OR booked_contract_length_days =0 THEN '0'
			ELSE '1'
		END Instance_captured,  --VR 03302022 Logic changes suggested by Mike Banek	
		int_months_between(coverage_end_date,coverage_start_date) contract_length
	FROM
		(
		SELECT
			null Account_Type,
			CASE
            WHEN nvl(sa.aopaccountname, 'N') != 'N' THEN sa.aopaccountname
            WHEN nvl(sb.aopaccountname, 'N') != 'N' THEN sb.aopaccountname
            WHEN nvl(sm.sm_sku, 'N') != 'N' THEN sm.aop_account_name
            ELSE 'Non Account'
            END aop_account_name,
			null Customer_Crossreference,
			null Customer_Crossreference_3,
			null Large_Account_Type,
			null Multi_Year_Tag,
			null RecordID,
			null XREFC3,
			null XREFCS,
			--null Booking_Type,
			--null Coverage_Expire_Date
			--null Coverage_Type,
			 null Equipment_Sequence,
			 null Inactive_Equipment_Y_N,
			--null Sales_Group
			cust_hdr_bill_to_cust.customer_name_txt Bill_To_Customer_Name,
			upper(cust_hdr_end_cust.customer_name_txt) Customer_Name,
			--cust_hdr_end_cust.customer_type_txt Customer_Type, --Old Mapping
			upper(trim(sms.sms_customer_type)) Customer_Type, --New Mapping 
			--cov.item_description coverage_class_code ,
			dcl.coverage_description coverage_class_code, --VR 03102022 service mapping changes
			dcl.line_type line_type, --VR 03282022 updated mapping as per Mike Banek
			--cov.name Coverage_Class,
			dcl.coverage_name Coverage_Class, --VR 03102022 service mapping changes
			ooh.ordered_date Order_Create_Date,
			--from_utc_timestamp( sds.start_date,'US/Eastern') coverage_start_date,
			sds.Booked_Contract_Start_Date coverage_start_date,
			--from_utc_timestamp(to_date(sds.end_date),'US/Eastern') coverage_end_date,
			sds.Booked_Contract_End_Date coverage_end_date,
			date_add(sds.Booked_Contract_End_Date, interval 1 day) Due_Date,
			--add_months(from_utc_timestamp( sds.start_date,'US/Eastern'), 12) Due_Date ,
			--from_utc_timestamp(to_date(sds.end_date),'US/Eastern') Warranty_End_Date,
			sds.Warranty_End_Date Warranty_End_Date,
			--DATEDIFF(TO_DATE(sds.end_date),	TO_DATE(sds.start_date)) contract_length,
			--sds.length_contract_in_months contract_length,
			sds.contract_number contract_number,
			sds.Booked_Contract_Length_days booked_contract_length_days,
			--ol.ordered_item ordered_item, 
			pc.product_number ordered_item, --VR 03102022 service mapping changes
			--fc.line_number line_number ,
			sds.line_number line_number , --VR 03102022 service mapping changes			
			--oklt.ITEM_DESCRIPTION Equipment_Description,
			--NVL(oklt.ITEM_DESCRIPTION,pc.product_desc ) Equipment_Description,  --VR 03102022 service mapping changes
			msi.description Equipment_Description, --VR 03282022 updated mapping changes as per Mike Banek
			sds.instance_number Tag_Number,
			--cls.name Equipment_Subtype,  ---old
			csie_std.attribute_value Equipment_Subtype,
			sds.last_update_date Data_Last_Refreshed ,
			--sds.instance_type_code Equipment_Type_Code , ---old 
			csie_stc.attribute_value Equipment_Type_Code ,
			sds.src_system_name Record_Source,
			--CAST(sds.install_location_id AS STRING) Site_ID,
			cast(hps_end_cust_a.party_site_number as DOUBLE) Site_ID,  --New mapping for Site ID
			sds.operational_status_code equipment_status,
			upper(trim(split_part(gph_dtl.category_name, ':', 1))) gbu,
			upper(trim(split_part(gph_dtl.category_name, ':', 2))) lob,
			upper(trim(split_part(gph_dtl.category_name, ':', 3))) coe,
			upper(trim(split_part(gph_dtl.category_name, ':', 4))) product_category,
			upper(trim(split_part(gph_dtl.category_name, ':', 5))) product_family,
			upper(trim(split_part(gph_dtl.category_name, ':', 6))) level_6,
			upper(trim(split_part(gph_dtl.category_name, ':', 4))) Equipment_Segment_Description,
			upper(trim(split_part(gph_dtl.category_name, ':', 4))) Equipment_Segment,
            -- pc.gbu GBU,
			-- pc.LOB LOB,
			-- pc.COE COE,
			-- pc.Product_Category Product_Category,
			-- pc.Product_Family Product_Family,
			-- pc.Product_Category Equipment_Segment_Description,
			-- pc.Product_Family Equipment_Segment,
			-- pc.Level_6 Level_6,
			msi.segment1 Equipment_Model_Num,
			hc_bill_to_cust.account_name BillToCustomerParentAccount,
			hc_end_cust.account_name EndCustomerParentAccount,
			--pc.sku sku,
			pc.product_number sku,
			roi.office_number Office_Num ,
			/* CASE 
				WHEN roi.office_name LIKE '%Vertiv%' then 'FDO'
				ELSE 'LVO'
			END Office_Type	, */
			CASE
			WHEN upper(sds.src_system_name) = 'ERS_HVM' THEN 'FDO'
	        WHEN upper(roi.office_name) like '%VERTIV%'
	        or upper(roi.office_name) like '%LIEBERT%' THEN 'FDO'
	        ELSE 'LVO'
            END office_type ,
			ei.customer_type1 industry_customer_type ,
			roi.office_name Office_Name ,
			roi.principal Principal ,
			roi.principal_email Principal_Email ,
			roi.sales_region Region ,
			roi.sales_region Territory ,
			--pc.sales_office_name 
			roi.office_name Sales_Office_Name ,
			--pc.sales_office_number
            roi.office_number Sales_Office_Number,
			cust_ref.customer ,
			af.af_sku af_sku,
			null SalesDistrictName,
			null Plant,
			sm.sm_sku ,
			sm.sm_account_flag sm_account_flag,
			sa.acct_name acct_name,
			CONCAT( CONCAT(hp_end_cust.person_first_name , ' ') , hp_end_cust.person_last_name) Contact_Name ,
			hp_end_cust.email_address EMAIL,
			CASE
				WHEN hc_bill_to_cust.account_name IN (cust_ref.customer) THEN 'Y'
				WHEN hc_end_cust.account_name IN (cust_ref.customer) THEN 'Y'
				WHEN pc.product_number IN (af_sku) THEN 'Y'
				ELSE 'N'
			END as accounts_flag ,
			effective_user() as w_insert_by ,
			now() w_insert_dtm ,
			'ALICE' src_system_name,
			CASE 
            WHEN nvl(XX.resellerbranchnumber, 'N') != 'N' THEN XX.resellerbranchnumber
            WHEN nvl(h.branch_office_nbr, 'N') != 'N' THEN h.branch_office_nbr
            ELSE NULL
            END resellerbranchnumber,
            CASE 
            WHEN nvl(XX.resellerbranchname, 'N') != 'N' THEN xx.resellerbranchname
            WHEN upper(sds.src_system_name) like '%CDW%' THEN 'CDW LOGISTICS'
            WHEN upper(sds.src_system_name) like '%GRAY%' THEN 'GRAYBAR ELECTRIC'
            WHEN upper(sds.src_system_name) like '%CONNECTION%' THEN 'CONNECTION'
            WHEN nvl(h.business_name, 'N') != 'N' THEN h.business_name
            ELSE NULL
            END resellerbranchname,
			sa.flag flag,
			sb.flag as flag1,
			'' endcustomerindustry1,
			h.branch_office_nbr as branch_office_nbr,
			sa.accounttypeaop,
			sb.accounttypeaop as accounttypeaop1,
			cast ('' as INT) netsalesrevenue,
			'' billtocustomervertical
		FROM
		/*	@DB_level@_ora_alice_silver.alice_okc_k_headers_all_b okh
		LEFT JOIN @DB_level@_ora_alice_silver.alice_okc_k_lines_b sl ON
			okh.id = sl.chr_id
			AND sl.cle_id IS NULL
		LEFT JOIN @DB_level@_ora_alice_silver.alice_okc_k_lines_b cl ON
			cl.cle_id = sl.id
			AND sl.cle_id IS NULL
		LEFT JOIN @DB_level@_ora_alice_silver.alice_okc_k_items oki ON
			cl.id = oki.cle_id
			AND oki.object1_id2 = '#'
		left JOIN @DB_level@_ora_alice_silver.alice_okc_k_rel_objs rel ON
			rel.chr_id = okh.id
			and UPPER(rel.jtot_object1_code)= 'OKX_ORDERHEAD'
		inner JOIN (
                select
                    *
                from
                    @DB_level@_ora_alice_silver.alice_csi_item_instances
                where
                    active_start_date > '2010-07-26 00:00:00'
                    and active_end_date > '2010-07-26 00:00:00'
                 ) cii ON
            oki.object1_id1 = CAST(cii.instance_id AS STRING)
		*/	
			
		( SELECT * FROM @DB_LEVEL@_na_cld_osc_gold.service_details_stage_na )sds
		LEFT JOIN (select distinct instance_id,attribute_value,description from @DB_LEVEL@_ora_alice_silver.alice_csi_inst_extend_attrib_v) csie_std ON
		csie_std.instance_id = sds.instance_id 
		and csie_std.description ='Sub Type Description'
		LEFT JOIN (select distinct instance_id,attribute_value,description from @DB_LEVEL@_ora_alice_silver.alice_csi_inst_extend_attrib_v) csie_stc ON
		csie_stc.instance_id = sds.instance_id 
		and csie_stc.description ='Sub Type Code'
		LEFT JOIN (select distinct instance_id,attribute_value,description from @DB_LEVEL@_ora_alice_silver.alice_csi_inst_extend_attrib_v) csie_son ON
		csie_son.instance_id = sds.instance_id 
		and csie_son.description ='Sales Office Name'
		LEFT JOIN (select distinct instance_id,attribute_value,description from @DB_LEVEL@_ora_alice_silver.alice_csi_inst_extend_attrib_v) csie_sonu ON
		csie_sonu.instance_id = sds.instance_id 
		and csie_sonu.description ='Sales Office Number'		
		LEFT JOIN 	(SELECT DISTINCT office_number,
						office_name,
						principal,
						principal_email,
						sales_region
		FROM @DB_LEVEL@_edm_other_src_silver.rep_office_info ) roi on 
		roi.office_number = case when length(csie_sonu.attribute_value)<5 then lpad(csie_sonu.attribute_value,5,'0') else csie_sonu.attribute_value end	
		left JOIN @DB_level@_ora_alice_silver.alice_mtl_system_items_b msi ON
			sds.inventory_item_id = msi.inventory_item_id
			AND sds.inv_organization_id = msi.organization_id
		left JOIN @DB_level@_ora_alice_silver.alice_oe_order_headers_all ooh ON
		sds.object1_id1 = CAST(ooh.header_id AS STRING)
		left join @DB_LEVEL@_ora_alice_gold.d_contractline dcl
		on sds.contract_number = dcl.contract_number
		and sds.line_number=dcl.line_number			
/* 		left join (
			select
				DISTINCT ordr.order_num,
				ordr.product_num sku,
				ordr.sales_office_name,
				ordr.sales_office_number,
				ordr.order_line_num,
                ordr.order_detail_line_num								
			from
				@DB_LEVEL@_edm_gold.f_sales_order_line ordr where src_system_name='ALICE'			
				) pc on
			cast(ooh.order_number AS STRING )= pc.order_num */
			--- f_sales_order_line TABLE JOIN to populate product catalog fields.
/* 		LEFT JOIN @DB_level@_edm_other_src_silver.rep_office_info roi ON
			pc.sales_office_name = roi.office_name */
			--- REP OFFICE INFO JOIN 
		/* INNER JOIN 	@DB_LEVEL@_ora_alice_gold.f_contract fc
		  on sds.contract_number=fc.contract_number 
		  and sds.instance_number =fc.instance_number 
		  and sds.sl_id=fc.contract_line_id */
		--  and pc.order_line_num =fc.line_number
		/* left JOIN @DB_level@_ora_alice_silver.alice_okc_line_styles_v sls ON
			sds.lse_id = sls.id */
		/* left JOIN @DB_level@_ora_alice_silver.alice_okc_line_styles_v cls ON
			cast(sds.lse_id as INT) = cls.id */
		/*  left JOIN @DB_LEVEL@_ora_alice_silver.alice_oks_k_lines_b kln ON
			sds.sl_id = CAST(kln.cle_id AS STRING)
			and kln.toplvl_adj_price is not null */
		/* LEFT JOIN @DB_level@_ora_alice_silver.alice_okc_k_lines_tl cov ON
			CAST(kln.coverage_id AS STRING)= cov.id
			AND cov.language = 'US' */
/* 		LEFT JOIN @DB_level@_ora_alice_silver.alice_hr_all_organization_units hro ON
			sds.inv_organization_id = hro.organization_id
		LEFT JOIN @DB_level@_ora_alice_silver.alice_hr_all_organization_units a ON
			sds.AUTHORING_ORG_ID = a.organization_id */
/* 		LEFT JOIN @DB_LEVEL@_ora_alice_silver.alice_okc_k_lines_tl oklt ON
			sds.sl_id = oklt.id */
		LEFT OUTER JOIN ( select  distinct aol.ITEM_DESCRIPTION,aol.id from  (select id,item_description  from  @DB_LEVEL@_ora_alice_silver.alice_okc_k_lines_tl) aol INNER JOIN 
						 (SELECT
								product_desc,
								part_num,
								product_type_cd
							FROM
								@DB_LEVEL@_edm_gold.d_product
							where
								(product_type_cd = 'Service Contract'
									OR product_type_cd = 'Service Offering'
									or product_type_cd = 'Preventive Maintenance'
									or product_type_cd like '%Warranty%')
								and (item_class_name like '%Service Contract%'
									OR item_class_name like '%Service Offering%'
									or item_class_name like '%Preventive Maintenance%'
									or item_class_name like '%Warranty%')
								and part_num not like '%-EBS%'
					  )dprod  ON aol.item_description = dprod.product_desc
					) oklt ON sds.sl_id = oklt.id
		LEFT OUTER JOIN
		(SELECT *
		FROM
		(SELECT egp.item_number,
		egp.description,
		egp.organization_code,
		cat.category_code,
		catl.category_name,
		egpc.last_update_date,
		row_number() OVER (PARTITION BY egp.item_number
		ORDER BY egpc.last_update_date DESC) rownum
		FROM @DB_level@_cld_oraerp_silver.egp_system_items_b egp,
		@DB_level@_cld_oraerp_silver.egp_item_categories egpc,
		@DB_level@_cld_oraerp_silver.egp_category_sets_b cat_set,
		@DB_level@_cld_oraerp_silver.egp_categories_tl catl,
		@DB_level@_cld_oraerp_silver.egp_categories_b cat
		WHERE egpc.inventory_item_id = egp.inventory_item_id
		AND egpc.organization_id = egp.organization_id
		AND egpc.category_set_id = cat_set.category_set_id
		AND egpc.category_id = cat.category_id
		AND catl.category_id = cat.category_id
		AND catl.language = 'US'
		AND cat_set.catalog_code = 'GLOBAL_PRODUCT_HIERARCHY'
		AND egp.organization_code = '999_ITEM_MASTER') gph
		WHERE rownum = 1) gph_dtl ON gph_dtl.item_number = trim(split_part(msi.segment1, '*', 1))
		/* INNER JOIN (select distinct HEADER_ID,line_number,end_customer_site_use_id,ship_to_org_id,invoice_to_org_id,ordered_item,line_id
				from @DB_LEVEL@_ora_alice_silver.alice_oe_order_lines_all) ol ON
				ooh.HEADER_ID = ol.HEADER_ID
				and pc.sku= ol.ordered_item
				and sds.last_oe_order_line_id= ol.line_id */
				/*and cast(fc.line_number as double)=ol.line_number*/
        LEFT OUTER JOIN  @DB_LEVEL@_edm_gold.d_regional_legacy_product_catalog_vw pc
		on sds.inventory_item_id=pc.inventory_item_id
		and pc.src_system_name='ALICE'	
		
		LEFT OUTER JOIN  (select distinct HEADER_ID,end_customer_site_use_id,ship_to_org_id,invoice_to_org_id
		from @DB_LEVEL@_ora_alice_silver.alice_oe_order_lines_all) ol ON
		ooh.HEADER_ID = ol.HEADER_ID				
		LEFT OUTER JOIN  @DB_LEVEL@_ora_alice_silver.alice_csi_instance_party_vwr pwr ON
				pwr.instance_number =sds.instance_number			
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_party_sites hps_end_cust_a on
			pwr.location_id = hps_end_cust_a.party_site_id
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_locations hl_end_cust_a on
			hps_end_cust_a.location_id = hl_end_cust_a.location_id		
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_cust_site_uses_all hcs_end_cust ON       
			hcs_end_cust.site_use_id = ol.end_customer_site_use_id                            
		LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_hz_cust_acct_sites_all hca_end_cust ON  
			hcs_end_cust.cust_acct_site_id = hca_end_cust.cust_acct_site_id		
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_party_sites hps_end_cust ON
			hca_end_cust.party_site_id = hps_end_cust.party_site_id
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_parties hp_end_cust ON
			hps_end_cust.party_id = hp_end_cust.party_id
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_cust_accounts hc_end_cust ON
			hps_end_cust.party_id = hc_end_cust.party_id
            AND hc_end_cust.cust_account_id = hca_end_cust.cust_account_id		
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_locations hl_end_cust ON
			hps_end_cust.location_id = hl_end_cust.location_id
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_cust_site_uses_all hcs_ship_to_cust ON
			hcs_ship_to_cust.site_use_id = ol.ship_to_org_id
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_cust_acct_sites_all hca_ship_to_cust ON
			hcs_ship_to_cust.cust_acct_site_id = hca_ship_to_cust.cust_acct_site_id
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_party_sites hps_ship_to_cust ON
			hca_ship_to_cust.party_site_id = hps_ship_to_cust.party_site_id
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_parties hp_ship_to_cust ON
			hps_ship_to_cust.party_id = hp_ship_to_cust.party_id
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_cust_accounts hc_ship_to_cust ON
			hps_ship_to_cust.party_id = hc_ship_to_cust.party_id
			AND hc_ship_to_cust.cust_account_id = hca_ship_to_cust.cust_account_id
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_locations hl_ship_to_cust ON
			hps_ship_to_cust.location_id = hl_ship_to_cust.location_id
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_cust_site_uses_all hcs_sold_to_cust ON
			hcs_sold_to_cust.site_use_id = ooh.sold_to_site_use_id
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_cust_acct_sites_all hca_sold_to_cust ON
			hcs_sold_to_cust.cust_acct_site_id = hca_sold_to_cust.cust_acct_site_id
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_party_sites hps_sold_to_cust ON
			hca_sold_to_cust.party_site_id = hps_sold_to_cust.party_site_id
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_parties hp_sold_to_cust ON
			hps_sold_to_cust.party_id = hp_sold_to_cust.party_id
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_cust_accounts hc_sold_to_cust ON
			hps_sold_to_cust.party_id = hc_sold_to_cust.party_id
			AND hc_sold_to_cust.cust_account_id = hca_sold_to_cust.cust_account_id
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_locations hl_sold_to_cust ON
			hps_sold_to_cust.location_id = hl_sold_to_cust.location_id
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_cust_site_uses_all hcs_bill_to_cust ON
			hcs_bill_to_cust.site_use_id = ol.invoice_to_org_id
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_cust_acct_sites_all hca_bill_to_cust ON
			hcs_bill_to_cust.cust_acct_site_id = hca_bill_to_cust.cust_acct_site_id
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_party_sites hps_bill_to_cust ON
			hca_bill_to_cust.party_site_id = hps_bill_to_cust.party_site_id
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_parties hp_bill_to_cust ON
			hps_bill_to_cust.party_id = hp_bill_to_cust.party_id
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_cust_accounts hc_bill_to_cust ON
			hps_bill_to_cust.party_id = hc_bill_to_cust.party_id
			AND hc_bill_to_cust.cust_account_id = hca_bill_to_cust.cust_account_id
		left outer join @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_accounts sa on
	        trim(upper(hc_bill_to_cust.account_name)) = upper(sa.acct_name)
		left outer join @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_accounts sb on
	        trim(upper(hc_end_cust.account_name)) = upper(sb.acct_name)
		LEFT OUTER JOIN @DB_level@_ora_alice_silver.alice_hz_locations hl_bill_to_cust ON
			hps_bill_to_cust.location_id = hl_bill_to_cust.location_id
		/* LEFT OUTER JOIN (
			SELECT
				DISTINCT CAST(source_header_id AS STRING) source_header_id,
				mdm_hdr_id
			FROM
				@DB_LEVEL@_mdm_hub_gold.d_customer_xref
			WHERE
				source_system = 'ORACLE') xref_sold_to_cust ON
			xref_sold_to_cust.source_header_id = hp_sold_to_cust.party_number
		LEFT OUTER JOIN @DB_LEVEL@_mdm_hub_gold.d_customer_header cust_hdr_sold_to_cust ON
			CAST(cust_hdr_sold_to_cust.mdm_hdr_id AS STRING) = xref_sold_to_cust.mdm_hdr_id */
			
	LEFT  JOIN
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
		ON hc_bill_to_cust.account_number = XX.customer_number and nvl(XX.customer_number,'N') != 'N' and sds.src_system_name = xx.src_system_name_join
	    LEFT  JOIN @DB_LEVEL@_edm_other_src_silver.Varsdatabase_Sellingmotion h on
			 hc_bill_to_cust.account_number = h.Business_Nbr 		
			
		LEFT OUTER JOIN (
			SELECT
				DISTINCT CAST(source_header_id AS STRING) source_header_id,
				mdm_hdr_id
			FROM
				@DB_LEVEL@_mdm_hub_gold.d_customer_xref
			WHERE
				source_system = 'ORACLE') xref_end_cust ON
			xref_end_cust.source_header_id = hp_end_cust.party_number
		LEFT OUTER JOIN @DB_LEVEL@_mdm_hub_gold.d_customer_header cust_hdr_end_cust ON
			CAST(cust_hdr_end_cust.mdm_hdr_id AS STRING) = xref_end_cust.mdm_hdr_id
		
		LEFT OUTER JOIN (SELECT
						distinct ct.SMS_customer_type ,
						ct.instance_number,
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
					)sms ON sds.contract_number = sms.contract_number
					 and sds.instance_number=sms.instance_number
					 -- and nvl(pc.order_detail_line_num,pc.order_line_num) = sms.subline_number --VR 03102022 service mapping changes			
		/* LEFT OUTER JOIN (
			SELECT
				DISTINCT CAST(source_header_id AS STRING) source_header_id,
				mdm_hdr_id
			FROM
				@DB_LEVEL@_mdm_hub_gold.d_customer_xref
			WHERE
				source_system = 'ORACLE') xref_ship_to_cust ON
			xref_ship_to_cust.source_header_id = hp_ship_to_cust.party_number
		LEFT OUTER JOIN @DB_LEVEL@_mdm_hub_gold.d_customer_header cust_hdr_ship_to_cust ON
			CAST(cust_hdr_ship_to_cust.mdm_hdr_id AS STRING) = xref_ship_to_cust.mdm_hdr_id */
		LEFT OUTER JOIN (
			SELECT
				DISTINCT CAST(source_header_id AS STRING) source_header_id,
				mdm_hdr_id
			FROM
				@DB_level@_mdm_hub_gold.d_customer_xref
			WHERE
				source_system = 'ORACLE') xref_bill_to_cust ON
			xref_bill_to_cust.source_header_id = hp_bill_to_cust.party_number
		LEFT OUTER JOIN @DB_level@_mdm_hub_gold.d_customer_header cust_hdr_bill_to_cust ON
			CAST(cust_hdr_bill_to_cust.mdm_hdr_id AS STRING) = xref_bill_to_cust.mdm_hdr_id
			AND hc_end_cust.cust_account_id = hca_end_cust.cust_account_id
		LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.customer_data cd ON
             hc_end_cust.account_name =cd.customername
			 and hc_end_cust.status='A'
             and cd.validationtype='Validated'
             and cd.validationresource ='Management' 
		LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.enterprise_industry ei ON
             cd.industry = ei.industry1
		LEFT OUTER JOIN @DB_level@_edm_other_src_silver.parent_account_type pa ON
			pa.parent_account = hc_end_cust.account_name
			--- JOIN on PARENT_ACCOUNT to populate account level fields.
		LEFT OUTER JOIN @DB_level@_edm_other_src_silver.ref_customerparentaccounts cust_ref on
			hc_end_cust.account_name = cust_ref.customer
		LEFT OUTER JOIN @DB_level@_edm_other_src_silver.ref_accountsflag_sku af on
			--pc.sku = af.af_sku
			pc.product_number = af.af_sku
		LEFT OUTER JOIN @DB_level@_edm_other_src_silver.ref_sellingmotion_sku sm on
			--pc.sku = sm.sm_sku
			pc.product_number = sm.sm_sku
		WHERE
			1 = 1		
)b )H )dt )tt )st;

6. truncate_na_temp_tables

Truncate table @DB_LEVEL@_na_cld_osc_gold.csi_item_instances_na_temp;
