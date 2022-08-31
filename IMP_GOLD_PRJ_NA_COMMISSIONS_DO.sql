1.Populate_invoice_stage_table

INSERT
	INTO
	@DB_LEVEL@_na_cld_osc_gold.invoice_na_stg
select 
sed.account_type,
sed.account_type_aop,
sed.accountam,
sed.accountcsm,
sed.accountlead,
sed.accountpresence,
sed.accountservicesalfes,
sed.accountsubtype,
sed.accounttype,
sed.activated,
sed.advanced_data_center_specialization,
sed.anixtergraybarcdwflag,
sed.aop_account_name,
sed.aop_category,
sed.billtoaccountrole,
sed.billtocustomeraddress,
sed.billtocustomercity,
sed.billtocustomercountry,
sed.billtocustomercustomertype1,
sed.billtocustomerenterpriseindustry,
sed.billtocustomergsc,
sed.billtocustomerindustry1,
trim(sed.billtocustomername) billtocustomername,
sed.billtocustomernumber,
sed.billtocustomerparentaccount,
sed.billtocustomerparentname,
sed.billtocustomerpostalcode,
sed.billtocustomerstandardizedname,
sed.billtocustomerstate,
sed.billtocustomertype1,
sed.billtocustomervertical,
sed.billtoenterpriseindustry,
sed.billtogsc_flag,
sed.billtoindustry1,
sed.billtoindustrycode1,
sed.billtoparentaccount,
sed.billtostandardizedname,
sed.bsid,
sed.channelflag as intrachannelflag,
sed.channelproductgrouping,
sed.coe,
sed.country,
sed.customerpurchaseordernumber,
sed.customerrequestdate,
sed.data_last_refreshed,
sed.dcpowerfinanceparent,
sed.dcpowerprofitcenter,
sed.endcustomeraccountrole,
sed.endcustomeraddress,
sed.endcustomercity,
sed.endcustomercountry,
sed.endcustomercustomertype1,
sed.endcustomercustomertype1_2,
sed.endcustomerenterpriseindustry,
sed.endcustomerenterpriseindustry2,
sed.endcustomergsc,
sed.endcustomergsc_flag,
sed.endcustomerindustry,
sed.endcustomerindustry1,
sed.endcustomermarket,
sed.endcustomername,
sed.endcustomername2,
sed.endcustomernumber,
sed.endcustomerparentaccount,
sed.endcustomerparentname,
sed.endcustomerpostalcode,
sed.endcustomerstandardizedname,
sed.endcustomerstate,
sed.endcustomervertical,
sed.exchangerateused,
sed.extendedlistprice,
sed.extendedstandardcost,
sed.f3,
sed.f4,
sed.firstdestinationflag,
sed.gbu,
sed.gbu_cleaned,
sed.gbu_cleaned_groups,
sed.growth_target,
sed.invoicedate,
sed.invoicelinenumber,
sed.invoicenumber,
sed.legacysizecategory,
sed.lesbilltomajorclass,
sed.lesbilltominorclass,
sed.alicecommissionoverridepercent,
sed.lesunitsflag,
sed.level_6,
sed.listprice,
sed.lob,
sed.monthlycost,
sed.netsalesrevenue,
sed.newlescrossref2,
sed.office_location,
sed.office_no,
sed.office_website,
sed.ordercoordinator,
sed.ordercreatedate,
sed.partnerlevelstandardized,
sed.partnertypestandardized,
sed.partnerwebfolderid,
sed.partnerwebquotenumber,
sed.phone_area_code,
sed.phone_number,
sed.plant,
sed.plantdescription,
sed.product_category,
sed.product_family,
sed.producthierarchylevel1description,
sed.producthierarchylevel2description,
sed.producthierarchylevel3description,
sed.producthierarchylevel4code,
sed.producthierarchylevel4description,
sed.proshipmentnumber,
sed.quantityshipped,
sed.quoteid,
sed.recordid,
sed.recordsource,
sed.resellermajorcode,
sed.resellerminorcode,
sed.resellername,
sed.resellerpartnerlevel,
sed.resellerregion,
sed.right_f3,
sed.right_right_country,
sed.right_right_office_location,
sed.sales_area,
sed.sales_region,
sed.sales_territory,
sed.salesdistrictname,
sed.salesdistrictnumber,
sed.salesofficefamily,
case when sed.alicecommissionoverridepercent is null and sed.recordsource = 'CONTEXT-OTHERS' then a.sales_office_name else sed.salesofficename end,
case when sed.alicecommissionoverridepercent is null and sed.recordsource = 'CONTEXT-OTHERS' then a.sales_office_number else sed.salesofficenumber end,
sed.salesofficenumberjoin,
sed.salesofficeprincipalemail,
sed.salesofficeprincipalname,
sed.salesofficeregion,
sed.salesordernumber,
sed.salesregionname,
sed.salesregionnumber,
sed.salesrepemail,
sed.salesrepid,
sed.salesrepname,
sed.sapoemtag,
sed.sapsalesorganization,
sed.segment,
sed.selling_motion,
sed.sfr_category,
sed.shipdate,
sed.shipmentcarriername,
sed.shiptoaccountrole,
sed.shiptocustomeraddress,
sed.shiptocustomercity,
sed.shiptocustomercustomertype1,
sed.shiptocustomerenterpriseindustry,
sed.shiptocustomergsc,
sed.shiptocustomerindustry1,
sed.shiptocustomername,
sed.shiptocustomernumber,
sed.shiptocustomerparentaccount,
sed.shiptocustomerparentname,
sed.shiptocustomerpostalcode,
sed.shiptocustomerpostalcodejoin,
sed.shiptocustomerstandardizedname,
sed.shiptocustomerstate,
sed.shiptocustomertype1,
sed.shiptocustomervertical,
sed.shiptoenterpriseindustry,
sed.shiptogsc_flag,
sed.shiptoindustry1,
sed.shiptoparentaccount,
sed.shiptostandardizedname,
sed.sizecategory,
sed.sku,
sed.skudescription,
sed.smsbatteriesonlyflag,
sed.smsbatteryrbsm,
sed.smscontractenddate,
sed.smscontractexpiredate,
sed.smscontractpms,
sed.smscontractsequence,
sed.smscontractstartdate,
sed.smscontractstatus,
sed.smscustomertype,
sed.smsequipmentsegment,
sed.smssiteid,
sed.smstagnumber,
sed.smsticketnumber,
sed.soldtocustomercustomertype1,
sed.soldtocustomerenterpriseindustry,
sed.soldtocustomergsc,
sed.soldtocustomerindustry1,
sed.soldtocustomername,
sed.soldtocustomerparentaccount,
sed.soldtocustomerstandardizedname,
sed.soldtocustomervertical,
sed.sourceorder,
sed.speed_dial,
sed.yearmonth,
'' namedaccountofficeassign,
'' namedaccountsplit,
sed.office_type as officetype,
'' sp1productflag,
'' sp1targetaccountflag,
'' sp2productflag,
'' sp2targetaccountflag,
'' splitpercent,
'1' originalsplitpercent,
sed.resellerbranchnumber,
sed.resellerbranchname,
now() as w_insert_dtm,
sed.uom,
sed.sales_order_line_type,
sed.Order_type,
sed.Invoice_type,
sed.Class_code,
sed.OEM_FLAG,
--SO-621 new attributes addition starts
sed.billtocustomerclasscode,
sed.endcustomerclasscode,
sed.shiptocustomerclasscode,
sed.soldtocustomerclasscode,
sed.billtocustomerpartnerclasscode,
sed.endcustomerpartnerclasscode,
sed.shiptocustomerpartnerclasscode,
sed.soldtocustomerpartnerclasscode,
sed.billtooracleregistryid, 
sed.endoracleregistryid,
sed.shiptooracleregistryid,
sed.soldtooracleregistryid,
sed.billtocustomerindustry3,
sed.endcustomerindustry3,
sed.shiptocustomerindustry3,
sed.soldtocustomerindustry3,
sed.billtocustomersubvertical,
sed.endcustomersubvertical,
sed.shiptocustomersubvertical,
sed.soldtocustomersubvertical,
sed.billtoreportingsubparent1,
sed.endreportingsubparent1,
sed.shiptoreportingsubparent1,
sed.soldtoreportingsubparent1,
sed.billtodefinitiveidnid,
sed.enddefinitiveidnid,
sed.shiptodefinitiveidnid,
sed.soldtodefinitiveidnid,
sed.billtodefinitiveidnidparentid,
sed.enddefinitiveidnidparentid,
sed.shiptodefinitiveidnidparentid,
sed.soldtodefinitiveidnidparentid,
sed.billtoncesleaid,
sed.endncesleaid,
sed.shiptoncesleaid,
sed.soldtoncesleaid,
sed.soldtocustomeraddress,
sed.soldtocustomercity,
sed.soldtocustomerstate,
sed.billtocustomerprovince,
sed.endcustomerprovince,
sed.shiptocustomerprovince,
sed.soldtocustomerprovince,
sed.shiptocustomercountry,
sed.soldtocustomercountry,
sed.soldtocustomerpostalcode,
sed.billtooraclepartysitenumber,
sed.endoraclepartysitenumber,
sed.shiptooraclepartysitenumber,
sed.soldtooraclepartysitenumber,
sed.billtodefinitiveid,
sed.enddefinitiveid,
sed.shiptodefinitiveid,
sed.soldtodefinitiveid,
sed.billtoncesschid,
sed.endncesschid,
sed.shiptoncesschid,
sed.soldtoncesschid,
--SO-621 new attributes addition ends
--so-661 new attributes addition starts
sed.billtoaccounttype,
sed.endaccounttype,
sed.shiptoaccounttype,
sed.soldtoaccounttype,
--so-661 new attributes addition ends
sed.productcommissionclasscode,
--start--added by pooja for geist column addition 9-6-2022--
sed.Measure,
sed.Calendar_Month,
sed.Calendar_Year,
sed.Local_Currency,
sed.Sales_Office,
sed.Unit_Price,
sed.Unit_Price_FXD_USD,
--end--added by pooja for geist column addition 9-6-2022--
sed.billtoservicesmajoracc,  --so-665 new attributes addition starts
sed.endservicesmajoracc,
sed.shiptoservicesmajoracc,
sed.soldtoservicesmajoracc,  --so-665 new attributes addition ends
sed.billtocustomersubclass, --so-728 new attributes addition starts
sed.endcustomersubclass,
sed.shiptocustomersubclass,
sed.soldtocustomersubclass,  --so-728 new attributes addition ends
sed.aop_customer_sub_class
from 
@DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na sed 
left outer join (select distinct invoice_number,invoice_line_number,sales_office_name,sales_office_number,sales_rep_id,sales_rep_name,split_percentAGE,src_system_name
from @DB_LEVEL@_edm_gold.f_sales_compensation_hist
where src_system_name ='CONTEXT-OTHERS') a
on sed.invoicenumber = a.invoice_number and sed.invoicelinenumber = a.invoice_line_number
where (billtocustomername not like "%INGRAM MICRO%"
	and billtocustomername not like "%TECH DATA%" 
	and billtocustomername not like "%PC CONNECTION%"
	and billtocustomername not like "%CDW%"
	and billtocustomername not like "ARROW%"
	and billtocustomername not like "%SYNNEX%" 
    and billtocustomername not like "%GRAYBAR%" 
    and billtocustomername not like "%D AND H%" 
    and billtocustomername not like "%D & H%"
	and billtocustomername not like "%WESCO%"
	and billtocustomername not like "%ANIXTER%"
	and billtocustomername not like "POWER & TEL%"
	)
;
invalidate metadata @DB_LEVEL@_na_cld_osc_gold.invoice_na_stg;


2.Rule1_logic_stg_temp_insert

INSERT INTO @DB_LEVEL@_na_cld_osc_gold.invoice_na_temp
select 
stg.account_type,
stg.accountam,
stg.accountcsm,
stg.accountlead,
stg.accountpresence,
stg.accountservicesalfes,
stg.accountsubtype,
stg.accounttype,
stg.activated,
stg.account_type_aop,
stg.advanced_data_center_specialization,
stg.anixtergraybarcdwflag,
stg.aop_account_name,
stg.aop_category,
stg.billtoaccountrole,
stg.billtocustomeraddress,
stg.billtocustomercity,
stg.billtocustomercountry,
stg.billtocustomercustomertype1,
stg.billtocustomerenterpriseindustry,
stg.billtocustomergsc,
stg.billtocustomerindustry1,
stg.billtocustomername,
stg.billtocustomernumber,
stg.billtocustomerparentaccount,
stg.billtocustomerparentname,
stg.billtocustomerpostalcode,
stg.billtocustomerstandardizedname,
stg.billtocustomerstate,
stg.billtocustomertype1,
stg.billtocustomervertical,
stg.billtoenterpriseindustry,
stg.billtogsc_flag,
stg.billtoindustry1,
stg.billtoindustrycode1,
stg.billtoparentaccount,
stg.billtostandardizedname,
stg.bsid,
stg.intrachannelflag,
stg.channelproductgrouping,
stg.coe,
stg.country,
stg.customerpurchaseordernumber,
stg.customerrequestdate,
stg.data_last_refreshed,
stg.dcpowerfinanceparent,
stg.dcpowerprofitcenter,
stg.endcustomeraccountrole,
stg.endcustomeraddress,
stg.endcustomercity,
stg.endcustomercountry,
stg.endcustomercustomertype1,
stg.endcustomercustomertype1_2,
stg.endcustomerenterpriseindustry,
stg.endcustomerenterpriseindustry2,
stg.endcustomergsc,
stg.endcustomergsc_flag,
stg.endcustomerindustry,
stg.endcustomerindustry1,
stg.endcustomermarket,
stg.endcustomername,
stg.endcustomername2,
stg.endcustomernumber,
stg.endcustomerparentaccount,
stg.endcustomerparentname,
stg.endcustomerpostalcode,
stg.endcustomerstandardizedname,
stg.endcustomerstate,
stg.endcustomervertical,
stg.exchangerateused,
stg.extendedlistprice,
stg.extendedstandardcost,
stg.f3,
stg.f4,
stg.firstdestinationflag,
stg.gbu,
stg.gbu_cleaned,
stg.gbu_cleaned_groups,
stg.growth_target,
stg.invoicedate,
stg.invoicelinenumber,
stg.invoicenumber,
stg.legacysizecategory,
stg.lesbilltomajorclass,
stg.lesbilltominorclass,
stg.alicecommissionoverridepercent,
stg.lesunitsflag,
stg.level_6,
stg.listprice,
stg.lob,
stg.monthlycost,
stg.netsalesrevenue,
stg.newlescrossref2,
stg.office_no,
stg.office_location,
stg.office_website,
stg.ordercoordinator,
stg.ordercreatedate,
stg.partnerlevelstandardized,
stg.partnertypestandardized,
stg.partnerwebfolderid,
stg.partnerwebquotenumber,
stg.phone_area_code,
stg.phone_number,
stg.plant,
stg.plantdescription,
stg.product_category,
stg.product_family,
stg.producthierarchylevel1description,
stg.producthierarchylevel2description,
stg.producthierarchylevel3description,
stg.producthierarchylevel4code,
stg.producthierarchylevel4description,
stg.proshipmentnumber,
stg.quantityshipped,
stg.quoteid,
stg.recordid,
stg.recordsource,
stg.resellermajorcode,
stg.resellerminorcode,
stg.resellername,
stg.resellerpartnerlevel,
stg.resellerregion,
stg.right_f3,
stg.right_right_country,
stg.right_right_office_location,
stg.sales_area,
stg.sales_region,
stg.sales_territory,
stg.salesdistrictname,
stg.salesdistrictnumber,
stg.salesofficefamily,
IFNULL(cpl.sales_office_name,stg.salesofficename) salesofficename,
IFNULL(cast(cpl.sales_office_number as STRING),stg.salesofficenumber) salesofficenumber,
stg.salesofficenumberjoin,
stg.salesofficeprincipalemail,
stg.salesofficeprincipalname,
IFNULL(cpl.region,stg.salesofficeregion) salesofficeregion,
stg.salesordernumber,
stg.salesregionname,
stg.salesregionnumber,
stg.salesrepemail,
stg.salesrepid,
stg.salesrepname,
stg.sapoemtag,
stg.sapsalesorganization,
stg.segment,
stg.selling_motion,
stg.sfr_category,
stg.shipdate,
stg.shipmentcarriername,
stg.shiptoaccountrole,
stg.shiptocustomeraddress,
stg.shiptocustomercity,
stg.shiptocustomercustomertype1,
stg.shiptocustomerenterpriseindustry,
stg.shiptocustomergsc,
stg.shiptocustomerindustry1,
stg.shiptocustomername,
stg.shiptocustomernumber,
stg.shiptocustomerparentaccount,
stg.shiptocustomerparentname,
stg.shiptocustomerpostalcode,
stg.shiptocustomerpostalcodejoin,
stg.shiptocustomerstandardizedname,
stg.shiptocustomerstate,
stg.shiptocustomertype1,
stg.shiptocustomervertical,
stg.shiptoenterpriseindustry,
stg.shiptogsc_flag,
stg.shiptoindustry1,
stg.shiptoparentaccount,
stg.shiptostandardizedname,
stg.sizecategory,
stg.sku,
stg.skudescription,
stg.smsbatteriesonlyflag,
stg.smsbatteryrbsm,
stg.smscontractenddate,
stg.smscontractexpiredate,
stg.smscontractpms,
stg.smscontractsequence,
stg.smscontractstartdate,
stg.smscontractstatus,
stg.smscustomertype,
stg.smsequipmentsegment,
stg.smssiteid,
stg.smstagnumber,
stg.smsticketnumber,
stg.soldtocustomercustomertype1,
stg.soldtocustomerenterpriseindustry,
stg.soldtocustomergsc,
stg.soldtocustomerindustry1,
stg.soldtocustomername,
stg.soldtocustomerparentaccount,
stg.soldtocustomerstandardizedname,
stg.soldtocustomervertical,
stg.sourceorder,
stg.speed_dial,
stg.yearmonth,
stg.namedaccountofficeassign,
stg.namedaccountsplit,
stg.officetype,
stg.sp1productflag,
stg.sp1targetaccountflag,
stg.sp2productflag,
stg.sp2targetaccountflag,
stg.splitpercent,
stg.originalsplitpercent,
stg.resellerbranchnumber,
stg.resellerbranchname,
stg.w_insert_dtm,
stg.uom,
stg.sales_order_line_type,
stg.Order_type,
stg.Invoice_type,
stg.Class_code,
stg.OEM_FLAG,
--SO-621 new attributes addition starts
stg.billtocustomerclasscode,
stg.endcustomerclasscode,
stg.shiptocustomerclasscode,
stg.soldtocustomerclasscode,
stg.billtocustomerpartnerclasscode,
stg.endcustomerpartnerclasscode,
stg.shiptocustomerpartnerclasscode,
stg.soldtocustomerpartnerclasscode,
stg.billtooracleregistryid, 
stg.endoracleregistryid,
stg.shiptooracleregistryid,
stg.soldtooracleregistryid,
stg.billtocustomerindustry3,
stg.endcustomerindustry3,
stg.shiptocustomerindustry3,
stg.soldtocustomerindustry3,
stg.billtocustomersubvertical,
stg.endcustomersubvertical,
stg.shiptocustomersubvertical,
stg.soldtocustomersubvertical,
stg.billtoreportingsubparent1,
stg.endreportingsubparent1,
stg.shiptoreportingsubparent1,
stg.soldtoreportingsubparent1,
stg.billtodefinitiveidnid,
stg.enddefinitiveidnid,
stg.shiptodefinitiveidnid,
stg.soldtodefinitiveidnid,
stg.billtodefinitiveidnidparentid,
stg.enddefinitiveidnidparentid,
stg.shiptodefinitiveidnidparentid,
stg.soldtodefinitiveidnidparentid,
stg.billtoncesleaid,
stg.endncesleaid,
stg.shiptoncesleaid,
stg.soldtoncesleaid,
stg.soldtocustomeraddress,
stg.soldtocustomercity,
stg.soldtocustomerstate,
stg.billtocustomerprovince,
stg.endcustomerprovince,
stg.shiptocustomerprovince,
stg.soldtocustomerprovince,
stg.shiptocustomercountry,
stg.soldtocustomercountry,
stg.soldtocustomerpostalcode,
stg.billtooraclepartysitenumber,
stg.endoraclepartysitenumber,
stg.shiptooraclepartysitenumber,
stg.soldtooraclepartysitenumber,
stg.billtodefinitiveid,
stg.enddefinitiveid,
stg.shiptodefinitiveid,
stg.soldtodefinitiveid,
stg.billtoncesschid,
stg.endncesschid,
stg.shiptoncesschid,
stg.soldtoncesschid,
--SO-621 new attributes addition ends
--so-661 new attributes addition starts
stg.billtoaccounttype,
stg.endaccounttype,
stg.shiptoaccounttype,
stg.soldtoaccounttype,
--so-661 new attributes addition ends
stg.productcommissionclasscode,
--start--added by pooja for geist column addition 9-6-2022--
stg.Measure,
stg.Calendar_Month,
stg.Calendar_Year,
stg.Local_Currency,
stg.Sales_Office,
stg.Unit_Price,
stg.Unit_Price_FXD_USD,
--end--added by pooja for geist column addition 9-6-2022--
stg.billtoservicesmajoracc,  --so-665 new attributes addition starts
stg.endservicesmajoracc,
stg.shiptoservicesmajoracc,
stg.soldtoservicesmajoracc,  --so-665 new attributes addition ends
stg.billtocustomersubclass, --so-728 new attributes addition starts
stg.endcustomersubclass,
stg.shiptocustomersubclass,
stg.soldtocustomersubclass,  --so-728 new attributes addition ends
stg.aop_customer_sub_class

from 
@DB_LEVEL@_na_cld_osc_gold.invoice_na_stg stg left outer join
@DB_LEVEL@_edm_other_src_silver.canada_pos_cd_lst cpl on
STRLEFT(stg.EndCustomerPostalCode,3)=cpl.zip_code
and stg.billtocustomercountry='Canada' ;

invalidate metadata @DB_LEVEL@_na_cld_osc_gold.invoice_na_temp;

truncate table @DB_LEVEL@_na_cld_osc_gold.invoice_na_stg;


insert into @DB_LEVEL@_na_cld_osc_gold.invoice_na_stg
select * from @DB_LEVEL@_na_cld_osc_gold.invoice_na_temp;

truncate table @DB_LEVEL@_na_cld_osc_gold.invoice_na_temp;


3.Rule2_logic_stg_temp_insert

INSERT INTO @DB_LEVEL@_na_cld_osc_gold.invoice_na_temp
select 
stg.account_type,
stg.accountam,
stg.accountcsm,
stg.accountlead,
stg.accountpresence,
stg.accountservicesalfes,
stg.accountsubtype,
stg.accounttype,
stg.activated,
stg.account_type_aop,
stg.advanced_data_center_specialization,
stg.anixtergraybarcdwflag,
stg.aop_account_name,
stg.aop_category,
stg.billtoaccountrole,
stg.billtocustomeraddress,
stg.billtocustomercity,
stg.billtocustomercountry,
stg.billtocustomercustomertype1,
stg.billtocustomerenterpriseindustry,
stg.billtocustomergsc,
stg.billtocustomerindustry1,
stg.billtocustomername,
stg.billtocustomernumber,
stg.billtocustomerparentaccount,
stg.billtocustomerparentname,
stg.billtocustomerpostalcode,
stg.billtocustomerstandardizedname,
stg.billtocustomerstate,
stg.billtocustomertype1,
stg.billtocustomervertical,
stg.billtoenterpriseindustry,
stg.billtogsc_flag,
stg.billtoindustry1,
stg.billtoindustrycode1,
stg.billtoparentaccount,
stg.billtostandardizedname,
stg.bsid,
stg.intrachannelflag,
stg.channelproductgrouping,
stg.coe,
stg.country,
stg.customerpurchaseordernumber,
stg.customerrequestdate,
stg.data_last_refreshed,
stg.dcpowerfinanceparent,
stg.dcpowerprofitcenter,
stg.endcustomeraccountrole,
stg.endcustomeraddress,
stg.endcustomercity,
stg.endcustomercountry,
stg.endcustomercustomertype1,
stg.endcustomercustomertype1_2,
stg.endcustomerenterpriseindustry,
stg.endcustomerenterpriseindustry2,
stg.endcustomergsc,
stg.endcustomergsc_flag,
stg.endcustomerindustry,
stg.endcustomerindustry1,
stg.endcustomermarket,
stg.endcustomername,
stg.endcustomername2,
stg.endcustomernumber,
stg.endcustomerparentaccount,
stg.endcustomerparentname,
stg.endcustomerpostalcode,
stg.endcustomerstandardizedname,
stg.endcustomerstate,
stg.endcustomervertical,
stg.exchangerateused,
stg.extendedlistprice,
stg.extendedstandardcost,
stg.f3,
stg.f4,
stg.firstdestinationflag,
stg.gbu,
stg.gbu_cleaned,
stg.gbu_cleaned_groups,
stg.growth_target,
stg.invoicedate,
stg.invoicelinenumber,
stg.invoicenumber,
stg.legacysizecategory,
stg.lesbilltomajorclass,
stg.lesbilltominorclass,
stg.alicecommissionoverridepercent,
stg.lesunitsflag,
stg.level_6,
stg.listprice,
stg.lob,
stg.monthlycost,
stg.netsalesrevenue,
stg.newlescrossref2,
stg.office_no,
stg.office_location,
stg.office_website,
stg.ordercoordinator,
stg.ordercreatedate,
stg.partnerlevelstandardized,
stg.partnertypestandardized,
stg.partnerwebfolderid,
stg.partnerwebquotenumber,
stg.phone_area_code,
stg.phone_number,
stg.plant,
stg.plantdescription,
stg.product_category,
stg.product_family,
stg.producthierarchylevel1description,
stg.producthierarchylevel2description,
stg.producthierarchylevel3description,
stg.producthierarchylevel4code,
stg.producthierarchylevel4description,
stg.proshipmentnumber,
stg.quantityshipped,
stg.quoteid,
stg.recordid,
stg.recordsource,
stg.resellermajorcode,
stg.resellerminorcode,
stg.resellername,
stg.resellerpartnerlevel,
stg.resellerregion,
stg.right_f3,
stg.right_right_country,
stg.right_right_office_location,
stg.sales_area,
stg.sales_region,
stg.sales_territory,
stg.salesdistrictname,
stg.salesdistrictnumber,
stg.salesofficefamily,
IFNULL(upl.office_name,stg.salesofficename) salesofficename,
IFNULL(cast(upl.office_number as STRING),stg.salesofficenumber) salesofficenumber,
stg.salesofficenumberjoin,
stg.salesofficeprincipalemail,
stg.salesofficeprincipalname,
IFNULL(upl.sales_region,stg.salesofficeregion) salesofficeregion,
stg.salesordernumber,
stg.salesregionname,
stg.salesregionnumber,
stg.salesrepemail,
stg.salesrepid,
stg.salesrepname,
stg.sapoemtag,
stg.sapsalesorganization,
stg.segment,
stg.selling_motion,
stg.sfr_category,
stg.shipdate,
stg.shipmentcarriername,
stg.shiptoaccountrole,
stg.shiptocustomeraddress,
stg.shiptocustomercity,
stg.shiptocustomercustomertype1,
stg.shiptocustomerenterpriseindustry,
stg.shiptocustomergsc,
stg.shiptocustomerindustry1,
stg.shiptocustomername,
stg.shiptocustomernumber,
stg.shiptocustomerparentaccount,
stg.shiptocustomerparentname,
stg.shiptocustomerpostalcode,
stg.shiptocustomerpostalcodejoin,
stg.shiptocustomerstandardizedname,
stg.shiptocustomerstate,
stg.shiptocustomertype1,
stg.shiptocustomervertical,
stg.shiptoenterpriseindustry,
stg.shiptogsc_flag,
stg.shiptoindustry1,
stg.shiptoparentaccount,
stg.shiptostandardizedname,
stg.sizecategory,
stg.sku,
stg.skudescription,
stg.smsbatteriesonlyflag,
stg.smsbatteryrbsm,
stg.smscontractenddate,
stg.smscontractexpiredate,
stg.smscontractpms,
stg.smscontractsequence,
stg.smscontractstartdate,
stg.smscontractstatus,
stg.smscustomertype,
stg.smsequipmentsegment,
stg.smssiteid,
stg.smstagnumber,
stg.smsticketnumber,
stg.soldtocustomercustomertype1,
stg.soldtocustomerenterpriseindustry,
stg.soldtocustomergsc,
stg.soldtocustomerindustry1,
stg.soldtocustomername,
stg.soldtocustomerparentaccount,
stg.soldtocustomerstandardizedname,
stg.soldtocustomervertical,
stg.sourceorder,
stg.speed_dial,
stg.yearmonth,
stg.namedaccountofficeassign,
stg.namedaccountsplit,
stg.officetype,
stg.sp1productflag,
stg.sp1targetaccountflag,
stg.sp2productflag,
stg.sp2targetaccountflag,
stg.splitpercent,
stg.originalsplitpercent,
stg.resellerbranchnumber,
stg.resellerbranchname,
stg.w_insert_dtm,
stg.uom,
stg.sales_order_line_type,
stg.Order_type,
stg.Invoice_type,
stg.Class_code,
stg.OEM_FLAG,
--SO-621 new attributes addition starts
stg.billtocustomerclasscode,
stg.endcustomerclasscode,
stg.shiptocustomerclasscode,
stg.soldtocustomerclasscode,
stg.billtocustomerpartnerclasscode,
stg.endcustomerpartnerclasscode,
stg.shiptocustomerpartnerclasscode,
stg.soldtocustomerpartnerclasscode,
stg.billtooracleregistryid, 
stg.endoracleregistryid,
stg.shiptooracleregistryid,
stg.soldtooracleregistryid,
stg.billtocustomerindustry3,
stg.endcustomerindustry3,
stg.shiptocustomerindustry3,
stg.soldtocustomerindustry3,
stg.billtocustomersubvertical,
stg.endcustomersubvertical,
stg.shiptocustomersubvertical,
stg.soldtocustomersubvertical,
stg.billtoreportingsubparent1,
stg.endreportingsubparent1,
stg.shiptoreportingsubparent1,
stg.soldtoreportingsubparent1,
stg.billtodefinitiveidnid,
stg.enddefinitiveidnid,
stg.shiptodefinitiveidnid,
stg.soldtodefinitiveidnid,
stg.billtodefinitiveidnidparentid,
stg.enddefinitiveidnidparentid,
stg.shiptodefinitiveidnidparentid,
stg.soldtodefinitiveidnidparentid,
stg.billtoncesleaid,
stg.endncesleaid,
stg.shiptoncesleaid,
stg.soldtoncesleaid,
stg.soldtocustomeraddress,
stg.soldtocustomercity,
stg.soldtocustomerstate,
stg.billtocustomerprovince,
stg.endcustomerprovince,
stg.shiptocustomerprovince,
stg.soldtocustomerprovince,
stg.shiptocustomercountry,
stg.soldtocustomercountry,
stg.soldtocustomerpostalcode,
stg.billtooraclepartysitenumber,
stg.endoraclepartysitenumber,
stg.shiptooraclepartysitenumber,
stg.soldtooraclepartysitenumber,
stg.billtodefinitiveid,
stg.enddefinitiveid,
stg.shiptodefinitiveid,
stg.soldtodefinitiveid,
stg.billtoncesschid,
stg.endncesschid,
stg.shiptoncesschid,
stg.soldtoncesschid,
--SO-621 new attributes addition ends
--so-661 new attributes addition starts
stg.billtoaccounttype,
stg.endaccounttype,
stg.shiptoaccounttype,
stg.soldtoaccounttype,
stg.productcommissionclasscode,
--start--added by pooja for geist column addition 9-6-2022--
stg.Measure,
stg.Calendar_Month,
stg.Calendar_Year,
stg.Local_Currency,
stg.Sales_Office,
stg.Unit_Price,
stg.Unit_Price_FXD_USD,
--end--added by pooja for geist column addition 9-6-2022--
stg.billtoservicesmajoracc,  --so-665 new attributes addition starts
stg.endservicesmajoracc,
stg.shiptoservicesmajoracc,
stg.soldtoservicesmajoracc,  --so-665 new attributes addition ends
stg.billtocustomersubclass, --so-728 new attributes addition starts
stg.endcustomersubclass,
stg.shiptocustomersubclass,
stg.soldtocustomersubclass,  --so-728 new attributes addition ends
stg.aop_customer_sub_class

from @DB_LEVEL@_na_cld_osc_gold.invoice_na_stg stg left outer join
@DB_LEVEL@_edm_other_src_silver.usa_pos_cd_lst upl on
STRLEFT(SUBSTRING(stg.EndCustomerPostalCode,4),5)=cast(upl.zip_code as string)
and stg.billtocustomercountry='United States';

invalidate metadata @DB_LEVEL@_na_cld_osc_gold.invoice_na_temp;

truncate table @DB_LEVEL@_na_cld_osc_gold.invoice_na_stg;

4.Rule2_a_Rep_office_info

insert into @DB_LEVEL@_na_cld_osc_gold.invoice_na_stg
select 
intp.account_type,
intp.account_type_aop,
intp.accountam,
intp.accountcsm,
intp.accountlead,
intp.accountpresence,
intp.accountservicesalfes,
intp.accountsubtype,
intp.accounttype,
intp.activated,
intp.advanced_data_center_specialization,
intp.anixtergraybarcdwflag,
intp.aop_account_name,
intp.aop_category,
intp.billtoaccountrole,
intp.billtocustomeraddress,
intp.billtocustomercity,
intp.billtocustomercountry,
intp.billtocustomercustomertype1,
intp.billtocustomerenterpriseindustry,
intp.billtocustomergsc,
intp.billtocustomerindustry1,
intp.billtocustomername,
intp.billtocustomernumber,
intp.billtocustomerparentaccount,
intp.billtocustomerparentname,
intp.billtocustomerpostalcode,
intp.billtocustomerstandardizedname,
intp.billtocustomerstate,
intp.billtocustomertype1,
intp.billtocustomervertical,
intp.billtoenterpriseindustry,
intp.billtogsc_flag,
intp.billtoindustry1,
intp.billtoindustrycode1,
intp.billtoparentaccount,
intp.billtostandardizedname,
intp.bsid,
intp.intrachannelflag,
intp.channelproductgrouping,
intp.coe,
intp.country,
intp.customerpurchaseordernumber,
intp.customerrequestdate,
intp.data_last_refreshed,
intp.dcpowerfinanceparent,
intp.dcpowerprofitcenter,
intp.endcustomeraccountrole,
intp.endcustomeraddress,
intp.endcustomercity,
intp.endcustomercountry,
intp.endcustomercustomertype1,
intp.endcustomercustomertype1_2,
intp.endcustomerenterpriseindustry,
intp.endcustomerenterpriseindustry2,
intp.endcustomergsc,
intp.endcustomergsc_flag,
intp.endcustomerindustry,
intp.endcustomerindustry1,
intp.endcustomermarket,
intp.endcustomername,
intp.endcustomername2,
intp.endcustomernumber,
intp.endcustomerparentaccount,
intp.endcustomerparentname,
intp.endcustomerpostalcode,
intp.endcustomerstandardizedname,
intp.endcustomerstate,
intp.endcustomervertical,
intp.exchangerateused,
intp.extendedlistprice,
intp.extendedstandardcost,
intp.f3,
intp.f4,
intp.firstdestinationflag,
intp.gbu,
intp.gbu_cleaned,
intp.gbu_cleaned_groups,
intp.growth_target,
intp.invoicedate,
intp.invoicelinenumber,
intp.invoicenumber,
intp.legacysizecategory,
intp.lesbilltomajorclass,
intp.lesbilltominorclass,
intp.alicecommissionoverridepercent,
intp.lesunitsflag,
intp.level_6,
intp.listprice,
intp.lob,
intp.monthlycost,
intp.netsalesrevenue,
intp.newlescrossref2,
intp.office_location,
intp.office_no,
intp.office_website,
intp.ordercoordinator,
intp.ordercreatedate,
intp.partnerlevelstandardized,
intp.partnertypestandardized,
intp.partnerwebfolderid,
intp.partnerwebquotenumber,
intp.phone_area_code,
intp.phone_number,
intp.plant,
intp.plantdescription,
intp.product_category,
intp.product_family,
intp.producthierarchylevel1description,
intp.producthierarchylevel2description,
intp.producthierarchylevel3description,
intp.producthierarchylevel4code,
intp.producthierarchylevel4description,
intp.proshipmentnumber,
intp.quantityshipped,
intp.quoteid,
intp.recordid,
intp.recordsource,
intp.resellermajorcode,
intp.resellerminorcode,
intp.resellername,
intp.resellerpartnerlevel,
intp.resellerregion,
intp.right_f3,
intp.right_right_country,
intp.right_right_office_location,
intp.sales_area,
intp.sales_region,
IFNULL((decode(roi.country,'USA',replace(roi.sales_region,'Midwest','US - Midwest'),roi.sales_region )),intp.sales_territory)  sales_territory, 
intp.salesdistrictname,
intp.salesdistrictnumber,
IFNULL(roi.office_family,intp.salesofficefamily) salesofficefamily, 
IFNULL(roi.office_name,intp.salesofficename) salesofficename,
intp.salesofficenumber,
intp.salesofficenumberjoin,
IFNULL(roi.principal_email,intp.salesofficeprincipalemail) salesofficeprincipalemail, 
IFNULL(roi.principal,intp.salesofficeprincipalname) salesofficeprincipalname, 
IFNULL((decode(roi.country,'USA',replace(roi.sales_region,'Midwest','US - Midwest'),roi.sales_region )),intp.salesofficeregion)  salesofficeregion,
intp.salesordernumber,
IFNULL((decode(roi.country,'USA',replace(roi.sales_region,'Midwest','US - Midwest'),roi.sales_region )),intp.salesregionname) salesregion, 
intp.salesregionnumber,
intp.salesrepemail,
intp.salesrepid,
intp.salesrepname,
intp.sapoemtag,
intp.sapsalesorganization,
intp.segment,
intp.selling_motion,
intp.sfr_category,
intp.shipdate,
intp.shipmentcarriername,
intp.shiptoaccountrole,
intp.shiptocustomeraddress,
intp.shiptocustomercity,
intp.shiptocustomercustomertype1,
intp.shiptocustomerenterpriseindustry,
intp.shiptocustomergsc,
intp.shiptocustomerindustry1,
intp.shiptocustomername,
intp.shiptocustomernumber,
intp.shiptocustomerparentaccount,
intp.shiptocustomerparentname,
intp.shiptocustomerpostalcode,
intp.shiptocustomerpostalcodejoin,
intp.shiptocustomerstandardizedname,
intp.shiptocustomerstate,
intp.shiptocustomertype1,
intp.shiptocustomervertical,
intp.shiptoenterpriseindustry,
intp.shiptogsc_flag,
intp.shiptoindustry1,
intp.shiptoparentaccount,
intp.shiptostandardizedname,
intp.sizecategory,
intp.sku,
intp.skudescription,
intp.smsbatteriesonlyflag,
intp.smsbatteryrbsm,
intp.smscontractenddate,
intp.smscontractexpiredate,
intp.smscontractpms,
intp.smscontractsequence,
intp.smscontractstartdate,
intp.smscontractstatus,
intp.smscustomertype,
intp.smsequipmentsegment,
intp.smssiteid,
intp.smstagnumber,
intp.smsticketnumber,
intp.soldtocustomercustomertype1,
intp.soldtocustomerenterpriseindustry,
intp.soldtocustomergsc,
intp.soldtocustomerindustry1,
intp.soldtocustomername,
intp.soldtocustomerparentaccount,
intp.soldtocustomerstandardizedname,
intp.soldtocustomervertical,
intp.sourceorder,
intp.speed_dial,
intp.yearmonth,
intp.namedaccountofficeassign,
intp.namedaccountsplit,
intp.officetype,
intp.sp1productflag,
intp.sp1targetaccountflag,
intp.sp2productflag,
intp.sp2targetaccountflag,
intp.splitpercent,
intp.originalsplitpercent,
intp.resellerbranchnumber,
intp.resellerbranchname,
intp.w_insert_dtm,
intp.uom,
intp.sales_order_line_type,
intp.Order_type,
intp.Invoice_type,
intp.Class_code,
intp.OEM_FLAG,
--SO-621 new attributes addition starts
intp.billtocustomerclasscode,
intp.endcustomerclasscode,
intp.shiptocustomerclasscode,
intp.soldtocustomerclasscode,
intp.billtocustomerpartnerclasscode,
intp.endcustomerpartnerclasscode,
intp.shiptocustomerpartnerclasscode,
intp.soldtocustomerpartnerclasscode,
intp.billtooracleregistryid, 
intp.endoracleregistryid,
intp.shiptooracleregistryid,
intp.soldtooracleregistryid,
intp.billtocustomerindustry3,
intp.endcustomerindustry3,
intp.shiptocustomerindustry3,
intp.soldtocustomerindustry3,
intp.billtocustomersubvertical,
intp.endcustomersubvertical,
intp.shiptocustomersubvertical,
intp.soldtocustomersubvertical,
intp.billtoreportingsubparent1,
intp.endreportingsubparent1,
intp.shiptoreportingsubparent1,
intp.soldtoreportingsubparent1,
intp.billtodefinitiveidnid,
intp.enddefinitiveidnid,
intp.shiptodefinitiveidnid,
intp.soldtodefinitiveidnid,
intp.billtodefinitiveidnidparentid,
intp.enddefinitiveidnidparentid,
intp.shiptodefinitiveidnidparentid,
intp.soldtodefinitiveidnidparentid,
intp.billtoncesleaid,
intp.endncesleaid,
intp.shiptoncesleaid,
intp.soldtoncesleaid,
intp.soldtocustomeraddress,
intp.soldtocustomercity,
intp.soldtocustomerstate,
intp.billtocustomerprovince,
intp.endcustomerprovince,
intp.shiptocustomerprovince,
intp.soldtocustomerprovince,
intp.shiptocustomercountry,
intp.soldtocustomercountry,
intp.soldtocustomerpostalcode,
intp.billtooraclepartysitenumber,
intp.endoraclepartysitenumber,
intp.shiptooraclepartysitenumber,
intp.soldtooraclepartysitenumber,
intp.billtodefinitiveid,
intp.enddefinitiveid,
intp.shiptodefinitiveid,
intp.soldtodefinitiveid,
intp.billtoncesschid,
intp.endncesschid,
intp.shiptoncesschid,
intp.soldtoncesschid,
--SO-621 new attributes addition ends
--so-661 new attributes addition starts
intp.billtoaccounttype,
intp.endaccounttype,
intp.shiptoaccounttype,
intp.soldtoaccounttype,
--so-661 new attributes addition ends
intp.productcommissionclasscode,
--start--added by pooja for geist column addition 9-6-2022--
intp.Measure,
intp.Calendar_Month,
intp.Calendar_Year,
intp.Local_Currency,
intp.Sales_Office,
intp.Unit_Price,
intp.Unit_Price_FXD_USD,
--end--added by pooja for geist column addition 9-6-2022--
intp.billtoservicesmajoracc,  --so-665 new attributes addition starts
intp.endservicesmajoracc,
intp.shiptoservicesmajoracc,
intp.soldtoservicesmajoracc,  --so-665 new attributes addition ends
intp.billtocustomersubclass, --so-728 new attributes addition starts
intp.endcustomersubclass,
intp.shiptocustomersubclass,
intp.soldtocustomersubclass,  --so-728 new attributes addition ends
intp.aop_customer_sub_class

from 
@DB_LEVEL@_na_cld_osc_gold.invoice_na_temp intp
left outer join @DB_LEVEL@_edm_other_src_silver.rep_office_info roi
on intp.salesofficenumber =roi.office_location;

truncate table @DB_LEVEL@_na_cld_osc_gold.invoice_na_temp;

5.New SP1/SP2 product flag logic

INSERT INTO @DB_LEVEL@_na_cld_osc_gold.invoice_na_temp
(
account_type
,accountam
,accountcsm
,accountlead
,accountpresence
,accountservicesalfes
,accountsubtype
,accounttype
,activated
,account_type_aop
,advanced_data_center_specialization
,anixtergraybarcdwflag
,aop_account_name
,aop_category
,billtoaccountrole
,billtocustomeraddress
,billtocustomercity
,billtocustomercountry
,billtocustomercustomertype1
,billtocustomerenterpriseindustry
,billtocustomergsc
,billtocustomerindustry1
,billtocustomername
,billtocustomernumber
,billtocustomerparentaccount
,billtocustomerparentname
,billtocustomerpostalcode
,billtocustomerstandardizedname
,billtocustomerstate
,billtocustomertype1
,billtocustomervertical
,billtoenterpriseindustry
,billtogsc_flag
,billtoindustry1
,billtoindustrycode1
,billtoparentaccount
,billtostandardizedname
,bsid
,intrachannelflag
,channelproductgrouping
,coe
,country
,customerpurchaseordernumber
,customerrequestdate
,data_last_refreshed
,dcpowerfinanceparent
,dcpowerprofitcenter
,endcustomeraccountrole
,endcustomeraddress
,endcustomercity
,endcustomercountry
,endcustomercustomertype1
,endcustomercustomertype1_2
,endcustomerenterpriseindustry
,endcustomerenterpriseindustry2
,endcustomergsc
,endcustomergsc_flag
,endcustomerindustry
,endcustomerindustry1
,endcustomermarket
,endcustomername
,endcustomername2
,endcustomernumber
,endcustomerparentaccount
,endcustomerparentname
,endcustomerpostalcode
,endcustomerstandardizedname
,endcustomerstate
,endcustomervertical
,exchangerateused
,extendedlistprice
,extendedstandardcost
,f3
,f4
,firstdestinationflag
,gbu
,gbu_cleaned
,gbu_cleaned_groups
,growth_target
,invoicedate
,invoicelinenumber
,invoicenumber
,legacysizecategory
,lesbilltomajorclass
,lesbilltominorclass
,alicecommissionoverridepercent
,lesunitsflag
,level_6
,listprice
,lob
,monthlycost
,netsalesrevenue
,newlescrossref2
,office_no
,office_location
,office_website
,ordercoordinator
,ordercreatedate
,partnerlevelstandardized
,partnertypestandardized
,partnerwebfolderid
,partnerwebquotenumber
,phone_area_code
,phone_number
,plant
,plantdescription
,product_category
,product_family
,producthierarchylevel1description
,producthierarchylevel2description
,producthierarchylevel3description
,producthierarchylevel4code
,producthierarchylevel4description
,proshipmentnumber
,quantityshipped
,quoteid
,recordid
,recordsource
,resellermajorcode
,resellerminorcode
,resellername
,resellerpartnerlevel
,resellerregion
,right_f3
,right_right_country
,right_right_office_location
,sales_area
,sales_region
,sales_territory
,salesdistrictname
,salesdistrictnumber
,salesofficefamily
,salesofficename
,salesofficenumber
,salesofficenumberjoin
,salesofficeprincipalemail
,salesofficeprincipalname
,salesofficeregion
,salesordernumber
,salesregionname
,salesregionnumber
,salesrepemail
,salesrepid
,salesrepname
,sapoemtag
,sapsalesorganization
,segment
,selling_motion
,sfr_category
,shipdate
,shipmentcarriername
,shiptoaccountrole
,shiptocustomeraddress
,shiptocustomercity
,shiptocustomercustomertype1
,shiptocustomerenterpriseindustry
,shiptocustomergsc
,shiptocustomerindustry1
,shiptocustomername
,shiptocustomernumber
,shiptocustomerparentaccount
,shiptocustomerparentname
,shiptocustomerpostalcode
,shiptocustomerpostalcodejoin
,shiptocustomerstandardizedname
,shiptocustomerstate
,shiptocustomertype1
,shiptocustomervertical
,shiptoenterpriseindustry
,shiptogsc_flag
,shiptoindustry1
,shiptoparentaccount
,shiptostandardizedname
,sizecategory
,sku
,skudescription
,smsbatteriesonlyflag
,smsbatteryrbsm
,smscontractenddate
,smscontractexpiredate
,smscontractpms
,smscontractsequence
,smscontractstartdate
,smscontractstatus
,smscustomertype
,smsequipmentsegment
,smssiteid
,smstagnumber
,smsticketnumber
,soldtocustomercustomertype1
,soldtocustomerenterpriseindustry
,soldtocustomergsc
,soldtocustomerindustry1
,soldtocustomername
,soldtocustomerparentaccount
,soldtocustomerstandardizedname
,soldtocustomervertical
,sourceorder
,speed_dial
,yearmonth
,namedaccountofficeassign
,namedaccountsplit
,officetype
,sp1productflag
,sp1targetaccountflag
,sp2productflag
,sp2targetaccountflag
,splitpercent
,originalsplitpercent
,resellerbranchnumber
,resellerbranchname
,w_insert_dtm
,uom
,sales_order_line_type
,Order_type
,Invoice_type
,Class_code
,OEM_FLAG
,billtocustomerclasscode  --SO-621 new attributes addition starts
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
,soldtocustomeraddress
,soldtocustomercity
,soldtocustomerstate
,billtocustomerprovince
,endcustomerprovince
,shiptocustomerprovince
,soldtocustomerprovince
,shiptocustomercountry
,soldtocustomercountry
,soldtocustomerpostalcode
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
,soldtoncesschid  --SO-621 new attributes addition ends
,billtoaccounttype  --so-661 new attributes addition starts
,endaccounttype
,shiptoaccounttype
,soldtoaccounttype  --so-661 new attributes addition ends
,productcommissionclasscode
--start--added by pooja for geist column addition 9-6-2022--
,Measure
,Calendar_Month
,Calendar_Year
,Local_Currency
,Sales_Office
,Unit_Price
,Unit_Price_FXD_USD
--end--added by pooja for geist column addition 9-6-2022--
,billtoservicesmajoracc --so-665 new attributes addition starts
,endservicesmajoracc
,shiptoservicesmajoracc
,soldtoservicesmajoracc  --so-665 new attributes addition ends
,billtocustomersubclass --so-728 new attributes addition starts
,endcustomersubclass
,shiptocustomersubclass
,soldtocustomersubclass  --so-728 new attributes addition ends
,aop_customer_sub_class
)
select 
stg.account_type
,stg.accountam
,stg.accountcsm
,stg.accountlead
,stg.accountpresence
,stg.accountservicesalfes
,stg.accountsubtype
,stg.accounttype
,stg.activated
,stg.account_type_aop
,stg.advanced_data_center_specialization
,stg.anixtergraybarcdwflag
,stg.aop_account_name
,stg.aop_category
,stg.billtoaccountrole
,stg.billtocustomeraddress
,stg.billtocustomercity
,stg.billtocustomercountry
,stg.billtocustomercustomertype1
,stg.billtocustomerenterpriseindustry
,stg.billtocustomergsc
,stg.billtocustomerindustry1
,stg.billtocustomername
,stg.billtocustomernumber
,stg.billtocustomerparentaccount
,stg.billtocustomerparentname
,stg.billtocustomerpostalcode
,stg.billtocustomerstandardizedname
,stg.billtocustomerstate
,stg.billtocustomertype1
,stg.billtocustomervertical
,stg.billtoenterpriseindustry
,stg.billtogsc_flag
,stg.billtoindustry1
,stg.billtoindustrycode1
,stg.billtoparentaccount
,stg.billtostandardizedname
,stg.bsid
,stg.intrachannelflag
,stg.channelproductgrouping
,stg.coe
,stg.country
,stg.customerpurchaseordernumber
,stg.customerrequestdate
,stg.data_last_refreshed
,stg.dcpowerfinanceparent
,stg.dcpowerprofitcenter
,stg.endcustomeraccountrole
,stg.endcustomeraddress
,stg.endcustomercity
,stg.endcustomercountry
,stg.endcustomercustomertype1
,stg.endcustomercustomertype1_2
,stg.endcustomerenterpriseindustry
,stg.endcustomerenterpriseindustry2
,stg.endcustomergsc
,stg.endcustomergsc_flag
,stg.endcustomerindustry
,stg.endcustomerindustry1
,stg.endcustomermarket
,stg.endcustomername
,stg.endcustomername2
,stg.endcustomernumber
,stg.endcustomerparentaccount
,stg.endcustomerparentname
,stg.endcustomerpostalcode
,stg.endcustomerstandardizedname
,stg.endcustomerstate
,stg.endcustomervertical
,stg.exchangerateused
,stg.extendedlistprice
,stg.extendedstandardcost
,stg.f3
,stg.f4
,stg.firstdestinationflag
,stg.gbu
,stg.gbu_cleaned
,stg.gbu_cleaned_groups
,stg.growth_target
,stg.invoicedate
,stg.invoicelinenumber
,stg.invoicenumber
,stg.legacysizecategory
,stg.lesbilltomajorclass
,stg.lesbilltominorclass
,stg.alicecommissionoverridepercent
,stg.lesunitsflag
,stg.level_6
,stg.listprice
,stg.lob
,stg.monthlycost
,stg.netsalesrevenue
,stg.newlescrossref2
,stg.office_no
,stg.office_location
,stg.office_website
,stg.ordercoordinator
,stg.ordercreatedate
,stg.partnerlevelstandardized
,stg.partnertypestandardized
,stg.partnerwebfolderid
,stg.partnerwebquotenumber
,stg.phone_area_code
,stg.phone_number
,stg.plant
,stg.plantdescription
,stg.product_category
,stg.product_family
,stg.producthierarchylevel1description
,stg.producthierarchylevel2description
,stg.producthierarchylevel3description
,stg.producthierarchylevel4code
,stg.producthierarchylevel4description
,stg.proshipmentnumber
,stg.quantityshipped
,stg.quoteid
,stg.recordid
,stg.recordsource
,stg.resellermajorcode
,stg.resellerminorcode
,stg.resellername
,stg.resellerpartnerlevel
,stg.resellerregion
,stg.right_f3
,stg.right_right_country
,stg.right_right_office_location
,stg.sales_area
,stg.sales_region
,stg.sales_territory
,stg.salesdistrictname
,stg.salesdistrictnumber
,stg.salesofficefamily
,stg.salesofficename
,stg.salesofficenumber
,stg.salesofficenumberjoin
,stg.salesofficeprincipalemail
,stg.salesofficeprincipalname
,stg.salesofficeregion
,stg.salesordernumber
,stg.salesregionname
,stg.salesregionnumber
,stg.salesrepemail
,stg.salesrepid
,stg.salesrepname
,stg.sapoemtag
,stg.sapsalesorganization
,stg.segment
,stg.selling_motion
,stg.sfr_category
,stg.shipdate
,stg.shipmentcarriername
,stg.shiptoaccountrole
,stg.shiptocustomeraddress
,stg.shiptocustomercity
,stg.shiptocustomercustomertype1
,stg.shiptocustomerenterpriseindustry
,stg.shiptocustomergsc
,stg.shiptocustomerindustry1
,stg.shiptocustomername
,stg.shiptocustomernumber
,stg.shiptocustomerparentaccount
,stg.shiptocustomerparentname
,stg.shiptocustomerpostalcode
,stg.shiptocustomerpostalcodejoin
,stg.shiptocustomerstandardizedname
,stg.shiptocustomerstate
,stg.shiptocustomertype1
,stg.shiptocustomervertical
,stg.shiptoenterpriseindustry
,stg.shiptogsc_flag
,stg.shiptoindustry1
,stg.shiptoparentaccount
,stg.shiptostandardizedname
,stg.sizecategory
,stg.sku
,stg.skudescription
,stg.smsbatteriesonlyflag
,stg.smsbatteryrbsm
,stg.smscontractenddate
,stg.smscontractexpiredate
,stg.smscontractpms
,stg.smscontractsequence
,stg.smscontractstartdate
,stg.smscontractstatus
,stg.smscustomertype
,stg.smsequipmentsegment
,stg.smssiteid
,stg.smstagnumber
,stg.smsticketnumber
,stg.soldtocustomercustomertype1
,stg.soldtocustomerenterpriseindustry
,stg.soldtocustomergsc
,stg.soldtocustomerindustry1
,stg.soldtocustomername
,stg.soldtocustomerparentaccount
,stg.soldtocustomerstandardizedname
,stg.soldtocustomervertical
,stg.sourceorder
,stg.speed_dial
,stg.yearmonth
,stg.namedaccountofficeassign
,stg.namedaccountsplit
,stg.officetype
,case when stg.sku = sa.item_number and sa.attribute_char11 = 'Policy 119 SP1' then 'TRUE' 
else 'FALSE' 
end as sp1productflag
,stg.sp1targetaccountflag
,case when stg.sku = sa.item_number and sa.attribute_char11 = 'Policy 119 SP2' then  'TRUE' 
else 'FALSE' 
end as sp2productflag
,stg.sp2targetaccountflag
,stg.splitpercent
,stg.originalsplitpercent
,stg.resellerbranchnumber
,stg.resellerbranchname
,stg.w_insert_dtm
,stg.uom
,stg.sales_order_line_type
,stg.Order_type
,stg.Invoice_type
,stg.Class_code
,stg.OEM_FLAG
--SO-621 new attributes addition starts
,stg.billtocustomerclasscode
,stg.endcustomerclasscode
,stg.shiptocustomerclasscode
,stg.soldtocustomerclasscode
,stg.billtocustomerpartnerclasscode
,stg.endcustomerpartnerclasscode
,stg.shiptocustomerpartnerclasscode
,stg.soldtocustomerpartnerclasscode
,stg.billtooracleregistryid 
,stg.endoracleregistryid
,stg.shiptooracleregistryid
,stg.soldtooracleregistryid
,stg.billtocustomerindustry3
,stg.endcustomerindustry3
,stg.shiptocustomerindustry3
,stg.soldtocustomerindustry3
,stg.billtocustomersubvertical
,stg.endcustomersubvertical
,stg.shiptocustomersubvertical
,stg.soldtocustomersubvertical
,stg.billtoreportingsubparent1
,stg.endreportingsubparent1
,stg.shiptoreportingsubparent1
,stg.soldtoreportingsubparent1
,stg.billtodefinitiveidnid
,stg.enddefinitiveidnid
,stg.shiptodefinitiveidnid
,stg.soldtodefinitiveidnid
,stg.billtodefinitiveidnidparentid
,stg.enddefinitiveidnidparentid
,stg.shiptodefinitiveidnidparentid
,stg.soldtodefinitiveidnidparentid
,stg.billtoncesleaid
,stg.endncesleaid
,stg.shiptoncesleaid
,stg.soldtoncesleaid
,stg.soldtocustomeraddress
,stg.soldtocustomercity
,stg.soldtocustomerstate
,stg.billtocustomerprovince
,stg.endcustomerprovince
,stg.shiptocustomerprovince
,stg.soldtocustomerprovince
,stg.shiptocustomercountry
,stg.soldtocustomercountry
,stg.soldtocustomerpostalcode
,stg.billtooraclepartysitenumber
,stg.endoraclepartysitenumber
,stg.shiptooraclepartysitenumber
,stg.soldtooraclepartysitenumber
,stg.billtodefinitiveid
,stg.enddefinitiveid
,stg.shiptodefinitiveid
,stg.soldtodefinitiveid
,stg.billtoncesschid
,stg.endncesschid
,stg.shiptoncesschid
,stg.soldtoncesschid
--SO-621 new attributes addition ends
--so-661 new attributes addition starts
,stg.billtoaccounttype
,stg.endaccounttype
,stg.shiptoaccounttype
,stg.soldtoaccounttype
--so-661 new attributes addition ends
,stg.productcommissionclasscode
--start--added by pooja for geist column addition 9-6-2022--
,stg.Measure
,stg.Calendar_Month
,stg.Calendar_Year
,stg.Local_Currency
,stg.Sales_Office
,stg.Unit_Price
,stg.Unit_Price_FXD_USD
--end--added by pooja for geist column addition 9-6-2022--
,stg.billtoservicesmajoracc  --so-665 new attributes addition starts
,stg.endservicesmajoracc
,stg.shiptoservicesmajoracc
,stg.soldtoservicesmajoracc  --so-665 new attributes addition ends
,stg.billtocustomersubclass --so-728 new attributes addition starts
,stg.endcustomersubclass
,stg.shiptocustomersubclass
,stg.soldtocustomersubclass  --so-728 new attributes addition ends
,stg.aop_customer_sub_class

from @DB_LEVEL@_na_cld_osc_gold.invoice_na_stg stg 
left outer join (select distinct egp1.item_number, item_eff.attribute_char11 from (
select * from @DB_LEVEL@_cld_oraerp_silver.egp_system_items_b) egp1 
left outer join @DB_LEVEL@_cld_oraerp_silver.ego_item_eff_b item_eff on
egp1.inventory_item_id = item_eff.inventory_item_id
AND egp1.organization_id = item_eff.organization_id
where item_eff.context_code = 'Business Unit Price Control'
AND upper(item_eff.acd_type) = 'PROD' and item_eff.attribute_char1 ='Vertiv Corp'
and item_eff.attribute_char11 in ('Policy 119 SP2','Policy 119 SP1')
and organization_code='999_ITEM_MASTER')sa on stg.sku = sa.item_number;

6.Rule5a_temp_to_stg

truncate table @DB_LEVEL@_na_cld_osc_gold.invoice_na_stg ;

INSERT INTO @DB_LEVEL@_na_cld_osc_gold.invoice_na_stg
(
account_type,
accountam,
accountcsm,
accountlead,
accountpresence,
accountservicesalfes,
accountsubtype,
accounttype,
activated,
account_type_aop,
advanced_data_center_specialization,
anixtergraybarcdwflag,
aop_account_name,
aop_category,
billtoaccountrole,
billtocustomeraddress,
billtocustomercity,
billtocustomercountry,
billtocustomercustomertype1,
billtocustomerenterpriseindustry,
billtocustomergsc,
billtocustomerindustry1,
billtocustomername,
billtocustomernumber,
billtocustomerparentaccount,
billtocustomerparentname,
billtocustomerpostalcode,
billtocustomerstandardizedname,
billtocustomerstate,
billtocustomertype1,
billtocustomervertical,
billtoenterpriseindustry,
billtogsc_flag,
billtoindustry1,
billtoindustrycode1,
billtoparentaccount,
billtostandardizedname,
bsid,
intrachannelflag,
channelproductgrouping,
coe,
country,
customerpurchaseordernumber,
customerrequestdate,
data_last_refreshed,
dcpowerfinanceparent,
dcpowerprofitcenter,
endcustomeraccountrole,
endcustomeraddress,
endcustomercity,
endcustomercountry,
endcustomercustomertype1,
endcustomercustomertype1_2,
endcustomerenterpriseindustry,
endcustomerenterpriseindustry2,
endcustomergsc,
endcustomergsc_flag,
endcustomerindustry,
endcustomerindustry1,
endcustomermarket,
endcustomername,
endcustomername2,
endcustomernumber,
endcustomerparentaccount,
endcustomerparentname,
endcustomerpostalcode,
endcustomerstandardizedname,
endcustomerstate,
endcustomervertical,
exchangerateused,
extendedlistprice,
extendedstandardcost,
f3,
f4,
firstdestinationflag,
gbu,
gbu_cleaned,
gbu_cleaned_groups,
growth_target,
invoicedate,
invoicelinenumber,
invoicenumber,
legacysizecategory,
lesbilltomajorclass,
lesbilltominorclass,
alicecommissionoverridepercent,
lesunitsflag,
level_6,
listprice,
lob,
monthlycost,
netsalesrevenue,
newlescrossref2,
office_no,
office_location,
office_website,
ordercoordinator,
ordercreatedate,
partnerlevelstandardized,
partnertypestandardized,
partnerwebfolderid,
partnerwebquotenumber,
phone_area_code,
phone_number,
plant,
plantdescription,
product_category,
product_family,
producthierarchylevel1description,
producthierarchylevel2description,
producthierarchylevel3description,
producthierarchylevel4code,
producthierarchylevel4description,
proshipmentnumber,
quantityshipped,
quoteid,
recordid,
recordsource,
resellermajorcode,
resellerminorcode,
resellername,
resellerpartnerlevel,
resellerregion,
right_f3,
right_right_country,
right_right_office_location,
sales_area,
sales_region,
sales_territory,
salesdistrictname,
salesdistrictnumber,
salesofficefamily,
salesofficename,
salesofficenumber,
salesofficenumberjoin,
salesofficeprincipalemail,
salesofficeprincipalname,
salesofficeregion,
salesordernumber,
salesregionname,
salesregionnumber,
salesrepemail,
salesrepid,
salesrepname,
sapoemtag,
sapsalesorganization,
segment,
selling_motion,
sfr_category,
shipdate,
shipmentcarriername,
shiptoaccountrole,
shiptocustomeraddress,
shiptocustomercity,
shiptocustomercustomertype1,
shiptocustomerenterpriseindustry,
shiptocustomergsc,
shiptocustomerindustry1,
shiptocustomername,
shiptocustomernumber,
shiptocustomerparentaccount,
shiptocustomerparentname,
shiptocustomerpostalcode,
shiptocustomerpostalcodejoin,
shiptocustomerstandardizedname,
shiptocustomerstate,
shiptocustomertype1,
shiptocustomervertical,
shiptoenterpriseindustry,
shiptogsc_flag,
shiptoindustry1,
shiptoparentaccount,
shiptostandardizedname,
sizecategory,
sku,
skudescription,
smsbatteriesonlyflag,
smsbatteryrbsm,
smscontractenddate,
smscontractexpiredate,
smscontractpms,
smscontractsequence,
smscontractstartdate,
smscontractstatus,
smscustomertype,
smsequipmentsegment,
smssiteid,
smstagnumber,
smsticketnumber,
soldtocustomercustomertype1,
soldtocustomerenterpriseindustry,
soldtocustomergsc,
soldtocustomerindustry1,
soldtocustomername,
soldtocustomerparentaccount,
soldtocustomerstandardizedname,
soldtocustomervertical,
sourceorder,
speed_dial,
yearmonth,
namedaccountofficeassign,
namedaccountsplit,
officetype,
sp1productflag,
sp1targetaccountflag,
sp2productflag,
sp2targetaccountflag,
splitpercent,
originalsplitpercent,
resellerbranchnumber,
resellerbranchname,
w_insert_dtm,
uom,
sales_order_line_type,
Order_type,
Invoice_type,
Class_code,
OEM_FLAG,
billtocustomerclasscode,  --SO-621 new attributes addition starts
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
billtocustomerindustry3,
endcustomerindustry3,
shiptocustomerindustry3,
soldtocustomerindustry3,
billtocustomersubvertical,
endcustomersubvertical,
shiptocustomersubvertical,
soldtocustomersubvertical,
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
soldtocustomeraddress,
soldtocustomercity,
soldtocustomerstate,
billtocustomerprovince,
endcustomerprovince,
shiptocustomerprovince,
soldtocustomerprovince,
shiptocustomercountry,
soldtocustomercountry,
soldtocustomerpostalcode,
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
soldtoncesschid,  --SO-621 new attributes addition ends
billtoaccounttype,  --so-661 new attributes addition starts
endaccounttype,
shiptoaccounttype,
soldtoaccounttype,  --so-661 new attributes addition ends
productcommissionclasscode,
--start--added by pooja for geist column addition 9-6-2022--
Measure,
Calendar_Month,
Calendar_Year,
Local_Currency,
Sales_Office,
Unit_Price,
Unit_Price_FXD_USD,
--end--added by pooja for geist column addition 9-6-2022--
billtoservicesmajoracc,  --so-665 new attributes addition starts
endservicesmajoracc,
shiptoservicesmajoracc,
soldtoservicesmajoracc,  --so-665 new attributes addition ends
billtocustomersubclass, --so-728 new attributes addition starts
endcustomersubclass,
shiptocustomersubclass,
soldtocustomersubclass,  --so-728 new attributes addition ends
aop_customer_sub_class
)
select 
temp.account_type as account_type,
temp.accountam as accountam,
temp.accountcsm as accountcsm,
temp.accountlead as accountlead,
temp.accountpresence as accountpresence,
temp.accountservicesalfes as accountservicesalfes,
temp.accountsubtype as accountsubtype,
temp.accounttype as accounttype,
temp.activated as activated,
temp.account_type_aop as account_type_aop,
temp.advanced_data_center_specialization as advanced_data_center_specialization,
temp.anixtergraybarcdwflag as anixtergraybarcdwflag,
temp.aop_account_name as aop_account_name,
temp.aop_category as aop_category,
temp.billtoaccountrole as billtoaccountrole,
temp.billtocustomeraddress as billtocustomeraddress,
temp.billtocustomercity as billtocustomercity,
temp.billtocustomercountry as billtocustomercountry,
temp.billtocustomercustomertype1 as billtocustomercustomertype1,
temp.billtocustomerenterpriseindustry as billtocustomerenterpriseindustry,
temp.billtocustomergsc as billtocustomergsc,
temp.billtocustomerindustry1 as billtocustomerindustry1,
temp.billtocustomername as billtocustomername,
temp.billtocustomernumber as billtocustomernumber,
temp.billtocustomerparentaccount as billtocustomerparentaccount,
temp.billtocustomerparentname as billtocustomerparentname,
temp.billtocustomerpostalcode as billtocustomerpostalcode,
temp.billtocustomerstandardizedname as billtocustomerstandardizedname,
temp.billtocustomerstate as billtocustomerstate,
temp.billtocustomertype1 as billtocustomertype1,
temp.billtocustomervertical as billtocustomervertical,
temp.billtoenterpriseindustry as billtoenterpriseindustry,
temp.billtogsc_flag as billtogsc_flag,
temp.billtoindustry1 as billtoindustry1,
temp.billtoindustrycode1 as billtoindustrycode1,
temp.billtoparentaccount as billtoparentaccount,
temp.billtostandardizedname as billtostandardizedname,
temp.bsid as bsid,
temp.intrachannelflag as intrachannelflag,
temp.channelproductgrouping as channelproductgrouping,
temp.coe as coe,
temp.country as country,
temp.customerpurchaseordernumber as customerpurchaseordernumber,
temp.customerrequestdate as customerrequestdate,
temp.data_last_refreshed as data_last_refreshed,
temp.dcpowerfinanceparent as dcpowerfinanceparent,
temp.dcpowerprofitcenter as dcpowerprofitcenter,
temp.endcustomeraccountrole as endcustomeraccountrole,
temp.endcustomeraddress as endcustomeraddress,
temp.endcustomercity as endcustomercity,
temp.endcustomercountry as endcustomercountry,
temp.endcustomercustomertype1 as endcustomercustomertype1,
temp.endcustomercustomertype1_2 as endcustomercustomertype1_2,
temp.endcustomerenterpriseindustry as endcustomerenterpriseindustry,
temp.endcustomerenterpriseindustry2 as endcustomerenterpriseindustry2,
temp.endcustomergsc as endcustomergsc,
temp.endcustomergsc_flag as endcustomergsc_flag,
temp.endcustomerindustry as endcustomerindustry,
temp.endcustomerindustry1 as endcustomerindustry1,
temp.endcustomermarket as endcustomermarket,
temp.endcustomername as endcustomername,
temp.endcustomername2 as endcustomername2,
temp.endcustomernumber as endcustomernumber,
temp.endcustomerparentaccount as endcustomerparentaccount,
temp.endcustomerparentname as endcustomerparentname,
temp.endcustomerpostalcode as endcustomerpostalcode,
temp.endcustomerstandardizedname as endcustomerstandardizedname,
temp.endcustomerstate as endcustomerstate,
temp.endcustomervertical as endcustomervertical,
temp.exchangerateused as exchangerateused,
temp.extendedlistprice as extendedlistprice,
temp.extendedstandardcost as extendedstandardcost,
temp.f3 as f3,
temp.f4 as f4,
temp.firstdestinationflag as firstdestinationflag,
temp.gbu as gbu,
temp.gbu_cleaned as gbu_cleaned,
temp.gbu_cleaned_groups as gbu_cleaned_groups,
temp.growth_target as growth_target,
temp.invoicedate as invoicedate,
temp.invoicelinenumber as invoicelinenumber,
temp.invoicenumber as invoicenumber,
temp.legacysizecategory as legacysizecategory,
temp.lesbilltomajorclass as lesbilltomajorclass,
temp.lesbilltominorclass as lesbilltominorclass,
temp.alicecommissionoverridepercent as alicecommissionoverridepercent,
temp.lesunitsflag as lesunitsflag,
temp.level_6 as level_6,
temp.listprice as listprice,
temp.lob as lob,
temp.monthlycost as monthlycost,
temp.netsalesrevenue as netsalesrevenue,
temp.newlescrossref2 as newlescrossref2,
temp.office_no as office_no,
temp.office_location as office_location,
temp.office_website as office_website,
temp.ordercoordinator as ordercoordinator,
temp.ordercreatedate as ordercreatedate,
temp.partnerlevelstandardized as partnerlevelstandardized,
temp.partnertypestandardized as partnertypestandardized,
temp.partnerwebfolderid as partnerwebfolderid,
temp.partnerwebquotenumber as partnerwebquotenumber,
temp.phone_area_code as phone_area_code,
temp.phone_number as phone_number,
temp.plant as plant,
temp.plantdescription as plantdescription,
temp.product_category as product_category,
temp.product_family as product_family,
temp.producthierarchylevel1description as producthierarchylevel1description,
temp.producthierarchylevel2description as producthierarchylevel2description,
temp.producthierarchylevel3description as producthierarchylevel3description,
temp.producthierarchylevel4code as producthierarchylevel4code,
temp.producthierarchylevel4description as producthierarchylevel4description,
temp.proshipmentnumber as proshipmentnumber,
temp.quantityshipped as quantityshipped,
temp.quoteid as quoteid ,
temp.recordid as recordid,
temp.recordsource as recordsource,
temp.resellermajorcode as resellermajorcode,
temp.resellerminorcode as resellerminorcode,
temp.resellername as resellername,
temp.resellerpartnerlevel as resellerpartnerlevel,
temp.resellerregion as resellerregion,
temp.right_f3 as right_f3,
temp.right_right_country as right_right_country,
temp.right_right_office_location as right_right_office_location,
temp.sales_area as sales_area,
temp.sales_region as sales_region,
IFNULL((decode(roi.country,'USA',replace(roi.sales_region,'Midwest','US - Midwest'),roi.sales_region )),temp.sales_territory) as sales_territory, 
temp.salesdistrictname as salesdistrictname,
temp.salesdistrictnumber as salesdistrictnumber,
IFNULL(roi.office_family,temp.salesofficefamily) as salesofficefamily,
IFNULL(roi.office_name,temp.salesofficename) as salesofficename,
temp.salesofficenumber as salesofficenumber,
temp.salesofficenumberjoin as salesofficenumberjoin,
IFNULL(roi.principal_email,temp.salesofficeprincipalemail) as salesofficeprincipalemail, 
IFNULL(roi.principal,temp.salesofficeprincipalname) as salesofficeprincipalname, 
IFNULL((decode(roi.country,'USA',replace(roi.sales_region,'Midwest','US - Midwest'),roi.sales_region )),temp.salesofficeregion) as salesofficeregion,
temp.salesordernumber as salesordernumber,
IFNULL((decode(roi.country,'USA',replace(roi.sales_region,'Midwest','US - Midwest'),roi.sales_region )),temp.salesregionname) as salesregionname, 
temp.salesregionnumber as salesregionnumber,
temp.salesrepemail as salesrepemail,
temp.salesrepid as salesrepid,
temp.salesrepname as salesrepname,
temp.sapoemtag as sapoemtag,
temp.sapsalesorganization as sapsalesorganization,
temp.segment as segment,
temp.selling_motion as selling_motion,
temp.sfr_category as sfr_category,
temp.shipdate as shipdate,
temp.shipmentcarriername as shipmentcarriername,
temp.shiptoaccountrole as shiptoaccountrole,
temp.shiptocustomeraddress as shiptocustomeraddress,
temp.shiptocustomercity as shiptocustomercity,
temp.shiptocustomercustomertype1 as shiptocustomercustomertype1,
temp.shiptocustomerenterpriseindustry as shiptocustomerenterpriseindustry,
temp.shiptocustomergsc as shiptocustomergsc,
temp.shiptocustomerindustry1 as shiptocustomerindustry1,
temp.shiptocustomername as shiptocustomername,
temp.shiptocustomernumber as shiptocustomernumber,
temp.shiptocustomerparentaccount as shiptocustomerparentaccount,
temp.shiptocustomerparentname as shiptocustomerparentname,
temp.shiptocustomerpostalcode as shiptocustomerpostalcode,
temp.shiptocustomerpostalcodejoin as shiptocustomerpostalcodejoin,
temp.shiptocustomerstandardizedname as shiptocustomerstandardizedname,
temp.shiptocustomerstate as shiptocustomerstate,
temp.shiptocustomertype1 as shiptocustomertype1,
temp.shiptocustomervertical as shiptocustomervertical,
temp.shiptoenterpriseindustry as shiptoenterpriseindustry,
temp.shiptogsc_flag as shiptogsc_flag,
temp.shiptoindustry1 as shiptoindustry1,
temp.shiptoparentaccount as shiptoparentaccount,
temp.shiptostandardizedname as shiptostandardizedname,
temp.sizecategory as sizecategory,
temp.sku as sku,
temp.skudescription as skudescription,
temp.smsbatteriesonlyflag as smsbatteriesonlyflag,
temp.smsbatteryrbsm as smsbatteryrbsm,
temp.smscontractenddate as smscontractenddate,
temp.smscontractexpiredate as smscontractexpiredate,
temp.smscontractpms as smscontractpms,
temp.smscontractsequence as smscontractsequence,
temp.smscontractstartdate as smscontractstartdate,
temp.smscontractstatus as smscontractstatus,
temp.smscustomertype as smscustomertype,
temp.smsequipmentsegment as smsequipmentsegment,
temp.smssiteid as smssiteid,
temp.smstagnumber as smstagnumber,
temp.smsticketnumber as smsticketnumber,
temp.soldtocustomercustomertype1 as soldtocustomercustomertype1,
temp.soldtocustomerenterpriseindustry as soldtocustomerenterpriseindustry,
temp.soldtocustomergsc as soldtocustomergsc,
temp.soldtocustomerindustry1 as soldtocustomerindustry1,
temp.soldtocustomername as soldtocustomername,
temp.soldtocustomerparentaccount as soldtocustomerparentaccount,
temp.soldtocustomerstandardizedname as soldtocustomerstandardizedname,
temp.soldtocustomervertical as soldtocustomervertical,
temp.sourceorder as sourceorder,
temp.speed_dial as speed_dial,
temp.yearmonth as yearmonth,
temp.namedaccountofficeassign as namedaccountofficeassign,
temp.namedaccountsplit as namedaccountsplit,
temp.officetype as officetype,
temp.sp1productflag as sp1productflag,
temp.sp1targetaccountflag as sp1targetaccountflag,
temp.sp2productflag as sp2productflag,
temp.sp2targetaccountflag as sp2targetaccountflag,
temp.splitpercent as splitpercent,
temp.originalsplitpercent,
temp.resellerbranchnumber,
temp.resellerbranchname,
temp.w_insert_dtm,
temp.uom,
temp.sales_order_line_type,
temp.Order_type,
temp.Invoice_type,
temp.Class_code,
temp.OEM_FLAG,
--SO-621 new attributes addition starts
temp.billtocustomerclasscode as billtocustomerclasscode,
temp.endcustomerclasscode as endcustomerclasscode,
temp.shiptocustomerclasscode as shiptocustomerclasscode,
temp.soldtocustomerclasscode as soldtocustomerclasscode,
temp.billtocustomerpartnerclasscode as billtocustomerpartnerclasscode,
temp.endcustomerpartnerclasscode as endcustomerpartnerclasscode,
temp.shiptocustomerpartnerclasscode as shiptocustomerpartnerclasscode,
temp.soldtocustomerpartnerclasscode as soldtocustomerpartnerclasscode,
temp.billtooracleregistryid as billtooracleregistryid, 
temp.endoracleregistryid as endoracleregistryid,
temp.shiptooracleregistryid as shiptooracleregistryid,
temp.soldtooracleregistryid as soldtooracleregistryid,
temp.billtocustomerindustry3 as billtocustomerindustry3,
temp.endcustomerindustry3 as endcustomerindustry3,
temp.shiptocustomerindustry3 as shiptocustomerindustry3,
temp.soldtocustomerindustry3 as soldtocustomerindustry3,
temp.billtocustomersubvertical as billtocustomersubvertical,
temp.endcustomersubvertical as endcustomersubvertical,
temp.shiptocustomersubvertical as shiptocustomersubvertical,
temp.soldtocustomersubvertical as soldtocustomersubvertical,
temp.billtoreportingsubparent1 as billtoreportingsubparent1,
temp.endreportingsubparent1 as endreportingsubparent1,
temp.shiptoreportingsubparent1 as shiptoreportingsubparent1,
temp.soldtoreportingsubparent1 as soldtoreportingsubparent1,
temp.billtodefinitiveidnid as billtodefinitiveidnid,
temp.enddefinitiveidnid as enddefinitiveidnid,
temp.shiptodefinitiveidnid as shiptodefinitiveidnid,
temp.soldtodefinitiveidnid as soldtodefinitiveidnid,
temp.billtodefinitiveidnidparentid as billtodefinitiveidnidparentid,
temp.enddefinitiveidnidparentid as enddefinitiveidnidparentid,
temp.shiptodefinitiveidnidparentid as shiptodefinitiveidnidparentid,
temp.soldtodefinitiveidnidparentid as soldtodefinitiveidnidparentid,
temp.billtoncesleaid as billtoncesleaid,
temp.endncesleaid as endncesleaid,
temp.shiptoncesleaid as shiptoncesleaid,
temp.soldtoncesleaid as soldtoncesleaid,
temp.soldtocustomeraddress as soldtocustomeraddress,
temp.soldtocustomercity as soldtocustomercity,
temp.soldtocustomerstate as soldtocustomerstate,
temp.billtocustomerprovince as billtocustomerprovince,
temp.endcustomerprovince as endcustomerprovince,
temp.shiptocustomerprovince as shiptocustomerprovince,
temp.soldtocustomerprovince as soldtocustomerprovince,
temp.shiptocustomercountry as shiptocustomercountry,
temp.soldtocustomercountry as soldtocustomercountry,
temp.soldtocustomerpostalcode as soldtocustomerpostalcode,
temp.billtooraclepartysitenumber as billtooraclepartysitenumber,
temp.endoraclepartysitenumber as endoraclepartysitenumber,
temp.shiptooraclepartysitenumber as shiptooraclepartysitenumber,
temp.soldtooraclepartysitenumber as soldtooraclepartysitenumber,
temp.billtodefinitiveid as billtodefinitiveid,
temp.enddefinitiveid as enddefinitiveid,
temp.shiptodefinitiveid as shiptodefinitiveid,
temp.soldtodefinitiveid as soldtodefinitiveid,
temp.billtoncesschid as billtoncesschid,
temp.endncesschid as endncesschid,
temp.shiptoncesschid as shiptoncesschid,
temp.soldtoncesschid as soldtoncesschid,
--SO-621 new attributes addition ends
--so-661 new attributes addition starts
temp.billtoaccounttype as billtoaccounttype,
temp.endaccounttype as endaccounttype,
temp.shiptoaccounttype as shiptoaccounttype,
temp.soldtoaccounttype as soldtoaccounttype, 
--so-661 new attributes addition ends
temp.productcommissionclasscode,
--start--added by pooja for geist column addition 9-6-2022--
temp.Measure,
temp.Calendar_Month,
temp.Calendar_Year,
temp.Local_Currency,
temp.Sales_Office,
temp.Unit_Price,
temp.Unit_Price_FXD_USD,
--end--added by pooja for geist column addition 9-6-2022--
temp.billtoservicesmajoracc as billtoservicesmajoracc,   --so-665 new attributes addition starts
temp.endservicesmajoracc as endservicesmajoracc,
temp.shiptoservicesmajoracc as shiptoservicesmajoracc,
temp.soldtoservicesmajoracc as soldtoservicesmajoracc,   --so-665 new attributes addition ends
temp.billtocustomersubclass as billtocustomersubclass, --so-728 new attributes addition starts
temp.endcustomersubclass as endcustomersubclass,
temp.shiptocustomersubclass as shiptocustomersubclass,
temp.soldtocustomersubclass as soldtocustomersubclass,  --so-728 new attributes addition ends
temp.aop_customer_sub_class

from @DB_LEVEL@_na_cld_osc_gold.invoice_na_temp temp 
left outer join @DB_LEVEL@_edm_other_src_silver.rep_office_info roi
on temp.salesofficenumber =roi.office_location
;


7.stg_to_invoice_final

truncate table @DB_LEVEL@_na_cld_osc_gold.invoice_na_final ;

insert into @DB_LEVEL@_na_cld_osc_gold.invoice_na_final
select * from @DB_LEVEL@_na_cld_osc_gold.invoice_na_stg ;

truncate table @DB_LEVEL@_na_cld_osc_gold.invoice_na_temp ;

truncate table @DB_LEVEL@_na_cld_osc_gold.invoice_na_stg ;

invalidate metadata @DB_LEVEL@_na_cld_osc_gold.invoice_na_final ;




8.populate_commission_temp

truncate @DB_LEVEL@_na_cld_osc_gold.commission_temp;

insert into @DB_LEVEL@_na_cld_osc_gold.commission_temp
(
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
,w_insert_dtm
,uom
,sales_order_line_type
,Order_type
,Invoice_type
,Class_code
,OEM_FLAG
,billtocustomerclasscode  --SO-621 new attributes addition starts
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
,soldtoncesschid  --SO-621 new attributes addition ends
,billtoaccounttype  --so-661 new attributes addition starts
,endaccounttype
,shiptoaccounttype
,soldtoaccounttype  --so-661 new attributes addition ends
,productcommissionclasscode
--start--added by pooja for geist column addition 9-6-2022--
,Measure
,Calendar_Month
,Calendar_Year
,Local_Currency
,Sales_Office
,Unit_Price
,Unit_Price_FXD_USD
--end--added by pooja for geist column addition 9-6-2022--
,billtoservicesmajoracc --so-665 new attributes addition starts
,endservicesmajoracc
,shiptoservicesmajoracc
,soldtoservicesmajoracc  --so-665 new attributes addition ends
,billtocustomersubclass --so-728 new attributes addition starts
,endcustomersubclass
,shiptocustomersubclass
,soldtocustomersubclass  --so-728 new attributes addition ends
,aop_customer_sub_class
)
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
,namedaccountofficeassign
,namedaccountsplit
,'' netprice
,netsalesrevenue
,'' netsalesrevenuemondayticket
,newlescrossref2
,'' notes
,'' numberforgroupingforsizecategory
,'' oemtag
,'' oemtagmondayticket
,office_location as officelocation
,CASE
			WHEN upper(recordsource) = 'ERS_HVM' THEN 'FDO'
	        WHEN upper(salesofficename) like '%VERTIV%'
	        or upper(salesofficename) like '%LIEBERT%' THEN 'FDO'
	        ELSE 'LVO'
            END office_type
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
,originalsplitpercent
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
,salesofficename
,salesofficenumber
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
,shiptocustomercountry
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
,soldtocustomeraddress
,soldtocustomercity
,soldtocustomercountry
,soldtocustomercustomertype1
,soldtocustomerenterpriseindustry
,soldtocustomergsc
,soldtocustomerindustry1
,soldtocustomername
,'' soldtocustomernumber
,soldtocustomerparentaccount
,soldtocustomerpostalcode
,'' soldtocustomerreportingname
,soldtocustomerstandardizedname
,soldtocustomerstate
,soldtocustomervertical
,sp1productflag
,'' sp2productexclusion
,sp2productflag
,sourceorder
,speed_dial
,'' speed_dial2
,splitpercent
,'' standard_products
,'' standardcost
,'' standardcostusd
,yearmonth
,'Invoice' sourcesystem
,intrachannelflag
,now() as w_insert_dtm
,uom
,sales_order_line_type
,Order_type
,Invoice_type
,Class_code
,OEM_FLAG
,billtocustomerclasscode  --SO-621 new attributes addition starts
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
,soldtoncesschid  --SO-621 new attributes addition ends
,billtoaccounttype  --so-661 new attributes addition starts
,endaccounttype
,shiptoaccounttype
,soldtoaccounttype  --so-661 new attributes addition ends
,productcommissionclasscode
--start--added by pooja for geist column addition 9-6-2022--
,Measure
,Calendar_Month
,Calendar_Year
,Local_Currency
,Sales_Office
,Unit_Price
,Unit_Price_FXD_USD
--end--added by pooja for geist column addition 9-6-2022--
,billtoservicesmajoracc --so-665 new attributes addition starts
,endservicesmajoracc
,shiptoservicesmajoracc
,soldtoservicesmajoracc  --so-665 new attributes addition ends
,billtocustomersubclass --so-728 new attributes addition starts
,endcustomersubclass
,shiptocustomersubclass
,soldtocustomersubclass  --so-728 new attributes addition ends
,aop_customer_sub_class
from @DB_LEVEL@_na_cld_osc_gold.invoice_na_final
WHERE (billtocustomername not like "%INGRAM MICRO%"
and billtocustomername not like "%TECH DATA%" 
and billtocustomername not like "%PC CONNECTION%"
and billtocustomername not like "%CDW%"
and billtocustomername not like "ARROW%"
and billtocustomername not like "%SYNNEX%" 
and billtocustomername not like "%GRAYBAR%" 
and billtocustomername not like "%D AND H%" 
and billtocustomername not like "%D & H%"
and billtocustomername not like "%WESCO%"
and billtocustomername not like "%ANIXTER%"
and billtocustomername not like "POWER & TEL%")
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
,upper(aop_account_name)
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
,Order_type
,Invoice_type
,Class_code
,OEM_FLAG
,billtocustomerclasscode  --SO-621 new attributes addition starts
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
,soldtoncesschid  --SO-621 new attributes addition ends
,billtoaccounttype  --so-661 new attributes addition starts
,endaccounttype
,shiptoaccounttype
,soldtoaccounttype  --so-661 new attributes addition ends
,productcommissionclasscode
,Measure
,Calendar_Month
,Calendar_Year
,Local_Currency
,Sales_Office
,Unit_Price
,Unit_Price_FXD_USD
--end--added by pooja for geist column addition 9-6-2022--
,billtoservicesmajoracc --so-665 new attributes addition starts
,endservicesmajoracc
,shiptoservicesmajoracc
,soldtoservicesmajoracc  --so-665 new attributes addition ends
,billtocustomersubclass --so-728 new attributes addition starts
,endcustomersubclass
,shiptocustomersubclass
,soldtocustomersubclass  --so-728 new attributes addition ends
,aop_customer_sub_class
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
	-- WHEN upper(productcategory) LIKE '%SECURE%' THEN 'FEDERAL'
    ELSE account_type_aop1
END account_type_aop

from(
select distinct *,
CASE
		WHEN temp_motion2 = 'FIELD SALES'
		AND (upper(lob) != 'DC POWER'
		OR (nvl(lob,'N') = 'N'))
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
WHEN upper(productcategory) like '%SECURE%' THEN 'FEDERAL'
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
,ps.endcustomernumber
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
--,'CHANNEL' selling_motion
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
'' as uom,
'' as sales_order_line_type,
'' as Order_type,
'' as Invoice_type,
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
--SO-621 new attributes addition ends
--so-661 new attributes addition starts
ps.billtoaccounttype,
ps.endaccounttype,
ps.shiptoaccounttype,
ps.soldtoaccounttype,
--so-661 new attributes addition ends
ps.productcommissionclasscode,
--start--added by pooja for geist column addition 9-6-2022--
'' Measure,
cast('' as int) Calendar_Month,
cast('' as int) Calendar_Year,
'' Local_Currency,
'' Sales_Office,
cast('' as Double) Unit_Price,
cast('' as Double) Unit_Price_FXD_USD,
--end--added by pooja for geist column addition 9-6-2022--
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
left Join @DB_LEVEL@_edm_other_src_silver.Varsdatabase_Sellingmotion h on
ps.billtocustomernumber = h.Business_Nbr
)aa )dt )tt )st )pt)s1;


9.populate_commission_data_na

truncate table @DB_LEVEL@_na_cld_osc_gold.commission_data_na;

Insert into @DB_LEVEL@_na_cld_osc_gold.commission_data_na
(
119_override ,
accountam ,
accountcsm ,
accountlead ,
accountpresence ,
accounts_yn ,
accountservicesales ,
accountsubtype ,
accounttype ,
activedate ,
account_type_aop ,
advanced_data_center_specialization ,
anixtergraybarcdwflag ,
aop_account_name ,
billtoaccountrole ,
billtocustomeraddress ,
billtocustomercity ,
billtocustomercountry ,
billtocustomercustomertype1 ,
billtocustomerenterpriseindustry ,
billtocustomergicsinudstrygroupdescription ,
billtocustomergicssectordescription ,
billtocustomergsc ,
billtocustomerid ,
billtocustomerindustry1 ,
billtocustomername ,
billtocustomernumber ,
billtocustomerparentaccount ,
billtocustomerparentname ,
billtocustomerpostalcode ,
billtocustomerreportingname ,
billtocustomerstandardizedname ,
billtocustomerstate ,
billtocustomertype1 ,
billtocustomervertical ,
billtoenterpriseindustry ,
billtogsc_flag ,
billtoindustry1 ,
billtoindustrycode1 ,
billtononrevenueflag ,
billtoparentaccount ,
billtostandardizedname ,
bsid,
cdwamemailaddress ,
cdwsalesarea ,
cdwsalesregion ,
cdwsalessegment ,
channelproductgrouping ,
channel_commission_bucket ,
cloudlistprice ,
coe ,
companygrouping ,
contract_length ,
contract_type ,
count ,
country ,
customerpurchaseordernumber ,
coworkerlocationdescription ,
crossrefwithlesnumber ,
customeragencydescription ,
currency ,
customerrequestdate ,
data_last_refreshed ,
dcpowerprofitcenter ,
distributionchannelcode ,
distributionclassification ,
documenttype ,
ecommerce_flag ,
endcustomer_cleaned ,
endcustomeraccountrole ,
endcustomeraddress ,
endcustomercity ,
endcustomercountry ,
endcustomercustomertype1 ,
endcustomerenterpriseindustry ,
endcustomergsc ,
endcustomergsc_flag ,
endcustomerid ,
endcustomerindustry1 ,
endcustomerindustrycode1 ,
endcustomername ,
endcustomernumber ,
endcustomerparentaccount ,
endcustomerparentname ,
endcustomerpostalcode ,
endcustomerpostalmondayticket ,
endcustomerreportingname ,
endcustomerstandardizedname ,
endcustomerstate ,
endcustomervertical ,
exchangerateused ,
extendedlistprice ,
extendedstandardcost ,
firstdestinationflag ,
gbu ,
geistcustomernumber ,
geistproductclass ,
growth_target ,
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
internalsalesrepid ,
invoicedate ,
invoicelinenumber ,
invoicenumber ,
legacy ,
legacysizecategory ,
lesbilltoaltindustrycode ,
lesbilltomajorclass ,
lesbilltominorclass ,
lesbilltostandardindustrycode ,
alicecommissionoverridepercent ,
lescustomerindustrycodelevel1 ,
lescustomerindustrycodelevel2 ,
lescustomerindustrycodelevel3 ,
lesdb2grouping ,
lesorderprefix ,
lespointofcalculation ,
lesproductdivisioncode ,
lessalesclass ,
lesshipmentnumber ,
lesunitsflag ,
level6 ,
listprice ,
listpricemondayticket ,
lob ,
majorlatecode ,
managepricelists_vertiv_corporation_apr19 ,
marketinggroupcode ,
marketinggroupname ,
marketinggrouprevenueflag ,
minorlatecode ,
mondayticket ,
monthlycost ,
namedaccountofficeassign ,
namedaccountsplit ,
netprice ,
netsalesrevenue ,
netsalesrevenuemondayticket ,
newlescrossref2 ,
notes ,
numberforgroupingforsizecategory ,
oemtag ,
oemtagmondayticket ,
officelocation ,
office_type ,
officeoverrideoccured ,
officesplitmondayticket ,
ordercreatedate ,
orderincludeflag ,
originalendcustomerparentaccount ,
originallistprice ,
originalnetsalesrevenue ,
originaloemtag ,
originalproductfamily ,
originalsalesofficenumber ,
originalsku ,
originalsplitpercent ,
overrideendcustomerparentaccount ,
overridelistprice ,
overridenetsalesrevenue ,
overrideoccured ,
overrideoemtag ,
overrideproduct_family ,
overridesalesofficenumber ,
overridesku ,
overridesplit ,
parentaccountmondayticket ,
partnerlevelstandardized ,
partnertypestandardized ,
partnerwebfolderid ,
partnerwebquotenumber ,
phone_area_code ,
phone_number ,
plant ,
plantdescription ,
posprojectregistrationnumber ,
posbranch ,
poscustomernumber ,
posordernumber ,
possku ,
possuffix ,
postalcodesofficeassign ,
prodpyramidactive ,
productcategory ,
productfamily ,
productfamilymondayticket ,
producthierarchylevel1description ,
producthierarchylevel2description ,
producthierarchylevel3description ,
producthierarchylevel4code ,
producthierarchylevel4description ,
proshipmentnumber ,
quantityshipped ,
quoteid,
raw_pos_registration ,
recordid ,
recordsource ,
reselleraddress1 ,
reselleraddress2 ,
resellerbranchname ,
resellerbranchnumber ,
resellercity ,
resellercountry ,
resellercustomernumber ,
resellermajorcode ,
resellerminorcode ,
resellername ,
resellerpartnerlevel ,
resellerpartnertype ,
resellerpostalcode ,
resellerregion ,
resellerreportingname ,
resellersalesofficename ,
resellersalesofficenumber ,
resellersitetype ,
resellerstateprovince ,
sales_region3 ,
salesdistrictname ,
salesdistrictnumber ,
salesofficefamily ,
salesofficename ,
salesofficenumber ,
salesofficenumberjoin ,
salesofficeprincipalemail ,
salesofficeprincipalemail2 ,
salesofficeprincipalname ,
salesofficereferencenumber ,
salesofficeregion ,
salesofficeterritory ,
salesordernumber ,
salesoutprimarykey ,
salesrepemail ,
salesrepid ,
salesrepname ,
salessegment ,
sapoemtag ,
sapsalesorganization ,
segment ,
selling_motion ,
shipdate ,
shipmentcarriername ,
shiptoaccountrole ,
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
shiptocustomerreportingname ,
shiptocustomerstandardizedname ,
shiptocustomerstate ,
shiptocustomertype1 ,
shiptocustomertype1_2 ,
shiptocustomervertical ,
shiptoenterpriseindustry ,
shiptogsc_flag ,
shiptoindustry1 ,
shiptoparentaccount ,
shiptostandardizedname ,
sizecategory ,
sku ,
skudescription ,
skumondayticket ,
skutrimmed ,
sms_contract ,
smsbatteriesonlyflag ,
smsbatteryrbsm ,
smscallcode ,
smscontractenddate ,
smscontractexpiredate ,
smscontractmonths ,
smscontractpms ,
smscontractsequence ,
smscontractstartdate ,
smscontractstatus ,
smscoverageclass ,
smscustomertype ,
smsequipmentsegment ,
smsequipmentsequence ,
smsequipmentsubtype ,
smsequipmenttype ,
smssiteid ,
smstagnumber ,
smsticketcode ,
smsticketnumber ,
smstickettype ,
soldtocustomeraddress ,
soldtocustomercity ,
soldtocustomercountry ,
soldtocustomercustomertype1 ,
soldtocustomerenterpriseindustry ,
soldtocustomergsc ,
soldtocustomerindustry1 ,
soldtocustomername ,
soldtocustomernumber ,
soldtocustomerparentaccount ,
soldtocustomerpostalcode ,
soldtocustomerreportingname ,
soldtocustomerstandardizedname ,
soldtocustomerstate ,
soldtocustomervertical ,
sp1productflag ,
sp2productexclusion ,
sp2productflag ,
sourceorder ,
speed_dial ,
speed_dial2 ,
splitpercent ,
standard_products ,
standardcost ,
standardcostusd ,
yearmonth ,
sourcesystem,
intrachannelflag,
w_insert_dtm,
uom,
sales_order_line_type,
Order_type,
Invoice_type,
Class_code,
OEM_FLAG,
billtocustomerclasscode,--SO-621 new attributes addition starts
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
billtocustomerindustry3,
endcustomerindustry3,
shiptocustomerindustry3,
soldtocustomerindustry3,
billtocustomersubvertical,
endcustomersubvertical,
shiptocustomersubvertical,
soldtocustomersubvertical,
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
soldtoncesschid,  --SO-621 new attributes addition ends
billtoaccounttype,  --so-661 new attributes addition starts
endaccounttype,
shiptoaccounttype,
soldtoaccounttype,  --so-661 new attributes addition ends
productcommissionclasscode,
--start--added by pooja for geist column addition 9-6-2022--
Measure,
Calendar_Month,
Calendar_Year,
Local_Currency,
Sales_Office,
Unit_Price,
Unit_Price_FXD_USD,
--end--added by pooja for geist column addition 9-6-2022--
billtoservicesmajoracc,  --so-665 new attributes addition starts
endservicesmajoracc,
shiptoservicesmajoracc,
soldtoservicesmajoracc,  --so-665 new attributes addition ends
billtocustomersubclass, --so-728 new attributes addition starts
endcustomersubclass,
shiptocustomersubclass,
soldtocustomersubclass,  --so-728 new attributes addition ends
aop_customer_sub_class
)
select
119_override ,
ct.accountam ,
ct.accountcsm ,
ct.accountlead ,
ct.accountpresence ,
CASE
	 WHEN ct.billtocustomerparentaccount IN (refcp.customer) THEN 'Y'  
	 WHEN ct.endcustomerparentaccount IN (refcp.customer) THEN 'Y'
	 WHEN ct.sku IN (refaf.af_sku) THEN 'Y'
	 ELSE 'N' 
 END accounts_yn,  --Enrichment mapped from ref_customerparentaccounts and ref_accountsflag_sku
ct.accountservicesales ,
ct.accountsubtype ,
ct.accounttype ,
ct.activedate ,
ct.account_type_aop ,
ct.advanced_data_center_specialization ,
ct.anixtergraybarcdwflag ,
ct.aop_account_name ,
ct.billtoaccountrole ,
ct.billtocustomeraddress ,
ct.billtocustomercity ,
ct.billtocustomercountry ,
ct.billtocustomercustomertype1 ,
ct.billtocustomerenterpriseindustry ,
ct.billtocustomergicsinudstrygroupdescription ,
ct.billtocustomergicssectordescription ,
ct.billtocustomergsc ,
ct.billtocustomerid ,
ct.billtocustomerindustry1 ,
ct.billtocustomername ,
ct.billtocustomernumber ,
ct.billtocustomerparentaccount ,
ct.billtocustomerparentname ,
ct.billtocustomerpostalcode ,
ct.billtocustomerreportingname ,
ct.billtocustomerstandardizedname ,
ct.billtocustomerstate ,
ct.billtocustomertype1 ,
ct.billtocustomervertical ,
ct.billtoenterpriseindustry ,
ct.billtogsc_flag ,
ct.billtoindustry1 ,
ct.billtoindustrycode1 ,
ct.billtononrevenueflag ,
ct.billtoparentaccount ,
ct.billtostandardizedname ,
ct.bsid,
ct.cdwamemailaddress ,
ct.cdwsalesarea ,
ct.cdwsalesregion ,
ct.cdwsalessegment ,
ct.channelproductgrouping ,
ct.channel_commission_bucket ,
ct.cloudlistprice ,
ct.coe ,
ct.companygrouping ,
ct.contract_length ,
ct.contract_type ,
ct.count ,
ct.country ,
ct.customerpurchaseordernumber ,
ct.coworkerlocationdescription ,
ct.crossrefwithlesnumber ,
ct.customeragencydescription ,
ct.currency ,
ct.customerrequestdate ,
ct.data_last_refreshed ,
ct.dcpowerprofitcenter ,
ct.distributionchannelcode ,
ct.distributionclassification ,
ct.documenttype ,
ct.ecommerce_flag ,
ct.endcustomer_cleaned ,
ct.endcustomeraccountrole ,
ct.endcustomeraddress ,
ct.endcustomercity ,
ct.endcustomercountry ,
ct.endcustomercustomertype1 ,
ct.endcustomerenterpriseindustry ,
ct.endcustomergsc ,
ct.endcustomergsc_flag ,
ct.endcustomerid ,
ct.endcustomerindustry1 ,
ct.endcustomerindustrycode1 ,
ct.endcustomername ,
ct.endcustomernumber ,
ct.endcustomerparentaccount ,
ct.endcustomerparentname ,
ct.endcustomerpostalcode ,
ct.endcustomerpostalmondayticket ,
ct.endcustomerreportingname ,
ct.endcustomerstandardizedname ,
ct.endcustomerstate ,
ct.endcustomervertical ,
ct.exchangerateused ,
ct.extendedlistprice ,
ct.extendedstandardcost ,
ct.firstdestinationflag ,
ct.gbu ,
gil.custno geistcustomernumber , --Enrichment mapped from giest_invoice_line
ct.geistproductclass ,
ct.growth_target ,
ct.internalofficefamily ,
ct.internalofficename ,
ct.internalofficenumber ,
ct.internalofficeprincipalemail ,
ct.internalofficeprincipalname ,
ct.internalofficeregion ,
ct.internalofficesplit ,
ct.internalofficeterritory ,
ct.internalofficetype ,
ct.internalprincipalemail ,
ct.internalprincipalname ,
ct.internalsalesrepid ,
ct.invoicedate ,
ct.invoicelinenumber ,
ct.invoicenumber ,
ct.legacy ,
ct.legacysizecategory ,
ct.lesbilltoaltindustrycode ,
ct.lesbilltomajorclass ,
ct.lesbilltominorclass ,
ct.lesbilltostandardindustrycode ,
ct.alicecommissionoverridepercent ,
ct.lescustomerindustrycodelevel1 ,
ct.lescustomerindustrycodelevel2 ,
ct.lescustomerindustrycodelevel3 ,
ct.lesdb2grouping ,
ct.lesorderprefix ,
ct.lespointofcalculation ,
ct.lesproductdivisioncode ,
ct.lessalesclass ,
ct.lesshipmentnumber ,
ct.lesunitsflag ,
ct.level6 ,
ct.listprice ,
ct.listpricemondayticket ,
ct.lob ,
ct.majorlatecode ,
ct.managepricelists_vertiv_corporation_apr19 ,
ct.marketinggroupcode ,
ct.marketinggroupname ,
ct.marketinggrouprevenueflag ,
ct.minorlatecode ,
ct.mondayticket ,
ct.monthlycost ,
ct.namedaccountofficeassign ,
ct.namedaccountsplit ,
ct.netprice ,
ct.netsalesrevenue ,
ct.netsalesrevenuemondayticket ,
ct.newlescrossref2 ,
ct.notes ,
ct.numberforgroupingforsizecategory ,
ct.oemtag ,
ct.oemtagmondayticket ,
ct.officelocation ,
ct.office_type ,
ct.officeoverrideoccured ,
ct.officesplitmondayticket ,
ct.ordercreatedate ,
ct.orderincludeflag ,
ct.originalendcustomerparentaccount ,
ct.originallistprice ,
ct.originalnetsalesrevenue ,
ct.originaloemtag ,
ct.originalproductfamily ,
ct.originalsalesofficenumber ,
ct.originalsku ,
ct.originalsplitpercent ,
ct.overrideendcustomerparentaccount ,
ct.overridelistprice ,
ct.overridenetsalesrevenue ,
ct.overrideoccured ,
ct.overrideoemtag ,
ct.overrideproduct_family ,
ct.overridesalesofficenumber ,
ct.overridesku ,
ct.overridesplit ,
ct.parentaccountmondayticket ,
ct.partnerlevelstandardized ,
ct.partnertypestandardized ,
ct.partnerwebfolderid ,
ct.partnerwebquotenumber ,
ct.phone_area_code ,
ct.phone_number ,
ct.plant ,
ct.plantdescription ,
ct.posprojectregistrationnumber ,
ct.posbranch ,
ct.poscustomernumber ,
ct.posordernumber ,
ct.possku ,
ct.possuffix ,
ct.postalcodesofficeassign ,
ct.prodpyramidactive ,
ct.productcategory ,
ct.productfamily ,
ct.productfamilymondayticket ,
ct.producthierarchylevel1description ,
ct.producthierarchylevel2description ,
ct.producthierarchylevel3description ,
ct.producthierarchylevel4code ,
ct.producthierarchylevel4description ,
ct.proshipmentnumber ,
ct.quantityshipped ,
ct.quoteid,
ct.raw_pos_registration ,
ct.recordid ,
ct.recordsource ,
cc.address ResellerAddress1, --Enrichment
ct.reselleraddress2 ,
ct.resellerbranchname ,
ct.resellerbranchnumber ,
cc.city resellercity , --Enrichment
cc.country_iso_name resellercountry , --Enrichment
ct.endcustomerid resellercustomernumber , --Enrichment
ct.resellermajorcode ,
ct.resellerminorcode ,
ct.resellername ,
ct.resellerpartnerlevel ,
ct.resellerpartnertype ,
cc.postal_code resellerpostalcode ,--Enrichment
ct.resellerregion ,
ct.resellerreportingname ,
ct.resellersalesofficename ,
ct.resellersalesofficenumber ,
ct.resellersitetype ,
ct.resellerstateprovince ,
ct.sales_region3 ,
ct.salesdistrictname ,
ct.salesdistrictnumber ,
ct.salesofficefamily ,
ct.salesofficename ,
ct.salesofficenumber ,
ct.salesofficenumberjoin ,
ct.salesofficeprincipalemail ,
ct.salesofficeprincipalemail2 ,
ct.salesofficeprincipalname ,
ct.salesofficereferencenumber ,
ct.salesofficeregion ,
ct.salesofficeterritory ,
ct.salesordernumber ,
ct.salesoutprimarykey ,
ct.salesrepemail ,
ct.salesrepid ,
ct.salesrepname ,
ct.salessegment ,
ct.sapoemtag ,
ct.sapsalesorganization ,
ct.segment ,
ct.selling_motion ,
ct.shipdate ,
ct.shipmentcarriername ,
ct.shiptoaccountrole ,
ct.shiptocustomeraddress ,
ct.shiptocustomercity ,
ct.shiptocustomercountry ,
ct.shiptocustomercustomertype1 ,
ct.shiptocustomerenterpriseindustry ,
ct.shiptocustomergsc ,
ct.shiptocustomerid ,
ct.shiptocustomerindustry1 ,
ct.shiptocustomername ,
ct.shiptocustomernumber ,
ct.shiptocustomerparentaccount ,
ct.shiptocustomerparentname ,
ct.shiptocustomerpostalcode ,
decode(ct.sourcesystem,'Invoice',ct.shiptocustomername,'') shiptocustomerreportingname , --Enrichment
ct.shiptocustomerstandardizedname ,
ct.shiptocustomerstate ,
ct.shiptocustomertype1 ,
ct.shiptocustomertype1_2 ,
ct.shiptocustomervertical ,
ct.shiptoenterpriseindustry ,
ct.shiptogsc_flag ,
ct.shiptoindustry1 ,
ct.shiptoparentaccount ,
ct.shiptostandardizedname ,
ct.sizecategory ,
ct.sku ,
ct.skudescription ,
ct.skumondayticket ,
ct.skutrimmed ,
ct.sms_contract ,
ct.smsbatteriesonlyflag ,
ct.smsbatteryrbsm ,
ct.smscallcode ,
ct.smscontractenddate ,
ct.smscontractexpiredate ,
ct.smscontractmonths ,
ct.smscontractpms ,
ct.smscontractsequence ,
ct.smscontractstartdate ,
ct.smscontractstatus ,
ct.smscoverageclass ,
ct.smscustomertype ,
ct.smsequipmentsegment ,
ct.smsequipmentsequence ,
ct.smsequipmentsubtype ,
ct.smsequipmenttype ,
ct.smssiteid ,
ct.smstagnumber ,
ct.smsticketcode ,
ct.smsticketnumber ,
ct.smstickettype ,
ct.soldtocustomeraddress ,
ct.soldtocustomercity ,
ct.soldtocustomercountry ,
ct.soldtocustomercustomertype1 ,
ct.soldtocustomerenterpriseindustry ,
ct.soldtocustomergsc ,
ct.soldtocustomerindustry1 ,
ct.soldtocustomername ,
ct.soldtocustomernumber ,
ct.soldtocustomerparentaccount ,
ct.soldtocustomerpostalcode ,
ct.soldtocustomerreportingname ,
ct.soldtocustomerstandardizedname ,
ct.soldtocustomerstate ,
ct.soldtocustomervertical ,
ct.sp1productflag ,
ct.sp2productexclusion ,
ct.sp2productflag ,
ct.sourceorder ,
ct.speed_dial ,
ct.speed_dial2 ,
ct.splitpercent ,
ct.standard_products ,
ct.standardcost ,
ct.standardcostusd ,
ct.yearmonth ,
ct.sourcesystem ,
ct.intrachannelflag,
ct.w_insert_dtm,
ct.uom,
ct.sales_order_line_type,
ct.Order_type,
ct.Invoice_type,
ct.Class_code,
ct.OEM_FLAG,
--SO-621 new attributes addition starts
ct.billtocustomerclasscode,
ct.endcustomerclasscode,
ct.shiptocustomerclasscode,
ct.soldtocustomerclasscode,
ct.billtocustomerpartnerclasscode,
ct.endcustomerpartnerclasscode,
ct.shiptocustomerpartnerclasscode,
ct.soldtocustomerpartnerclasscode,
ct.billtooracleregistryid, 
ct.endoracleregistryid,
ct.shiptooracleregistryid,
ct.soldtooracleregistryid,
ct.billtocustomerindustry3,
ct.endcustomerindustry3,
ct.shiptocustomerindustry3,
ct.soldtocustomerindustry3,
ct.billtocustomersubvertical,
ct.endcustomersubvertical,
ct.shiptocustomersubvertical,
ct.soldtocustomersubvertical,
ct.billtoreportingsubparent1,
ct.endreportingsubparent1,
ct.shiptoreportingsubparent1,
ct.soldtoreportingsubparent1,
ct.billtodefinitiveidnid,
ct.enddefinitiveidnid,
ct.shiptodefinitiveidnid,
ct.soldtodefinitiveidnid,
ct.billtodefinitiveidnidparentid,
ct.enddefinitiveidnidparentid,
ct.shiptodefinitiveidnidparentid,
ct.soldtodefinitiveidnidparentid,
ct.billtoncesleaid,
ct.endncesleaid,
ct.shiptoncesleaid,
ct.soldtoncesleaid,
ct.billtocustomerprovince,
ct.endcustomerprovince,
ct.shiptocustomerprovince,
ct.soldtocustomerprovince,
ct.billtooraclepartysitenumber,
ct.endoraclepartysitenumber,
ct.shiptooraclepartysitenumber,
ct.soldtooraclepartysitenumber,
ct.billtodefinitiveid,
ct.enddefinitiveid,
ct.shiptodefinitiveid,
ct.soldtodefinitiveid,
ct.billtoncesschid,
ct.endncesschid,
ct.shiptoncesschid,
ct.soldtoncesschid,
--SO-621 new attributes addition ends
--so-661 new attributes addition starts
ct.billtoaccounttype,
ct.endaccounttype,
ct.shiptoaccounttype,
ct.soldtoaccounttype,
--so-661 new attributes addition ends
ct.productcommissionclasscode,
--start--added by pooja for geist column addition 9-6-2022--
ct.Measure,
ct.Calendar_Month,
ct.Calendar_Year,
ct.Local_Currency,
ct.Sales_Office,
ct.Unit_Price,
ct.Unit_Price_FXD_USD,
--end--added by pooja for geist column addition 9-6-2022--
ct.billtoservicesmajoracc, --so-665 new attributes addition starts
ct.endservicesmajoracc,
ct.shiptoservicesmajoracc,
ct.soldtoservicesmajoracc,  --so-665 new attributes addition ends
ct.billtocustomersubclass, --so-728 new attributes addition starts
ct.endcustomersubclass,
ct.shiptocustomersubclass,
ct.soldtocustomersubclass,  --so-728 new attributes addition ends
ct.aop_customer_sub_class

from 
@DB_LEVEL@_na_cld_osc_gold.commission_temp ct
left outer join @DB_LEVEL@_edm_other_src_silver.ref_customerparentaccounts refcp
on ct.billtocustomerparentaccount = refcp.customer
left outer join @DB_LEVEL@_edm_other_src_silver.ref_accountsflag_sku refaf
on ct.sku = refaf.af_sku
left outer join @DB_LEVEL@_edm_other_src_silver.giest_invoice_line gil
on ct.salesordernumber = gil.sales_order_number
left outer join @DB_LEVEL@_context_silver.ctx_channel cc
on ct.endcustomerid = cc.context_id
;

truncate table @DB_LEVEL@_na_cld_osc_gold.commission_temp ;

invalidate metadata @DB_LEVEL@_na_cld_osc_gold.commission_data_na ;

