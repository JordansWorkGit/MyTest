1.populate_orders_out_na_table

truncate table @DB_LEVEL@_na_cld_osc_gold.orders_out_na;

insert into @DB_LEVEL@_na_cld_osc_gold.orders_out_na 
(
accountservicesales ,
account_type_aop ,
accountam ,
accountcsm ,
accountlead ,
accountpresence ,
accountsubtype ,
accounttype ,
activated ,
activedate ,
aop_account_name ,
aop_category ,
assignmentterritory ,
billtoaccountrole ,
billtocustomer ,
billtocustomeraddress ,
billtocustomercity ,
billtocustomercountry ,
billtocustomercustomertype1 ,
billtocustomerenterpriseindustry ,
billtocustomergicsinudstrygroupdescription ,
billtocustomergicssectordescription ,
billtocustomergsc ,
billtocustomerid ,
billtocustomerindustry ,
billtocustomername ,
billtocustomername2 ,
billtocustomernumber ,
billtocustomerparentaccount ,
billtocustomerparentname ,
billtocustomerpostalcode ,
billtocustomerreportingname ,
billtocustomerstandardizedname ,
billtocustomerstate ,
billtocustomersubvertical ,
billtocustomertype ,
billtocustomervertical ,
billtoenterpriseindustry ,
billtogsc_flag ,
billtoindustry ,
billtoindustrycode ,
billtononrevenueflag ,
billtoparentaccount ,
billtostandardizedname ,
bsid,
cdwsalesarea ,
cdwsalesregion ,
cdwsalessegment ,
intrachannelflag ,
cloudlistprice ,
coe ,
coe_new ,
contracttype ,
customerpurchaseordernumber ,
customerrequestdate ,
country ,
crossrefwithlesnumber ,
currency ,
data_last_refreshed ,
endcustomer ,
endcustomeraccountrole ,
endcustomeraddress ,
endcustomercity ,
endcustomercountry ,
endcustomercustomertype1 ,
endcustomerenterpriseindustry ,
endcustomergsc ,
endcustomergscflag ,
endcustomerid ,
endcustomerindustry1 ,
endcustomerindustrycode1 ,
endcustomername ,
endcustomernumber ,
endcustomerparentaccount ,
endcustomerpostalcode ,
endcustomerstandardizedexists ,
endcustomerstandardizedname ,
endcustomerstate ,
endcustomerstate2 ,
endcustomersubvertical ,
endcustomervertical ,
exchangerateused ,
extendedlistprice ,
extendedstandardcost ,
gbu ,
growth_target ,
hashedbilltocustomername ,
hashedendcustomername ,
hashedshiptocustomername ,
hashedsoldtocustomername ,
internalofficefamily ,
internalofficename ,
internalofficenumber ,
internalofficeprincipalemail ,
internalofficeprincipalname ,
internalofficeregion ,
internalofficesplit ,
internalofficeterritory ,
internalofficetype ,
internalprincipalemail ,
internalprincipalname ,
invoicedate ,
invoicelinenumber ,
invoicenumber ,
alicecommissionoverridepercent ,
level6 ,
listprice ,
lob ,
multiplier ,
namedaccountofficeassign ,
namedaccountsplit ,
netsalesrevenue ,
newlescrossref2 ,
oemtag ,
officelocation ,
officetype ,
office_group ,
office_website ,
ordercoordinator ,
ordercreatedate ,
orderdeliverypromiseddate ,
orderexlinenumber ,
orderlastupdatedate ,
originalsplitpercent ,
partnerwebfolderid ,
partnerwebquotenumber ,
plant ,
plantdescription ,
posprojectregistrationnumber ,
possku ,
postalcodesofficeassign ,
product_category ,
product_category_new ,
product_family ,
product_family_new ,
producthierarchylevel1description ,
producthierarchylevel2description ,
producthierarchylevel3description ,
producthierarchylevel4code ,
producthierarchylevel4description ,
proshipmentnumber ,
quantityordered ,
quantityshipped ,
quoteid,
recordid ,
recordsource ,
region ,
resellerbranchname ,
resellerbranchnumber ,
resellermajorcode ,
resellerminorcode ,
resellername ,
resellernumber ,
resellerpartnerlevel ,
resellerpartnertype ,
resellerregion ,
resellersalesofficename ,
resellersalesofficenumber ,
responseid ,
sales_area ,
salesofficefamily ,
salesofficename ,
salesofficenumber ,
salesofficenumber2 ,
salesofficeprincipalemail ,
salesofficeprincipalname ,
salesofficereferencenumber ,
salesordernumber ,
salesofficeregion ,
salesofficeterritory ,
salesoutprimarykey ,
salesregion ,
salesregion2 ,
salesregionnumber ,
salesrepemail ,
salesrepid ,
salesrepname ,
salesreptype ,
sapoemtag ,
segment ,
selling_motion ,
sfr_category ,
shipdate ,
shipmentcarriername ,
shiptocustomeraddress ,
shiptocustomercity ,
shiptocustomercountry ,
shiptocustomercustomertype1 ,
shiptocustomerenterpriseindustry ,
shiptocustomergsc ,
shiptocustomerid ,
shiptocustomerindustry1 ,
shiptocustomername ,
shiptocustomernumber ,
shiptocustomerparentaccount ,
shiptocustomerparentname ,
shiptocustomerpostalcode ,
shiptocustomerstandardizedname ,
shiptocustomerstate ,
shiptocustomersubvertical ,
shiptocustomervertical ,
shiptocustomertype1 ,
shiptocustomertype1_2 ,
shiptoenterpriseindustry ,
shiptogsc_flag ,
shiptoindustry1 ,
shiptoparentaccount ,
shiptostandardizedname ,
sizecategory ,
sku ,
skudescription ,
smsbatteriesonlyflag ,
smsbatteryrbsm ,
smscontractenddate ,
smscontractexpiredate ,
smscontractpms ,
smscontractsequence ,
smscontractstartdate ,
smscontractstatus ,
smscustomertype ,
smsequipmentsegment ,
smsrevcat ,
smssiteid ,
smsstackedwhenbooked ,
smstagnumber ,
smsticketnumber ,
smstickettype ,
soldtocustomeraddress ,
soldtocustomercity ,
soldtocustomercountry ,
soldtocustomercustomergsc ,
soldtocustomercustomertype1 ,
soldtocustomerindustry1 ,
soldtocustomername ,
soldtocustomernumber ,
soldtocustomerenterpriseindustry ,
soldtocustomergsc ,
soldtocustomerparentaccount ,
soldtocustomerpostalcode ,
soldtocustomerstate ,
soldtocustomersubvertical ,
soldtocustomervertical ,
soldtocustomerstandardizedname ,
sp1productflag ,
sp1targetaccountflag ,
sp2productflag ,
sp2targetaccountflag ,
speed_dial ,
splitpercent ,
standard_products ,
standardcost ,
transactionamount ,
transactiontype ,
yearmonth ,
w_insert_by ,
w_insert_dtm,
src_system_name,
uom,
sales_order_line_type,
Order_type,
Class_code,
OEM_FLAG,
billtocustomerclasscode,-- SO-621 new attributes addition starts
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
soldtoncesschid,-- SO-621 new attributes addition ends
billtoaccounttype,--SO-661 new attribute additions starts
endaccounttype,
shiptoaccounttype,
soldtoaccounttype,--SO-661 new attribute additions end
productcommissionclasscode,
measure,
calendar_month,
calendar_year,
local_currency,
sales_office,
unit_price,
unit_price_fxd_usd,
billtoservicesmajoracc,  --so-665 new attributes addition starts
endservicesmajoracc,
shiptoservicesmajoracc,
soldtoservicesmajoracc ,  --so-665 new attributes addition ends
billtocustomersubclass, --so-728 new attributes addition starts
endcustomersubclass,
shiptocustomersubclass,
soldtocustomersubclass,  --so-728 new attributes addition ends
aop_customer_sub_class
)
select 
accountservicesales ,
account_type_aop,
accountam ,
accountcsm ,
accountlead ,
accountpresence ,
accountsubtype ,
accounttype ,
activated ,
activedate ,
upper(aop_account_name),
aop_category ,
assignmentterritory ,
billtoaccountrole ,
billtocustomer ,
billtocustomeraddress ,
billtocustomercity ,
billtocustomercountry ,
billtocustomercustomertype1 ,
billtocustomerenterpriseindustry ,
billtocustomergicsinudstrygroupdescription ,
billtocustomergicssectordescription ,
billtocustomergsc ,
billtocustomerid ,
billtocustomerindustry ,
billtocustomername ,
billtocustomername2 ,
billtocustomernumber ,
billtocustomerparentaccount ,
billtocustomerparentname ,
billtocustomerpostalcode ,
billtocustomerreportingname ,
billtocustomerstandardizedname ,
billtocustomerstate ,
billtocustomersubvertical ,
billtocustomertype ,
billtocustomervertical ,
billtoenterpriseindustry ,
billtogsc_flag ,
billtoindustry ,
billtoindustrycode ,
billtononrevenueflag ,
billtoparentaccount ,
billtostandardizedname ,
bsid,
cdwsalesarea ,
cdwsalesregion ,
cdwsalessegment ,
intrachannelflag ,
cloudlistprice ,
coe ,
coe_new ,
contracttype ,
customerpurchaseordernumber ,
customerrequestdate ,
country ,
crossrefwithlesnumber ,
currency ,
data_last_refreshed ,
endcustomer ,
endcustomeraccountrole ,
endcustomeraddress ,
endcustomercity ,
endcustomercountry ,
endcustomercustomertype1 ,
endcustomerenterpriseindustry ,
endcustomergsc ,
endcustomergscflag ,
endcustomerid ,
endcustomerindustry1 ,
endcustomerindustrycode1 ,
endcustomername ,
endcustomernumber ,
endcustomerparentaccount ,
endcustomerpostalcode ,
endcustomerstandardizedexists ,
endcustomerstandardizedname ,
endcustomerstate ,
endcustomerstate2 ,
endcustomersubvertical ,
endcustomervertical ,
exchangerateused ,
extendedlistprice ,
extendedstandardcost ,
gbu ,
growth_target,
hashedbilltocustomername ,
hashedendcustomername ,
hashedshiptocustomername ,
hashedsoldtocustomername ,
internalofficefamily ,
internalofficename ,
internalofficenumber ,
internalofficeprincipalemail ,
internalofficeprincipalname ,
internalofficeregion ,
internalofficesplit ,
internalofficeterritory ,
internalofficetype ,
internalprincipalemail ,
internalprincipalname ,
invoicedate ,
invoicelinenumber ,
invoicenumber ,
alicecommissionoverridepercent ,
level6 ,
listprice ,
lob ,
multiplier ,
namedaccountofficeassign ,
namedaccountsplit ,
netsalesrevenue ,
newlescrossref2 ,
oemtag ,
officelocation ,
officetype ,
office_group ,
office_website ,
ordercoordinator ,
ordercreatedate ,
orderdeliverypromiseddate ,
orderexlinenumber ,
orderlastupdatedate ,
originalsplitpercent ,
partnerwebfolderid ,
partnerwebquotenumber ,
plant ,
plantdescription ,
posprojectregistrationnumber ,
possku ,
postalcodesofficeassign ,
product_category ,
product_category_new ,
product_family ,
product_family_new ,
producthierarchylevel1description ,
producthierarchylevel2description ,
producthierarchylevel3description ,
producthierarchylevel4code ,
producthierarchylevel4description ,
proshipmentnumber ,
quantityordered ,
quantityshipped ,
quoteid,
recordid ,
recordsource ,
region ,
resellerbranchname,
resellerbranchnumber,
resellermajorcode ,
resellerminorcode ,
resellername ,
resellernumber ,
resellerpartnerlevel ,
resellerpartnertype ,
resellerregion ,
resellersalesofficename ,
resellersalesofficenumber ,
responseid ,
sales_area ,
salesofficefamily ,
salesofficename ,
salesofficenumber ,
salesofficenumber2 ,
salesofficeprincipalemail ,
salesofficeprincipalname ,
salesofficereferencenumber ,
salesordernumber ,
salesofficeregion ,
salesofficeterritory ,
salesoutprimarykey ,
salesregion ,
salesregion2 ,
salesregionnumber ,
salesrepemail ,
salesrepid ,
salesrepname ,
salesreptype ,
sapoemtag ,
segment ,
selling_motion ,
sfr_category ,
shipdate ,
shipmentcarriername ,
shiptocustomeraddress ,
shiptocustomercity ,
shiptocustomercountry ,
shiptocustomercustomertype1 ,
shiptocustomerenterpriseindustry ,
shiptocustomergsc ,
shiptocustomerid ,
shiptocustomerindustry1 ,
shiptocustomername ,
shiptocustomernumber ,
shiptocustomerparentaccount ,
shiptocustomerparentname ,
shiptocustomerpostalcode ,
shiptocustomerstandardizedname ,
shiptocustomerstate ,
shiptocustomersubvertical ,
shiptocustomervertical ,
shiptocustomertype1 ,
shiptocustomertype1_2 ,
shiptoenterpriseindustry ,
shiptogsc_flag ,
shiptoindustry1 ,
shiptoparentaccount ,
shiptostandardizedname ,
sizecategory,
sku ,
skudescription ,
smsbatteriesonlyflag ,
smsbatteryrbsm ,
smscontractenddate ,
smscontractexpiredate ,
smscontractpms ,
smscontractsequence ,
smscontractstartdate ,
smscontractstatus ,
smscustomertype ,
smsequipmentsegment ,
smsrevcat ,
smssiteid ,
smsstackedwhenbooked ,
smstagnumber ,
smsticketnumber ,
smstickettype ,
soldtocustomeraddress ,
soldtocustomercity ,
soldtocustomercountry ,
soldtocustomercustomergsc ,
soldtocustomercustomertype1 ,
soldtocustomerindustry1 ,
soldtocustomername ,
soldtocustomernumber ,
soldtocustomerenterpriseindustry ,
soldtocustomergsc ,
soldtocustomerparentaccount ,
soldtocustomerpostalcode ,
soldtocustomerstate ,
soldtocustomersubvertical ,
soldtocustomervertical ,
soldtocustomerstandardizedname ,
sp1productflag ,
sp1targetaccountflag ,
sp2productflag ,
sp2targetaccountflag ,
speed_dial ,
splitpercent ,
standard_products ,
standardcost ,
transactionamount ,
transactiontype ,
yearmonth ,
w_insert_by ,
w_insert_dtm,
src_system_name,
uom,
sales_order_line_type,
Order_type,
Class_code,
OEM_FLAG,
--SO-621 new attribute additions starts
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
--SO-621 new attribute additions end
--SO-661 new attribute additions starts
billtoaccounttype,
endaccounttype,
shiptoaccounttype,
soldtoaccounttype,
--SO-661 new attribute additions end
productcommissionclasscode,
measure,
calendar_month,
calendar_year,
local_currency,
sales_office,
unit_price,
unit_price_fxd_usd,
billtoservicesmajoracc,  --so-665 new attributes addition starts
endservicesmajoracc,
shiptoservicesmajoracc,
soldtoservicesmajoracc,   --so-665 new attributes addition ends
billtocustomersubclass, --so-728 new attributes addition starts
endcustomersubclass,
shiptocustomersubclass,
soldtocustomersubclass,  --so-728 new attributes addition ends
aop_customer_sub_class

from (
  SELECT
	*,
	CASE
WHEN trim(upper(account_type_aop)) = 'VERTIV DIRECT ACCOUNT' THEN 'N'
WHEN upper(account_type_aop) = 'ENTERPRISE ACCOUNT' AND upper(officetype) = 'LVO' AND (upper(sizecategory) = 'PROJECT' OR  upper(sizecategory) = 'FLOW')  THEN 'Y'
WHEN upper(account_type_aop) = 'VERTIV NAMED ACCOUNT' AND upper(officetype) = 'LVO' AND upper(sizecategory) = 'FLOW' THEN 'Y'
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
WHEN upper(level6) = 'SWITCHVIEW SECURE HARDWARE'
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
		OR upper(level6) LIKE '%SECURE%') THEN 'CHANNEL'
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
	    END temp_motion2 --Modified by Hari SO-689
	
FROM
	(
	SELECT
		*,
	CASE
		WHEN upper(billtoaccounttype) = 'INTERNAL'
		AND upper(billtocustomercountry) = 'UNITED STATES' THEN 'INTERCOMPANY USA'
		WHEN upper(billtoaccounttype) = 'INTERNAL'
		AND upper(billtocustomercountry) = 'CANADA' THEN 'INTERCOMPANY CANADA'
		WHEN upper(billtoaccounttype) = 'INTERNAL'
		AND (upper(billtocustomercountry) NOT IN ('UNITED STATES', 'CANADA')
		OR (nvl(billtocustomercountry,
		'N') = 'N')) THEN 'INTERCOMPANY OTHER'
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
            WHEN nvl(resellerbranchname1, 'N') != 'N' THEN resellerbranchname1
            WHEN upper(recordsource) like '%CDW%' THEN 'CDW LOGISTICS'
            WHEN upper(recordsource) like '%GRAY%' THEN 'GRAYBAR ELECTRIC'
            WHEN upper(recordsource) like '%CONNECTION%' THEN 'CONNECTION'
            WHEN nvl(business_name, 'N') != 'N' THEN business_name
            ELSE NULL
            END resellerbranchname,
CASE 
            WHEN nvl(resellerbranchnumber1, 'N') != 'N' THEN resellerbranchnumber1
            WHEN nvl(branch_office_nbr, 'N') != 'N' THEN branch_office_nbr
            ELSE NULL
            END resellerbranchnumber,
		CASE
			WHEN upper(recordsource) = 'ERS_HVM' THEN 'FDO'
	        WHEN upper(salesofficename) like '%VERTIV%'
	        or upper(salesofficename) like '%LIEBERT%' THEN 'FDO'
	        ELSE 'LVO'
            END officetype
		
from (select
ps.accountservicesales ,
'' accountam ,
'' accountcsm ,
'' accountlead ,
'' accountpresence ,
ps.accountsubtype ,
ps.accounttype ,
ps.activated ,
ps.activedate ,
CASE
            WHEN nvl(sa.aopaccountname, 'N') != 'N' THEN sa.aopaccountname
            WHEN nvl(sb.aopaccountname, 'N') != 'N' THEN sb.aopaccountname
            WHEN nvl(sm.sm_sku, 'N') != 'N' THEN sm.aop_account_name
            ELSE 'Non Account'
            END aop_account_name,
'' aop_category ,
ps.assignmentterritory ,
'' billtoaccountrole ,
'' billtocustomer ,
ps.billtocustomeraddress ,
ps.billtocustomercity ,
ps.billtocustomercountry ,
'' billtocustomercustomertype1 ,
ps.billtocustomerenterpriseindustry ,
ps.billtocustomergicsinudstrygroupdescription ,
ps.billtocustomergicssectordescription ,
ps.billtocustomergsc ,
ps.billtocustomerid ,
ps.billtocustomerindustry ,
ps.billtocustomername ,
'' billtocustomername2 ,
ps.billtocustomernumber ,
ps.billtocustomerparentaccount ,
ps.billtocustomerparentname ,
ps.billtocustomerpostalcode ,
ps.billtocustomerreportingname ,
ps.billtocustomerstandardizedname ,
ps.billtocustomerstate ,
ps.billtocustomersubvertical ,
ps.billtocustomertype ,
ps.billtocustomervertical ,
ps.billtoenterpriseindustry ,
ps.billtogsc_flag ,
ps.billtoindustry ,
ps.billtoindustrycode ,
ps.billtononrevenueflag ,
ps.billtoparentaccount ,
ps.billtostandardizedname ,
'' bsid,
ps.cdwsalesarea ,
ps.cdwsalesregion ,
ps.cdwsalessegment ,
ps.intrachannelflag ,
ps.cloudlistprice ,
ps.coe ,
'' coe_new ,
'' contracttype ,
'' customerpurchaseordernumber ,
'' customerrequestdate ,
ps.country ,
ps.crossrefwithlesnumber ,
ps.currency ,
'' data_last_refreshed ,
'' endcustomer ,
ps.endcustomeraccountrole ,
ps.endcustomeraddress ,
ps.endcustomercity ,
ps.endcustomercountry ,
ps.endcustomercustomertype1 ,
ps.endcustomerenterpriseindustry ,
'' endcustomergsc ,
ps.endcustomergscflag ,
ps.endcustomerid ,
ps.endcustomerindustry1 ,
ps.endcustomerindustrycode1 ,
ps.endcustomername ,
ps.endcustomernumber ,
ps.endcustomerparentaccount ,
ps.endcustomerpostalcode ,
'' endcustomerstandardizedexists ,
ps.endcustomerstandardizedname ,
ps.endcustomerstate ,
'' endcustomerstate2 ,
ps.endcustomersubvertical ,
ps.endcustomervertical ,
cast('' as double) as exchangerateused  , 
ps.extendedlistprice ,
ps.extendedstandardcost ,
ps.gbu ,
ps.hashedbilltocustomername ,
ps.hashedendcustomername ,
ps.hashedshiptocustomername ,
ps.hashedsoldtocustomername ,
ps.internalofficefamily ,
ps.internalofficename ,
ps.internalofficenumber ,
ps.internalofficeprincipalemail ,
ps.internalofficeprincipalname ,
ps.internalofficeregion ,
ps.internalofficesplit ,
ps.internalofficeterritory ,
ps.internalofficetype ,
ps.internalprincipalemail ,
ps.internalprincipalname ,
ps.invoicedate ,
ps.invoicelinenumber ,
ps.invoicenumber ,
'' alicecommissionoverridepercent ,
ps.level6 ,
ps.listprice ,
ps.lob ,
ps.multiplier ,
ps.namedaccountofficeassign ,
ps.namedaccountsplit ,
ps.netsalesrevenue ,
ps.newlescrossref2 ,
ps.oemtag ,
ps.officelocation ,
'' office_group ,
'' office_website ,
'' ordercoordinator ,
ps.invoicedate as ordercreatedate ,
'' orderdeliverypromiseddate ,
'' orderexlinenumber ,
'' orderlastupdatedate ,
ps.originalsplitpercent ,
'' partnerwebfolderid ,
'' partnerwebquotenumber ,
'' plant ,
'' plantdescription ,
ps.posprojectregistrationnumber ,
ps.possku ,
ps.postalcodesofficeassign ,
'' product_category ,
'' product_category_new ,
ps.productfamily as product_family ,
'' product_family_new ,
ps.producthierarchylevel1description ,
ps.producthierarchylevel2description ,
ps.producthierarchylevel3description ,
ps.producthierarchylevel4code ,
ps.producthierarchylevel4description ,
'' proshipmentnumber ,
nvl(cast(ps.quantityshipped as double),0) as quantityordered , 
--cast(quantityshipped as double) as quantityshipped , 
nvl(cast(ps.quantityshipped as double),0) as quantityshipped ,
'' quoteid,
ps.recordid ,
ps.recordsource ,
ps.region ,
ps.resellermajorcode ,
ps.resellerminorcode ,
ps.resellername ,
ps.resellernumber ,
ps.resellerpartnerlevel ,
ps.resellerpartnertype ,
ps.resellerregion ,
ps.resellersalesofficename ,
ps.resellersalesofficenumber ,
ps.responseid ,
ps.sales_area ,
ps.salesofficefamily ,
ps.salesofficename ,
ps.salesofficenumber ,
ps.salesofficenumber2 ,
ps.salesofficeprincipalemail ,
ps.salesofficeprincipalname ,
'' salesofficereferencenumber ,
ps.salesordernumber ,
ps.salesofficeregion ,
ps.salesofficeterritory ,
ps.salesoutprimarykey ,
ps.salesregion ,
ps.salesregion2 ,
'' salesregionnumber ,
ps.salesrepemail ,
ps.salesrepid ,
ps.salesrepname ,
'' salesreptype ,
'' sapoemtag ,
ps.segment ,
--'CHANNEL' selling_motion ,
'' sfr_category ,
'' shipdate ,
'' shipmentcarriername ,
ps.shiptocustomeraddress ,
ps.shiptocustomercity ,
ps.shiptocustomercountry ,
'' shiptocustomercustomertype1 ,
ps.shiptocustomerenterpriseindustry ,
ps.shiptocustomergsc ,
ps.shiptocustomerid ,
ps.shiptocustomerindustry1 ,
ps.shiptocustomername ,
ps.shiptocustomernumber ,
ps.shiptocustomerparentaccount ,
ps.shiptocustomerparentname ,
ps.shiptocustomerpostalcode ,
ps.shiptocustomerstandardizedname ,
ps.shiptocustomerstate ,
ps.shiptocustomersubvertical ,
ps.shiptocustomervertical ,
ps.shiptocustomertype1 ,
ps.shiptocustomertype1_2 ,
ps.shiptoenterpriseindustry ,
ps.shiptogsc_flag ,
ps.shiptoindustry1 ,
ps.shiptoparentaccount ,
ps.shiptostandardizedname ,
ps.sku ,
ps.skudescription ,
'' smsbatteriesonlyflag ,
'' smsbatteryrbsm ,
'' smscontractenddate ,
'' smscontractexpiredate ,
'' smscontractpms ,
'' smscontractsequence ,
'' smscontractstartdate ,
'' smscontractstatus ,
'' smscustomertype ,
'' smsequipmentsegment ,
'' smsrevcat ,
'' smssiteid ,
'' smsstackedwhenbooked ,
'' smstagnumber ,
'' smsticketnumber ,
'' smstickettype ,
ps.soldtocustomeraddress ,
ps.soldtocustomercity ,
ps.soldtocustomercountry ,
ps.soldtocustomercustomergsc ,
ps.soldtocustomercustomertype1 ,
ps.soldtocustomerindustry1 ,
ps.soldtocustomername ,
ps.soldtocustomernumber ,
'' soldtocustomerenterpriseindustry ,
'' soldtocustomergsc ,
ps.soldtocustomerparentaccount ,
ps.soldtocustomerpostalcode ,
ps.soldtocustomerstate ,
ps.soldtocustomersubvertical ,
ps.soldtocustomervertical ,
'' soldtocustomerstandardizedname ,
ps.sp1productflag ,
ps.sp1targetaccountflag ,
ps.sp2productflag ,
ps.sp2targetaccountflag ,
ps.speed_dial ,
ps.splitpercent ,
ps.standard_products ,
ps.standardcost ,
ps.transactionamount ,
ps.transactiontype ,
ps.yearmonth ,
'' w_insert_by ,
ps.w_insert_dtm ,
'' src_system_name,
sa.accounttypeaop,
sb.accounttypeaop as accounttypeaop1,
sm.sm_account_flag sm_account_flag,
sm.sm_sku sm_sku,
sa.acct_name acct_name,
sa.aopaccountname,
sb.aopaccountname as aopaccountname1,
h.business_name as business_name,
h.branch_office_nbr as branch_office_nbr,
xx.resellerbranchname as resellerbranchname1 ,
xx.resellerbranchnumber as resellerbranchnumber1,
'' as uom,
'' as sales_order_line_type,
'' as Order_type,
'' as Class_code,
'' as OEM_FLAG,
--SO-621 new attributes addition starts
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
--SO-621 new attributes addition ends
--SO-661 new attributes addition starts
ps.billtoaccounttype,
ps.endaccounttype,
ps.shiptoaccounttype,
ps.soldtoaccounttype,
--SO-661 new attributes addition ends
ps.productcommissionclasscode,
'' measure,
cast('' as int) calendar_month,
cast('' as int) calendar_year,
'' local_currency,
'' sales_office,
cast('' as double) unit_price,
cast('' as double) unit_price_fxd_usd,
ps.billtoservicesmajoracc,  --so-665 new attributes addition starts
ps.endservicesmajoracc,
ps.shiptoservicesmajoracc,
ps.soldtoservicesmajoracc, --so-665 new attributes addition ends
ps.billtocustomersubclass, --so-728 new attributes addition starts
ps.endcustomersubclass,
ps.shiptocustomersubclass,
ps.soldtocustomersubclass,  --so-728 new attributes addition ends
'' aop_customer_sub_class

from (select * from @DB_LEVEL@_na_cld_osc_gold.pos_na where intrachannelflag <> 'YES' and recordsource <> 'CONTEXT_POWER & TEL') ps
left outer join @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_accounts sa
on trim(upper(ps.billtocustomerparentaccount)) = upper(sa.acct_name)
left outer join @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_accounts sb
on trim(upper(ps.EndCustomerParentAccount)) = upper(sb.acct_name)
left outer join @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_sku sm
on ps.sku = sm.sm_sku
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
ON ps.billtocustomernumber = XX.customer_number 
and nvl(XX.customer_number,'N') != 'N' and ps.recordsource = xx.src_system_name_join
left Join  @DB_LEVEL@_edm_other_src_silver.Varsdatabase_Sellingmotion h on
ps.billtocustomernumber = h.Business_Nbr
)aa )dt )tt )st )pt)s1

UNION ALL

select 
accountservicesales ,
account_type_aop ,
accountam ,
accountcsm ,
accountlead ,
accountpresence ,
accountsubtype ,
accounttype ,
'' activated ,
'' activedate ,
aop_account_name ,
aop_category ,
'' assignmentterritory ,
billtoaccountrole ,
billtocustomer ,
billtocustomeraddress ,
billtocustomercity ,
billtocustomercountry ,
billtocustomercustomertype1 ,
billtocustomerenterpriseindustry ,
'' billtocustomergicsinudstrygroupdescription ,
'' billtocustomergicssectordescription ,
billtocustomergsc ,
'' billtocustomerid ,
billtocustomerindustry1 as billtocustomerindustry ,
billtocustomername ,
billtocustomername2 ,
billtocustomernumber ,
billtocustomerparentaccount ,
'' billtocustomerparentname ,
billtocustomerpostalcode ,
'' billtocustomerreportingname ,
billtocustomerstandardizedname ,
billtocustomerstate ,
billtocustomersubvertical ,
'' billtocustomertype ,
billtocustomervertical ,
'' billtoenterpriseindustry ,
'' billtogsc_flag ,
'' billtoindustry ,
'' billtoindustrycode ,
'' billtononrevenueflag ,
'' billtoparentaccount ,
'' billtostandardizedname ,
bsid ,
'' cdwsalesarea ,
'' cdwsalesregion ,
'' cdwsalessegment ,
channelflag as intrachannelflag ,
cast('' as double) as cloudlistprice , 
coe ,
coe_new ,
contracttype ,
customerpurchaseordernumber ,
customerrequestdate ,
'' country ,
'' crossrefwithlesnumber ,
'' currency ,
data_last_refreshed ,
endcustomer ,
endcustomeraccountrole ,
endcustomeraddress ,
endcustomercity ,
endcustomercountry ,
endcustomercustomertype1 ,
endcustomerenterpriseindustry ,
endcustomergsc ,
'' endcustomergscflag ,
'' endcustomerid ,
endcustomerindustry1 ,
'' endcustomerindustrycode1 ,
endcustomername ,
endcustomernumber ,
endcustomerparentaccount ,
endcustomerpostalcode ,
endcustomerstandardizedexists ,
endcustomerstandardizedname ,
endcustomerstate ,
endcustomerstate2 ,
endcustomersubvertical ,
endcustomervertical ,
exchangerateused ,
extendedlistprice ,
'' extendedstandardcost ,
gbu ,
growth_target ,
'' hashedbilltocustomername ,
'' hashedendcustomername ,
'' hashedshiptocustomername ,
'' hashedsoldtocustomername ,
'' internalofficefamily ,
'' internalofficename ,
'' internalofficenumber ,
'' internalofficeprincipalemail ,
'' internalofficeprincipalname ,
'' internalofficeregion ,
'' internalofficesplit ,
'' internalofficeterritory ,
'' internalofficetype ,
'' internalprincipalemail ,
'' internalprincipalname ,
'' invoicedate ,
'' invoicelinenumber ,
'' invoicenumber ,
alicecommissionoverridepercent ,
level_6 as level6 ,
listprice , 
lob ,
cast('' as double) as multiplier , 
'' namedaccountofficeassign ,
'' namedaccountsplit ,
netsalesrevenue ,
'' newlescrossref2 ,
'' oemtag ,
'' officelocation ,
office_type as officetype ,
office_group ,
office_website ,
ordercoordinator ,
ordercreatedate ,
orderdeliverypromiseddate ,
orderexlinenumber ,
orderlastupdatedate ,
'' originalsplitpercent ,
partnerwebfolderid ,
partnerwebquotenumber ,
plant ,
plantdescription ,
'' posprojectregistrationnumber ,
'' possku ,
'' postalcodesofficeassign ,
product_category ,
product_category_new ,
product_family ,
product_family_new ,
'' producthierarchylevel1description ,
'' producthierarchylevel2description ,
'' producthierarchylevel3description ,
'' producthierarchylevel4code ,
'' producthierarchylevel4description ,
proshipmentnumber ,
quantityordered ,
--shippedquantity as quantityshipped ,
nvl(shippedquantity,0) as quantityshipped ,
quoteid ,
'' recordid ,
recordsource ,
'' region ,
resellerbranchname ,
resellerbranchnumber ,
'' resellermajorcode ,
'' resellerminorcode ,
billtocustomername resellername ,
resellernumber ,
'' resellerpartnerlevel ,
'' resellerpartnertype ,
'' resellerregion ,
'' resellersalesofficename ,
'' resellersalesofficenumber ,
'' responseid ,
sales_area ,
'' salesofficefamily ,
salesofficename ,
salesofficenumber ,
'' salesofficenumber2 ,
salesofficeprincipalemail ,
'' salesofficeprincipalname ,
salesofficereferencenumber ,
salesordernumber ,
'' salesofficeregion ,
'' salesofficeterritory ,
'' salesoutprimarykey ,
salesregionname as salesregion ,
'' salesregion2 ,
salesregionnumber ,
salesrepemail ,
salesrepid ,
salesrepname ,
salesreptype ,
sapoemtag ,
segment ,
selling_motion ,
sfr_category ,
shipdate ,
shipmentcarriername ,
shiptocustomeraddress ,
shiptocustomercity ,
shiptocustomercountry ,
shiptocustomercustomertype1 ,
shiptocustomerenterpriseindustry ,
shiptocustomergsc ,
'' shiptocustomerid ,
shiptocustomerindustry1 ,
shiptocustomername ,
shiptocustomernumber ,
shiptocustomerparentaccount ,
'' shiptocustomerparentname ,
shiptocustomerpostalcode ,
shiptocustomerstandardizedname ,
shiptocustomerstate ,
shiptocustomersubvertical ,
shiptocustomervertical ,
'' shiptocustomertype1 ,
'' shiptocustomertype1_2 ,
'' shiptoenterpriseindustry ,
'' shiptogsc_flag ,
'' shiptoindustry1 ,
'' shiptoparentaccount ,
'' shiptostandardizedname ,
sizecategory ,
sku ,
skudescription ,
smsbatteriesonlyflag ,
smsbatteryrbsm ,
smscontractenddate ,
smscontractexpiredate ,
smscontractpms ,
smscontractsequence ,
smscontractstartdate ,
smscontractstatus ,
smscustomertype ,
smsequipmentsegment ,
smsrevcat ,
smssiteid ,
smsstackedwhenbooked ,
smstagnumber ,
smsticketnumber ,
smstickettype ,
soldtocustomeraddress ,
soldtocustomercity ,
soldtocustomercountry ,
'' soldtocustomercustomergsc ,
soldtocustomercustomertype1 ,
soldtocustomerindustry1 ,
soldtocustomername ,
'' soldtocustomernumber ,
soldtocustomerenterpriseindustry ,
soldtocustomergsc ,
soldtocustomerparentaccount ,
soldtocustomerpostalcode ,
soldtocustomerstate ,
soldtocustomersubvertical,
soldtocustomervertical ,
soldtocustomerstandardizedname ,
'' sp1productflag ,
'' sp1targetaccountflag ,
'' sp2productflag ,
'' sp2targetaccountflag ,
speed_dial ,
'' splitpercent ,
'' standard_products ,
'' standardcost ,
cast('' as double) as transactionamount , 
'' transactiontype ,
'' yearmonth ,
w_insert_by ,
w_insert_dtm ,
src_system_name,
uom,
sales_order_line_type,
Order_type,
Class_code,
OEM_FLAG,
--SO-621 new attributes addition starts
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
--SO-621 new attributes addition ends
--SO-661 new attributes addition starts
billtoaccounttype,
endaccounttype,
shiptoaccounttype,
soldtoaccounttype,
--SO-661 new attributes addition ends
productcommissionclasscode,
measure,
calendar_month,
calendar_year,
local_currency,
sales_office,
unit_price,
unit_price_fxd_usd,
billtoservicesmajoracc,  --so-665 new attributes addition starts
endservicesmajoracc,
shiptoservicesmajoracc,
soldtoservicesmajoracc,   --so-665 new attributes addition ends
billtocustomersubclass, --so-728 new attributes addition starts
endcustomersubclass,
shiptocustomersubclass,
soldtocustomersubclass,  --so-728 new attributes addition ends
aop_customer_sub_class
from @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na
where 
	  (billtocustomername not like "%INGRAM MICRO%"
	and billtocustomername not like "%TECH DATA%" 
	and billtocustomername not like "%PC CONNECTION%"
	and billtocustomername not like "%CDW%"
	and billtocustomername not like "ARROW%"
	and billtocustomername not like "%SYNNEX%" 
    and billtocustomername not like "%GRAYBAR%" 
    and billtocustomername not like "%D AND H%" 
    and billtocustomername not like "%D & H%");


invalidate metadata @DB_LEVEL@_na_cld_osc_gold.orders_out_na ;
