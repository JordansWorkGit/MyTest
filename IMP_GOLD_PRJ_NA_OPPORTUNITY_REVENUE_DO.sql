1.Invalidate_metadata

--RELEASE DATE : 06/09/2022

invalidate metadata @DB_LEVEL@_na_cld_osc_gold.opportunity_revenue_na;
invalidate metadata @DB_LEVEL@_edm_gold.f_opportunity;
invalidate metadata @DB_LEVEL@_edm_gold.f_opportunity_extn;
invalidate metadata @DB_LEVEL@_cld_osc_silver.gpod_opportunity_profile;
invalidate metadata @DB_LEVEL@_edm_gold.d_oppty_business_size;
invalidate metadata @DB_LEVEL@_edm_gold.d_product;
invalidate metadata @DB_LEVEL@_edm_gold.d_product_catalog;
invalidate metadata @DB_LEVEL@_cld_cpq_silver.cpq_quote_headers;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.export_target_multiplier;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.customer_data;
invalidate metadata @DB_LEVEL@_mdm_hub_gold.d_customer_header_v;
invalidate metadata @DB_LEVEL@_edm_gold.d_legacy_customer_account;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_sku;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.ref_accountsflag_sku;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.ref_customerparentaccounts;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_accounts;
invalidate metadata @DB_LEVEL@_impartner_silver.account;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.varsdatabase_sellingmotion; 
invalidate metadata @DB_LEVEL@_cld_osc_gold.osc_opportunities_revenues_v_history;
invalidate metadata @DB_LEVEL@_cld_cpq_silver.cpq_quote_lines;


2.populate_opportunity_revenue_na

Insert overwrite @DB_LEVEL@_na_cld_osc_gold.opportunity_revenue_na 
SELECT DISTINCT 
	Account_Name,
	bsid,
	Buy_American_Act,
	Change_From_Snapshot,
	ChannelFlag,
	CloseDateFlag,
	upper(COE),
	Competitor,
	Confidence,
	Confidence_Formatted,
	Create_YearMonth,
	CreateDatePlausibilityFlag,
	upper(Customer),
	upper(Customer_Parent),
	currency_cd,
	CycleTime_Days,
	Deal_Registration_Flag,
	datalastrefreshed,
	Deal_Registration_number,
	Division,
	upper(EndCustomerCustomerType1),
	upper(EndCustomerIndustry1),
	upper(EndCustomerParentAccount),
	upper(EndCustomerStandardizedName),
	EndUserAccount,
	ExpClsDt3mFlag,
	ExpClsDt6mFlag,
	upper(GBU),
	GSC_Flag,
	GuidanceToolUsed,
	IncludeInCount,
	Last_Update_Date,
	CASE
		WHEN Change_From_Snapshot = 'No Change' THEN NULL
		ELSE last_update_date_old
	END Change_Tracking_Date,
	LastUpdateDateFlag ,
	upper(level6),
	upper(LOB),
	LVO_Flag,
	ModelNumber,
	REVENUEEFFECTIVEDATE,
	Multiplier,
	MultiplierGuidanceAccountPotential,
	MultiplierGuidanceCustomerSize,
	Multiplyier_Guidence_Date,
	MultiplierGuidanceOriginal,
	MultiplierGuidanceTarget,
	MultiplierInTolerance,
	MultiplierToleranceTarget,
	upper(New_Customer_Name),
	OPPORTUNITIESCREATEDBY,
	Oppty_Create_Date,
	Oppty_Close_Date,
	Oppty_Created_by_Week,
	oppty_update_date,
	OPPORTUNITIESNAME,
	OPPORTUNITIESSTATUSCD,
	Opportunity_Create_Year,
	OpportunityDetailsNextSteps,
    opportunitynumber,
	OPTYID,
	OWNERRESOURCENAME,
	ParentAccount,
	Partner_Web_Link,
	PartnerWebFolderID,
	PARTYUNIQUENAME,
	CASE
		WHEN Change_From_Snapshot != 'No Change' THEN product_required_date_old
		ELSE NULL
	END PreviousSnapshotProductRequiredDate,
	Primary_Partner_Name,
	PRIMARYREVENUEEFFECTIVEDATE,
	ProdHier_ITEMNUMBER,
	ProdHier_LVL0PRODGROUPNAME,
	ProdHier_LVL1PRODGROUPNAME,
	upper(productcategory),
	upper(productfamily),
	ProductForecastingGrouping,
	ProductRequiredDate,
	NVL(quoteid,PartnerWebFolderID) as quoteid,
	ReasonCodeLost,
	ReasonLostComments,
	ReasonCodeWon,
	ReasonWonComments,
	ReasonCodeCancelled,
	ReasonCancelledComments,
	Region,
	Reseller_Cleaned,
	Rev_Effective_Date,
	REVENUEPRODUCTID,
	REVENUEQTY,
	REVENUEQTY_Weighted,
	REVENUEREVNAMT,
	revenerevnamt_lcl,
	REVENUEREVNAMT_Weighted,
	REVENUEREVNAMT_Won,
	RSM,
	Sales_Cloud_Opportunity_Link,
	Sales_Office,
	SalesOfficeName,
	SalesOfficeNumber,
	SalesOfficePrincipalEmail,
	SalesRepEmail,
	SalesStageName,
	SalesStageNameConsolidated,
	Sales_Stage_Order,
	Selling_Motion,
	Site_ID,
	SizeCategory,
	sold_through,
	SourceCampaign,
	StandardizedName,
	Territory,
	ToolUsedMultiplier,
	Weighting_Group,
	YearMonth,
    effective_user() as w_insert_by ,
    cast(now() as string) as w_insert_dtm ,
    'SalesOps' as src_system_name,
    resellerbranchnumber,
	resellerbranchname,
	campaign_id, --VR 03282022 Enhancement request new fields added
	campaign_name, --VR 03282022 Enhancement request new fields added
	strategic_campaign, --VR 03282022 Enhancement request new fields added   
    oppty_line_num,  --VR 05052022 SO-653 line number addition 
	--SO-621 new attributes addition start
	upper(BillToCustomerName),
	upper(EndCustomerName),
	upper(ShipToCustomerName),
	upper(SoldToCustomerName),
	upper(BillToCustomerParentAccount),
	upper(ShipToCustomerParentAccount),
	upper(SoldToCustomerParentAccount),
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
	upper(BilltoToCustomerIndustry1),
	upper(ShipToCustomerIndustry1),
	upper(SoldToCustomerIndustry1),
	upper(BillToCustomerIndustry3),
	upper(EndCustomerIndustry3),
	upper(ShipToCustomerIndustry3),
	upper(SoldToCustomerIndustry3),
	upper(BillToCustomerVertical),
	upper(EndCustomerVertical),
	upper(ShipToCustomerVertical),
	upper(SoldToCustomerVertical),
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
	upper(EndCustomerState),
	upper(ShipToCustomerState),
	upper(SoldToCustomerState),
	upper(BillToCustomerProvince),
	upper(EndCustomerProvince),
	upper(ShipToCustomerProvince),
	upper(SoldToCustomerProvince),
	upper(BillToCustomerCountry),
	upper(EndCustomerCountry),
	upper(ShipToCustomerCountry),
	upper(SoldToCustomerCountry),
	BillToCustomerPostalCode,
	EndCustomerPostalCode,
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
	--SO-621 new attributes addition ends
	--so-661 new attributes addition starts
	upper(BillToAccountType),
	upper(EndAccountType),
	upper(ShipToAccountType),
	upper(SoldToAccountType),
	--so-661 new attributes addition ends
	upper(BillToServicesMajorAcc), --so-665 new attributes addition starts
	upper(EndServicesMajorAcc),
	upper(ShipToServicesMajorAcc),
	upper(SoldToServicesMajorAcc),--so-665 new attributes addition ends
	OEM_FLAG,
	account_type_aop,
	upper(aop_account_name),
	upper(BillToCustomerSubClass), --so-728 new attributes addition starts
	upper(EndCustomerSubClass),
	upper(ShipToCustomerSubClass),
	upper(SoldToCustomerSubClass), --so-728 new attributes addition ends
	Product_Number,
	cpq_quote_status,
	upper(aop_customer_sub_class)
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
WHEN temp_motion2 = 'FIELD SALES' AND (upper(lob) != 'DC POWER' or (nvl(lob,'N') = 'N'))
AND ((upper(channelflag) = 'Y'
OR upper(billtocustomerpartnerclasscode) in ('SOLUTIONS PARTNER','AUTHORIZED DISTRIBUTOR')
OR upper(oem_flag) = 'DELL'
OR upper(level6) LIKE '%SECURE%'))THEN 'CHANNEL'
ELSE temp_motion2
END selling_motion --Modified by Hari SO-726
	
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
WHEN upper(productcategory) like '%SECURE%' THEN 'FEDERAL'
ELSE 'OTHER'
END  account_type_aop1,

CASE
	WHEN upper(OPPORTUNITIESNAME) LIKE '%ACCU TECH%'
	OR upper(OPPORTUNITIESNAME) LIKE '%ANIXTER%'
	OR upper(OPPORTUNITIESNAME) LIKE '%CDW%'
	OR upper(OPPORTUNITIESNAME) LIKE '%EPLUS TECH%'
	OR upper(OPPORTUNITIESNAME) LIKE '%ACCU TECH%'
	OR upper(OPPORTUNITIESNAME) LIKE '%GRAYBAR%'
	OR upper(OPPORTUNITIESNAME) LIKE '%INSIGHT DIRECT%'
	OR upper(OPPORTUNITIESNAME) LIKE '%PC MALL%'
	OR upper(OPPORTUNITIESNAME) LIKE '%PRESIDIO NETWORK%'
	OR upper(OPPORTUNITIESNAME) LIKE '%SHI INTERNATIONAL%'
	OR upper(OPPORTUNITIESNAME) LIKE '%WESCO%'
	OR upper(OPPORTUNITIESNAME) LIKE '%WORLD WIDE TECH%'
	OR upper(OPPORTUNITIESNAME) LIKE '%ZONES INC%'
	OR upper(Customer) LIKE '%TECH DATA%'
	OR upper(Customer) LIKE '%INGRAM MICRO%'
	OR upper(Customer) LIKE '%SYNNEX%'
	OR LEFT(upper(Customer),8) LIKE '%D AND H%'
	OR LEFT(upper(Customer),6) LIKE '%D & H%'
	OR LENGTH(Primary_Partner_Name) > 1 THEN 'y'
	ELSE 'n'
END ChannelFlag,	--Modified by Hari SO-726

CASE
WHEN temp_motion = 'FIELD SALES' AND ((upper(endcustomerclasscode) = 'GLOBAL STRATEGIC ACCOUNT' OR upper(billtocustomerclasscode) = 'GLOBAL STRATEGIC ACCOUNT')
OR upper(oem_flag) IN ('LENOVO', 'IBM', 'HPE')) THEN 'ACCOUNT'
ELSE temp_motion
END temp_motion2  --Modified by Hari SO-726
	
FROM
	(
	SELECT
		*,
		CASE
			WHEN salesstage_old != SalesStageName
			AND SalesStageName LIKE '%Canceled%' THEN 'Opportunity Cancelled'
			WHEN salesstage_old != SalesStageName
			AND SalesStageName LIKE '%Lost%' THEN 'Opportunity Lost'
			WHEN product_required_date_old != ProductRequiredDate
			AND ((extract(ProductRequiredDate,
			'year') = extract(product_required_date_old,
			'year')
			AND int_months_between(ProductRequiredDate,
			product_required_date_old) > 0)
			OR CAST(datediff(ProductRequiredDate,
			product_required_date_old) / 365 AS INT) > 0) THEN 'Opportunity Moved Out'
			WHEN product_required_date_old != ProductRequiredDate
			AND ((extract(ProductRequiredDate,
			'year') = extract(product_required_date_old,
			'year')
			AND int_months_between(ProductRequiredDate,
			product_required_date_old) < 0)
			OR CAST(datediff(ProductRequiredDate,
			product_required_date_old) / 365 AS INT) < 0) THEN 'Opportunity Moved In'
			WHEN salesstage_old != SalesStageName
			AND SalesStageName LIKE '%Won%' THEN 'Opportunity Won'
			WHEN abs(round(revenue_amount_old, 1) - round(REVENUEREVNAMT, 1)) > 1
			AND REVENUEREVNAMT > revenue_amount_old THEN 'Opportunity Revenue Increased'
			WHEN abs(round(revenue_amount_old, 1) - round(REVENUEREVNAMT, 1)) > 1
			AND REVENUEREVNAMT < revenue_amount_old THEN 'Opportunity Revenue Decreased'
			ELSE 'No Change'
		END Change_From_Snapshot,
		datediff(REVENUEEFFECTIVEDATE,Oppty_Create_Date) CycleTime_Days,
		CASE
			WHEN SalesStageName = 'Closed/Won' THEN REVENUEREVNAMT
			ELSE NULL
		END REVENUEREVNAMT_Won,
		
		CASE
			WHEN customer_parent IN (ref_customer) THEN 'Y'
			WHEN EndCustomerParentAccount IN (ref_customer) THEN 'Y'
			WHEN ModelNumber IN (af_sku) THEN 'Y'
			ELSE 'N'
		END accounts_flag,
		CASE
		WHEN UPPER(Division) like '%LATAM%' THEN 'LATAM'
		WHEN upper(billtoaccounttype) = 'INTERNAL' AND upper(billtocustomercountry) = 'UNITED STATES' THEN 'INTERCOMPANY USA'
		WHEN upper(billtoaccounttype) = 'INTERNAL' AND upper(billtocustomercountry) = 'CANADA' THEN 'INTERCOMPANY CANADA'
		WHEN upper(billtoaccounttype) = 'INTERNAL' AND ((upper(billtocustomercountry) not in ('UNITED STATES', 'CANADA')) OR (nvl(billtocustomercountry,'N') = 'N'))  THEN 'INTERCOMPANY OTHER'
		ELSE 'FIELD SALES'
		END temp_motion, --Modified by Hari SO-726
	CASE
	    WHEN aop_account_name = 'DELL' THEN 'NULL'
		WHEN nvl(dc_h.customer_sub_class, 'N') != 'N' THEN dc_h.customer_sub_class
		WHEN nvl(X.sm_sku, 'N') != 'N'  THEN 'OEM'
		--ELSE 'NULL'
	END aop_customer_sub_class
	FROM
		(
		SELECT
		    d.account_name Account_Name,
			estimated_close_dt Oppty_Close_Date,
			--nvl(upper(gph.Catalog_lvl_desc_3),gph_sku.coe) COE,
			coalesce(cpq_gph.catalog_lvl_desc_3,gph.Catalog_lvl_desc_3,gph_sku.coe) COE, -- adding cpq gph as primary (change of logic)
			competitor_name Competitor,
			oppty_confidence Confidence,
			initcap(oppty_confidence) Confidence_Formatted,
			oppty_created_dt Create_YearMonth,
			'' CreateDatePlausibilityFlag,
			upper(mdm.customername) Customer,
			upper(mdm.parentaccount) Customer_Parent,
			'' Deal_Registration_Flag,
			a.w_insert_dtm datalastrefreshed,
			reg_id Deal_Registration_number,
			oppty_subregion Division,
			upper(b.account_type) EndCustomerCustomerType1,
			--mdm.industry EndCustomerIndustry1,
			--upper(nvl(coalesce(bill_acc.industry_classification_1_txt, bill_acc.industry_classification_2_txt, bill_acc.industry_classification_3_txt),mdm.industry)) EndCustomerIndustry1,
			upper(nvl(coalesce(end_acc.industry_classification_1_txt, end_acc.industry_classification_2_txt),end_mdm.industry)) EndCustomerIndustry1,--mapping changed for EndCustomerIndustry1
			--mdm.parentaccount EndCustomerParentAccount,
			upper(nvl(end_acc.ultimate_parent_txt,end_mdm.parentaccount)) EndCustomerParentAccount,
			upper(end_mdm.standardizedname) EndCustomerStandardizedName,
			upper(end_mdm.customername) EndUserAccount,
			'' ExpClsDt3mFlag,
			'' ExpClsDt6mFlag,
			--nvl(upper(gph.Catalog_lvl_desc_1),gph_sku.gbu) GBU,
			coalesce(cpq_gph.catalog_lvl_desc_1,gph.Catalog_lvl_desc_1,gph_sku.gbu) GBU, -- adding cpq gph as primary (change of logic)
			'' GSC_Flag,
			'' GuidanceToolUsed,
			'' IncludeInCount,
			a.src_update_dtm Last_Update_Date,
			'' LastUpdateDateFlag ,
			--nvl(upper(gph.Catalog_lvl_desc_6),gph_sku.level_6) level6,
			coalesce(cpq_gph.catalog_lvl_desc_6,gph.Catalog_lvl_desc_6,gph_sku.level_6) level6, -- adding cpq gph as primary (change of logic)
			--nvl(upper(gph.Catalog_lvl_desc_2),gph_sku.lob) LOB,
			coalesce(cpq_gph.catalog_lvl_desc_2,gph.Catalog_lvl_desc_2,gph_sku.lob) LOB, -- adding cpq gph as primary (change of logic)
			'' LVO_Flag,
			nvl(b.model_number,gph_sku.sku) ModelNumber,
			revenue_effective_dtm REVENUEEFFECTIVEDATE,
			oppty_multiplier Multiplier,
			'' MultiplierGuidanceAccountPotential,
			'' MultiplierGuidanceCustomerSize,
			multp.create_date Multiplyier_Guidence_Date,
			'' MultiplierGuidanceOriginal,
			multp.targetmultiplier MultiplierGuidanceTarget,
			'' MultiplierInTolerance,
			'' MultiplierToleranceTarget,
			'' New_Customer_Name,
			b.opty_created_by OPPORTUNITIESCREATEDBY,
			oppty_created_dt Oppty_Create_Date,
			oppty_created_dt Oppty_Created_by_Week,
			a.src_update_dtm oppty_update_date,
			oppty_name OPPORTUNITIESNAME,
			oppty_status_cod OPPORTUNITIESSTATUSCD,
			oppty_created_dt Opportunity_Create_Year,
			b.opp_details_next_step OpportunityDetailsNextSteps,
            oppty_num opportunitynumber,
			oppty_id OPTYID,
			oppty_owner_name OWNERRESOURCENAME,
			mdm.parentaccount ParentAccount,
			concat('https://pilot.liebert.com/QOM/SystemXQOM/FolderView/',b.pw_folder_id) Partner_Web_Link,
			b.pw_folder_id PartnerWebFolderID,
			--cpqh.transactionid_t quoteid,
			concat('CPQ-',trim(split_part(op.quote_id, '-', 2))) quoteid, --VR 03112022 mapping changes to fix correct cpqid
			cpqh.bs_id 	bsid,
			b.account PARTYUNIQUENAME,
			primary_partner_name Primary_Partner_Name,
			primary_revenue_effective_dtm PRIMARYREVENUEEFFECTIVEDATE,
			'' ProdHier_ITEMNUMBER,
			'' ProdHier_LVL0PRODGROUPNAME,
			'' ProdHier_LVL1PRODGROUPNAME,
			--nvl(upper(gph.Catalog_lvl_desc_4),gph_sku.product_category) productcategory,
			coalesce(cpq_gph.catalog_lvl_desc_4,gph.Catalog_lvl_desc_4,gph_sku.product_category) productcategory, -- adding cpq gph as primary (change of logic)
			--nvl(upper(gph.Catalog_lvl_desc_5),gph_sku.product_family) productfamily,
			coalesce(cpq_gph.catalog_lvl_desc_5,gph.Catalog_lvl_desc_5,gph_sku.product_family) productfamily,-- adding cpq gph as primary (change of logic)
			'' ProductForecastingGrouping,
			customer_request_dt ProductRequiredDate,
			reason_won_lost_cd ReasonCodeLost,
			Reasons_Lost_Comments ReasonLostComments,
			reason_won_lost_cd ReasonCodeWon,
			reasons_won_comments ReasonWonComments,
			b.reasons_cancelled_cd ReasonCodeCancelled,
			b.reasons_cancelled_comments ReasonCancelledComments,
			b.oppty_region Region,
			'' Reseller_Cleaned,
			revenue_effective_dtm Rev_Effective_Date,
			b.inventory_item_id REVENUEPRODUCTID,
			oppty_qty REVENUEQTY,
			'' REVENUEQTY_Weighted,
			oppty_usd_amt REVENUEREVNAMT,
			'' REVENUEREVNAMT_Weighted,
			'' RSM,
			concat('https://egup.fa.us2.oraclecloud.com/customer/faces/CrmFusionHome?cardToOpen=MOO_OPPTYMGMTOPPORTUNITIES_CRM_CARD&tabToOpen=MOO_OPPTYMGMTOPPORTUNITIES_CRM&TF_skipToEditOptyId=', b.oppty_id) Sales_Cloud_Opportunity_Link,
			a.sales_office_name Sales_Office,
			sales_office_nm SalesOfficeName,
			sales_office_num SalesOfficeNumber,
			sales_office_p_email SalesOfficePrincipalEmail,
			sales_rep_email SalesRepEmail,
			oppty_sales_stage SalesStageName,
			oppty_status_cd SalesStageNameConsolidated,
			d.sales_stage_stg_order Sales_Stage_Order,
			siteid_c Site_ID,
			c.oppty_business_size_cd SizeCategory,
			oppty_sold_through_desc sold_through,
			oppty_source SourceCampaign,
			mdm.standardizedname StandardizedName,
			territory Territory,
			'' ToolUsedMultiplier,
			'' Weighting_Group,
			estimated_close_dt YearMonth,
			d.sales_stage salesstage_old,
			d.product_required_date product_required_date_old,
			d.revenue_amount revenue_amount_old,
			d.last_update_date last_update_date_old,
			cust_ref.customer ref_customer,
			sm.sm_sku sm_sku,
			sm.sm_account_flag sm_account_flag,
			sa.acct_name acct_name,
			af.af_sku af_sku,
			'' SalesDistrictName,
			'' RecordSource,
			'' Plant,
			op.buy_american_act as Buy_American_Act,
			a.estimated_close_dt ,
			a.currency_cd currency_cd ,
			a.oppty_lcl_amt revenerevnamt_lcl,
			case		
				when (a.estimated_close_dt < date_add(now(),-day(now())+ 1)	and a.oppty_status_cd in ('Lost', 'Won', 'WON', 'OPEN', 'Open', 'No sale', 'No-sales')) then 'Aged'
				when (a.estimated_close_dt> date_add(now(),-day(now())+ 1)  and a.estimated_close_dt <= last_day(now())	and a.oppty_status_cd in ('Lost', 'Won', 'WON', 'OPEN', 'Open', 'No sale', 'No-sales')) then 'Current Month'
				when (a.estimated_close_dt> last_day(now()) and a.estimated_close_dt<MONTHS_ADD(date_add(now(),-day(now())+ 1),2) and a.oppty_status_cd in ('Lost', 'Won', 'WON', 'OPEN', 'Open', 'No sale', 'No-sales')) then 'Current Month +1'
				when (a.estimated_close_dt> MONTHS_ADD(last_day(now()),1) and a.estimated_close_dt<MONTHS_ADD(date_add(now(),-day(now())+ 1),3) and a.oppty_status_cd in ('Lost', 'Won', 'WON', 'OPEN', 'Open', 'No sale', 'No-sales')) then 'Current Month + 2'
				when (a.estimated_close_dt is null or  a.estimated_close_dt >MONTHS_ADD(last_day(now()),2) and a.oppty_status_cd in ('Lost', 'Won', 'WON', 'OPEN', 'Open', 'No sale', 'No-sales')) then 'Future'
			ELSE ''
		end CloseDateFlag,
		CASE 
            WHEN nvl(XX.resellerbranchnumber, 'N') != 'N' THEN XX.resellerbranchnumber
            WHEN nvl(h.branch_office_nbr, 'N') != 'N' THEN h.branch_office_nbr
            ELSE NULL
            END resellerbranchnumber,
            CASE 
            WHEN nvl(XX.resellerbranchname, 'N') != 'N' THEN xx.resellerbranchname
            --WHEN upper(RecordSource) like '%CDW%' THEN 'CDW LOGISTICS'
           --WHEN upper(RecordSource) like '%GRAY%' THEN 'GRAYBAR ELECTRIC'
            --WHEN upper(RecordSource) like '%CONNECTION%' THEN 'CONNECTION'
            WHEN nvl(h.business_name, 'N') != 'N' THEN h.business_name
            ELSE NULL
            END resellerbranchname,
			sa.flag flag,
			sb.flag as flag1,
			h.branch_office_nbr as branch_office_nbr,
			leads.campaign_id campaign_id, --VR 03282022 Enhancement request new fields added
			leads.campaign_name campaign_name, --VR 03282022 Enhancement request new fields added
			leads.strategic_campaign strategic_campaign,--VR 03282022 Enhancement request new fields added
            a.oppty_line_num oppty_line_num,	--VR 05052022 SO-653 line number addition 		
			 --SO-621 new fields addition starts
			bill_acc.customer_name_txt BillToCustomerName,
			end_acc.customer_name_txt EndCustomerName,
			bill_acc.customer_name_txt ShipToCustomerName,
			bill_acc.customer_name_txt SoldToCustomerName,
			nvl(bill_acc.ultimate_parent_txt,mdm.parentaccount) BillToCustomerParentAccount,
			nvl(bill_acc.ultimate_parent_txt,mdm.parentaccount) ShipToCustomerParentAccount,
			nvl(bill_acc.ultimate_parent_txt,mdm.parentaccount)  SoldToCustomerParentAccount,
			bill_acc.customer_class_code_txt BillToCustomerClassCode,
			end_acc.customer_class_code_txt EndCustomerClassCode,
			bill_acc.customer_class_code_txt ShipToCustomerClassCode,
			bill_acc.customer_class_code_txt SoldToCustomerClassCode,
			bill_acc.partner_class_code_txt BillToCustomerPartnerClassCode,
			end_acc.partner_class_code_txt EndCustomerPartnerClassCode,
			bill_acc.partner_class_code_txt ShipToCustomerPartnerClassCode,
			bill_acc.partner_class_code_txt SoldToCustomerPartnerClassCode,
			bill_acc.oracle_cloud_registry_id BillToOracleRegistryID, 
			end_acc.oracle_cloud_registry_id EndOracleRegistryID,
			bill_acc.oracle_cloud_registry_id ShipToOracleRegistryID,
			bill_acc.oracle_cloud_registry_id SoldToOracleRegistryID,
			upper(nvl(coalesce(bill_acc.industry_classification_1_txt, bill_acc.industry_classification_2_txt),mdm.industry)) BilltoToCustomerIndustry1,
			upper(nvl(coalesce(bill_acc.industry_classification_1_txt, bill_acc.industry_classification_2_txt),mdm.industry)) ShipToCustomerIndustry1,
			upper(nvl(coalesce(bill_acc.industry_classification_1_txt, bill_acc.industry_classification_2_txt),mdm.industry)) SoldToCustomerIndustry1,
			bill_acc.industry_classification_3_txt BillToCustomerIndustry3,
			end_acc.industry_classification_3_txt EndCustomerIndustry3,
			bill_acc.industry_classification_3_txt ShipToCustomerIndustry3,
			bill_acc.industry_classification_3_txt SoldToCustomerIndustry3,
			bill_acc.market_vertical_txt BillToCustomerVertical,
	        end_acc.market_vertical_txt EndCustomerVertical,
	        bill_acc.market_vertical_txt ShipToCustomerVertical,
			bill_acc.market_vertical_txt SoldToCustomerVertical,
			bill_acc.market_sub_vertical_txt BillToCustomerSubVertical,
	        end_acc.market_sub_vertical_txt EndCustomerSubVertical,
	        bill_acc.market_sub_vertical_txt ShipToCustomerSubVertical,
			bill_acc.market_sub_vertical_txt SoldToCustomerSubVertical,
			bill_acc.reporting_sub_parent1 BillToReportingSubParent1,
			end_acc.reporting_sub_parent1 EndReportingSubParent1,
			bill_acc.reporting_sub_parent1 ShipToReportingSubParent1,
			bill_acc.reporting_sub_parent1 SoldToReportingSubParent1,
			bill_acc.definitive_idn_id BillToDefinitiveIDNID,
			end_acc.definitive_idn_id EndDefinitiveIDNID,
			bill_acc.definitive_idn_id ShipToDefinitiveIDNID,
			bill_acc.definitive_idn_id SoldToDefinitiveIDNID,
			bill_acc.definitive_idn_parentid BillToDefinitiveIDNIDParentID,
			end_acc.definitive_idn_parentid EndDefinitiveIDNIDParentID,
			bill_acc.definitive_idn_parentid ShipToDefinitiveIDNIDParentID,
			bill_acc.definitive_idn_parentid SoldToDefinitiveIDNIDParentID,
			bill_acc.nces_leaid BillToNCESLEAID,
			end_acc.nces_leaid EndNCESLEAID,
			bill_acc.nces_leaid ShipToNCESLEAID,
			bill_acc.nces_leaid SoldToNCESLEAID,
			bill_acc.address1_primary_txt BillToCustomerAddress,
			end_acc.address1_primary_txt EndCustomerAddress,
			bill_acc.address1_primary_txt ShipToCustomerAddress,
			bill_acc.address1_primary_txt SoldToCustomerAddress,
			bill_acc.city_primary_txt BillToCustomerCity,
			end_acc.city_primary_txt EndCustomerCity,
			bill_acc.city_primary_txt ShipToCustomerCity,
			bill_acc.city_primary_txt SoldToCustomerCity,
			bill_acc.state_primary_cd BillToCustomerState,
			end_acc.state_primary_cd EndCustomerState,
			bill_acc.state_primary_cd ShipToCustomerState,
			bill_acc.state_primary_cd SoldToCustomerState,
			bill_acc.province_primary_txt BillToCustomerProvince,
			end_acc.province_primary_txt EndCustomerProvince,
			bill_acc.province_primary_txt ShipToCustomerProvince,
			bill_acc.province_primary_txt SoldToCustomerProvince,
			bill_acc.country_primary_cd BillToCustomerCountry,
			end_acc.country_primary_cd EndCustomerCountry,
			bill_acc.country_primary_cd ShipToCustomerCountry,
			bill_acc.country_primary_cd SoldToCustomerCountry,
			bill_acc.postal_code_primary_txt BillToCustomerPostalCode,
			end_acc.postal_code_primary_txt EndCustomerPostalCode,
			bill_acc.postal_code_primary_txt ShipToCustomerPostalCode,
			bill_acc.postal_code_primary_txt SoldToCustomerPostalCode,
			'' BillToOraclePartySiteNumber,  
			'' EndOraclePartySiteNumber,
			'' ShipToOraclePartySiteNumber,
			'' SoldToOraclePartySiteNumber,
			bill_acc.definitive_id BillToDefinitiveID,
			end_acc.definitive_id EndDefinitiveID,
			bill_acc.definitive_id ShipToDefinitiveID,
			bill_acc.definitive_id SoldToDefinitiveID,
			bill_acc.nces_schid BillToNCESSCHID,
			end_acc.nces_schid EndNCESSCHID,
			bill_acc.nces_schid ShipToNCESSCHID,
			bill_acc.nces_schid SoldToNCESSCHID,
			--SO-621 new fields addition ends
			--so-661 new attributes addition starts here
			case when bill_acc.buying_customer_flg = 'Y' then bill_acc.customer_type_txt 
			else ''
			END BillToAccountType,
			case when end_acc.buying_customer_flg = 'Y' then end_acc.customer_type_txt 
			else ''
			END EndAccountType,
			case when bill_acc.buying_customer_flg = 'Y' then bill_acc.customer_type_txt 
			else ''
			END ShipToAccountType,
			case when bill_acc.buying_customer_flg = 'Y' then bill_acc.customer_type_txt 
			else ''
			END SoldToAccountType,--SO-661 new attributes addition ends here	
			bill_acc.services_major_acc BillToServicesMajorAcc, --SO-665 new attributes addition starts
			end_acc.services_major_acc EndServicesMajorAcc,
			bill_acc.services_major_acc ShipToServicesMajorAcc,
			bill_acc.services_major_acc SoldToServicesMajorAcc, --SO-665 new attributes addition ends
			so.attribute_char1 as OEM_FLAG,
			sa.accounttypeaop,
			sb.accounttypeaop as accounttypeaop1,
			CASE
				WHEN nvl(sa.aopaccountname,	'N') != 'N' THEN sa.aopaccountname
				WHEN nvl(sb.aopaccountname,	'N') != 'N' THEN sb.aopaccountname
				WHEN nvl(sm.sm_sku,	'N') != 'N' THEN sm.aop_account_name
				ELSE 'Non Account'
			END aop_account_name,			
			bill_acc.customer_sub_class BillToCustomerSubClass,  --so-728 new attributes addition starts
			end_acc.customer_sub_class EndCustomerSubClass,
			bill_acc.customer_sub_class ShipToCustomerSubClass,
			bill_acc.customer_sub_class SoldToCustomerSubClass, --so-728 new attributes addition ends 
			a.product_num Product_Number, --SO-739 new attributes addition 
            cpqh.status_t cpq_quote_status --SO-743 new attributes addition 
		FROM
			@DB_LEVEL@_edm_gold.f_opportunity a
		LEFT OUTER JOIN @DB_LEVEL@_edm_gold.f_opportunity_extn b ON
			a.row_wid = b.opportunity_wid		
		and nvl(b.model_number,'**') not in ('CSHMVECTD','CSHMVEDTC','REBATE-ACP','REBATE-AVCT','VATWHND','BACKCHARGE-MRKTG') ---and condition Added by pooja for SKU credit memo exclude changes SO--699
		LEFT OUTER JOIN @DB_LEVEL@_edm_gold.d_oppty_business_size c ON
			a.oppty_business_size_wid = c.row_wid
	  	left outer join  @DB_LEVEL@_edm_gold.d_product prd ON
           b.model_number = prd.part_num
		left outer join (select * from @DB_LEVEL@_edm_other_src_silver.GPHSKUAssignments where record_source = 'OPPORTUNITIES') gph_sku on
           nvl(b.model_number,prd.part_num) = gph_sku.sku 
		 and  nvl(gph_sku.sku,'**') not in ('CSHMVECTD','CSHMVEDTC','REBATE-ACP','REBATE-AVCT','VATWHND','BACKCHARGE-MRKTG') ---and condition Added by pooja for SKU credit memo exclude changes SO--699
		

		left outer join (select distinct 
           egp1.item_number,
           item_eff.attribute_char1 from (
           select * from @DB_LEVEL@_cld_oraerp_silver.egp_system_items_b) egp1
        left outer join @DB_LEVEL@_cld_oraerp_silver.ego_item_eff_b item_eff  on
        egp1.inventory_item_id = item_eff.inventory_item_id
        AND egp1.organization_id = item_eff.organization_id
        where  item_eff.context_code like '%OEM%'
        and user_item_type = 'Finished Good')so on nvl(b.model_number,gph_sku.sku) = so.item_number	 
         LEFT OUTER JOIN @DB_LEVEL@_edm_gold.d_product_catalog gph ON
            prd.row_wid = gph.product_wid
        LEFT OUTER JOIN ( select distinct * from 
							(select
							status_t,
							opportunityid_t,
							opportunitynumber_t,
							transactionid_t ,
							max(bs_id) over (PARTITION BY opportunitynumber_t) as bs_id,
							row_number() OVER (PARTITION BY opportunitynumber_t,opportunitynumber_t ORDER BY transactionid_t desc ) rno
						from
							@DB_LEVEL@_cld_cpq_silver.cpq_quote_headers)g where rno=1
							) cpqh ON
           a.oppty_num=cpqh.opportunitynumber_t and cpqh.opportunityid_t is not null
		LEFT OUTER JOIN @DB_LEVEL@_cld_osc_silver.gpod_opportunity_profile op  
		-- VR 05252022 join changed to LEFT OUTER JOIN from INNER join to fix filtering of some oppyts.
			on b.oppty_id = cast(op.opportunity_id as string) and 
			cpqh.transactionid_t = concat('CPQ-',trim(split_part(op.quote_id, '-', 2)))	
		--VR 03282022 Enhancement request new table join for new campaign fields
        LEFT OUTER JOIN @DB_LEVEL@_cld_osc_gold.crmod_osc_leads_vw leads ON
		    b.oppty_id = leads.opportunity_id  
        LEFT OUTER JOIN		
		(
			select xx.* from (
			select -- distinct
			active_flg,
			_part_number as sku,_bs_id as bsid
			, w_insert_dtm , catalog_lvl_desc_1,
			catalog_lvl_desc_2,
			catalog_lvl_desc_3,
			catalog_lvl_desc_4,
			catalog_lvl_desc_5,
			catalog_lvl_desc_6,
			catalog_lvl_desc_7
			from (
			select  distinct cpq_quote_lines._part_custom_field19,_part_number,_bs_id,
			SPLIT_PART(cpq_quote_lines._part_custom_field19,'.',1) as CDLVL1,
			SPLIT_PART(cpq_quote_lines._part_custom_field19,'.',2) as CDLVL2,
			SPLIT_PART(cpq_quote_lines._part_custom_field19,'.',3) as CDLVL3,
			SPLIT_PART(cpq_quote_lines._part_custom_field19,'.',4) as CDLVL4,
			SPLIT_PART(cpq_quote_lines._part_custom_field19,'.',5) as CDLVL5,
			SPLIT_PART(cpq_quote_lines._part_custom_field19,'.',6) as CDLVL6,
			SPLIT_PART(cpq_quote_lines._part_custom_field19,'.',7) as CDLVL7
			from @DB_LEVEL@_cld_cpq_silver.cpq_quote_lines) a
			join (select distinct catalog_lvl_desc_1,
			catalog_lvl_desc_2,
			catalog_lvl_desc_3,
			catalog_lvl_desc_4,
			catalog_lvl_desc_5,
			catalog_lvl_desc_6,
			catalog_lvl_desc_7,catalog_lvl_cd_1,catalog_lvl_cd_2,catalog_lvl_cd_3,
			catalog_lvl_cd_4,catalog_lvl_cd_5,catalog_lvl_cd_6,catalog_lvl_cd_7,w_insert_dtm,active_flg
			from @DB_LEVEL@_edm_gold.d_product_catalog) b where a.CDLVL1=b.catalog_lvl_cd_1 and
			a.CDLVL2=b.catalog_lvl_cd_2 and a.CDLVL3=b.catalog_lvl_cd_3 and a.CDLVL4=b.catalog_lvl_cd_4 and
			a.CDLVL5=b.catalog_lvl_cd_5 and a.CDLVL6=b.catalog_lvl_cd_6 and
			a.CDLVL7=b.catalog_lvl_cd_7
			)xx
			join (
			Select sku, max(w_insert_dtm) as w_insert_dtm from (
			select -- distinct
			active_flg,
			_part_number as sku--,_bs_id as bsid
			,Max(w_insert_dtm) as w_insert_dtm
			from (
			select  distinct cpq_quote_lines._part_custom_field19,_part_number,
			SPLIT_PART(cpq_quote_lines._part_custom_field19,'.',1) as CDLVL1,
			SPLIT_PART(cpq_quote_lines._part_custom_field19,'.',2) as CDLVL2,
			SPLIT_PART(cpq_quote_lines._part_custom_field19,'.',3) as CDLVL3,
			SPLIT_PART(cpq_quote_lines._part_custom_field19,'.',4) as CDLVL4,
			SPLIT_PART(cpq_quote_lines._part_custom_field19,'.',5) as CDLVL5,
			SPLIT_PART(cpq_quote_lines._part_custom_field19,'.',6) as CDLVL6,
			SPLIT_PART(cpq_quote_lines._part_custom_field19,'.',7) as CDLVL7
			from @DB_LEVEL@_cld_cpq_silver.cpq_quote_lines) a
			join (select distinct catalog_lvl_desc_1,
			catalog_lvl_desc_2,
			catalog_lvl_desc_3,
			catalog_lvl_desc_4,
			catalog_lvl_desc_5,
			catalog_lvl_desc_6,
			catalog_lvl_desc_7,catalog_lvl_cd_1,catalog_lvl_cd_2,catalog_lvl_cd_3,
			catalog_lvl_cd_4,catalog_lvl_cd_5,catalog_lvl_cd_6,catalog_lvl_cd_7,w_insert_dtm,active_flg
			from @DB_LEVEL@_edm_gold.d_product_catalog) b where a.CDLVL1=b.catalog_lvl_cd_1 and
			a.CDLVL2=b.catalog_lvl_cd_2 and a.CDLVL3=b.catalog_lvl_cd_3 and a.CDLVL4=b.catalog_lvl_cd_4 and
			a.CDLVL5=b.catalog_lvl_cd_5 and a.CDLVL6=b.catalog_lvl_cd_6 and
			a.CDLVL7=b.catalog_lvl_cd_7
			group by  _part_number ,active_flg
			, catalog_lvl_desc_1,
			catalog_lvl_desc_2,
			catalog_lvl_desc_3,
			catalog_lvl_desc_4,
			catalog_lvl_desc_5,
			catalog_lvl_desc_6,
			catalog_lvl_desc_7)aa
			group by sku)xxx
			on xx.sku=xxx.sku and xx.w_insert_dtm=xxx.w_insert_dtm )cpq_gph 
			on cpq_gph.sku = nvl(b.model_number,gph_sku.sku) and cpq_gph.bsid = cpqh.bs_id      		
		LEFT OUTER JOIN (
			SELECT
				*
			FROM
				(
				SELECT
					quotenumber,
					model,
					create_date,
					targetmultiplier,
					row_number() OVER (PARTITION BY quotenumber,
					model
				ORDER BY
					create_date DESC) rno
				FROM
					@DB_LEVEL@_edm_other_src_silver.export_target_multiplier) e
			WHERE
				e.rno = 1) multp ON
			regexp_replace(multp.quotenumber,
			'Q0',
			'') = b.pw_folder_id
			AND multp.model = b.model_number
		LEFT OUTER JOIN (
			SELECT
				*
			FROM
				(
				SELECT
					customerid,
					customername,
					parentaccount,
					industry,
					standardizedname,
					row_number() OVER (PARTITION BY customerid
				ORDER BY
					to_timestamp(date_of_change,
					'dd-MM-yyyy') DESC) rno
				FROM
					@DB_LEVEL@_edm_other_src_silver.customer_data db
				WHERE
					db.recordsource = 'SalesCloud') p
			WHERE
				p.rno = 1) mdm ON
			mdm.customerid = b.account
		LEFT OUTER JOIN (
			SELECT
				*
			FROM
				(
				SELECT
					customerid,
					customername,
					parentaccount,
					industry,
					standardizedname,
					row_number() OVER (PARTITION BY customerid
				ORDER BY
					to_timestamp(date_of_change,
					'dd-MM-yyyy') DESC) rno
				FROM
					@DB_LEVEL@_edm_other_src_silver.customer_data db
				WHERE
					db.recordsource = 'SalesCloud') p
			WHERE
				p.rno = 1) end_mdm ON
			end_mdm.customerid = upper(a.end_user_account_name)   --new join for endcustomer data
			
						/*
			left outer join  @DB_LEVEL@_mdm_hub_gold.d_customer_header_v bill_acc
			on a.legacy_customer_account_id = bill_acc.integration_id_join */
			--new hub changes so-621 start 
			LEFT OUTER JOIN
			
			(SELECT DISTINCT
            xref.oracle_cloud_party_id,xref.oracle_cloud_registry_id,da.definitive_id,da.nces_schid,
            dh.*
            FROM @DB_LEVEL@_mdm_hub_gold.d_customer_header dh
            left outer JOIN @DB_LEVEL@_mdm_hub_gold.d_customer_address da ON dh.mdm_hdr_id=da.mdm_hdr_id and dh.postal_code_primary_txt=da.site_postal_code_txt
            and dh.address1_primary_txt = da.site_address1_txt
            left outer JOIN @DB_LEVEL@_mdm_hub_gold.d_customer_xref xref ON cast(dh.mdm_hdr_id as string) = xref.mdm_hdr_id
            and xref.source_system='ORACLE'
            ) bill_acc
            on cast(bill_acc.oracle_cloud_party_id as string) = a.customer_account_num
			-- new hub changes for so-621 END
			
			LEFT OUTER JOIN
			
			(SELECT DISTINCT
            xref.oracle_cloud_party_id,xref.oracle_cloud_registry_id,da.definitive_id,da.nces_schid,
            dh.*
            FROM @DB_LEVEL@_mdm_hub_gold.d_customer_header dh
            left outer JOIN @DB_LEVEL@_mdm_hub_gold.d_customer_address da ON dh.mdm_hdr_id=da.mdm_hdr_id and dh.postal_code_primary_txt=da.site_postal_code_txt
            and dh.address1_primary_txt = da.site_address1_txt
            left outer JOIN @DB_LEVEL@_mdm_hub_gold.d_customer_xref xref ON cast(dh.mdm_hdr_id as string) = xref.mdm_hdr_id
            and xref.source_system='ORACLE'
            ) end_acc
            on cast(end_acc.oracle_cloud_party_id as double) = op.end_user_account_id	
			
			left outer join  @DB_LEVEL@_edm_gold.d_legacy_customer_account bill_acc_leg
			on a.legacy_customer_account_id = bill_acc_leg.Integration_id
			
			
			
			
		left outer join @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_sku sm on
			b.model_number = sm.sm_sku
        left outer join @DB_LEVEL@_edm_other_src_silver.ref_accountsflag_sku af on
            b.model_number = af.af_sku
        left outer join @DB_LEVEL@_edm_other_src_silver.ref_customerparentaccounts cust_ref on
            mdm.parentaccount = cust_ref.customer
		left outer join @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_accounts sa on
		    upper(bill_acc.ultimate_parent_txt) = upper(sa.acct_name)
		left outer join @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_accounts sb on
		    upper(nvl(bill_acc.ultimate_parent_txt,mdm.parentaccount)) = upper(sb.acct_name)
			
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
ON bill_acc_leg.account_num = XX.customer_number and nvl(XX.customer_number,'N') != 'N'
left Join  @DB_LEVEL@_edm_other_src_silver.Varsdatabase_Sellingmotion h on 
bill_acc_leg.account_num = h.Business_Nbr		
			
		LEFT OUTER JOIN (
			SELECT
				*
			FROM
				(
				SELECT
					*,
					row_number() OVER (PARTITION BY opty_number
				ORDER BY
					last_update_date DESC) rno
				FROM
					@DB_LEVEL@_cld_osc_gold.osc_opportunities_revenues_v_history) his
			WHERE
				his.rno = 1) d ON
			a.oppty_num = CAST(d.opty_number AS STRING)
		WHERE
			b.oppty_subregion IN ('Vertiv - North America',
			'Vertiv - Americas',
			'Vertiv Canada',
			'Vertiv - LATAM')
			) x 
	left outer join (select distinct customer_sub_class,customer_name_txt from @DB_LEVEL@_mdm_hub_gold.d_customer_header
	         where customer_class_code_txt = 'GLOBAL STRATEGIC ACCOUNT') dc_h on
			  upper(aop_account_name) = upper(dc_h.customer_name_txt)
			) s)s1)s2)s3;
