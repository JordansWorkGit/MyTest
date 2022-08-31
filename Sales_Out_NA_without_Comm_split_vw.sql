
drop view if exists prod_na_cld_osc_gold.Sales_Out_NA_without_Comm_split_vw ;
create View prod_na_cld_osc_gold.Sales_Out_NA_without_Comm_split_vw as

select 
'' 119_override
,accountam
,accountcsm
,accountlead
,accountpresence
,'' accounts_yn
,accountservicesalfes as accountservicesales
,accountsubtype
,accounttype
,'' activedate
,account_type_aop
,advanced_data_center_specialization
,anixtergraybarcdwflag
,aop_account_name
,billtoaccountrole
,billtocustomeraddress
,billtocustomercity
,billtocustomercountry
,billtocustomercustomertype1
,billtocustomerenterpriseindustry
,'' billtocustomergicsinudstrygroupdescription
,'' billtocustomergicssectordescription
,billtocustomergsc
,'' billtocustomerid
,billtocustomerindustry1
,billtocustomername
,billtocustomernumber
,billtocustomerparentaccount
,billtocustomerparentname
,billtocustomerpostalcode
,'' billtocustomerreportingname
,billtocustomerstandardizedname
,billtocustomerstate
,billtocustomertype1
,billtocustomervertical
,billtoenterpriseindustry
,billtogsc_flag
,billtoindustry1
,billtoindustrycode1
,'' billtononrevenueflag
,billtoparentaccount
,billtostandardizedname
,bsid
,'' cdwamemailaddress
,'' cdwsalesarea
,'' cdwsalesregion
,'' cdwsalessegment
,channelproductgrouping
,'' channel_commission_bucket
,cast('' as double) as cloudlistprice 
,coe
,'' companygrouping
,'' contract_length
,'' contract_type
,'' count
,country
,customerpurchaseordernumber
,'' coworkerlocationdescription
,'' crossrefwithlesnumber
,'' customeragencydescription
,'' currency
,customerrequestdate
,data_last_refreshed
,dcpowerprofitcenter
,'' distributionchannelcode
,'' distributionclassification
,'' documenttype
,'' ecommerce_flag
,'' endcustomer_cleaned
,endcustomeraccountrole
,endcustomeraddress
,endcustomercity
,endcustomercountry
,endcustomercustomertype1
,endcustomerenterpriseindustry
,endcustomergsc
,endcustomergsc_flag
,'' endcustomerid
,endcustomerindustry1
,'' endcustomerindustrycode1
,endcustomername
,endcustomernumber
,endcustomerparentaccount
,endcustomerparentname
,endcustomerpostalcode
,'' endcustomerpostalmondayticket
,'' endcustomerreportingname
,endcustomerstandardizedname
,endcustomerstate
,endcustomervertical
,exchangerateused
,extendedlistprice
,extendedstandardcost
,firstdestinationflag
,gbu
,'' geistcustomernumber
,'' geistproductclass
,growth_target
,'' internalofficefamily
,'' internalofficename
,'' internalofficenumber
,'' internalofficeprincipalemail
,'' internalofficeprincipalname
,'' internalofficeregion
,'' internalofficesplit
,'' internalofficeterritory
,'' internalofficetype
,'' internalprincipalemail
,'' internalprincipalname
,'' internalsalesrepid
,invoicedate
,invoicelinenumber
,invoicenumber
,'' legacy
,legacysizecategory
,'' lesbilltoaltindustrycode
,lesbilltomajorclass
,lesbilltominorclass
,'' lesbilltostandardindustrycode
,alicecommissionoverridepercent
,'' lescustomerindustrycodelevel1
,'' lescustomerindustrycodelevel2
,'' lescustomerindustrycodelevel3
,'' lesdb2grouping
,'' lesorderprefix
,'' lespointofcalculation
,'' lesproductdivisioncode
,'' lessalesclass
,'' lesshipmentnumber
,lesunitsflag
,level_6 as level6
,listprice
,'' listpricemondayticket
,lob
,'' majorlatecode
,'' managepricelists_vertiv_corporation_apr19
,'' marketinggroupcode
,'' marketinggroupname
,'' marketinggrouprevenueflag
,'' minorlatecode
,'' mondayticket
,monthlycost
,'' namedaccountofficeassign
,'' namedaccountsplit
,'' netprice
,netsalesrevenue
,'' netsalesrevenuemondayticket
,newlescrossref2
,'' notes
,'' numberforgroupingforsizecategory
,'' oemtag
,'' oemtagmondayticket
,office_location as officelocation
,office_type
,'' officeoverrideoccured
,'' officesplitmondayticket
,ordercreatedate
,'' orderincludeflag
,'' originalendcustomerparentaccount
,'' originallistprice
,'' originalnetsalesrevenue
,'' originaloemtag
,'' originalproductfamily
,'' originalsalesofficenumber
,'' originalsku
,'1'originalsplitpercent
,'' overrideendcustomerparentaccount
,'' overridelistprice
,'' overridenetsalesrevenue
,'' overrideoccured
,'' overrideoemtag
,'' overrideproduct_family
,'' overridesalesofficenumber
,'' overridesku
,'' overridesplit
,'' parentaccountmondayticket
,partnerlevelstandardized
,partnertypestandardized
,partnerwebfolderid
,partnerwebquotenumber
,phone_area_code
,phone_number
,plant
,plantdescription
,'' posprojectregistrationnumber
,'' posbranch
,'' poscustomernumber
,'' posordernumber
,'' possku
,'' possuffix
,'' postalcodesofficeassign
,'' prodpyramidactive
,product_category as productcategory
,product_family as productfamily
,'' productfamilymondayticket
,producthierarchylevel1description
,producthierarchylevel2description
,producthierarchylevel3description
,producthierarchylevel4code
,producthierarchylevel4description
,proshipmentnumber
,quantityshipped
,quoteid
,'' raw_pos_registration
,recordid
,recordsource
,'' reselleraddress1
,'' reselleraddress2
,resellerbranchname
,resellerbranchnumber
,'' resellercity
,'' resellercountry
,'' resellercustomernumber
,resellermajorcode
,resellerminorcode
,resellername
,resellerpartnerlevel
,'' resellerpartnertype
,'' resellerpostalcode
,resellerregion
,'' resellerreportingname
,'' resellersalesofficename
,'' resellersalesofficenumber
,'' resellersitetype
,'' resellerstateprovince
,'' sales_region3
,salesdistrictname
,salesdistrictnumber
,salesofficefamily
,case when sed.alicecommissionoverridepercent is null and sed.recordsource = 'CONTEXT-OTHERS' then a.sales_office_name else sed.salesofficename end as salesofficename
,case when sed.alicecommissionoverridepercent is null and sed.recordsource = 'CONTEXT-OTHERS' then a.sales_office_number else sed.salesofficenumber end as salesofficenumber
,salesofficenumberjoin
,salesofficeprincipalemail
,'' salesofficeprincipalemail2
,salesofficeprincipalname
,'' salesofficereferencenumber
,salesofficeregion
,'' salesofficeterritory
,salesordernumber
,'' salesoutprimarykey
,salesrepemail
,salesrepid
,salesrepname
,'' salessegment
,sapoemtag
,sapsalesorganization
,segment
,selling_motion
,shipdate
,shipmentcarriername
,shiptoaccountrole
,shiptocustomeraddress
,shiptocustomercity
,'' shiptocustomercountry
,'' shiptocustomercustomertype1
,shiptocustomerenterpriseindustry
,shiptocustomergsc
,'' shiptocustomerid
,shiptocustomerindustry1
,shiptocustomername
,shiptocustomernumber
,shiptocustomerparentaccount
,shiptocustomerparentname
,shiptocustomerpostalcode
,'' shiptocustomerreportingname
,shiptocustomerstandardizedname
,shiptocustomerstate
,shiptocustomertype1
,'' shiptocustomertype1_2
,shiptocustomervertical
,shiptoenterpriseindustry
,shiptogsc_flag
,shiptoindustry1
,shiptoparentaccount
,shiptostandardizedname
,sizecategory
,sku
,skudescription
,'' skumondayticket
,'' skutrimmed
,'' sms_contract
,smsbatteriesonlyflag
,smsbatteryrbsm
,'' smscallcode
,smscontractenddate
,smscontractexpiredate
,'' smscontractmonths
,smscontractpms
,smscontractsequence
,smscontractstartdate
,smscontractstatus
,'' smscoverageclass
,smscustomertype
,smsequipmentsegment
,'' smsequipmentsequence
,'' smsequipmentsubtype
,'' smsequipmenttype
,smssiteid
,smstagnumber
,'' smsticketcode
,smsticketnumber
,'' smstickettype
,'' soldtocustomeraddress
,'' soldtocustomercity
,'' soldtocustomercountry
,soldtocustomercustomertype1
,soldtocustomerenterpriseindustry
,soldtocustomergsc
,soldtocustomerindustry1
,soldtocustomername
,'' soldtocustomernumber
,soldtocustomerparentaccount
,'' soldtocustomerpostalcode
,'' soldtocustomerreportingname
,soldtocustomerstandardizedname
,'' soldtocustomerstate
,soldtocustomervertical
,'' sp1productflag
,'' sp2productexclusion
,'' sp2productflag
,sourceorder
,speed_dial
,'' speed_dial2
,'' splitpercent
,'' standard_products
,'' standardcost
,'' standardcostusd
,yearmonth
,'Invoice' sourcesystem
,channelflag as intrachannelflag
,now() as w_insert_dtm
,uom
,sales_order_line_type
,order_type
,invoice_type
,class_code
,OEM_FLAG
,billtocustomerclasscode  
,endcustomerclasscode
,shiptocustomerclasscode
,soldtocustomerclasscode
,billtocustomerpartnerclasscode
,endcustomerpartnerclasscode
,shiptocustomerpartnerclasscode
,soldtocustomerpartnerclasscode
,billtooracleregistryid 
,endoracleregistryid
,shiptooracleregistryid
,soldtooracleregistryid
,billtocustomerindustry3
,endcustomerindustry3
,shiptocustomerindustry3
,soldtocustomerindustry3
,billtocustomersubvertical
,endcustomersubvertical
,shiptocustomersubvertical
,soldtocustomersubvertical
,billtoreportingsubparent1
,endreportingsubparent1
,shiptoreportingsubparent1
,soldtoreportingsubparent1
,billtodefinitiveidnid
,enddefinitiveidnid
,shiptodefinitiveidnid
,soldtodefinitiveidnid
,billtodefinitiveidnidparentid
,enddefinitiveidnidparentid
,shiptodefinitiveidnidparentid
,soldtodefinitiveidnidparentid
,billtoncesleaid
,endncesleaid
,shiptoncesleaid
,soldtoncesleaid
,billtocustomerprovince
,endcustomerprovince
,shiptocustomerprovince
,soldtocustomerprovince
,billtooraclepartysitenumber
,endoraclepartysitenumber
,shiptooraclepartysitenumber
,soldtooraclepartysitenumber
,billtodefinitiveid
,enddefinitiveid
,shiptodefinitiveid
,soldtodefinitiveid
,billtoncesschid
,endncesschid
,shiptoncesschid
,soldtoncesschid  
,billtoaccounttype  
,endaccounttype
,shiptoaccounttype
,soldtoaccounttype 
,productcommissionclasscode
,Measure
,Calendar_Month
,Calendar_Year
,Local_Currency
,Sales_Office
,Unit_Price
,Unit_Price_FXD_USD 
,billtoservicesmajoracc 
,endservicesmajoracc
,shiptoservicesmajoracc
,soldtoservicesmajoracc
,billtocustomersubclass
,endcustomersubclass
,shiptocustomersubclass
,soldtocustomersubclass

from 
prod_na_cld_osc_gold.sales_exploration_data_na_bkp sed 
left outer join (select distinct invoice_number,invoice_line_number,sales_office_name,sales_office_number,sales_rep_id,sales_rep_name,split_percentAGE,src_system_name
from prod_edm_gold.f_sales_compensation_hist
where src_system_name ='CONTEXT-OTHERS') a
on sed.invoicenumber = a.invoice_number and sed.invoicelinenumber = a.invoice_line_number
where 
	  (billtocustomername not like "%INGRAM MICRO%"
	and billtocustomername not like "%TECH DATA%" 
	and billtocustomername not like "%PC CONNECTION%"
	and billtocustomername not like "%CDW%"
	and billtocustomername not like "ARROW%"
	and billtocustomername not like "%SYNNEX%" 
    and billtocustomername not like "%GRAYBAR%" 
    and billtocustomername not like "%D AND H%" 
    and billtocustomername not like "%D & H%")

union all

select
119_override
,accountam
,accountcsm
,accountlead
,accountpresence
,accounts_yn
,accountservicesales
,accountsubtype
,accounttype
,activedate
,account_type_aop
,advanced_data_center_specialization
,anixtergraybarcdwflag
,aop_account_name
,billtoaccountrole
,billtocustomeraddress
,billtocustomercity
,billtocustomercountry
,billtocustomercustomertype1
,billtocustomerenterpriseindustry
,billtocustomergicsinudstrygroupdescription
,billtocustomergicssectordescription
,billtocustomergsc
,billtocustomerid
,billtocustomerindustry1
,billtocustomername
,billtocustomernumber
,billtocustomerparentaccount
,billtocustomerparentname
,billtocustomerpostalcode
,billtocustomerreportingname
,billtocustomerstandardizedname
,billtocustomerstate
,billtocustomertype1
,billtocustomervertical
,billtoenterpriseindustry
,billtogsc_flag
,billtoindustry1
,billtoindustrycode1
,billtononrevenueflag
,billtoparentaccount
,billtostandardizedname
,bsid
,cdwamemailaddress
,cdwsalesarea
,cdwsalesregion
,cdwsalessegment
,channelproductgrouping
,channel_commission_bucket
,cloudlistprice
,coe
,companygrouping
,contract_length
,contract_type
,count
,country
,customerpurchaseordernumber
,coworkerlocationdescription
,crossrefwithlesnumber
,customeragencydescription
,currency
,customerrequestdate
,data_last_refreshed
,dcpowerprofitcenter
,distributionchannelcode
,distributionclassification
,documenttype
,ecommerce_flag
,endcustomer_cleaned
,endcustomeraccountrole
,endcustomeraddress
,endcustomercity
,endcustomercountry
,endcustomercustomertype1
,endcustomerenterpriseindustry
,endcustomergsc
,endcustomergsc_flag
,endcustomerid
,endcustomerindustry1
,endcustomerindustrycode1
,endcustomername
,endcustomernumber
,endcustomerparentaccount
,endcustomerparentname
,endcustomerpostalcode
,endcustomerpostalmondayticket
,endcustomerreportingname
,endcustomerstandardizedname
,endcustomerstate
,endcustomervertical
,exchangerateused
,extendedlistprice
,extendedstandardcost
,firstdestinationflag
,gbu
,geistcustomernumber
,geistproductclass
,growth_target
,internalofficefamily
,internalofficename
,internalofficenumber
,internalofficeprincipalemail
,internalofficeprincipalname
,internalofficeregion
,internalofficesplit
,internalofficeterritory
,internalofficetype
,internalprincipalemail
,internalprincipalname
,internalsalesrepid
,invoicedate
,invoicelinenumber
,invoicenumber
,legacy
,legacysizecategory
,lesbilltoaltindustrycode
,lesbilltomajorclass
,lesbilltominorclass
,lesbilltostandardindustrycode
,alicecommissionoverridepercent
,lescustomerindustrycodelevel1
,lescustomerindustrycodelevel2
,lescustomerindustrycodelevel3
,lesdb2grouping
,lesorderprefix
,lespointofcalculation
,lesproductdivisioncode
,lessalesclass
,lesshipmentnumber
,lesunitsflag
,level6
,listprice
,listpricemondayticket
,lob
,majorlatecode
,managepricelists_vertiv_corporation_apr19
,marketinggroupcode
,marketinggroupname
,marketinggrouprevenueflag
,minorlatecode
,mondayticket
,monthlycost
,namedaccountofficeassign
,namedaccountsplit
,netprice
,netsalesrevenue
,netsalesrevenuemondayticket
,newlescrossref2
,notes
,numberforgroupingforsizecategory
,oemtag
,oemtagmondayticket
,officelocation
,office_type
,officeoverrideoccured
,officesplitmondayticket
,ordercreatedate
,orderincludeflag
,originalendcustomerparentaccount
,originallistprice
,originalnetsalesrevenue
,originaloemtag
,originalproductfamily
,originalsalesofficenumber
,originalsku
,originalsplitpercent
,overrideendcustomerparentaccount
,overridelistprice
,overridenetsalesrevenue
,overrideoccured
,overrideoemtag
,overrideproduct_family
,overridesalesofficenumber
,overridesku
,overridesplit
,parentaccountmondayticket
,partnerlevelstandardized
,partnertypestandardized
,partnerwebfolderid
,partnerwebquotenumber
,phone_area_code
,phone_number
,plant
,plantdescription
,posprojectregistrationnumber
,posbranch
,poscustomernumber
,posordernumber
,possku
,possuffix
,postalcodesofficeassign
,prodpyramidactive
,productcategory
,productfamily
,productfamilymondayticket
,producthierarchylevel1description
,producthierarchylevel2description
,producthierarchylevel3description
,producthierarchylevel4code
,producthierarchylevel4description
,proshipmentnumber
,quantityshipped
,quoteid
,raw_pos_registration
,recordid
,recordsource
,reselleraddress1
,reselleraddress2
,resellerbranchname
,resellerbranchnumber
,resellercity
,resellercountry
,resellercustomernumber
,resellermajorcode
,resellerminorcode
,resellername
,resellerpartnerlevel
,resellerpartnertype
,resellerpostalcode
,resellerregion
,resellerreportingname
,resellersalesofficename
,resellersalesofficenumber
,resellersitetype
,resellerstateprovince
,sales_region3
,salesdistrictname
,salesdistrictnumber
,salesofficefamily
,salesofficename
,salesofficenumber
,salesofficenumberjoin
,salesofficeprincipalemail
,salesofficeprincipalemail2
,salesofficeprincipalname
,salesofficereferencenumber
,salesofficeregion
,salesofficeterritory
,salesordernumber
,salesoutprimarykey
,salesrepemail
,salesrepid
,salesrepname
,salessegment
,sapoemtag
,sapsalesorganization
,segment
,selling_motion
,shipdate
,shipmentcarriername
,shiptoaccountrole
,shiptocustomeraddress
,shiptocustomercity
,shiptocustomercountry
,shiptocustomercustomertype1
,shiptocustomerenterpriseindustry
,shiptocustomergsc
,shiptocustomerid
,shiptocustomerindustry1
,shiptocustomername
,shiptocustomernumber
,shiptocustomerparentaccount
,shiptocustomerparentname
,shiptocustomerpostalcode
,shiptocustomerreportingname
,shiptocustomerstandardizedname
,shiptocustomerstate
,shiptocustomertype1
,shiptocustomertype1_2
,shiptocustomervertical
,shiptoenterpriseindustry
,shiptogsc_flag
,shiptoindustry1
,shiptoparentaccount
,shiptostandardizedname
,sizecategory
,sku
,skudescription
,skumondayticket
,skutrimmed
,sms_contract
,smsbatteriesonlyflag
,smsbatteryrbsm
,smscallcode
,smscontractenddate
,smscontractexpiredate
,smscontractmonths
,smscontractpms
,smscontractsequence
,smscontractstartdate
,smscontractstatus
,smscoverageclass
,smscustomertype
,smsequipmentsegment
,smsequipmentsequence
,smsequipmentsubtype
,smsequipmenttype
,smssiteid
,smstagnumber
,smsticketcode
,smsticketnumber
,smstickettype
,soldtocustomeraddress
,soldtocustomercity
,soldtocustomercountry
,soldtocustomercustomertype1
,soldtocustomerenterpriseindustry
,soldtocustomergsc
,soldtocustomerindustry1
,soldtocustomername
,soldtocustomernumber
,soldtocustomerparentaccount
,soldtocustomerpostalcode
,soldtocustomerreportingname
,soldtocustomerstandardizedname
,soldtocustomerstate
,soldtocustomervertical
,sp1productflag
,sp2productexclusion
,sp2productflag
,sourceorder
,speed_dial
,speed_dial2
,splitpercent
,standard_products
,standardcost
,standardcostusd
,yearmonth
,sourcesystem
,intrachannelflag
,now() as w_insert_dtm
,uom
,sales_order_line_type
,order_type
,invoice_type
,class_code
,OEM_FLAG
,billtocustomerclasscode  
,endcustomerclasscode
,shiptocustomerclasscode
,soldtocustomerclasscode
,billtocustomerpartnerclasscode
,endcustomerpartnerclasscode
,shiptocustomerpartnerclasscode
,soldtocustomerpartnerclasscode
,billtooracleregistryid 
,endoracleregistryid
,shiptooracleregistryid
,soldtooracleregistryid
,billtocustomerindustry3
,endcustomerindustry3
,shiptocustomerindustry3
,soldtocustomerindustry3
,billtocustomersubvertical
,endcustomersubvertical
,shiptocustomersubvertical
,soldtocustomersubvertical
,billtoreportingsubparent1
,endreportingsubparent1
,shiptoreportingsubparent1
,soldtoreportingsubparent1
,billtodefinitiveidnid
,enddefinitiveidnid
,shiptodefinitiveidnid
,soldtodefinitiveidnid
,billtodefinitiveidnidparentid
,enddefinitiveidnidparentid
,shiptodefinitiveidnidparentid
,soldtodefinitiveidnidparentid
,billtoncesleaid
,endncesleaid
,shiptoncesleaid
,soldtoncesleaid
,billtocustomerprovince
,endcustomerprovince
,shiptocustomerprovince
,soldtocustomerprovince
,billtooraclepartysitenumber
,endoraclepartysitenumber
,shiptooraclepartysitenumber
,soldtooraclepartysitenumber
,billtodefinitiveid
,enddefinitiveid
,shiptodefinitiveid
,soldtodefinitiveid
,billtoncesschid
,endncesschid
,shiptoncesschid
,soldtoncesschid  
,billtoaccounttype  
,endaccounttype
,shiptoaccounttype
,soldtoaccounttype  
,productcommissionclasscode
,Measure
,Calendar_Month
,Calendar_Year
,Local_Currency
,Sales_Office
,Unit_Price
,Unit_Price_FXD_USD 
,billtoservicesmajoracc 
,endservicesmajoracc
,shiptoservicesmajoracc
,soldtoservicesmajoracc
,billtocustomersubclass
,endcustomersubclass
,shiptocustomersubclass
,soldtocustomersubclass

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
WHEN upper(endcustomerindustry1) LIKE '%MILITARY%' AND productcategory like '%SECURE%' THEN 'N'
WHEN upper(endcustomerindustry1) LIKE '%INTEL%' AND productcategory like '%SECURE%' THEN 'N'
WHEN upper(endcustomerindustry1) LIKE '%CIVILIAN%' AND productcategory like '%SECURE%' THEN 'N'
WHEN upper(endcustomerparentaccount) LIKE '%UNITED STATES%' AND productcategory like '%SECURE%' THEN 'N'
WHEN upper(endcustomerparentaccount) LIKE '%NASA%' AND productcategory like '%SECURE%' THEN 'N'
WHEN upper(endcustomerparentaccount) LIKE '%MANTECH INTERNATIONAL%' AND productcategory like '%SECURE%' THEN 'N'
WHEN upper(endcustomerparentaccount) LIKE '%NORTHROP GRUMMAN%' AND productcategory LIKE '%SECURE%' THEN 'N'
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


 
 FROM
    (
	 SELECT
		 DISTINCT *,
			CASE
WHEN nvl(accounttypeaop, 'N') != 'N' THEN upper(accounttypeaop)
WHEN nvl(accounttypeaop1, 'N') != 'N' THEN upper(accounttypeaop1)
WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(billtocustomerparentACCOUNT) not like '%COMCAST%' THEN 'VERTIV DIRECT ACCOUNT'
WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(billtocustomerparentACCOUNT) not like '%COX COMMUNICATIONS%' THEN 'VERTIV DIRECT ACCOUNT'
WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(billtocustomerparentACCOUNT) not like '%FRONTIER COMMUNICATIONS%' THEN 'VERTIV DIRECT ACCOUNT'
WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(billtocustomerparentACCOUNT) not like '%CHARTER COMMUNICATIONS%' THEN 'VERTIV DIRECT ACCOUNT'
WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(billtocustomerparentACCOUNT) not like '%CENTURYLINK%' THEN 'VERTIV DIRECT ACCOUNT'
WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(endcustomerparentACCOUNT) not like '%COMCAST%' THEN 'VERTIV DIRECT ACCOUNT'
WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(endcustomerparentACCOUNT) not like '%COX COMMUNICATIONs%' THEN 'VERTIV DIRECT ACCOUNT'
WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(endcustomerparentACCOUNT) not like '%FRONTIER COMMUNICATIONS%' THEN 'VERTIV DIRECT ACCOUNT'
WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(endcustomerparentACCOUNT) not like '%CHARTER COMMUNICATIONS%' THEN 'VERTIV DIRECT ACCOUNT'
WHEN upper(lob) = "DC POWER" and upper(billtocustomervertical) = 'TELECOM' and upper(endcustomerparentACCOUNT) not like '%CENTURYLINK%' THEN 'VERTIV DIRECT ACCOUNT'
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
WHEN lob = 'AC POWER' and upper(billtocustomerparentACCOUNT) like '%AT&T%' or upper(billtocustomerparentACCOUNT) like '%VERIZON%' or upper(billtocustomerparentaccount) like '%T-MOBILE%' THEN 'VERTIV STRATEGIC ACCOUNT'
WHEN lob = 'THERMAL' and upper(billtocustomerparentACCOUNT) like '%AT&T%' or upper(billtocustomerparentACCOUNT) like '%VERIZON%' or upper(billtocustomerparentaccount) like '%T-MOBILE%' THEN 'VERTIV STRATEGIC ACCOUNT'
WHEN lob = 'SERVICES' and upper(billtocustomerparentACCOUNT) like '%AT&T%' or upper(billtocustomerparentACCOUNT) like '%VERIZON%' or upper(billtocustomerparentaccount) like '%T-MOBILE%' THEN 'VERTIV STRATEGIC ACCOUNT'
WHEN lob = 'AC POWER' and upper(endcustomerparentACCOUNT) like '%AT&T%' or upper(endcustomerparentACCOUNT) like '%VERIZON%' or upper(endcustomerparentaccount) like '%T-MOBILE%' THEN 'VERTIV STRATEGIC ACCOUNT'
WHEN lob = 'THERMAL' and upper(endcustomerparentACCOUNT) like '%AT&T%' or upper(endcustomerparentACCOUNT) like '%VERIZON%' or upper(endcustomerparentaccount) like '%T-MOBILE%' THEN 'VERTIV STRATEGIC ACCOUNT'
WHEN lob = 'SERVICES' and upper(endcustomerparentACCOUNT) like '%AT&T%' or upper(endcustomerparentACCOUNT) like '%VERIZON%' or upper(endcustomerparentaccount) like '%T-MOBILE%' THEN 'VERTIV STRATEGIC ACCOUNT'
--WHEN upper(selling_motion) = "ERS/HVM" Then "ERS/HVM"
WHEN upper(productcategory) like '%SECURE%' THEN 'FEDERAL'
ELSE 'OTHER'
END  account_type_aop1
	
FROM
	(
	SELECT
		*,
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
            END office_type

from (select
'' 119_override
,'' accountam
,'' accountcsm
,'' accountlead
,'' accountpresence
,'' accounts_yn
,ps.accountservicesales
,ps.accountsubtype
,ps.accounttype
,ps.activedate
,'' advanced_data_center_specialization
,'' anixtergraybarcdwflag
,CASE
            WHEN nvl(sa.aopaccountname, 'N') != 'N' THEN sa.aopaccountname
            WHEN nvl(sb.aopaccountname, 'N') != 'N' THEN sb.aopaccountname
            WHEN nvl(sm.sm_sku, 'N') != 'N' THEN sm.aop_account_name
            ELSE 'Non Account'
            END  aop_account_name
,'' billtoaccountrole
,ps.billtocustomeraddress
,ps.billtocustomercity
,ps.billtocustomercountry
,'' billtocustomercustomertype1
,ps.billtocustomerenterpriseindustry
,ps.billtocustomergicsinudstrygroupdescription
,ps.billtocustomergicssectordescription
,ps.billtocustomergsc
,ps.billtocustomerid
,ps.billtocustomerindustry as billtocustomerindustry1
,ps.billtocustomername
,ps.billtocustomernumber
,ps.billtocustomerparentaccount
,ps.billtocustomerparentname
,ps.billtocustomerpostalcode
,ps.billtocustomerreportingname
,ps.billtocustomerstandardizedname
,ps.billtocustomerstate
,ps.billtocustomertype as billtocustomertype1
,ps.billtocustomervertical
,ps.billtoenterpriseindustry
,ps.billtogsc_flag
,ps.billtoindustry as billtoindustry1
,ps.billtoindustrycode as billtoindustrycode1
,ps.billtononrevenueflag
,ps.billtoparentaccount
,ps.billtostandardizedname
,'' bsid
,'' cdwamemailaddress
,ps.cdwsalesarea
,ps.cdwsalesregion
,ps.cdwsalessegment
,'' channelproductgrouping
,'' channel_commission_bucket
,ps.cloudlistprice
,ps.coe
,'' companygrouping
,'' contract_length
,'' contract_type
,'' count
,ps.country
,'' customerpurchaseordernumber
,'' coworkerlocationdescription
,ps.crossrefwithlesnumber
,'' customeragencydescription
,ps.currency
,'' customerrequestdate
,'' data_last_refreshed
,'' dcpowerprofitcenter
,'' distributionchannelcode
,'' distributionclassification
,'' documenttype
,'' ecommerce_flag
,'' endcustomer_cleaned
,ps.endcustomeraccountrole
,ps.endcustomeraddress
,ps.endcustomercity
,ps.endcustomercountry
,ps.endcustomercustomertype1
,ps.endcustomerenterpriseindustry
,'' endcustomergsc
,ps.endcustomergscflag as endcustomergsc_flag
,ps.endcustomerid
,ps.endcustomerindustry1
,ps.endcustomerindustrycode1
,ps.endcustomername
,'' endcustomernumber
,ps.endcustomerparentaccount
,'' endcustomerparentname
,ps.endcustomerpostalcode
,'' endcustomerpostalmondayticket
,'' endcustomerreportingname
,ps.endcustomerstandardizedname
,ps.endcustomerstate
,ps.endcustomervertical
,cast('' as double) exchangerateused
,ps.extendedlistprice
,cast(extendedstandardcost as double) as extendedstandardcost
,'' firstdestinationflag
,ps.gbu
,'' geistcustomernumber
,'' geistproductclass
,ps.internalofficefamily
,ps.internalofficename
,ps.internalofficenumber
,ps.internalofficeprincipalemail
,ps.internalofficeprincipalname
,ps.internalofficeregion
,ps.internalofficesplit
,ps.internalofficeterritory
,ps.internalofficetype
,ps.internalprincipalemail
,ps.internalprincipalname
,'' internalsalesrepid
,ps.invoicedate
,ps.invoicelinenumber
,ps.invoicenumber
,'' legacy
,'' legacysizecategory
,'' lesbilltoaltindustrycode
,'' lesbilltomajorclass
,'' lesbilltominorclass
,'' lesbilltostandardindustrycode
,'' alicecommissionoverridepercent
,'' lescustomerindustrycodelevel1
,'' lescustomerindustrycodelevel2
,'' lescustomerindustrycodelevel3
,'' lesdb2grouping
,'' lesorderprefix
,'' lespointofcalculation
,'' lesproductdivisioncode
,'' lessalesclass
,'' lesshipmentnumber
,'' lesunitsflag
,ps.level6
,ps.listprice
,'' listpricemondayticket
,ps.lob
,'' majorlatecode
,'' managepricelists_vertiv_corporation_apr19
,'' marketinggroupcode
,'' marketinggroupname
,'' marketinggrouprevenueflag
,'' minorlatecode
,'' mondayticket
,'' monthlycost
,ps.namedaccountofficeassign
,ps.namedaccountsplit
,'' netprice
,ps.netsalesrevenue
,'' netsalesrevenuemondayticket
,ps.newlescrossref2
,'' notes
,'' numberforgroupingforsizecategory
,ps.oemtag
,'' oemtagmondayticket
,ps.officelocation
,'' officeoverrideoccured
,'' officesplitmondayticket
,'' ordercreatedate
,'' orderincludeflag
,'' originalendcustomerparentaccount
,'' originallistprice
,'' originalnetsalesrevenue
,'' originaloemtag
,'' originalproductfamily
,'' originalsalesofficenumber
,'' originalsku
,ps.originalsplitpercent
,'' overrideendcustomerparentaccount
,'' overridelistprice
,'' overridenetsalesrevenue
,'' overrideoccured
,'' overrideoemtag
,'' overrideproduct_family
,'' overridesalesofficenumber
,'' overridesku
,'' overridesplit
,'' parentaccountmondayticket
,'' partnerlevelstandardized
,'' partnertypestandardized
,'' partnerwebfolderid
,'' partnerwebquotenumber
,'' phone_area_code
,'' phone_number
,'' plant
,'' plantdescription
,ps.posprojectregistrationnumber
,'' posbranch
,'' poscustomernumber
,'' posordernumber
,ps.possku
,'' possuffix
,ps.postalcodesofficeassign
,'' prodpyramidactive
,ps.productcategory
,ps.productfamily
,'' productfamilymondayticket
,ps.producthierarchylevel1description
,ps.producthierarchylevel2description
,ps.producthierarchylevel3description
,ps.producthierarchylevel4code
,ps.producthierarchylevel4description
,'' proshipmentnumber
,cast(quantityshipped as double) as quantityshipped
,'' quoteid
,'' raw_pos_registration
,ps.recordid
,ps.recordsource
,'' reselleraddress1
,'' reselleraddress2
,'' resellercity
,'' resellercountry
,'' resellercustomernumber
,ps.resellermajorcode
,ps.resellerminorcode
,ps.resellername
,ps.resellerpartnerlevel
,ps.resellerpartnertype
,'' resellerpostalcode
,ps.resellerregion
,'' resellerreportingname
,ps.resellersalesofficename
,ps.resellersalesofficenumber
,'' resellersitetype
,'' resellerstateprovince
,'' sales_region3
,'' salesdistrictname
,'' salesdistrictnumber
,ps.salesofficefamily
,ps.salesofficename
,ps.salesofficenumber
,'' salesofficenumberjoin
,ps.salesofficeprincipalemail
,'' salesofficeprincipalemail2
,ps.salesofficeprincipalname
,'' salesofficereferencenumber
,ps.salesofficeregion
,ps.salesofficeterritory
,ps.salesordernumber
,ps.salesoutprimarykey
,ps.salesrepemail
,ps.salesrepid
,ps.salesrepname
,'' salessegment
,'' sapoemtag
,'' sapsalesorganization
,ps.segment
,'CHANNEL' selling_motion
,'' shipdate
,'' shipmentcarriername
,'' shiptoaccountrole
,ps.shiptocustomeraddress
,ps.shiptocustomercity
,ps.shiptocustomercountry
,'' shiptocustomercustomertype1
,ps.shiptocustomerenterpriseindustry
,ps.shiptocustomergsc
,ps.shiptocustomerid
,ps.shiptocustomerindustry1
,ps.shiptocustomername
,ps.shiptocustomernumber
,'' shiptocustomerparentaccount
,ps.shiptocustomerparentname
,ps.shiptocustomerpostalcode
,'' shiptocustomerreportingname
,ps.shiptocustomerstandardizedname
,ps.shiptocustomerstate
,ps.shiptocustomertype1
,'' shiptocustomertype1_2
,ps.shiptocustomervertical
,ps.shiptoenterpriseindustry
,ps.shiptogsc_flag
,ps.shiptoindustry1
,ps.shiptoparentaccount
,ps.shiptostandardizedname
,ps.sku
,ps.skudescription
,'' skumondayticket
,'' skutrimmed
,'' sms_contract
,'' smsbatteriesonlyflag
,'' smsbatteryrbsm
,'' smscallcode
,'' smscontractenddate
,'' smscontractexpiredate
,'' smscontractmonths
,'' smscontractpms
,'' smscontractsequence
,'' smscontractstartdate
,'' smscontractstatus
,'' smscoverageclass
,'' smscustomertype
,'' smsequipmentsegment
,'' smsequipmentsequence
,'' smsequipmentsubtype
,'' smsequipmenttype
,'' smssiteid
,'' smstagnumber
,'' smsticketcode
,'' smsticketnumber
,'' smstickettype
,'' soldtocustomeraddress
,ps.soldtocustomercity
,ps.soldtocustomercountry
,ps.soldtocustomercustomertype1
,'' soldtocustomerenterpriseindustry
,'' soldtocustomergsc
,ps.soldtocustomerindustry1
,ps.soldtocustomername
,ps.soldtocustomernumber
,ps.soldtocustomerparentaccount
,ps.soldtocustomerpostalcode
,'' soldtocustomerreportingname
,'' soldtocustomerstandardizedname
,ps.soldtocustomerstate
,ps.soldtocustomervertical
,ps.sp1productflag
,'' sp2productexclusion
,ps.sp2productflag
,'' sourceorder
,ps.speed_dial
,'' speed_dial2
,ps.splitpercent
,ps.standard_products
,ps.standardcost
,'' standardcostusd
,to_timestamp(yearmonth,'yyyyMMdd') as yearmonth,
'POS' sourcesystem,
sa.accounttypeaop,
sb.accounttypeaop as accounttypeaop1,
sm.sm_account_flag sm_account_flag,
sm.sm_sku sm_sku,
sa.acct_name acct_name,
h.business_name as business_name,
h.branch_office_nbr as branch_office_nbr,
ps.intrachannelflag,
xx.resellerbranchname as resellerbranchname1 ,
xx.resellerbranchnumber as resellerbranchnumber1,
'' uom,
'' sales_order_line_type,
'' order_type,
'' invoice_type,
'' class_code,
'' OEM_FLAG,
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
ps.billtocustomerindustry3,
ps.endcustomerindustry3,
ps.shiptocustomerindustry3,
ps.soldtocustomerindustry3,
ps.billtocustomersubvertical,
ps.endcustomersubvertical,
ps.shiptocustomersubvertical,
ps.soldtocustomersubvertical,
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
ps.soldtocustomersubclass	

from (select * from prod_na_cld_osc_gold.pos_na where intrachannelflag<> 'YES') ps
left outer join prod_edm_other_src_silver.ref_sellingmotion_accounts sa
on trim(upper(ps.billtocustomerparentaccount)) = upper(sa.acct_name)
left outer join prod_edm_other_src_silver.ref_sellingmotion_accounts sb
on trim(upper(ps.EndCustomerParentAccount)) = upper(sb.acct_name)
left outer join prod_edm_other_src_silver.ref_sellingmotion_sku sm
on ps.sku = sm.sm_sku
left join
(
with TT as (
SELECT distinct branch_id_number__cf as resellerbranchnumber, oracle_company_nbr__cf as customer_number
FROM prod_impartner_silver.account
where oracle_company_nbr__cf is not null and oracle_company_nbr__cf != '0' and region_hidden__cf = 'North America'
union all
SELECT distinct branch_id_number__cf as resellerbranchnumber, les_code__cf as customer_number
FROM prod_impartner_silver.account
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
FROM prod_mdm_hub_gold.d_customer_header_v a
left join TT b
on a.customer_number = b.customer_number
) c
) d
) e
) AS XX
ON ps.billtocustomernumber = XX.customer_number 
and nvl(XX.customer_number,'N') != 'N' and ps.recordsource = xx.src_system_name_join
left Join prod_edm_other_src_silver.Varsdatabase_Sellingmotion h on
ps.billtocustomernumber = h.Business_Nbr
)aa )dt )tt )st )pt;
