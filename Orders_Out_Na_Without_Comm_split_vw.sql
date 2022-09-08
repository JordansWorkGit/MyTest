
create View prod_na_cld_osc_gold.Orders_Out_Na_Without_Comm_split_vw as

SELECT
	accountservicesales,
	account_type_aop,
	accountam,
	accountcsm,
	accountlead,
	accountpresence,
	accountsubtype,
	accounttype,
	activated,
	activedate,
	aop_account_name,
	aop_category,
	assignmentterritory,
	billtoaccountrole,
	billtocustomer,
	billtocustomeraddress,
	billtocustomercity,
	billtocustomercountry,
	billtocustomercustomertype1,
	billtocustomerenterpriseindustry,
	billtocustomergicsinudstrygroupdescription,
	billtocustomergicssectordescription,
	billtocustomergsc,
	billtocustomerid,
	billtocustomerindustry,
	billtocustomername,
	billtocustomername2,
	billtocustomernumber,
	billtocustomerparentaccount,
	billtocustomerparentname,
	billtocustomerpostalcode,
	billtocustomerreportingname,
	billtocustomerstandardizedname,
	billtocustomerstate,
	billtocustomersubvertical,
	billtocustomertype,
	billtocustomervertical,
	billtoenterpriseindustry,
	billtogsc_flag,
	billtoindustry,
	billtoindustrycode,
	billtononrevenueflag,
	billtoparentaccount,
	billtostandardizedname,
	bsid,
	cdwsalesarea,
	cdwsalesregion,
	cdwsalessegment,
	intrachannelflag,
	cloudlistprice,
	coe,
	coe_new,
	contracttype,
	customerpurchaseordernumber,
	customerrequestdate,
	country,
	crossrefwithlesnumber,
	currency,
	data_last_refreshed,
	endcustomer,
	endcustomeraccountrole,
	endcustomeraddress,
	endcustomercity,
	endcustomercountry,
	endcustomercustomertype1,
	endcustomerenterpriseindustry,
	endcustomergsc,
	endcustomergscflag,
	endcustomerid,
	endcustomerindustry1,
	endcustomerindustrycode1,
	endcustomername,
	endcustomernumber,
	endcustomerparentaccount,
	endcustomerpostalcode,
	endcustomerstandardizedexists,
	endcustomerstandardizedname,
	endcustomerstate,
	endcustomerstate2,
	endcustomersubvertical,
	endcustomervertical,
	exchangerateused,
	extendedlistprice,
	extendedstandardcost,
	gbu,
	growth_target,
	hashedbilltocustomername,
	hashedendcustomername,
	hashedshiptocustomername,
	hashedsoldtocustomername,
	invoicedate,
	invoicelinenumber,
	invoicenumber,
	alicecommissionoverridepercent,
	level6,
	listprice,
	lob,
	multiplier,
	namedaccountofficeassign,
	namedaccountsplit,
	netsalesrevenue,
	newlescrossref2,
	oemtag,
	officelocation,
	officetype,
	office_group,
	office_website,
	ordercoordinator,
	ordercreatedate,
	orderdeliverypromiseddate,
	orderexlinenumber,
	orderlastupdatedate,
	originalsplitpercent,
	partnerwebfolderid,
	partnerwebquotenumber,
	plant,
	plantdescription,
	posprojectregistrationnumber,
	possku,
	postalcodesofficeassign,
	product_category,
	product_category_new,
	product_family,
	product_family_new,
	producthierarchylevel1description,
	producthierarchylevel2description,
	producthierarchylevel3description,
	producthierarchylevel4code,
	producthierarchylevel4description,
	proshipmentnumber,
	quantityordered,
	quantityshipped,
	quoteid,
	recordid,
	recordsource,
	region,
	resellerbranchname,
	resellerbranchnumber,
	resellermajorcode,
	resellerminorcode,
	resellername,
	resellernumber,
	resellerpartnerlevel,
	resellerpartnertype,
	resellerregion,
	resellersalesofficename,
	resellersalesofficenumber,
	responseid,
	sales_area,
	salesofficefamily,
	salesofficename,
	salesofficenumber,
	salesofficenumber2,
	salesofficeprincipalemail,
	salesofficeprincipalname,
	salesofficereferencenumber,
	salesordernumber,
	salesofficeregion,
	salesofficeterritory,
	salesoutprimarykey,
	salesregion,
	salesregion2,
	salesregionnumber,
	salesrepemail,
	salesrepid,
	salesrepname,
	salesreptype,
	segment,
	selling_motion,
	sfr_category,
	shipdate,
	shipmentcarriername,
	shiptocustomeraddress,
	shiptocustomercity,
	shiptocustomercountry,
	shiptocustomercustomertype1,
	shiptocustomerenterpriseindustry,
	shiptocustomergsc,
	shiptocustomerid,
	shiptocustomerindustry1,
	shiptocustomername,
	shiptocustomernumber,
	shiptocustomerparentaccount,
	shiptocustomerparentname,
	shiptocustomerpostalcode,
	shiptocustomerstandardizedname,
	shiptocustomerstate,
	shiptocustomersubvertical,
	shiptocustomervertical,
	shiptocustomertype1,
	shiptocustomertype1_2,
	shiptoenterpriseindustry,
	shiptogsc_flag,
	shiptoindustry1,
	shiptoparentaccount,
	shiptostandardizedname,
	sizecategory,
	sku,
	skudescription,
	smscustomertype,
	smstagnumber,
	soldtocustomeraddress,
	soldtocustomercity,
	soldtocustomercountry,
	soldtocustomercustomergsc,
	soldtocustomercustomertype1,
	soldtocustomerindustry1,
	soldtocustomername,
	soldtocustomernumber,
	soldtocustomerenterpriseindustry,
	soldtocustomergsc,
	soldtocustomerparentaccount,
	soldtocustomerpostalcode,
	soldtocustomerstate,
	soldtocustomersubvertical,
	soldtocustomervertical,
	soldtocustomerstandardizedname,
	sp1productflag,
	sp1targetaccountflag,
	sp2productflag,
	sp2targetaccountflag,
	splitpercent,
	standard_products,
	standardcost,
	transactionamount,
	transactiontype,
	yearmonth,
	w_insert_by,
	w_insert_dtm,
	src_system_name,
	uom,
	sales_order_line_type,
	Order_type,
	Class_code,
	OEM_FLAG,
billtocustomerclasscode,
endcustomerclasscode,
shiptocustomerclasscode,
soldtocustomerclasscode,
billtocustomerpartnerclasscode,
endcustomerpartnerclasscode,
shiptocustomerpartnerclasscode,
soldtocustomerpartnerclasscode,
billtooracleregistryid, 
endoracleregistryid,
shiptooracleregistryid,
soldtooracleregistryid,
billtocustomerindustry1,
billtocustomerindustry3,
endcustomerindustry3,
shiptocustomerindustry3,
soldtocustomerindustry3,
billtoreportingsubparent1,
endreportingsubparent1,
shiptoreportingsubparent1,
soldtoreportingsubparent1,
billtodefinitiveidnid,
enddefinitiveidnid,
shiptodefinitiveidnid,
soldtodefinitiveidnid,
billtodefinitiveidnidparentid,
enddefinitiveidnidparentid,
shiptodefinitiveidnidparentid,
soldtodefinitiveidnidparentid,
billtoncesleaid,
endncesleaid,
shiptoncesleaid,
soldtoncesleaid,
billtocustomerprovince,
endcustomerprovince,
shiptocustomerprovince,
soldtocustomerprovince,
billtooraclepartysitenumber,  
endoraclepartysitenumber,
shiptooraclepartysitenumber,
soldtooraclepartysitenumber,
billtodefinitiveid,
enddefinitiveid,
shiptodefinitiveid,
soldtodefinitiveid,
billtoncesschid,
endncesschid,
shiptoncesschid,
soldtoncesschid,
billtoaccounttype,
endaccounttype,
shiptoaccounttype,
soldtoaccounttype,
productcommissionclasscode,
Measure,
Calendar_Month,
Calendar_Year,
Local_Currency,
Sales_Office,
Unit_Price,
Unit_Price_FXD_USD,
billtoservicesmajoracc, 
endservicesmajoracc,
shiptoservicesmajoracc,
soldtoservicesmajoracc,
billtocustomersubclass,
endcustomersubclass,
shiptocustomersubclass,
soldtocustomersubclass,
aop_customer_sub_class,
serialnumber 
FROM
	(
	SELECT
		*,
		CASE
			WHEN trim(upper(account_type_aop)) = 'VERTIV DIRECT ACCOUNT' THEN 'N'
			WHEN upper(account_type_aop) = 'ENTERPRISE ACCOUNT'
			AND upper(officetype) = 'LVO'
			AND (upper(sizecategory) = 'PROJECT'
			OR upper(sizecategory) = 'FLOW') THEN 'Y'
			WHEN upper(account_type_aop) = 'VERTIV NAMED ACCOUNT'
			AND upper(officetype) = 'LVO'
			AND upper(sizecategory) = 'FLOW' THEN 'Y'
			WHEN upper(account_type_aop) = 'CHANNEL' THEN 'Y'
			WHEN upper(account_type_aop) = 'VERTIV STRATEGIC ACCOUNT' THEN 'N'
			WHEN upper(lob) = 'DC POWER'
			AND upper(endcustomerparentaccount) LIKE '%CENTURYLINK%' THEN 'N'
			WHEN upper(lob) = 'DC POWER'
			AND upper(endcustomerparentaccount) LIKE '%CHARTER%' THEN 'N'
			WHEN upper(lob) = 'DC POWER'
			AND upper(endcustomerparentaccount) LIKE '%COX%' THEN 'N'
			WHEN upper(lob) = 'DC POWER'
			AND upper(endcustomerparentaccount) LIKE '%COMCAST%' THEN 'N'
			WHEN upper(lob) = 'DC POWER'
			AND upper(endcustomerparentaccount) LIKE '%FRONTIER%' THEN 'N'
			WHEN upper(endcustomerindustry1) LIKE '%MILITARY%'
			AND product_category LIKE '%SECURE%' THEN 'N'
			WHEN upper(endcustomerindustry1) LIKE '%INTEL%'
			AND product_category LIKE '%SECURE%' THEN 'N'
			WHEN upper(endcustomerindustry1) LIKE '%CIVILIAN%'
			AND product_category LIKE '%SECURE%' THEN 'N'
			WHEN upper(endcustomerparentaccount) LIKE '%UNITED STATES%'
			AND product_category LIKE '%SECURE%' THEN 'N'
			WHEN upper(endcustomerparentaccount) LIKE '%NASA%'
			AND product_category LIKE '%SECURE%' THEN 'N'
			WHEN upper(endcustomerparentaccount) LIKE '%MANTECH INTERNATIONAL%'
			AND product_category LIKE '%SECURE%' THEN 'N'
			WHEN upper(endcustomerparentaccount) LIKE '%NORTHROP GRUMMAN%'
			AND product_category LIKE '%SECURE%' THEN 'N'
			WHEN upper(level6) = 'SWITCHVIEW SECURE HARDWARE'
			OR upper(selling_motion) = 'INTERCOMPANY - CANADA'
			OR upper(lob) = 'DC POWER'
			OR upper(selling_motion) = 'INTERCOMPANY'
			OR upper(endcustomerparentaccount) LIKE '%WORLD WIDE TECH%'
			OR upper(billtocustomerparentaccount) LIKE '%WORLD WIDE TECH%'
			OR upper(endcustomername) LIKE '%WORLD WIDE TECH%'
			OR upper(resellerbranchname) LIKE '%WORLD WIDE TECH%' THEN 'N'
			WHEN trim(smscustomertype) IN ('M01', 'M02', 'M03', 'M04', 'M05', 'M06', 'M07', 'M08', 'M09', 'M10') THEN 'N'
			WHEN upper(lob) = 'OTHER'
			OR upper(lob) = 'N/A'
			OR upper(lob) = 'EXCLUDE'
			OR upper(lob) = 'NO ASSIGNMENT'
			OR upper(lob) = 'TARIFF'
			OR upper(selling_motion) = 'ACCOUNT' THEN 'N'
			ELSE 'Y'
		END growth_target
	FROM
		(
		SELECT
			DISTINCT *,
			CASE
				WHEN selling_motion = 'CHANNEL'
				AND upper(account_type_aop1) NOT IN ('VERTIV DIRECT ACCOUNT', 'VERTIV NAMED ACCOUNT', 'VERTIV STRATEGIC ACCOUNT', 'FEDERAL') THEN 'CHANNEL'
				WHEN (selling_motion = 'FIELD SALES'
				AND upper(account_type_aop1) NOT IN ('VERTIV DIRECT ACCOUNT', 'VERTIV NAMED ACCOUNT', 'VERTIV STRATEGIC ACCOUNT', 'CHANNEL', 'FEDERAL')) THEN 'ENTERPRISE ACCOUNT'
				WHEN upper(selling_motion) = 'ERS/HVM' THEN 'ERS/HVM'
				ELSE account_type_aop1
			END account_type_aop
		FROM
			(
			SELECT
				DISTINCT *,
				CASE
					WHEN nvl(accounttypeaop,
					'N') != 'N' THEN upper(accounttypeaop)
					WHEN nvl(accounttypeaop1,
					'N') != 'N' THEN upper(accounttypeaop1)
					WHEN upper(lob) = 'DC POWER'
					AND upper(billtocustomervertical) = 'TELECOM'
					AND NOT upper(billtocustomerparentACCOUNT) LIKE '%COMCAST%' THEN 'VERTIV DIRECT ACCOUNT'
					WHEN upper(lob) = 'DC POWER'
					AND upper(billtocustomervertical) = 'TELECOM'
					AND NOT upper(billtocustomerparentACCOUNT) LIKE '%COX COMMUNICATIONS%' THEN 'VERTIV DIRECT ACCOUNT'
					WHEN upper(lob) = 'DC POWER'
					AND upper(billtocustomervertical) = 'TELECOM'
					AND NOT upper(billtocustomerparentACCOUNT) LIKE '%FRONTIER COMMUNICATIONS%' THEN 'VERTIV DIRECT ACCOUNT'
					WHEN upper(lob) = 'DC POWER'
					AND upper(billtocustomervertical) = 'TELECOM'
					AND NOT upper(billtocustomerparentACCOUNT) LIKE '%CHARTER COMMUNICATIONS%' THEN 'VERTIV DIRECT ACCOUNT'
					WHEN upper(lob) = 'DC POWER'
					AND upper(billtocustomervertical) = 'TELECOM'
					AND NOT upper(billtocustomerparentACCOUNT) LIKE '%CENTURYLINK%' THEN 'VERTIV DIRECT ACCOUNT'
					WHEN upper(lob) = 'DC POWER'
					AND upper(billtocustomervertical) = 'TELECOM'
					AND NOT upper(endcustomerparentACCOUNT) LIKE '%COMCAST%' THEN 'VERTIV DIRECT ACCOUNT'
					WHEN upper(lob) = 'DC POWER'
					AND upper(billtocustomervertical) = 'TELECOM'
					AND NOT upper(endcustomerparentACCOUNT) LIKE '%COX COMMUNICATIONs%' THEN 'VERTIV DIRECT ACCOUNT'
					WHEN upper(lob) = 'DC POWER'
					AND upper(billtocustomervertical) = 'TELECOM'
					AND NOT upper(endcustomerparentACCOUNT) LIKE '%FRONTIER COMMUNICATIONS%' THEN 'VERTIV DIRECT ACCOUNT'
					WHEN upper(lob) = 'DC POWER'
					AND upper(billtocustomervertical) = 'TELECOM'
					AND NOT upper(endcustomerparentACCOUNT) LIKE '%CHARTER COMMUNICATIONS%' THEN 'VERTIV DIRECT ACCOUNT'
					WHEN upper(lob) = 'DC POWER'
					AND upper(billtocustomervertical) = 'TELECOM'
					AND NOT upper(endcustomerparentACCOUNT) LIKE '%CENTURYLINK%' THEN 'VERTIV DIRECT ACCOUNT'
					WHEN sm_account_flag = 'Y' THEN 'VERTIV DIRECT ACCOUNT'
					WHEN upper(billtocustomervertical) = 'TELECOM'
					AND upper(accounttypeaop) != 'VERTIV DIRECT ACCOUNT' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomervertical) = 'TELECOM'
					AND upper(accounttypeaop1) != 'VERTIV DIRECT ACCOUNT' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%ASCENSION%'
					OR upper(endcustomerparentaccount) LIKE '%ASCENSION%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%AHOLD DELHAIZE%'
					OR upper(endcustomerparentACCOUNT) LIKE '%AHOLD DELHAIZE%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%ALBERTSONS COMPANIES%'
					OR upper(endcustomerparentACCOUNT) LIKE '%ALBERTSONS COMPANIES%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%ALDI%'
					OR upper(endcustomerparentACCOUNT) LIKE '%ALDI%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%AMERICAN EXPRESS%'
					OR upper(endcustomerparentACCOUNT) LIKE '%AMERICAN EXPRESS%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%ARDENT%'
					OR upper(endcustomerparentACCOUNT) LIKE '%ARDENT%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%AUTOZONE%'
					OR upper(endcustomerparentaccount) LIKE '%AUTOZONE%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%BANK OF AMERICA%'
					OR upper(endcustomerparentaccount) LIKE '%BANK OF AMERICA%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%BARCLAYS%'
					OR upper(endcustomerparentACCOUNT) LIKE '%BARCLAYS%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%BEST BUY%'
					OR upper(endcustomerparentACCOUNT) LIKE '%BEST BUY%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%BLACKROCK%'
					OR upper(endcustomerparentACCOUNT) LIKE '%BLACKROCK%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%CHS%'
					OR upper(endcustomerparentACCOUNT) LIKE '%CHS%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%CITIGROUP%'
					OR upper(endcustomerparentACCOUNT) LIKE '%CITIGROUP%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%COMMONSPIRIT HEALTH%'
					OR upper(endcustomerparentACCOUNT) LIKE '%COMMONSPIRIT HEALTH%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%COSTCO%'
					OR upper(endcustomerparentACCOUNT) LIKE '%COSTCO%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%CREDIT SUISSE%'
					OR upper(endcustomerparentACCOUNT) LIKE '%CREDIT SUISSE%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%CVS%'
					OR upper(endcustomerparentACCOUNT) LIKE '%CVS%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%DEUTSCHE BANK%'
					OR upper(endcustomerparentACCOUNT) LIKE '%DEUTSCHE BANK%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%EDGECORE%'
					OR upper(endcustomerparentACCOUNT) LIKE '%EDGECORE%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%FEDEX%'
					OR upper(endcustomerparentACCOUNT) LIKE '%FEDEX%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%FRONTIER%'
					OR upper(endcustomerparentACCOUNT) LIKE '%FRONTIER%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%GENERAL ELECTRIC HEALTHCARE%'
					OR upper(endcustomerparentACCOUNT) LIKE '%GENERAL ELECTRIC HEALTHCARE%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%GOLDMAN SACHS%'
					OR upper(endcustomerparentACCOUNT) LIKE '%GOLDMAN SACHS%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%HOME DEPOT%'
					OR upper(endcustomerparentACCOUNT) LIKE '%HOME DEPOT%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%HOSPITAL CORPORATION OF AMERICA%'
					OR upper(endcustomerparentACCOUNT) LIKE '%HOSPITAL CORPORATION OF AMERICA%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%JP MORGAN CHASE%'
					OR upper(endcustomerparentACCOUNT) LIKE '%JP MORGAN CHASE%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%KAISER PERMANENTE%'
					OR upper(endcustomerparentACCOUNT) LIKE '%KAISER PERMANENTE%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%KROGER COMPANY%'
					OR upper(endcustomerparentACCOUNT) LIKE '%KROGER COMPANY%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%LEVEL 3%'
					OR upper(endcustomerparentACCOUNT) LIKE '%LEVEL 3%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%LIDL%'
					OR upper(endcustomerparentACCOUNT) LIKE '%LIDL%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%LIFEPOINT%'
					OR upper(endcustomerparentACCOUNT) LIKE '%LIFEPOINT%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%LOWES%'
					OR upper(endcustomerparentACCOUNT) LIKE '%LOWES%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%MENARDS%'
					OR upper(endcustomerparentACCOUNT) LIKE '%MENARDS%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%MORGAN STANLEY%'
					OR upper(endcustomerparentACCOUNT) LIKE '%MORGAN STANLEY%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%NETRALITY%'
					OR upper(endcustomerparentACCOUNT) LIKE '%NETRALITY%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%NOMURA SECURITIES%'
					OR upper(endcustomerparentACCOUNT) LIKE '%NOMURA SECURITIES%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%PHILIPS HEALTHCARE%'
					OR upper(endcustomerparentACCOUNT) LIKE '%PHILIPS HEALTHCARE%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%PROVIDENCE HEALTH & SERVICES%'
					OR upper(endcustomerparentACCOUNT) LIKE '%PROVIDENCE HEALTH & SERVICES%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%PUBLIX SUPER MARKETS%'
					OR upper(endcustomerparentACCOUNT) LIKE '%PUBLIX SUPER MARKETS%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%QSCALE%'
					OR upper(endcustomerparentACCOUNT) LIKE '%QSCALE%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%QUORUM%'
					OR upper(endcustomerparentACCOUNT) LIKE '%QUORUM%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%SECURESWITCH%'
					OR upper(endcustomerparentACCOUNT) LIKE '%SECURESWITCH%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%SIEMENS HEALTHINEERS%'
					OR upper(endcustomerparentACCOUNT) LIKE '%SIEMENS HEALTHINEERS%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%TARGET%'
					OR upper(endcustomerparentACCOUNT) LIKE '%TARGET%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%U.S. BANCORP%'
					OR upper(endcustomerparentACCOUNT) LIKE '%U.S. BANCORP%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%UBS%'
					OR upper(endcustomerparentACCOUNT) LIKE '%UBS%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%UNITED PARCEL SERVICE%'
					OR upper(endcustomerparentACCOUNT) LIKE '%UNITED PARCEL SERVICE%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%UNITEDHEALTH GROUP%'
					OR upper(endcustomerparentACCOUNT) LIKE '%UNITEDHEALTH GROUP%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%WALGREENS%'
					OR upper(endcustomerparentACCOUNT) LIKE '%WALGREENS%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%WALMART%'
					OR upper(endcustomerparentACCOUNT) LIKE '%WALMART%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%WELLS FARGO%'
					OR upper(endcustomerparentACCOUNT) LIKE '%WELLS FARGO%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN upper(billtocustomerparentACCOUNT) LIKE '%WORLD WIDE TECHNOLOGY%'
					OR upper(endcustomerparentACCOUNT) LIKE '%WORLD WIDE TECHNOLOGY%' THEN 'VERTIV NAMED ACCOUNT'
					WHEN lob = 'AC POWER'
					AND upper(billtocustomerparentACCOUNT) LIKE '%AT&T%'
					OR upper(billtocustomerparentACCOUNT) LIKE '%VERIZON%'
					OR upper(billtocustomerparentaccount) LIKE '%T-MOBILE%' THEN 'VERTIV STRATEGIC ACCOUNT'
					WHEN lob = 'THERMAL'
					AND upper(billtocustomerparentACCOUNT) LIKE '%AT&T%'
					OR upper(billtocustomerparentACCOUNT) LIKE '%VERIZON%'
					OR upper(billtocustomerparentaccount) LIKE '%T-MOBILE%' THEN 'VERTIV STRATEGIC ACCOUNT'
					WHEN lob = 'SERVICES'
					AND upper(billtocustomerparentACCOUNT) LIKE '%AT&T%'
					OR upper(billtocustomerparentACCOUNT) LIKE '%VERIZON%'
					OR upper(billtocustomerparentaccount) LIKE '%T-MOBILE%' THEN 'VERTIV STRATEGIC ACCOUNT'
					WHEN lob = 'AC POWER'
					AND upper(endcustomerparentACCOUNT) LIKE '%AT&T%'
					OR upper(endcustomerparentACCOUNT) LIKE '%VERIZON%'
					OR upper(endcustomerparentaccount) LIKE '%T-MOBILE%' THEN 'VERTIV STRATEGIC ACCOUNT'
					WHEN lob = 'THERMAL'
					AND upper(endcustomerparentACCOUNT) LIKE '%AT&T%'
					OR upper(endcustomerparentACCOUNT) LIKE '%VERIZON%'
					OR upper(endcustomerparentaccount) LIKE '%T-MOBILE%' THEN 'VERTIV STRATEGIC ACCOUNT'
					WHEN lob = 'SERVICES'
					AND upper(endcustomerparentACCOUNT) LIKE '%AT&T%'
					OR upper(endcustomerparentACCOUNT) LIKE '%VERIZON%'
					OR upper(endcustomerparentaccount) LIKE '%T-MOBILE%' THEN 'VERTIV STRATEGIC ACCOUNT'
					WHEN upper(product_category) LIKE '%SECURE%' THEN 'FEDERAL'
					ELSE 'OTHER'
				END account_type_aop1
			FROM
				(
				SELECT
					*,
					CASE
						WHEN netsalesrevenue > 3000000 THEN 'MEGA'
						WHEN upper(lob) = 'AC POWER'
						AND upper(gbu) = 'INFRASTRUCTURE & SOLUTIONS'
						AND netsalesrevenue < 750000 THEN 'FLOW'
						WHEN upper(lob) = 'DC POWER'
						AND upper(gbu) = 'INFRASTRUCTURE & SOLUTIONS'
						AND netsalesrevenue < 750000 THEN 'FLOW'
						WHEN upper(lob) = 'THERMAL'
						AND upper(gbu) = 'INFRASTRUCTURE & SOLUTIONS'
						AND netsalesrevenue < 500000 THEN 'FLOW'
						WHEN upper(lob) = 'DIGITAL ECOSYSTEM'
						AND upper(gbu) = 'SERVICES & SPARES'
						AND netsalesrevenue < 50000 THEN 'FLOW'
						WHEN upper(lob) = '1 PHASE UPS'
						AND upper(gbu) = 'INTEGRATED RACK SOLUTIONS'
						AND netsalesrevenue < 100000 THEN 'FLOW'
						WHEN upper(lob) = 'EDGE THERMAL'
						AND upper(gbu) = 'INTEGRATED RACK SOLUTIONS'
						AND netsalesrevenue < 100000 THEN 'FLOW'
						WHEN upper(lob) = 'RACK PDU'
						AND upper(gbu) = 'INTEGRATED RACK SOLUTIONS'
						AND netsalesrevenue < 100000 THEN 'FLOW'
						WHEN upper(lob) = 'RACKS'
						AND upper(gbu) = 'INTEGRATED RACK SOLUTIONS'
						AND netsalesrevenue < 100000 THEN 'FLOW'
						WHEN upper(lob) = 'GLOBAL EDGE SYSTEMS'
						AND upper(gbu) = 'INTEGRATED RACK SOLUTIONS'
						AND netsalesrevenue < 100000 THEN 'FLOW'
						WHEN upper(lob) = 'IT SYSTEMS'
						AND upper(gbu) = 'INTEGRATED RACK SOLUTIONS'
						AND netsalesrevenue < 100000 THEN 'FLOW'
						WHEN upper(lob) = 'ENERGY STORAGE'
						AND upper(gbu) = 'INFRASTRUCTURE & SOLUTIONS'
						AND netsalesrevenue < 750000 THEN 'FLOW'
						WHEN upper(lob) IN ('REGIONAL SERVICES', 'VERTIV SERVICES')
						AND upper(gbu) = 'SERVICES & SPARES' THEN 'SERVICES'
						WHEN upper(lob) = 'IMS/CUSTOM' THEN 'PROJECT'
						ELSE 'PROJECT'
					END sizecategory,
					CASE
						WHEN nvl(resellerbranchname1,
						'N') != 'N' THEN resellerbranchname1
						WHEN upper(recordsource) LIKE '%CDW%' THEN 'CDW LOGISTICS'
						WHEN upper(recordsource) LIKE '%GRAY%' THEN 'GRAYBAR ELECTRIC'
						WHEN upper(recordsource) LIKE '%CONNECTION%' THEN 'CONNECTION'
						WHEN nvl(business_name,
						'N') != 'N' THEN business_name
						ELSE NULL
					END resellerbranchname,
					CASE
						WHEN nvl(resellerbranchnumber1,
						'N') != 'N' THEN resellerbranchnumber1
						WHEN nvl(branch_office_nbr,
						'N') != 'N' THEN branch_office_nbr
						ELSE NULL
					END resellerbranchnumber,
					CASE
						WHEN upper(recordsource) = 'ERS_HVM' THEN 'FDO'
						WHEN upper(salesofficename) LIKE '%VERTIV%'
						OR upper(salesofficename) LIKE '%LIEBERT%' THEN 'FDO'
						ELSE 'LVO'
					END officetype
				FROM
					(
					SELECT
						ps.accountservicesales,
						'' accountam,
						'' accountcsm,
						'' accountlead,
						'' accountpresence,
						ps.accountsubtype,
						ps.accounttype,
						ps.activated,
						ps.activedate,
						CASE
							WHEN nvl(sa.aopaccountname,
							'N') != 'N' THEN sa.aopaccountname
							WHEN nvl(sb.aopaccountname,
							'N') != 'N' THEN sb.aopaccountname
							WHEN nvl(sm.sm_sku,
							'N') != 'N' THEN sm.aop_account_name
							ELSE 'Non Account'
						END aop_account_name,
						'' aop_category,
						ps.assignmentterritory,
						'' billtoaccountrole,
						'' billtocustomer,
						ps.billtocustomeraddress,
						ps.billtocustomercity,
						ps.billtocustomercountry,
						'' billtocustomercustomertype1,
						ps.billtocustomerenterpriseindustry,
						ps.billtocustomergicsinudstrygroupdescription,
						ps.billtocustomergicssectordescription,
						ps.billtocustomergsc,
						ps.billtocustomerid,
						ps.billtocustomerindustry,
						ps.billtocustomername,
						'' billtocustomername2,
						ps.billtocustomernumber,
						ps.billtocustomerparentaccount,
						ps.billtocustomerparentname,
						ps.billtocustomerpostalcode,
						ps.billtocustomerreportingname,
						ps.billtocustomerstandardizedname,
						ps.billtocustomerstate,
						ps.billtocustomersubvertical,
						ps.billtocustomertype,
						ps.billtocustomervertical,
						ps.billtoenterpriseindustry,
						ps.billtogsc_flag,
						ps.billtoindustry,
						ps.billtoindustrycode,
						ps.billtononrevenueflag,
						ps.billtoparentaccount,
						ps.billtostandardizedname,
						'' bsid,
						ps.cdwsalesarea,
						ps.cdwsalesregion,
						ps.cdwsalessegment,
						ps.intrachannelflag,
						ps.cloudlistprice,
						ps.coe,
						'' coe_new,
						'' contracttype,
						'' customerpurchaseordernumber,
						'' customerrequestdate,
						ps.country,
						ps.crossrefwithlesnumber,
						ps.currency,
						'' data_last_refreshed,
						'' endcustomer,
						ps.endcustomeraccountrole,
						ps.endcustomeraddress,
						ps.endcustomercity,
						ps.endcustomercountry,
						ps.endcustomercustomertype1,
						ps.endcustomerenterpriseindustry,
						'' endcustomergsc,
						ps.endcustomergscflag,
						ps.endcustomerid,
						ps.endcustomerindustry1,
						ps.endcustomerindustrycode1,
						ps.endcustomername,
						'' endcustomernumber,
						ps.endcustomerparentaccount,
						ps.endcustomerpostalcode,
						'' endcustomerstandardizedexists,
						ps.endcustomerstandardizedname,
						ps.endcustomerstate,
						'' endcustomerstate2,
						ps.endcustomersubvertical,
						ps.endcustomervertical,
						CAST('' AS DOUBLE) exchangerateused,
						ps.extendedlistprice,
						ps.extendedstandardcost,
						ps.gbu,
						ps.hashedbilltocustomername,
						ps.hashedendcustomername,
						ps.hashedshiptocustomername,
						ps.hashedsoldtocustomername,
						ps.invoicedate,
						ps.invoicelinenumber,
						ps.invoicenumber,
						'' alicecommissionoverridepercent,
						ps.level6,
						ps.listprice,
						ps.lob,
						ps.multiplier,
						ps.namedaccountofficeassign,
						ps.namedaccountsplit,
						ps.netsalesrevenue,
						ps.newlescrossref2,
						ps.oemtag,
						ps.officelocation,
						'' office_group,
						'' office_website,
						'' ordercoordinator,
						ps.invoicedate ordercreatedate,
						'' orderdeliverypromiseddate,
						'' orderexlinenumber,
						'' orderlastupdatedate,
						ps.originalsplitpercent,
						'' partnerwebfolderid,
						'' partnerwebquotenumber,
						'' plant,
						'' plantdescription,
						ps.posprojectregistrationnumber,
						ps.possku,
						ps.postalcodesofficeassign,
						'' product_category,
						'' product_category_new,
						ps.productfamily product_family,
						'' product_family_new,
						ps.producthierarchylevel1description,
						ps.producthierarchylevel2description,
						ps.producthierarchylevel3description,
						ps.producthierarchylevel4code,
						ps.producthierarchylevel4description,
						'' proshipmentnumber,
						CAST('' AS DOUBLE) quantityordered,
						nvl(CAST(ps.quantityshipped AS DOUBLE),
						0) quantityshipped,
						'' quoteid,
						ps.recordid,
						ps.recordsource,
						ps.region,
						ps.resellermajorcode,
						ps.resellerminorcode,
						ps.resellername,
						ps.resellernumber,
						ps.resellerpartnerlevel,
						ps.resellerpartnertype,
						ps.resellerregion,
						ps.resellersalesofficename,
						ps.resellersalesofficenumber,
						ps.responseid,
						ps.sales_area,
						ps.salesofficefamily,
						ps.salesofficename,
						ps.salesofficenumber,
						ps.salesofficenumber2,
						ps.salesofficeprincipalemail,
						ps.salesofficeprincipalname,
						'' salesofficereferencenumber,
						ps.salesordernumber,
						ps.salesofficeregion,
						ps.salesofficeterritory,
						ps.salesoutprimarykey,
						ps.salesregion,
						ps.salesregion2,
						'' salesregionnumber,
						ps.salesrepemail,
						ps.salesrepid,
						ps.salesrepname,
						'' salesreptype,
						ps.segment,
						'CHANNEL' selling_motion,
						'' sfr_category,
						'' shipdate,
						'' shipmentcarriername,
						ps.shiptocustomeraddress,
						ps.shiptocustomercity,
						ps.shiptocustomercountry,
						'' shiptocustomercustomertype1,
						ps.shiptocustomerenterpriseindustry,
						ps.shiptocustomergsc,
						ps.shiptocustomerid,
						ps.shiptocustomerindustry1,
						ps.shiptocustomername,
						ps.shiptocustomernumber,
						ps.shiptocustomerparentaccount,
						ps.shiptocustomerparentname,
						ps.shiptocustomerpostalcode,
						ps.shiptocustomerstandardizedname,
						ps.shiptocustomerstate,
						ps.shiptocustomersubvertical,
						ps.shiptocustomervertical,
						ps.shiptocustomertype1,
						ps.shiptocustomertype1_2,
						ps.shiptoenterpriseindustry,
						ps.shiptogsc_flag,
						ps.shiptoindustry1,
						ps.shiptoparentaccount,
						ps.shiptostandardizedname,
						ps.sku,
						ps.skudescription,
						'' smscustomertype,
						'' smstagnumber,
						ps.soldtocustomeraddress,
						ps.soldtocustomercity,
						ps.soldtocustomercountry,
						ps.soldtocustomercustomergsc,
						ps.soldtocustomercustomertype1,
						ps.soldtocustomerindustry1,
						ps.soldtocustomername,
						ps.soldtocustomernumber,
						'' soldtocustomerenterpriseindustry,
						'' soldtocustomergsc,
						ps.soldtocustomerparentaccount,
						ps.soldtocustomerpostalcode,
						ps.soldtocustomerstate,
						ps.soldtocustomersubvertical,
						ps.soldtocustomervertical,
						'' soldtocustomerstandardizedname,
						ps.sp1productflag,
						ps.sp1targetaccountflag,
						ps.sp2productflag,
						ps.sp2targetaccountflag,
						ps.splitpercent,
						ps.standard_products,
						ps.standardcost,
						ps.transactionamount,
						ps.transactiontype,
						ps.yearmonth,
						'' w_insert_by,
						'' w_insert_dtm,
						'' src_system_name,
						sa.accounttypeaop,
						sb.accounttypeaop accounttypeaop1,
						sm.sm_account_flag sm_account_flag,
						sm.sm_sku sm_sku,
						sa.acct_name acct_name,
						sa.aopaccountname,
						sb.aopaccountname aopaccountname1,
						h.business_name business_name,
						h.branch_office_nbr branch_office_nbr,
						xx.resellerbranchname resellerbranchname1,
						xx.resellerbranchnumber resellerbranchnumber1,
						'' uom,
						'' sales_order_line_type,
	                    '' Order_type,
	                    '' Class_code,
						'' as OEM_FLAG,
                        ps.billtocustomerclasscode,
                        ps.endcustomerclasscode,
ps.shiptocustomerclasscode,
ps.soldtocustomerclasscode,
ps.billtocustomerpartnerclasscode,
ps.endcustomerpartnerclasscode,
ps.shiptocustomerpartnerclasscode,
ps.soldtocustomerpartnerclasscode,
ps.billtooracleregistryid, 
ps.endoracleregistryid,
ps.shiptooracleregistryid,
ps.soldtooracleregistryid,
ps.billtocustomerindustry1,
ps.billtocustomerindustry3,
ps.endcustomerindustry3,
ps.shiptocustomerindustry3,
ps.soldtocustomerindustry3,
ps.billtoreportingsubparent1,
ps.endreportingsubparent1,
ps.shiptoreportingsubparent1,
ps.soldtoreportingsubparent1,
ps.billtodefinitiveidnid,
ps.enddefinitiveidnid,
ps.shiptodefinitiveidnid,
ps.soldtodefinitiveidnid,
ps.billtodefinitiveidnidparentid,
ps.enddefinitiveidnidparentid,
ps.shiptodefinitiveidnidparentid,
ps.soldtodefinitiveidnidparentid,
ps.billtoncesleaid,
ps.endncesleaid,
ps.shiptoncesleaid,
ps.soldtoncesleaid,
ps.billtocustomerprovince,
ps.endcustomerprovince,
ps.shiptocustomerprovince,
ps.soldtocustomerprovince,
ps.billtooraclepartysitenumber,  
ps.endoraclepartysitenumber,
ps.shiptooraclepartysitenumber,
ps.soldtooraclepartysitenumber,
ps.billtodefinitiveid,
ps.enddefinitiveid,
ps.shiptodefinitiveid,
ps.soldtodefinitiveid,
ps.billtoncesschid,
ps.endncesschid,
ps.shiptoncesschid,
ps.soldtoncesschid,
ps.billtoaccounttype,
ps.endaccounttype,
ps.shiptoaccounttype,
ps.soldtoaccounttype,
ps.productcommissionclasscode,
'' Measure,
cast('' as int) Calendar_Month,
cast('' as int) Calendar_Year,
'' Local_Currency,
'' Sales_Office,
cast('' as double) Unit_Price,
cast('' as double) Unit_Price_FXD_USD,
ps.billtoservicesmajoracc,  
ps.endservicesmajoracc,
ps.shiptoservicesmajoracc,
ps.soldtoservicesmajoracc,
ps.billtocustomersubclass,
ps.endcustomersubclass,
ps.shiptocustomersubclass,
ps.soldtocustomersubclass,
'' 	aop_customer_sub_class,
ps.serialnumber
	
					FROM
						(
						SELECT
							*
						FROM
							prod_na_cld_osc_gold.pos_na
						WHERE
							intrachannelflag != 'YES') ps
					LEFT OUTER JOIN prod_edm_other_src_silver.ref_sellingmotion_accounts sa ON
						trim(upper(ps.billtocustomerparentaccount)) = upper(sa.acct_name)
					LEFT OUTER JOIN prod_edm_other_src_silver.ref_sellingmotion_accounts sb ON
						trim(upper(ps.EndCustomerParentAccount)) = upper(sb.acct_name)
					LEFT OUTER JOIN prod_edm_other_src_silver.ref_sellingmotion_sku sm ON
						ps.sku = sm.sm_sku
					LEFT OUTER JOIN (WITH tt AS (
						SELECT
							DISTINCT branch_id_number__cf resellerbranchnumber,
							oracle_company_nbr__cf customer_number
						FROM
							prod_impartner_silver.account
						WHERE
							oracle_company_nbr__cf IS NOT NULL
							AND oracle_company_nbr__cf != '0'
							AND region_hidden__cf = 'North America'
					UNION ALL
						SELECT
							DISTINCT branch_id_number__cf resellerbranchnumber,
							les_code__cf customer_number
						FROM
							prod_impartner_silver.account
						WHERE
							les_code__cf IS NOT NULL
							AND region_hidden__cf = 'North America')
						SELECT
							customer_number,
							src_system_name_join,
							resellerbranchnumbernew resellerbranchnumber,
							resellerbranchname,
							mdm_hdr_id,
							customer_name_txt,
							ultimate_parent_txt
						FROM
							(
							SELECT
								*,
								CASE
									WHEN resellerbranchnumber IS NULL THEN NULL
									WHEN resellerbranchnumber = '1939'
										AND mdm_hdr_id IN (388004)
											AND ultimate_parent_txt = 'DELL' THEN 'DELL COMPUTER CORP'
											WHEN resellerbranchnumber = '1939'
											AND mdm_hdr_id IN (387997)
												AND ultimate_parent_txt = 'DELL' THEN 'DELL CANADA'
												WHEN resellerbranchnumber = '1939'
												AND mdm_hdr_id NOT IN (388004, 387997)
													AND ultimate_parent_txt = 'DELL' THEN NULL
													WHEN resellerbranchnumber = '491'
													AND mdm_hdr_id IN (240861, 240870, 240872, 240878, 240887, 240895, 484110, 484111, 499021)
														AND ultimate_parent_txt = 'NTT/RAGINGWIRE' THEN 'NTT DATA'
														WHEN resellerbranchnumber = '491'
														AND mdm_hdr_id IN (113487)
															AND ultimate_parent_txt = 'NTT/RAGINGWIRE' THEN 'ELECTRONIC ENVIRONMENTS CO. LLC'
															WHEN resellerbranchnumber = '491'
															AND mdm_hdr_id NOT IN (240861, 240870, 240872, 240878, 240887, 240895, 484110, 484111, 499021)
																AND ultimate_parent_txt = 'NTT/RAGINGWIRE' THEN NULL
																WHEN resellerbranchnumber IN ('1134', '108')
																	AND mdm_hdr_id IN (33364, 33365, 33366, 33367)
																		AND ultimate_parent_txt = 'AT&T' THEN 'AT&T MOBILITY'
																		WHEN resellerbranchnumber IN ('1134', '108')
																			AND mdm_hdr_id IN (492626, 368870)
																				AND ultimate_parent_txt = 'AT&T' THEN 'WIRE TECHNOLOGIES'
																				WHEN resellerbranchnumber IN ('1134', '108')
																					AND mdm_hdr_id NOT IN (33364, 33365, 33366, 33367, 492626, 368870)
																						AND ultimate_parent_txt = 'AT&T' THEN NULL
																						ELSE nvl(ultimate_parent_txt,
																						customer_name_txt)
																					END resellerbranchname,
																					CASE
																						WHEN resellerbranchnumber IS NULL THEN NULL
																						WHEN resellerbranchnumber = '1939'
																							AND mdm_hdr_id IN (388004)
																								AND ultimate_parent_txt = 'DELL' THEN '1939'
																								WHEN resellerbranchnumber = '1939'
																								AND mdm_hdr_id IN (387997)
																									AND ultimate_parent_txt = 'DELL' THEN '1939'
																									WHEN resellerbranchnumber = '1939'
																									AND mdm_hdr_id NOT IN (388004, 387997)
																										AND ultimate_parent_txt = 'DELL' THEN NULL
																										WHEN resellerbranchnumber = '491'
																										AND mdm_hdr_id IN (240861, 240870, 240872, 240878, 240887, 240895, 484110, 484111, 499021)
																											AND ultimate_parent_txt = 'NTT/RAGINGWIRE' THEN '443'
																											WHEN resellerbranchnumber = '491'
																											AND mdm_hdr_id IN (113487)
																												AND ultimate_parent_txt = 'NTT/RAGINGWIRE' THEN '491'
																												WHEN resellerbranchnumber = '491'
																												AND mdm_hdr_id NOT IN (33364, 33365, 33366, 33367, 492626, 368870)
																													AND ultimate_parent_txt = 'NTT/RAGINGWIRE' THEN NULL
																													WHEN resellerbranchnumber IN ('1134', '108')
																														AND mdm_hdr_id IN (33364, 33365, 33366, 33367)
																															AND ultimate_parent_txt = 'AT&T' THEN '108'
																															WHEN resellerbranchnumber IN ('1134', '108')
																																AND mdm_hdr_id IN (492626, 368870)
																																	AND ultimate_parent_txt = 'AT&T' THEN '1134'
																																	WHEN resellerbranchnumber IN ('1134', '108')
																																		AND mdm_hdr_id NOT IN (33364, 33365, 33366, 33367, 492626, 368870)
																																			AND ultimate_parent_txt = 'AT&T' THEN NULL
																																			ELSE resellerbranchnumber
																																		END resellerbranchnumbernew
																																	FROM
																																		(
																																		SELECT
																																			customer_number,
																																			src_system_name_join,
																																			mdm_hdr_id,
																																			customer_name_txt,
																																			ultimate_parent_txt,
																																			max(resellerbranchnumber1) OVER (PARTITION BY nvl(ultimate_parent_txt,
																																			customer_name_txt)) resellerbranchnumber
																																		FROM
																																			(
																																			SELECT
																																				b.resellerbranchnumber,
																																				nvl(a.customer_number,
																																				a.integration_id_join) customer_number,
																																				a.src_system_name_join,
																																				a.mdm_hdr_id,
																																				a.ultimate_parent_txt,
																																				a.customer_name_txt,
																																				max(b.resellerbranchnumber) OVER (PARTITION BY a.mdm_hdr_id) resellerbranchnumber1
																																			FROM
																																				prod_mdm_hub_gold.d_customer_header_v a
																																			LEFT OUTER JOIN tt b ON
																																				a.customer_number = b.customer_number) c) d) e) xx ON
						ps.billtocustomernumber = XX.customer_number
						AND nvl(XX.customer_number,
						'N') != 'N'
						AND ps.recordsource = xx.src_system_name_join
					LEFT OUTER JOIN prod_edm_other_src_silver.varsdatabase_sellingmotion h ON
						ps.billtocustomernumber = h.Business_Nbr) aa) dt) tt) st) pt
UNION ALL
SELECT
	accountservicesales,
	account_type_aop,
	accountam,
	accountcsm,
	accountlead,
	accountpresence,
	accountsubtype,
	accounttype,
	'' activated,
	'' activedate,
	aop_account_name,
	aop_category,
	'' assignmentterritory,
	billtoaccountrole,
	billtocustomer,
	billtocustomeraddress,
	'' billtocustomercity,
	'' billtocustomercountry,
	billtocustomercustomertype1,
	billtocustomerenterpriseindustry,
	'' billtocustomergicsinudstrygroupdescription,
	'' billtocustomergicssectordescription,
	billtocustomergsc,
	'' billtocustomerid,
	billtocustomerindustry1 billtocustomerindustry,
	billtocustomername,
	billtocustomername2,
	billtocustomernumber,
	billtocustomerparentaccount,
	'' billtocustomerparentname,
	billtocustomerpostalcode,
	'' billtocustomerreportingname,
	billtocustomerstandardizedname,
	'' billtocustomerstate,
	'' billtocustomersubvertical,
	'' billtocustomertype,
	billtocustomervertical,
	'' billtoenterpriseindustry,
	'' billtogsc_flag,
	'' billtoindustry,
	'' billtoindustrycode,
	'' billtononrevenueflag,
	'' billtoparentaccount,
	'' billtostandardizedname,
	bsid,
	'' cdwsalesarea,
	'' cdwsalesregion,
	'' cdwsalessegment,
	channelflag intrachannelflag,
	CAST('' AS DOUBLE) cloudlistprice,
	coe,
	coe_new,
	contracttype,
	customerpurchaseordernumber,
	customerrequestdate,
	'' country,
	'' crossrefwithlesnumber,
	'' currency,
	data_last_refreshed,
	endcustomer,
	endcustomeraccountrole,
	endcustomeraddress,
	endcustomercity,
	endcustomercountry,
	endcustomercustomertype1,
	endcustomerenterpriseindustry,
	endcustomergsc,
	'' endcustomergscflag,
	'' endcustomerid,
	endcustomerindustry1,
	'' endcustomerindustrycode1,
	endcustomername,
	endcustomernumber,
	endcustomerparentaccount,
	endcustomerpostalcode,
	endcustomerstandardizedexists,
	endcustomerstandardizedname,
	endcustomerstate,
	endcustomerstate2,
	'' endcustomersubvertical,
	endcustomervertical,
	exchangerateused,
	extendedlistprice,
	'' extendedstandardcost,
	gbu,
	growth_target,
	'' hashedbilltocustomername,
	'' hashedendcustomername,
	'' hashedshiptocustomername,
	'' hashedsoldtocustomername,
	'' invoicedate,
	'' invoicelinenumber,
	'' invoicenumber,
	alicecommissionoverridepercent,
	level_6 level6,
	listprice,
	lob,
	CAST('' AS DOUBLE) multiplier,
	'' namedaccountofficeassign,
	'' namedaccountsplit,
	netsalesrevenue,
	'' newlescrossref2,
	'' oemtag,
	'' officelocation,
	office_type officetype,
	office_group,
	office_website,
	ordercoordinator,
	ordercreatedate,
	orderdeliverypromiseddate,
	orderexlinenumber,
	orderlastupdatedate,
	'' originalsplitpercent,
	partnerwebfolderid,
	partnerwebquotenumber,
	plant,
	plantdescription,
	'' posprojectregistrationnumber,
	'' possku,
	'' postalcodesofficeassign,
	product_category,
	product_category_new,
	product_family,
	product_family_new,
	'' producthierarchylevel1description,
	'' producthierarchylevel2description,
	'' producthierarchylevel3description,
	'' producthierarchylevel4code,
	'' producthierarchylevel4description,
	proshipmentnumber,
	quantityordered,
	nvl(shippedquantity,
	0) quantityshipped,
	quoteid,
	'' recordid,
	recordsource,
	'' region,
	resellerbranchname,
	resellerbranchnumber,
	'' resellermajorcode,
	'' resellerminorcode,
	billtocustomername resellername,
	resellernumber,
	'' resellerpartnerlevel,
	'' resellerpartnertype,
	'' resellerregion,
	'' resellersalesofficename,
	'' resellersalesofficenumber,
	'' responseid,
	sales_area,
	'' salesofficefamily,
	salesofficename,
	salesofficenumber,
	'' salesofficenumber2,
	salesofficeprincipalemail,
	'' salesofficeprincipalname,
	salesofficereferencenumber,
	salesordernumber,
	'' salesofficeregion,
	'' salesofficeterritory,
	'' salesoutprimarykey,
	salesregionname salesregion,
	'' salesregion2,
	salesregionnumber,
	salesrepemail,
	salesrepid,
	salesrepname,
	salesreptype,
	segment,
	selling_motion,
	sfr_category,
	shipdate,
	shipmentcarriername,
	shiptocustomeraddress,
	'' shiptocustomercity,
	shiptocustomercountry,
	shiptocustomercustomertype1,
	shiptocustomerenterpriseindustry,
	shiptocustomergsc,
	'' shiptocustomerid,
	shiptocustomerindustry1,
	shiptocustomername,
	shiptocustomernumber,
	shiptocustomerparentaccount,
	'' shiptocustomerparentname,
	'' shiptocustomerpostalcode,
	shiptocustomerstandardizedname,
	'' shiptocustomerstate,
	'' shiptocustomersubvertical,
	shiptocustomervertical,
	'' shiptocustomertype1,
	'' shiptocustomertype1_2,
	'' shiptoenterpriseindustry,
	'' shiptogsc_flag,
	'' shiptoindustry1,
	'' shiptoparentaccount,
	'' shiptostandardizedname,
	sizecategory,
	sku,
	skudescription,
	smscustomertype,
	smstagnumber,
	'' soldtocustomeraddress,
	'' soldtocustomercity,
	'' soldtocustomercountry,
	'' soldtocustomercustomergsc,
	soldtocustomercustomertype1,
	soldtocustomerindustry1,
	soldtocustomername,
	'' soldtocustomernumber,
	soldtocustomerenterpriseindustry,
	soldtocustomergsc,
	soldtocustomerparentaccount,
	'' soldtocustomerpostalcode,
	'' soldtocustomerstate,
	'' soldtocustomersubvertical,
	soldtocustomervertical,
	soldtocustomerstandardizedname,
	'' sp1productflag,
	'' sp1targetaccountflag,
	'' sp2productflag,
	'' sp2targetaccountflag,
	'' splitpercent,
	'' standard_products,
	'' standardcost,
	CAST('' AS DOUBLE) transactionamount,
	'' transactiontype,
	'' yearmonth,
	w_insert_by,
	w_insert_dtm,
	src_system_name,
	uom,
	sales_order_line_type,
	Order_type,
	Class_code,
	OEM_FLAG,
billtocustomerclasscode,
endcustomerclasscode,
shiptocustomerclasscode,
soldtocustomerclasscode,
billtocustomerpartnerclasscode,
endcustomerpartnerclasscode,
shiptocustomerpartnerclasscode,
soldtocustomerpartnerclasscode,
billtooracleregistryid, 
endoracleregistryid,
shiptooracleregistryid,
soldtooracleregistryid,
billtocustomerindustry1,
billtocustomerindustry3,
endcustomerindustry3,
shiptocustomerindustry3,
soldtocustomerindustry3,
billtoreportingsubparent1,
endreportingsubparent1,
shiptoreportingsubparent1,
soldtoreportingsubparent1,
billtodefinitiveidnid,
enddefinitiveidnid,
shiptodefinitiveidnid,
soldtodefinitiveidnid,
billtodefinitiveidnidparentid,
enddefinitiveidnidparentid,
shiptodefinitiveidnidparentid,
soldtodefinitiveidnidparentid,
billtoncesleaid,
endncesleaid,
shiptoncesleaid,
soldtoncesleaid,
billtocustomerprovince,
endcustomerprovince,
shiptocustomerprovince,
soldtocustomerprovince,
billtooraclepartysitenumber,  
endoraclepartysitenumber,
shiptooraclepartysitenumber,
soldtooraclepartysitenumber,
billtodefinitiveid,
enddefinitiveid,
shiptodefinitiveid,
soldtodefinitiveid,
billtoncesschid,
endncesschid,
shiptoncesschid,
soldtoncesschid,
billtoaccounttype,
endaccounttype,
shiptoaccounttype,
soldtoaccounttype,
productcommissionclasscode,
Measure,
Calendar_Month,
Calendar_Year,
Local_Currency,
Sales_Office,
Unit_Price,
Unit_Price_FXD_USD,
billtoservicesmajoracc,  
endservicesmajoracc,
shiptoservicesmajoracc,
soldtoservicesmajoracc,
billtocustomersubclass,
endcustomersubclass,
shiptocustomersubclass,
soldtocustomersubclass,
aop_customer_sub_class,
'' serialnumber
FROM
	prod_na_cld_osc_gold.orders_exploration_data_na_bkp
WHERE
	(NOT billtocustomername LIKE '%INGRAM MICRO%'
		AND NOT billtocustomername LIKE '%TECH DATA%'
		AND NOT billtocustomername LIKE '%PC CONNECTION%'
		AND NOT billtocustomername LIKE '%CDW%'
		AND NOT billtocustomername LIKE 'ARROW%'
		AND NOT billtocustomername LIKE '%SYNNEX%'
		AND NOT billtocustomername LIKE '%GRAYBAR%'
		AND NOT billtocustomername LIKE '%D AND H%'
		AND NOT billtocustomername LIKE '%D & H%')
 ;
