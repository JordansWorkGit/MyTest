1.INVALIDATE _ METADATA

--RELEASE DATE : 06/09/2022

invalidate metadata @DB_LEVEL@_na_cld_osc_gold.backlog_consolidated_data_na;
invalidate metadata @DB_LEVEL@_edm_gold.f_sales_order_line_backlog_history;
invalidate metadata @DB_LEVEL@_edm_gold.f_sales_invoice_line;
invalidate metadata @DB_LEVEL@_mdm_hub_gold.d_customer_header_v;
invalidate metadata @DB_LEVEL@_edm_gold.d_party;
invalidate metadata @DB_LEVEL@_edm_gold.d_legacy_customer_account;
invalidate metadata @DB_LEVEL@_mdm_hub_gold.d_customer_address_v;
invalidate metadata @DB_LEVEL@_edm_gold.d_legacy_customer_loc;
invalidate metadata @DB_LEVEL@_edm_gold.d_org;
invalidate metadata @DB_LEVEL@_cld_oraerp_silver.inv_organization_definitions_v;
invalidate metadata @DB_LEVEL@_edm_gold.d_product_catalog;
invalidate metadata @DB_LEVEL@_edm_gold.d_sales_rep;
invalidate metadata @DB_LEVEL@_cld_cpq_silver.cpq_dt_salesrepdetails;
invalidate metadata @DB_LEVEL@_edm_gold.d_product;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_sku;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.ref_accountsflag_sku;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.sku_gph_lookup;
invalidate metadata @DB_LEVEL@_edm_gold.d_xrate;
invalidate metadata @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_shipment;
invalidate metadata @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_shipment_line;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.customer_data;
invalidate metadata @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_bookings;
invalidate metadata @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_sales_order;
invalidate metadata @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_business;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.GSA_Customer_LES;
invalidate metadata @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_address;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.ref_customerparentaccounts;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.parent_account_type;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.enterprise_industry;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.parent_gsc;
invalidate metadata @DB_LEVEL@_impartner_silver.account;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.Varsdatabase_Sellingmotion;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.rep_office_info;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.usa_pos_cd_lst;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_oe_order_lines_all;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_oe_order_headers_all;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_accounts;



2.INSERT_BACKLOG

insert overwrite @DB_LEVEL@_na_cld_osc_gold.backlog_consolidated_data_na
select 
    account_type_aop,
	AccountAM,
	AccountCSM,
	AccountLead,
	AccountPresence,
	Accounts_Flag as Accounts_Y_N,
	AccountServiceSales,
	AccountSubType,
	AccountType,
	upper(AOP_Account_Name),
	AOP_Category,
	BacklogClassification,
	BacklogDate,
	BacklogQuantity,
	upper(BillToCustomerCustomerType1),
	upper(BillToCustomerEnterpriseIndustry),
	upper(BillToCustomerGSC),
	upper(BillToCustomerIndustry1),
	upper(BillToCustomerName),
	BillToCustomerNumber,
	upper(BillToCustomerParentAccount),
	upper(BillToCustomerParentName),
	upper(BillToCustomerStandardizedName),
	upper(BillToCustomerVertical),
	upper(COE),
	CustomerRequestDate,
	Data_Last_Refreshed,
	DistributionChannel,
	upper(EndCustomerCountry),
	upper(EndCustomerCustomerType1),
	upper(EndCustomerCustomerType1_2),
	upper(EndCustomerEnterpriseIndustry),
	upper(EndCustomerGSC),
	upper(EndCustomerIndustry1),
	upper(EndCustomerName),
	EndCustomerNumber,
	upper(EndCustomerParentAccount),
	upper(EndCustomerStandardizedName),
	upper(EndCustomerState),
	upper(EndCustomerVertical),
	ExchangeRateUsed,
	upper(GBU),
    growth_target,
	LESContractShipHoldCode,
	LESCreditHoldCodeCurrent,
	LESCreditHoldDescription,
	LESCreditHoldStatus,
	LESManufactureDate,
	LESTaxHoldCode,
	LESUnitsFlag,
	upper(Level_6),
	LineNumber,
	upper(LOB),
	Office_Type,
	OrderCoordinator,
	OrderCreateDate,
	OriginalAcknowledgeDate,
	PartnerWebQuoteNumber,
	Plant,
	upper(Product_Category),
	upper(Product_Family),
	RecordSource,
	SalesBacklog,
	SalesDistrictName,
	SalesOfficeName,
	SalesOfficeNumber,
	SalesOfficePrincipalEmail,
	SalesOrderLineStatusCode,
	SalesOrderNumber, 
	SalesOrderTypeCode,
	SalesRepEmail,
	SalesRepID,
	SalesRepName,
	SAPABCInd,
	SAPBillingBlock,
	SAPCompleteDelivery,
	SAPDeliveryBlock,
	SAPDeliveryNumber,
	SAPHoldCode,
	SAPIncoTerm1,
	SAPIncoTerm2,
	SAPModelLineFlag,
	SAPSalesOrganization,
	SAPUnconfirmedAmount,
	SAPUnconfirmedQty,
	Segment,
	Selling_Motion,
	SFR_Category,
	upper(ShipToCustomerCustomerType1),
	upper(ShipToCustomerCustomerType1_2),
	upper(ShipToCustomerEnterpriseIndustry),
	upper(ShipToCustomerGSC),
	upper(ShipToCustomerIndustry1),
	upper(ShipToCustomerName),
	ShipToCustomerNumber,
	upper(ShipToCustomerParentAccount),
	upper(ShipToCustomerParentName),
	ShipToCustomerPostalCode,
	upper(ShipToCustomerStandardizedName),
	upper(ShipToCustomerState),
	upper(ShipToCustomerVertical),
	sizecategory,
	upper(SKU),
	upper(SKUDescription),
	upper(SoldToCustomerCustomerType1),
	upper(SoldToCustomerEnterpriseIndustry),
	upper(SoldToCustomerGSC),
	upper(SoldToCustomerIndustry1),
	upper(SoldToCustomerName),
	SoldToCustomerNumber,
	upper(SoldToCustomerParentAccount),
	upper(SoldToCustomerStandardizedName),
	upper(SoldToCustomerVertical),
	effective_user() as w_insert_by ,
    now() as w_insert_dtm ,
    'SalesOps' as src_system_name,
	resellernumber,
	listprice,
	quantityordered,
	extendedlistprice,
	resellerbranchnumber,
	resellerbranchname,
	sales_order_line_type,	--VR 03312022 SO-608 Enhancement request to add new field sales_order_line_type
    uom, -- adding new field by HARI
    Order_type,
	Invoice_type,
	Class_code,
	OEM_FLAG, 
	quoteid, --VR 05132022 SO-654 Addition of quoteid field in backlog by Ryan
	--so-621 new attributes addition starts
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
	upper(BillToCustomerAddress),
	upper(EndCustomerAddress),
	upper(ShipToCustomerAddress),
	upper(SoldToCustomerAddress),
	upper(BillToCustomerCity),
	upper(EndCustomerCity),
	upper(ShipToCustomerCity),
	upper(SoldToCustomerCity),
	upper(BillToCustomerState),
	upper(SoldToCustomerState),
	upper(BillToCustomerProvince),
	upper(EndCustomerProvince),
	upper(ShipToCustomerProvince),
	upper(SoldToCustomerProvince),
	upper(BillToCustomerCountry),
	upper(ShipToCustomerCountry),
	upper(SoldToCustomerCountry),
	BillToCustomerPostalCode,
	EndCustomerPostalCode,
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
	--so_621 new attributes addition ends 
	--so-661 new attributes addition starts
	upper(BillToAccountType),
	upper(EndAccountType),
	upper(ShipToAccountType),
	upper(SoldToAccountType),
	--so-661 new attributes addition ends
	upper(BillToServicesMajorAcc), --so-665 new attributes addition starts
	upper(EndServicesMajorAcc),
	upper(ShipToServicesMajorAcc),
	upper(SoldToServicesMajorAcc), --so-665 new attributes addition ends
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
		--ELSE 'NULL'
	END aop_customer_sub_class
		
FROM
	(
	SELECT
		a.*,
		CASE
			WHEN a.BillToCustomerParentAccount IN (a.customer ) THEN 'Y'
			WHEN a.EndCustomerParentAccount IN (a.customer) THEN 'Y'
			WHEN a.SKU IN (a.af_sku) THEN 'Y'
			ELSE 'N'
		END Accounts_Flag,
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
			WHEN LOB = 'DC Power'
			AND BillToCustomerVertical = 'Telecom'
			AND (NOT BillToCustomerParentAccount LIKE ('%Comcast%')
			OR NOT BillToCustomerParentAccount LIKE ('%Cox Communications%')
			OR NOT BillToCustomerParentAccount LIKE ('%Charter Communications%')
			OR NOT BillToCustomerParentAccount LIKE ('%CenturyLink%')
			OR NOT BillToCustomerParentAccount LIKE ('%Frontier Communications%')) THEN 'Vertiv Direct Account'
			WHEN LOB = 'DC Power'
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
			CASE
            WHEN nvl(sa.aopaccountname, 'N') != 'N' THEN sa.aopaccountname
            WHEN nvl(sb.aopaccountname, 'N') != 'N' THEN sb.aopaccountname
            WHEN nvl(a.sm_sku, 'N') != 'N' THEN a.aop_account_name_a
            ELSE 'Non Account'
            END aop_account_name,
			sa.accounttypeaop,
			sb.accounttypeaop as accounttypeaop1,
			so.attribute_char1 as OEM_FLAG  --modified by HARI SO-650
		
	FROM
		(SELECT
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
			blh.order_clssfctn BacklogClassification,
			--blh.src_update_dtm BacklogDate,
			--blh.schedule_shipment_dt BacklogDate,
			case when blh.src_system_name = 'ORACLEERPCLOUD' then coalesce(blh.schedule_shipment_dt,blh.order_acknowledged_dt,blh.customer_requested_dt) 
			else nvl(blh.schedule_shipment_dt,blh.customer_requested_dt)
			end as BacklogDate,	--new backlog date changes SO-513		
			(blh.ordered_qty - blh.shipped_qty) BacklogQuantity,
            upper(bill_ind.customer_type1) BillToCustomerCustomerType1,
			upper(bill_ind.enterprise_industry) BillToCustomerEnterpriseIndustry,
			upper(bill_gsc.gsc) BillToCustomerGSC,
			--bill_cust.industry BillToCustomerIndustry1,
			--coalesce(bill_acc.industry_classification_1_txt, bill_acc.industry_classification_2_txt, bill_acc.industry_classification_3_txt) BillToCustomerIndustry1,
			/*case when blh.src_system_name = 'LES' and (nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername ) then
			nvl(gsa_billto.industry_classification1,coalesce(bill_acc.industry_classification_1_txt, bill_acc.industry_classification_2_txt, bill_acc.industry_classification_3_txt))
			else coalesce(bill_acc.industry_classification_1_txt, bill_acc.industry_classification_2_txt, bill_acc.industry_classification_3_txt) 
			END BillToCustomerIndustry1,*/
			case when blh.src_system_name = 'LES' and (nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername ) then
			nvl(gsa_billto.industry_classification1,nvl(bill_acc.industry_classification_1_txt, bill_acc.industry_classification_2_txt))
			else nvl(bill_acc.industry_classification_1_txt, bill_acc.industry_classification_2_txt) 
			END BillToCustomerIndustry1,--mapping changed for BillToCustomerIndustry1
			
			--bill_acc.account_name BillToCustomerName,
			case when blh.src_system_name = 'LES' then nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) 
				 else nvl(bill_acc.customer_name_txt,bill_acc_leg.account_name )
			end as BillToCustomerName,
			nvl(bill_acc.customer_number,bill_acc_leg.account_num) BillToCustomerNumber,			
			--'' BillToCustomerParentAccount,
			--bill_acc.account_name BillToCustomerParentAccount,
/* 			case when blh.src_system_name = 'LES' then bill_cust_les.parentaccount 
				 --else nvl(bill_acc.customer_name_txt,bill_acc_leg.account_name )
				  else COALESCE(bill_acc.ultimate_parent_txt,null)
			end as BillToCustomerParentAccount, */
			
/* 			case when blh.src_system_name = 'LES' then COALESCE(bill_acc.ultimate_parent_txt,upper(bill_cust_les.parentaccount) )
            else COALESCE(bill_acc.ultimate_parent_txt,	null)
            end as BillToCustomerParentAccount, */              
            case when blh.src_system_name = 'LES' and (nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername ) then COALESCE(gsa_billto.ultimate_parent,bill_acc.ultimate_parent_txt,upper(bill_cust_les.parentaccount) )
			else COALESCE(bill_acc.ultimate_parent_txt, null)
			end as BillToCustomerParentAccount,	
					
			'' BillToCustomerParentName,
			'' BillToCustomerStandardizedName,
			--bill_ind.vertical BillToCustomerVertical,
		/*	case when blh.src_system_name = 'LES' and (nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername ) then
				  nvl(gsa_billto.market_sub_vertical,bill_acc.market_sub_vertical_txt)
				  else bill_acc.market_sub_vertical_txt
			END BillToCustomerVertical,*/
			case when blh.src_system_name = 'LES' and (nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername ) then
				  nvl(gsa_billto.market_vertical,bill_acc.market_vertical_txt)
				  else bill_acc.market_vertical_txt
			END BillToCustomerVertical,--mapping changed for BillToCustomerVertical
			--cat.catalog_lvl_desc_3 COE,
			case when NVL(blh.product_num,prod.product_num) = sku_lu.sku and blh.src_system_name = sku_lu.recordsource then sku_lu.coe
			else nvl(cat.catalog_lvl_desc_3,gph_sku.coe) 
			end COE,
			blh.customer_requested_dt CustomerRequestDate,
			blh.w_insert_dtm Data_Last_Refreshed,
			'' DistributionChannel,
			upper(nvl(end_loc.site_country_cd,end_loc_leg.customer_country_cd )) EndCustomerCountry,
			upper(end_ind.customer_type1) EndCustomerCustomerType1,
			''	EndCustomerCustomerType1_2,
			upper(end_ind.enterprise_industry) EndCustomerEnterpriseIndustry,
			upper(end_gsc.gsc) EndCustomerGSC,
			--end_cust.industry EndCustomerIndustry1,
			--coalesce(end_acc.industry_classification_1_txt, end_acc.industry_classification_2_txt, end_acc.industry_classification_3_txt) EndCustomerIndustry1,
			/*case when blh.src_system_name = 'LES' and (nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) = gsa_endto.billtocustomername) then
			nvl(gsa_endto.industry_classification1,coalesce(end_acc.industry_classification_1_txt, end_acc.industry_classification_2_txt, end_acc.industry_classification_3_txt))
			else coalesce(end_acc.industry_classification_1_txt, end_acc.industry_classification_2_txt, end_acc.industry_classification_3_txt) 
			END EndCustomerIndustry1,*/
			case when blh.src_system_name = 'LES' and (nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) = gsa_endto.billtocustomername) then
			nvl(gsa_endto.industry_classification1,nvl(end_acc.industry_classification_1_txt, end_acc.industry_classification_2_txt))
			else nvl(end_acc.industry_classification_1_txt, end_acc.industry_classification_2_txt) 
			END EndCustomerIndustry1,--mapping changed for EndCustomerIndustry1
			--end_acc.account_name EndCustomerName,
			case when blh.src_system_name = 'LES' then nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) 
				 else nvl(end_acc.customer_name_txt,end_acc_leg.account_name)
			end as EndCustomerName,
			nvl(end_acc.customer_number,end_acc_leg.account_num )  EndCustomerNumber,			
			--end_cust.parentaccount EndCustomerParentAccount,
			--end_acc.account_name EndCustomerParentAccount,
/* 			case when blh.src_system_name = 'LES' then end_cust_les.parentaccount 
				 --else  nvl(end_acc.customer_name_txt,end_acc_leg.account_name)
				  else COALESCE(end_acc.ultimate_parent_txt,null)
			end as EndCustomerParentAccount, */
			
/* 			case when blh.src_system_name = 'LES' then COALESCE(end_acc.ultimate_parent_txt,upper(end_cust_les.parentaccount) )
				else COALESCE(end_acc.ultimate_parent_txt,	null)
			end as EndCustomerParentAccount, */
			case when blh.src_system_name = 'LES' and (nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) = gsa_endto.billtocustomername) then COALESCE(gsa_endto.ultimate_parent,end_acc.ultimate_parent_txt,upper(end_cust_les.parentaccount) )
			else COALESCE(end_acc.ultimate_parent_txt, null)
			end as EndCustomerParentAccount,			
			
			upper(end_cust.StandardizedName) EndCustomerStandardizedName,
			upper(nvl(end_loc.site_state_cd ,end_loc_leg.customer_state_name )) EndCustomerState,
			--end_ind.vertical EndCustomerVertical,
			/*case when blh.src_system_name = 'LES' and (nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) = gsa_endto.billtocustomername) then
				 COALESCE(gsa_endto.market_sub_vertical,end_acc.market_sub_vertical_txt,end_ind.vertical)
				 else COALESCE(end_acc.market_sub_vertical_txt,end_ind.vertical)
			END  EndCustomerVertical,*/
			case when blh.src_system_name = 'LES' and (nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) = gsa_endto.billtocustomername) then
				 COALESCE(gsa_endto.market_vertical,end_acc.market_vertical_txt,end_ind.vertical)
				 else COALESCE(end_acc.market_vertical_txt,end_ind.vertical)
			END  EndCustomerVertical,--mapping changed for  EndCustomerVertical--mapping changed EndCustomerVertical
			
			CASE
				WHEN blh.order_create_dt < '2017-01-01 00:00:00' THEN fixed_rate.conversion_rate
				ELSE monthly_exch_rate.conversion_rate
			END ExchangeRateUsed,
			--cat.catalog_lvl_desc_1 GBU,
			case when NVL(blh.product_num,prod.product_num) = sku_lu.sku and blh.src_system_name = sku_lu.recordsource then sku_lu.gbu 
			else nvl(cat.catalog_lvl_desc_1,gph_sku.gbu) 
			end GBU,
			'' LESContractShipHoldCode,
			'' LESCreditHoldCodeCurrent,
			'' LESCreditHoldDescription,
			'' LESCreditHoldStatus,
			'' LESManufactureDate,
			'' LESTaxHoldCode,
			'' LESUnitsFlag,
			--cat.catalog_lvl_desc_6 Level_6,
			case when NVL(blh.product_num,prod.product_num) = sku_lu.sku and blh.src_system_name = sku_lu.recordsource then sku_lu.level6
			else nvl(cat.catalog_lvl_desc_6,gph_sku.level_6) 
			end Level_6,
			--blh.order_line_num LineNumber,
			case when blh.src_system_name = 'ALICE' then blh.order_detail_line_num
                else blh.order_line_num
            end as LineNumber,
			--cat.catalog_lvl_desc_2 LOB,
			case when NVL(blh.product_num,prod.product_num) = sku_lu.sku and blh.src_system_name = sku_lu.recordsource then sku_lu.lob
			else nvl(cat.catalog_lvl_desc_2,gph_sku.lob) 
			end LOB,
			--us.office_type Office_Type,
			CASE
			WHEN upper(blh.src_system_name) = 'ERS_HVM' THEN 'FDO'
	        WHEN upper(blh.sales_office_name) like '%VERTIV%'
	        or upper(blh.sales_office_name) like '%LIEBERT%' THEN 'FDO'
	        ELSE 'LVO'
            END Office_Type,
			'' OrderCoordinator,
			blh.order_create_dt OrderCreateDate,
			blh.order_acknowledged_dt OriginalAcknowledgeDate,
			'' PartnerWebQuoteNumber,
			--case when blh.src_system_name ='ALICE' then dorg.org_cd else les_plant.plant_code end as Plant,
			--VR 03092022 Changes added to fix plant null for recordsource ORACLEERPCLOUD
			case when blh.src_system_name ='ALICE' then dorg.org_cd 
			when blh.src_system_name = 'ORACLEERPCLOUD' then oraerp_plant.plant
			else shipd.plant end as Plant,			
		    --cat.catalog_lvl_desc_4 Product_Category,
			case when NVL(blh.product_num,prod.product_num) = sku_lu.sku and blh.src_system_name = sku_lu.recordsource then sku_lu.Product_Category
			else nvl(cat.catalog_lvl_desc_4,gph_sku.product_category) 
			end Product_Category,
			--cat.catalog_lvl_desc_5 Product_Family,
			case when NVL(blh.product_num,prod.product_num) = sku_lu.sku and blh.src_system_name = sku_lu.recordsource then sku_lu.Product_Family
			else nvl(cat.catalog_lvl_desc_5,gph_sku.product_family) 
			end Product_Family,
			blh.src_system_name RecordSource,
			blh.sua_a SalesBacklog,
			'' SalesDistrictName,
			blh.sales_office_name SalesOfficeName,
			--blh.sales_office_number SalesOfficeNumber,
			case when length(blh.sales_office_number)<5 then lpad(blh.sales_office_number,5,'0') else blh.sales_office_number end as SalesOfficeNumber,
			roi.principal_email SalesOfficePrincipalEmail,
			blh.sales_order_line_status_cd SalesOrderLineStatusCode,
			blh.order_num SalesOrderNumber,
			blh.sales_order_type_cd SalesOrderTypeCode,
			rep.sales_rep_email SalesRepEmail,
			rep.sales_rep_num SalesRepID,
			rep.sales_rep_name SalesRepName,
			'' SAPABCInd,
			'' SAPBillingBlock,
			'' SAPCompleteDelivery,
			'' SAPDeliveryBlock,
			'' SAPDeliveryNumber,
			'' SAPHoldCode,
			'' SAPIncoTerm1,
			'' SAPIncoTerm2,
			'' SAPModelLineFlag,
			'' SAPSalesOrganization,
			'' SAPUnconfirmedAmount,
			'' SAPUnconfirmedQty,
			'' Segment,
			'' SFR_Category,
			upper(ship_ind.customer_type1) ShipToCustomerCustomerType1,
		    '' ShipToCustomerCustomerType1_2,
			upper(ship_ind.enterprise_industry) ShipToCustomerEnterpriseIndustry,
			upper(ship_gsc.gsc) ShipToCustomerGSC,
			--ship_cust.industry ShipToCustomerIndustry1,
			--coalesce(ship_acc.industry_classification_1_txt, ship_acc.industry_classification_2_txt, ship_acc.industry_classification_3_txt) ShipToCustomerIndustry1,
			nvl(ship_acc.industry_classification_1_txt, ship_acc.industry_classification_2_txt) ShipToCustomerIndustry1,--mapping changed for ShipToCustomerIndustry1
	        --ship_acc.account_name ShipToCustomerName,
			case when blh.src_system_name = 'LES' then nvl(nullif(ship_cust_les.customername,''),les_ship.business_name) 
				 else nvl(ship_acc.customer_name_txt ,ship_acc_leg.account_name)
			end as ShipToCustomerName,
			nvl(ship_acc.customer_number,ship_acc_leg.account_num) ShipToCustomerNumber,			
			--ship_cust.parentaccount ShipToCustomerParentAccount,
			--ship_acc.account_name ShipToCustomerParentAccount,
/* 			case when blh.src_system_name = 'LES' then ship_cust_les.parentaccount 
				 --else nvl(ship_acc.customer_name_txt ,ship_acc_leg.account_name)
				 else COALESCE(ship_acc.ultimate_parent_txt,null)
			end as ShipToCustomerParentAccount,	 */
			
			case when blh.src_system_name = 'LES' then COALESCE(ship_acc.ultimate_parent_txt,upper(ship_cust_les.parentaccount) )
			else COALESCE(ship_acc.ultimate_parent_txt,	null)
			end as ShipToCustomerParentAccount,			
			'' ShipToCustomerParentName,
			nvl(ship_loc.site_postal_code_txt,ship_loc_leg.customer_postal_cd) ShipToCustomerPostalCode,
			upper(ship_cust.StandardizedName) ShipToCustomerStandardizedName,
			(nvl(ship_loc.site_state_cd ,ship_loc_leg.customer_state_name ))ShipToCustomerState,
			--ship_ind.vertical ShipToCustomerVertical,
			--upper(nvl(ship_acc.market_sub_vertical_txt,ship_ind.vertical)) ShipToCustomerVertical,
			upper(nvl(ship_acc.market_vertical_txt,ship_ind.vertical)) ShipToCustomerVertical,--mapping changed for ShipToCustomerVertical
			--prod.product_desc SKUDescription,
			case when NVL(blh.product_num,prod.product_num) = sku_lu.sku and blh.src_system_name = sku_lu.recordsource then sku_lu.skudescription
			else prod.product_desc
			end SKUDescription,
			'' SoldToCustomerCustomerType1,
			'' SoldToCustomerEnterpriseIndustry,
			'' SoldToCustomerGSC,
			--'' SoldToCustomerIndustry1,
			--upper(coalesce(sold_acc.industry_classification_1_txt, sold_acc.industry_classification_2_txt, sold_acc.industry_classification_3_txt)) SoldToCustomerIndustry1,
			upper(nvl(sold_acc.industry_classification_1_txt, sold_acc.industry_classification_2_txt)) SoldToCustomerIndustry1,--mapping changed for SoldToCustomerIndustry1
			--sold_acc.account_name SoldToCustomerName,
			case when blh.src_system_name = 'LES' then nvl(nullif(sold_cust_les.customername,''),les_sold.business_name) 
				 else nvl(sold_acc.customer_name_txt,sold_acc_leg.account_name)
			end as SoldToCustomerName,
			nvl(sold_acc.customer_number ,sold_acc_leg.account_num) SoldToCustomerNumber,
/* 			case when blh.src_system_name = 'LES' then sold_cust_les.parentaccount 
				 --else  nvl(sold_acc.customer_name_txt,end_acc_leg.account_name)
				  else COALESCE(sold_acc.ultimate_parent_txt,null)
			end as SoldToCustomerParentAccount, */
			
			case when blh.src_system_name = 'LES' then COALESCE(sold_acc.ultimate_parent_txt,upper(sold_cust_les.parentaccount) )
			else COALESCE(sold_acc.ultimate_parent_txt,	null)
			end as SoldToCustomerParentAccount,			
			--'' SoldToCustomerParentAccount,
			'' SoldToCustomerStandardizedName,
			--'' SoldToCustomerVertical,
			--nvl(sold_acc.market_sub_vertical_txt,'NULL') SoldToCustomerVertical,
			nvl(sold_acc.market_vertical_txt,'NULL') SoldToCustomerVertical,--mapping changed for SoldToCustomerVertical
			cust.customer customer,
			sm.sm_sku sm_sku,
			sm.sm_account_flag,
			sm.aop_account_name aop_account_name_a,
			af.af_sku af_sku,
			--sa.acct_name acct_name,
			py.reseller_number resellernumber,
			blh.ulp_a ListPrice,
			CAST(blh.ordered_qty AS DOUBLE) QuantityOrdered,
			elp_a ExtendedListPrice ,
			--case when prod.product_num='NOT APPLICABLE' then blh.product_num else prod.product_num end as  SKU,
			--fix.sku_for_ds,
			CASE
              WHEN prod.product_num='NOT APPLICABLE'
                AND blh.src_system_name != 'ERS_HVM' THEN blh.product_num
              WHEN blh.src_system_name= 'ALICE'
                AND (prod.product_num IS NULL
                OR prod.product_num='') THEN blh.product_num
              WHEN blh.src_system_name= 'ERS_HVM' THEN pm.projectcode
              ELSE nvl(prod.product_num,gph_sku.sku)
                    END AS SKU, -- modified by Hari as per SO-617
            CASE 
            WHEN nvl(XX.resellerbranchnumber, 'N') != 'N' THEN XX.resellerbranchnumber
            WHEN nvl(h.branch_office_nbr, 'N') != 'N' THEN h.branch_office_nbr
            ELSE NULL
            END resellerbranchnumber,
            CASE 
            WHEN nvl(XX.resellerbranchname, 'N') != 'N' THEN xx.resellerbranchname
            WHEN upper(blh.src_system_name) like '%CDW%' THEN 'CDW LOGISTICS'
            WHEN upper(blh.src_system_name) like '%GRAY%' THEN 'GRAYBAR ELECTRIC'
            WHEN upper(blh.src_system_name) like '%CONNECTION%' THEN 'CONNECTION'
            WHEN nvl(h.business_name, 'N') != 'N' THEN h.business_name
            ELSE NULL
            END resellerbranchname,
			--sa.flag flag,
			--sb.flag as flag1,
			--sa.accounttypeaop,
			--sb.accounttypeaop as accounttypeaop1,
			'' smscustomertype,
			--nvl(upper(bill_loc.site_country_cd) ,Upper(bill_loc_leg.customer_country_name) ) billtocustomercountry,
            blh.sale_usd_amt as netsalesrevenue,
            h.branch_office_nbr as branch_office_nbr,
            cpqrep.region as region,
            UPPER(ordr.sales_order_line_type) sales_order_line_type, --VR 03312022 SO-608 Enhancement request to add new field sales_order_line_type
            ordr.uom_cd  as UOM, --modified by HARI SO-635	
			ordr.sales_order_type_cd as Order_type, --modified by HARI SO-634
            inv.invoice_type_cd as Invoice_type,     --modified by HARI SO-634
			prc.class_code as Class_code, --	modified by HARI SO-622
			nvl(ordr.quote_ref, ordr.legacy_orig_ref_num) AS quoteid,  --VR 05132022 SO-654 Addition of quoteid field in backlog by Ryan
			--So-621 modification starts
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
			case when blh.src_system_name = 'LES' and (nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername ) then
				  nvl(gsa_billto.market_sub_vertical,bill_acc.market_sub_vertical_txt)
				  else bill_acc.market_sub_vertical_txt
			END BillToCustomerSubVertical,
	        case when blh.src_system_name = 'LES' and (nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) = gsa_endto.billtocustomername) then
				 nvl(gsa_endto.market_sub_vertical,end_acc.market_sub_vertical_txt)
				 else end_acc.market_sub_vertical_txt
			END EndCustomerSubVertical,
			ship_acc.market_sub_vertical_txt ShipToCustomerSubVertical,
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
			nvl(bill_loc.site_address1_txt ,bill_loc_leg.customer_st_address1)  BillToCustomerAddress,
			nvl(end_loc.site_address1_txt ,end_loc_leg.customer_st_address1)  EndCustomerAddress,
			nvl(ship_loc.site_address1_txt ,ship_loc_leg.customer_st_address1)  ShipToCustomerAddress,
			nvl(sold_loc.site_address1_txt ,sold_loc_leg.customer_st_address1)  SoldToCustomerAddress,
			bill_loc.site_city_txt BillToCustomerCity,
			end_loc.site_city_txt EndCustomerCity,
			ship_loc.site_city_txt ShipToCustomerCity,
			sold_loc.site_city_txt SoldToCustomerCity,
			(nvl(bill_loc.site_state_cd ,bill_loc_leg.customer_state_name)) BillToCustomerState,
			(nvl(sold_loc.site_state_cd ,sold_loc_leg.customer_state_name)) SoldToCustomerState,
			bill_loc.site_province_cd BillToCustomerProvince,
			end_loc.site_province_cd EndCustomerProvince,
			ship_loc.site_province_cd ShipToCustomerProvince,
			sold_loc.site_province_cd SoldToCustomerProvince,
			upper(nvl(bill_loc.site_country_cd,bill_loc_leg.customer_country_cd )) BillToCustomerCountry,
			upper(nvl(ship_loc.site_country_cd,ship_loc_leg.customer_country_cd )) ShipToCustomerCountry,
			upper(nvl(sold_loc.site_country_cd,sold_loc_leg.customer_country_cd )) SoldToCustomerCountry,
			nvl(bill_loc.site_postal_code_txt,bill_loc_leg.customer_postal_cd) BillToCustomerPostalCode,
			nvl(end_loc.site_postal_code_txt,end_loc_leg.customer_postal_cd) EndCustomerPostalCode,
			nvl(sold_loc.site_postal_code_txt,sold_loc_leg.customer_postal_cd) SoldToCustomerPostalCode,
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
			--So-621 modification ends
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
			END SoldToAccountType, --SO-661 new attributes addition ends here
			bill_acc.services_major_acc BillToServicesMajorAcc,  --so-665 new attributes addition starts
			end_acc.services_major_acc EndServicesMajorAcc,
			ship_acc.services_major_acc ShipToServicesMajorAcc,
			sold_acc.services_major_acc SoldToServicesMajorAcc,  --so-665 new attributes addition ends
			bill_acc.customer_sub_class BillToCustomerSubClass,  --so-728 new attributes addition starts
			end_acc.customer_sub_class EndCustomerSubClass,
			ship_acc.customer_sub_class ShipToCustomerSubClass,
			sold_acc.customer_sub_class SoldToCustomerSubClass --so-728 new attributes addition ends 
			
		FROM
			(
			SELECT
				unit_list_price_usd_amt ulp_a, unit_list_price_usd_amt * CAST(ordered_qty AS DOUBLE) elp_a,sale_usd_amt sua_a ,*
			FROM
				@DB_LEVEL@_edm_gold.f_sales_order_line_backlog_history
			WHERE
				latest_snapshot_flg ='Y'
				AND ((actual_shipment_dt IS NULL) OR (actual_shipment_dt >= now()))
				AND src_system_name IN ('ORACLEERPCLOUD','ERS_HVM') 
                and (nvl(sales_order_line_status_cd,'*') not in ('CANCELED','CANCELLED','CLOSED'))
				and order_cancelled_flg <> 'Y' 
				and order_return_flg <> 'Y'
                and sales_order_type_cd not in ('Invoice Only Order CA','Invoice Only Order US','IR ISO Order US','IR ISO Order CA',
				'Mis-Shipment Order US','Mis-Shipment Order CA','MIS_SHIPMENT_ORDER')
				and nvl(product_num,'**') not in ('CSHMVECTD','CSHMVEDTC','REBATE-ACP','REBATE-AVCT','VATWHND','BACKCHARGE-MRKTG')---and condition Added by pooja for SKU credit memo exclude changes SO--699
			UNION
			-- Query to select only Parent Child records
			SELECT
				blk_agg.ulp_a,blk_agg.elp_a,blk_agg.sua_a,blg.*
			FROM
				@DB_LEVEL@_edm_gold.f_sales_order_line_backlog_history blg
				inner join 
				(SELECT      blg_a.order_num,blg_a.top_model_line_id top_m_id,sum(blg_a.unit_list_price_usd_amt) ulp_a, sum(blg_a.unit_list_price_usd_amt * CAST(blg_a.ordered_qty AS DOUBLE)) elp_a, sum(blg_a.sale_usd_amt) sua_a
        			FROM
        				@DB_LEVEL@_edm_gold.f_sales_order_line_backlog_history blg_a
        			WHERE
        				latest_snapshot_flg ='Y'
        				AND ((actual_shipment_dt IS NULL) OR (actual_shipment_dt >= now()))
        				AND src_system_name = 'ALICE' 
                        and (nvl(sales_order_line_status_cd,'*') not in ('CANCELED','CANCELLED','CLOSED'))
        				and order_cancelled_flg <> 'Y' 
        				and order_return_flg <> 'Y'
                        and sales_order_type_cd not in ('Invoice Only Order CA','Invoice Only Order US','IR ISO Order US','IR ISO Order CA',
        				'Mis-Shipment Order US','Mis-Shipment Order CA','MIS_SHIPMENT_ORDER')

        			group by blg_a.order_num,blg_a.top_model_line_id
        		) blk_agg
        		on blg.order_num = blk_agg.order_num and blg.top_model_line_id = blk_agg.top_m_id 
			WHERE
				latest_snapshot_flg ='Y'
				AND ((actual_shipment_dt IS NULL) OR (actual_shipment_dt >= now()))
				AND src_system_name = 'ALICE' 
                and (nvl(sales_order_line_status_cd,'*') not in ('CANCELED','CANCELLED','CLOSED'))
				and order_cancelled_flg <> 'Y' 
				and order_return_flg <> 'Y'
                and sales_order_type_cd not in ('Invoice Only Order CA','Invoice Only Order US','IR ISO Order US','IR ISO Order CA',
				'Mis-Shipment Order US','Mis-Shipment Order CA','MIS_SHIPMENT_ORDER')
				and cast(top_model_line_id as string)  = cast(integration_id as string)
				and nvl(product_num,'**') not in ('CSHMVECTD','CSHMVEDTC','REBATE-ACP','REBATE-AVCT','VATWHND','BACKCHARGE-MRKTG')---and condition Added by pooja for SKU credit memo exclude changes SO--699
			UNION
			-- Query to exclude all Parent Child records and its child records and include only non parent child records. 
			SELECT
				unit_list_price_usd_amt ulp_a, unit_list_price_usd_amt * CAST(ordered_qty AS DOUBLE) elp_a,sale_usd_amt sua_a,*
			FROM
				@DB_LEVEL@_edm_gold.f_sales_order_line_backlog_history
			WHERE
				latest_snapshot_flg ='Y'
				AND ((actual_shipment_dt IS NULL) OR (actual_shipment_dt >= now()))
				AND src_system_name = 'ALICE' 
                and (nvl(sales_order_line_status_cd,'*') not in ('CANCELED','CANCELLED','CLOSED'))
				and order_cancelled_flg <> 'Y' 
				and order_return_flg <> 'Y'
                and sales_order_type_cd not in ('Invoice Only Order CA','Invoice Only Order US','IR ISO Order US','IR ISO Order CA',
				'Mis-Shipment Order US','Mis-Shipment Order CA','MIS_SHIPMENT_ORDER')
				and nvl(product_num,'**') not in ('CSHMVECTD','CSHMVEDTC','REBATE-ACP','REBATE-AVCT','VATWHND','BACKCHARGE-MRKTG')---and condition Added by pooja for SKU credit memo exclude changes SO--699
				and row_wid not in 
				(select row_wid from @DB_LEVEL@_edm_gold.f_sales_order_line_backlog_history
                    where src_system_name = 'ALICE' 
                        and cast(top_model_line_id as string) in 
                        (SELECT
                    				cast(top_model_line_id as string)
                    			FROM
                    				@DB_LEVEL@_edm_gold.f_sales_order_line_backlog_history
                    			WHERE
                    				latest_snapshot_flg ='Y'
                    				AND ((actual_shipment_dt IS NULL) OR (actual_shipment_dt >= now()))
                    				AND src_system_name = 'ALICE' 
                                    and (nvl(sales_order_line_status_cd,'*') not in ('CANCELED','CANCELLED','CLOSED'))
                    				and order_cancelled_flg <> 'Y' 
                    				and order_return_flg <> 'Y'
                                    and sales_order_type_cd not in ('Invoice Only Order CA','Invoice Only Order US','IR ISO Order US','IR ISO Order CA',
                    				'Mis-Shipment Order US','Mis-Shipment Order CA','MIS_SHIPMENT_ORDER')
                    				and cast(top_model_line_id as string)  = cast(integration_id as string)
                    	)
                )
			) blh
				
		LEFT OUTER JOIN @DB_LEVEL@_edm_gold.f_sales_invoice_line inv ON
			blh.row_wid = inv.sales_order_line_wid
			AND blh.product_wid = inv.product_wid
			AND blh.product_num = inv.product_num
			AND blh.order_line_num = inv.invoice_line_num
			AND blh.integration_id = inv.integration_id
			
		left outer join @DB_LEVEL@_ershvm_silver.hvm_ers_projectmaster pm
		on  blh.order_num = pm.projectnumber	
		and nvl(pm.projectcode,'**') not in ('CSHMVECTD','CSHMVEDTC','REBATE-ACP','REBATE-AVCT','VATWHND','BACKCHARGE-MRKTG')---and condition Added by pooja for SKU credit memo exclude changes SO--699
			
        --VR 03312022 SO-608 Enhancement request to add new field sales_order_line_type			
		LEFT OUTER JOIN (select distinct order_num ,order_detail_line_num,sales_order_line_type,product_num,integration_id,src_system_name,row_wid,uom_cd,sales_order_type_cd,project_id,quote_ref, legacy_orig_ref_num
						from @DB_LEVEL@_edm_gold.f_sales_order_line) ordr
			ON  blh.order_num = ordr.order_num
			AND blh.order_detail_line_num = ordr.order_detail_line_num
			AND blh.product_num=ordr.product_num
			AND blh.integration_id = ordr.integration_id
            AND blh.src_system_name = ordr.src_system_name
            AND blh.row_wid = ordr.row_wid			
--left outer join @DB_LEVEL@_edm_gold.d_regional_legacy_product_catalog cat 
--on blh.legacy_product_id = cast(cat.inventory_item_id as STRING) 
--and cat.sub_region_wid =1

-- left outer join @DB_LEVEL@_edm_gold.d_legacy_product prod 
-- on blh.legacy_product_id = prod.product_num
-- and blh.src_system_name =prod.src_system_name
        left outer join (Select distinct project_id,class_category,class_code from @DB_LEVEL@_ora_alice_silver.alice_pa_project_classes 
               where class_category = 'Project Category' and  class_code between '110' and '119' ) prc on
                                  ordr.project_id = prc.project_id

/*New customer hub changes */
	left outer join @DB_LEVEL@_mdm_hub_gold.d_customer_header_v ship_acc
		on blh.legacy_ship_to_customer_account_id = ship_acc.integration_id_join
		and blh.src_system_name = ship_acc.src_system_name_join
	left outer join  @DB_LEVEL@_mdm_hub_gold.d_customer_header_v bill_acc
		on blh.legacy_bill_to_customer_account_id = bill_acc.integration_id_join
		and blh.src_system_name = bill_acc.src_system_name_join
	left outer join @DB_LEVEL@_mdm_hub_gold.d_customer_header_v end_acc
		on blh.legacy_end_customer_account_id = end_acc.integration_id_join
		and blh.src_system_name = end_acc.src_system_name_join
	left outer join  @DB_LEVEL@_mdm_hub_gold.d_customer_header_v sold_acc
		on blh.legacy_sold_to_customer_account_id = sold_acc.integration_id_join
		and blh.src_system_name = sold_acc.src_system_name_join	
	LEFT OUTER JOIN @DB_LEVEL@_edm_gold.d_party py ON
             bill_acc.customer_name_txt = py.party_name
            and bill_acc.address1_primary_txt = py.party_st_address2
            and bill_acc.postal_code_primary_txt = py.party_postal_cd
		
		
    left outer join @DB_LEVEL@_edm_gold.d_legacy_customer_account ship_acc_leg
		on blh.legacy_ship_to_customer_account_id = ship_acc_leg.Integration_id
		and blh.src_system_name = ship_acc_leg.src_system_name
	left outer join  @DB_LEVEL@_edm_gold.d_legacy_customer_account bill_acc_leg
		on blh.legacy_bill_to_customer_account_id = bill_acc_leg.Integration_id
		and blh.src_system_name = bill_acc_leg.src_system_name
	left outer join  @DB_LEVEL@_edm_gold.d_legacy_customer_account end_acc_leg
		on blh.legacy_end_customer_account_id = end_acc_leg.Integration_id
		and blh.src_system_name = end_acc_leg.src_system_name
	left outer join  @DB_LEVEL@_edm_gold.d_legacy_customer_account sold_acc_leg
		on blh.legacy_sold_to_customer_account_id = sold_acc_leg.Integration_id
		and blh.src_system_name = sold_acc_leg.src_system_name		

/*New customer hub changes */				
	left outer join  @DB_LEVEL@_mdm_hub_gold.d_customer_address_v ship_loc
		on blh.legacy_ship_to_customer_loc_id = ship_loc.integration_id_join
		and blh.src_system_name = ship_loc.src_system_name_join	
	left outer join  @DB_LEVEL@_mdm_hub_gold.d_customer_address_v bill_loc
		on blh.legacy_bill_to_customer_loc_id = bill_loc.integration_id_join
		and blh.src_system_name = bill_loc.src_system_name_join	
	left outer join  @DB_LEVEL@_mdm_hub_gold.d_customer_address_v end_loc
		on blh.legacy_end_customer_loc_id = end_loc.integration_id_join
		and blh.src_system_name = end_loc.src_system_name_join	
	left outer join @DB_LEVEL@_mdm_hub_gold.d_customer_address_v sold_loc
		on blh.legacy_sold_to_customer_loc_id = sold_loc.integration_id_join
		and blh.src_system_name = sold_loc.src_system_name_join		

	left outer join  @DB_LEVEL@_edm_gold.d_legacy_customer_loc ship_loc_leg
		on blh.legacy_ship_to_customer_loc_id = ship_loc_leg.Integration_id
		and blh.src_system_name = ship_loc_leg.src_system_name
	left outer join @DB_LEVEL@_edm_gold.d_legacy_customer_loc bill_loc_leg
		on blh.legacy_bill_to_customer_loc_id = bill_loc_leg.Integration_id
		and blh.src_system_name = bill_loc_leg.src_system_name
	left outer join  @DB_LEVEL@_edm_gold.d_legacy_customer_loc end_loc_leg
		on blh.legacy_end_customer_loc_id = end_loc_leg.Integration_id
		and blh.src_system_name = end_loc_leg.src_system_name
	left outer join @DB_LEVEL@_edm_gold.d_legacy_customer_loc sold_loc_leg
		on blh.legacy_sold_to_customer_loc_id = sold_loc_leg.Integration_id
		and blh.src_system_name = sold_loc_leg.src_system_name
    		--VR 03092022 Changes added to fix plant null for recordsource ORACLEERPCLOUD
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
				  blh.inventory_org_wid = oraerp_plant.row_wid  
				 AND  blh.src_system_name = oraerp_plant.src_system_name
				 AND  oraerp_plant.plant_type ='numeric'
		LEFT OUTER JOIN @DB_LEVEL@_edm_gold.d_product_catalog cat ON
			blh.product_wid = cat.product_wid
		LEFT OUTER JOIN @DB_LEVEL@_edm_gold.d_sales_rep rep ON
			blh.sales_rep_wid = rep.row_wid
	    left outer join (select distinct salesrepnumber,region from  @DB_LEVEL@_cld_cpq_silver.cpq_dt_salesrepdetails) cpqrep
            on  rep.sales_rep_num = cpqrep.salesrepnumber
            and cpqrep.region = 'CANADA'
		LEFT OUTER JOIN @DB_LEVEL@_edm_gold.d_product prod ON
			blh.product_wid = prod.row_wid
			and nvl(prod.product_num,'**') not in ('CSHMVECTD','CSHMVEDTC','REBATE-ACP','REBATE-AVCT','VATWHND','BACKCHARGE-MRKTG') 
			---and condition Added by pooja for SKU credit memo exclude changes SO--699
			left  outer join @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_sku sm on
			        prod.product_num = sm.sm_sku
	     	left outer join @DB_LEVEL@_edm_other_src_silver.ref_accountsflag_sku af on
		    	    prod.product_num = af.af_sku
					
		left outer join (select * from @DB_LEVEL@_edm_other_src_silver.GPHSKUAssignments where record_source = 'OPPORTUNITIES') gph_sku on
        COALESCE(prod.product_num, pm.projectcode, blh.product_num )= gph_sku.sku 		
		and nvl(gph_sku.sku,'**') not in ('CSHMVECTD','CSHMVEDTC','REBATE-ACP','REBATE-AVCT','VATWHND','BACKCHARGE-MRKTG')
		---and condition Added by pooja for SKU credit memo exclude changes SO--699			
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
				on blh.src_system_name = sku_lu.recordsource
				and NVL(blh.product_num,prod.product_num) = sku_lu.sku
				/* New logic added to override GPH fields for list of SKU  ends*/		
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
			trunc(blh.order_create_dt,
			'dd') >= monthly_exch_rate.eff_from_dtm
			AND trunc(blh.order_create_dt,
			'dd') <= monthly_exch_rate.eff_to_dtm
			AND monthly_exch_rate.from_currency = blh.lcl_currency_cd
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
			trunc(blh.order_create_dt,
			'dd') >= fixed_rate.eff_from_dtm
			AND trunc(blh.order_create_dt,
			'dd') <= fixed_rate.eff_to_dtm
			AND fixed_rate.from_currency = blh.lcl_currency_cd
		LEFT OUTER JOIN (select distinct org_id,inv_org_flg,org_cd from @DB_LEVEL@_edm_gold.d_org where src_system_name ='ALICE') dorg ON
					dorg.org_id = blh.legacy_inventory_org_id
					and blh.src_system_name = 'ALICE'
					and dorg.inv_org_flg = 'Y'
	/* 	LEFT OUTER JOIN (
			SELECT
				SHIP.INVOICE_NBR,
				SHIP.order_nbr,
				SHIP.shipment_nbr,
				ship.origin_date,
				ship_l.shipment_plant,
				SHIP.PRO_NBR_01,
				SHIP.vehicle_nbr,
				SHIP_L.SUM_FROZEN
			FROM
				@DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_shipment ship
			INNER JOIN (
				SELECT
					order_nbr,
					shipment_nbr,
					max(origin_date) origin_date,
					max(shipment_plant) shipment_plant,
					sum(ACTUAL_TOTAL_FROZEN_STD) SUM_FROZEN
				FROM
					@DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_shipment_line
				GROUP BY
					order_nbr,
					shipment_nbr) ship_l ON
				SHIP.order_nbr = SHIP_L.order_nbr
				AND SHIP.shipment_nbr = SHIP_L.shipment_nbr
				AND ship_l.origin_date = ship.origin_date
				AND ship_l.origin_date > '2009-12-31'
				AND ship.origin_date > '2009-12-31') shipd ON
			inv.invoice_num = shipd.INVOICE_NBR */
		--VR 03092022 Changes added to fix plant null for recordsource ORACLEERPCLOUD
		LEFT OUTER JOIN (
				SELECT
					SHIP.order_nbr,
					SHIP.shipment_nbr,
					SHIP.PRO_NBR_01,
					ship.origin_date,
					SHIP_L.shipment_plant plant,
					SHIP.vehicle_nbr,
					SHIP_L.marketing_part_nbr,
					SHIP_L.SUM_FROZEN
				FROM
					@DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_shipment ship
				INNER JOIN (
					SELECT
						L1.order_nbr,
						L1.shipment_nbr,
						L1.shipment_line_nbr,
						L1.origin_date ,
						L1.shipment_plant,
						L1.marketing_part_nbr,
						sum(L1.ACTUAL_TOTAL_FROZEN_STD) SUM_FROZEN
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
						AND L1.shipment_line_nbr = L2.M_ship_line_nbr GROUP BY L1.order_nbr,
						L1.shipment_nbr,
						L1.shipment_line_nbr,
						L1.origin_date ,
						L1.shipment_plant,
						L1.marketing_part_nbr) SHIP_L ON
					SHIP.order_nbr = SHIP_L.order_nbr
					AND SHIP.shipment_nbr = SHIP_L.shipment_nbr
					AND SHIP_L.origin_date = ship.origin_date
					AND SHIP_L.origin_date > '2009-12-31'
					AND ship.origin_date > '2009-12-31') shipd ON
				blh.order_num = SHIPD.order_nbr 
				AND (prod.product_desc = SHIPD.marketing_part_nbr or blh.product_num = SHIPD.marketing_part_nbr)		
			
		/* LEFT OUTER JOIN @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_plant les_plant ON
			les_plant.plant_code = shipd.shipment_plant */
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
					@DB_LEVEL@_edm_other_src_silver.customer_data db
				WHERE
					db.customertype = 'BillTo') p
			WHERE
				p.rno = 1) bill_cust ON
			nvl(bill_acc.customer_name_txt,bill_acc_leg.account_name ) = bill_cust.customername
			AND nvl(bill_acc.src_system_name_join,bill_acc_leg.src_system_name) = bill_cust.recordsource
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
			AND nvl(end_acc.src_system_name_join ,end_acc_leg.src_system_name ) = end_cust.recordsource
			AND end_cust.customertype = 'End'
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
				p.rno = 1) ship_cust ON
			nvl(ship_acc.customer_name_txt ,ship_acc_leg.account_name) = ship_cust.customername
			AND nvl(ship_acc.src_system_name_join,ship_acc_leg.src_system_name) = ship_cust.recordsource
			AND ship_cust.customertype = 'ShipTo'
		
		/*Customer tables for LES records*/
			left outer join
			(SELECT distinct a.order_nbr,b.customer_po_nbr,b.bill_to_business,c.business_name,c.business_nbr 
			FROM @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_bookings a 
			join @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_sales_order b on a.order_nbr=b.order_nbr
			join @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_business c on b.bill_to_business=c.business_nbr
			) les_bill 
			on blh.order_num= les_bill.order_nbr
			and blh.customer_po_num = les_bill.customer_po_nbr
			and blh.src_system_name ='LES' 
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
			on blh.order_num= les_ship.order_nbr
			and blh.customer_po_num = les_ship.customer_po_nbr
			and blh.src_system_name ='LES'
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
			on blh.order_num=les_end.order_nbr
			and blh.customer_po_num = les_end.customer_po_nbr
			and blh.src_system_name ='LES'    --redundant
			
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
			on blh.order_num=les_sold.order_nbr
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
			
		left outer join @DB_LEVEL@_edm_other_src_silver.ref_customerparentaccounts cust on
			        end_cust.parentaccount = cust.customer
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
ON nvl(bill_acc.customer_number,bill_acc_leg.account_num) = XX.customer_number and nvl(XX.customer_number,'N') != 'N' and blh.src_system_name = xx.src_system_name_join
left Join  @DB_LEVEL@_edm_other_src_silver.Varsdatabase_Sellingmotion h on 
nvl(bill_acc.customer_number,bill_acc_leg.account_num) = h.Business_Nbr
			
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
			blh.sales_office_name = roi.office_name
		LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.usa_pos_cd_lst us ON
			nvl(ship_loc.site_postal_code_txt,ship_loc_leg.customer_postal_cd) = CAST(us.zip_code AS STRING)
		LEFT OUTER JOIN (SELECT Cast(order_number AS STRING) AS order_number,
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
                       --and order_number=1046687
                       ) fix
             ON
             blh.order_num = fix.order_number AND 
             (blh.product_num = fix.ordered_item OR prod.product_num = fix.ordered_item) AND
             blh.src_system_name = 'ALICE' AND
             blh.order_line_num = Cast(fix.line_number AS STRING)
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
		) b 
		left outer join (select distinct customer_sub_class,customer_name_txt from @DB_LEVEL@_mdm_hub_gold.d_customer_header
		where customer_class_code_txt = 'GLOBAL STRATEGIC ACCOUNT') dc_h on
			  upper(aop_account_name) = upper(dc_h.customer_name_txt)
		)dt )tt )st)s1;
			
Invalidate metadata @DB_LEVEL@_na_cld_osc_gold.backlog_consolidated_data_na;