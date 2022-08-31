1. INVALIDATE_METADATA

--release date:26/07/2022

invalidate metadata @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_temp; 
invalidate metadata @DB_LEVEL@_edm_gold.f_sales_order_line;
invalidate metadata @DB_LEVEL@_edm_gold.f_sales_invoice_line;
invalidate metadata @DB_LEVEL@_edm_gold.f_sales_order_line_extn;
invalidate metadata @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na;
invalidate metadata @DB_LEVEL@_edm_gold.d_org;
invalidate metadata @DB_LEVEL@_cld_oraerp_silver.inv_organization_definitions_v;
invalidate metadata @DB_LEVEL@_cld_cpq_silver.cpq_quote_headers;
invalidate metadata @DB_LEVEL@_ora_alice_gold.d_contractsubline;
invalidate metadata @DB_LEVEL@_ora_alice_gold.d_contractheader;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_csi_item_instances;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_CSI_INST_EXTEND_ATTRIB_V;
invalidate metadata @DB_LEVEL@_edm_gold.d_product_catalog;
invalidate metadata @DB_LEVEL@_mdm_hub_gold.d_customer_header_v;
invalidate metadata @DB_LEVEL@_edm_gold.d_party;
invalidate metadata @DB_LEVEL@_edm_gold.d_legacy_customer_account;
invalidate metadata @DB_LEVEL@_mdm_hub_gold.d_customer_address_v;
invalidate metadata @DB_LEVEL@_edm_gold.d_legacy_customer_loc;
invalidate metadata @DB_LEVEL@_edm_gold.d_sales_rep;
invalidate metadata @DB_LEVEL@_edm_gold.d_product;
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
invalidate metadata @DB_LEVEL@_impartner_silver.account;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.Varsdatabase_Sellingmotion;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.parent_account_type;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.enterprise_industry;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.parent_gsc;
invalidate metadata @DB_LEVEL@_edm_gold.d_xrate;
invalidate metadata @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_shipment;
invalidate metadata @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_shipment_line;
invalidate metadata @DB_LEVEL@_cld_oraerp_silver.doo_fulfill_lines_all;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_oe_order_lines_all;
invalidate metadata @DB_LEVEL@_ora_alice_silver.alice_oe_order_headers_all;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.rep_office_info;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_accounts;
invalidate metadata @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na;
invalidate metadata @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_bkp;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.cpq_commission_split_tbl;
invalidate metadata @DB_LEVEL@_cld_cpq_silver.cpq_commission_split_clean;
invalidate metadata @DB_LEVEL@_sql_saleswh_silver.supplier_classification;
invalidate metadata @DB_LEVEL@_na_cld_osc_gold.sales_exploration_alice_commn_temp_na;
invalidate metadata @DB_LEVEL@_sql_saleswh_gold.LES_commission_split_vw;
invalidate metadata @DB_LEVEL@_GEIST_SILVER.GEIST_G_ARINVT_TECH_INFO;
invalidate metadata @DB_LEVEL@_GEIST_SILVER.GEIST_ARINVOICE_DETAIL;
invalidate metadata @DB_LEVEL@_GEIST_SILVER.GEIST_ARINVOICE; 
invalidate metadata @DB_LEVEL@_GEIST_SILVER.GEIST_SHIP_TO;
invalidate metadata @DB_LEVEL@_GEIST_SILVER.GEIST_BILL_TO;
invalidate metadata @DB_LEVEL@_GEIST_SILVER.GEIST_ARCUSTO;
invalidate metadata @DB_LEVEL@_GEIST_SILVER.GEIST_ARINVT;
invalidate metadata @DB_LEVEL@_GEIST_SILVER.GEIST_ARINVOICE_COMM;
invalidate metadata @DB_LEVEL@_GEIST_SILVER.GEIST_ORD_DETAIL;
invalidate metadata @DB_LEVEL@_GEIST_SILVER.GEIST_HIST_ORD_DETAIL;
invalidate metadata @DB_LEVEL@_GEIST_SILVER.GEIST_ORDERS;
invalidate metadata @DB_LEVEL@_GEIST_SILVER.GEIST_HIST_ORDERS;
invalidate metadata @DB_LEVEL@_GEIST_SILVER.GEIST_CURRENCY;
invalidate metadata @DB_LEVEL@_GEIST_SILVER.GEIST_G_ARINVT_TECH_INFO;
invalidate metadata @DB_LEVEL@_GEIST_SILVER.GEIST_SALESPEOPLE;
invalidate metadata @DB_LEVEL@_GEIST_SILVER.GEIST_EPLANT;

2. sales_exploration_data_na_temp

insert overwrite @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_temp
	select 
		lstp_a,
		nsr_a,
		elp_a,
		row_wid,
		party_wid,
		bill_to_customer_account_wid,
		ship_to_customer_account_wid,
		sold_to_customer_account_wid,
		end_customer_account_wid,
		bill_to_customer_loc_wid,
		ship_to_customer_loc_wid,
		sold_to_customer_loc_wid,
		end_customer_loc_wid,
		product_wid,
		sales_rep_wid,
		operating_unit_org_wid,
		inventory_org_wid,
		sub_region_wid,
		sales_order_line_wid,
		invoiced_on_dt_wid,
		legacy_party_id,
		legacy_bill_to_customer_account_id,
		legacy_bill_to_customer_loc_id,
		legacy_ship_to_customer_account_id,
		legacy_ship_to_customer_loc_id,
		legacy_sold_to_customer_account_id,
		legacy_sold_to_customer_loc_id,
		legacy_end_customer_account_id,
		legacy_end_customer_loc_id,
		legacy_product_id,
		legacy_inventory_org_id,
		legacy_operating_unit_org_id,
		product_num,
		customer_account_num,
		invoice_num,
		invoice_line_num,
		sales_order_num,
		sales_order_line_num,
		sales_order_detail_line_num,
		invoice_project_num,
		sales_office_num,
		sales_office_name,
		invoiced_on_dt,
		payment_terms_eff_dt,
		customer_po_num,
		invoice_status,
		invoice_line_type_cd,
		sales_channel,
		sales_order_ship_method,
		payment_term_cd,
		payment_method,
		invoicing_rule,
		invoiced_qty,
		unit_selling_price_usd_amt,
		unit_selling_price_lcl_amt,
		revenue_usd_amt,
		revenue_lcl_amt,
		tax_usd_amt,
		tax_lcl_amt,
		freight_usd_amt,
		freight_lcl_amt,
		invoice_clssfctn,
		invoice_complete_flg,
		legacy_reporting_flg,
		invoice_type_cd,
		invoice_class_cd,
		uom_cd,
		unit_list_price_usd_amt,
		unit_list_price_lcl_amt,
		tax_rate,
		legacy_orig_ref_num,
		integration_id,
		w_insert_dtm,
		w_insert_by,
		w_update_dtm,
		w_update_by,
		src_update_dtm,
		unit_selling_price_trx_amt,
		revenue_trx_amt,
		tax_trx_amt,
		freight_trx_amt,
		unit_list_price_trx_amt,
		lcl_currency_cd,
		trx_currency_cd,
		china_legacy_subproduct_cd,
		src_system_name
	from
		(
				select ordr.unit_list_price_usd_amt lstp_a, inv.revenue_usd_amt nsr_a, (inv.invoiced_qty * ordr.unit_list_price_usd_amt) elp_a,inv.* 
				from @DB_LEVEL@_edm_gold.f_sales_invoice_line inv
						 LEFT OUTER JOIN @DB_LEVEL@_edm_gold.f_sales_order_line ordr 
						 ON inv.sales_order_line_wid = ordr.row_wid
						 where ((inv.src_system_name IN ('ERS_HVM', 'SAP_AVOCENT', 'SAP_ESNA') 
								 and (inv.invoice_line_type_cd <>'TAX' or inv.invoice_line_type_cd is null) 
								) 
							OR  (inv.src_system_name='LES' 
								 and (inv.invoice_line_type_cd <>'TAX' or inv.invoice_line_type_cd is null )
								 and (inv.invoiced_on_dt != '2069-12-31')
								 and (inv.invoiced_qty != 0 or inv.invoiced_qty is null)
								)
							 OR (inv.src_system_name ='ORACLEERPCLOUD' AND inv.operating_unit_org_wid in (194,196,210)
                            and (inv.invoice_line_type_cd <>'TAX' or inv.invoice_line_type_cd is null)
							)	
							   )
						 UNION
							-- Query which will include all the parent child records from Inventory.
							select inv_agg.lstp_a lstp_a,inv_agg.nsr_a nsr_a,inv_agg.elp_a elp_a, inv.* 
							from 
							(
								select * from @DB_LEVEL@_edm_gold.f_sales_invoice_line inv
										where inv.src_system_name='ALICE' 
										and  inv.invoice_line_type_cd='LINE' 
										and inv.invoice_class_cd in ('Invoice','Credit Memo') 
										and inv.invoice_clssfctn in ('Order Management','OKS_CONTRACTS','PROJECTS INVOICES')
										and inv.invoice_type_cd in ('Invoice-OKS','Credit-OKS','Projects Invoice','VRT DEPOT INV US','VRT DEPOT INV CA','VRT OE INV CA','VRT OE INV US','VRT Interco INV US') 
							 ) inv
							inner join (select
												ordr.*,cast(ordr_extn.top_model_line_id as string) top_model_line_id, cast(ordr_extn.integration_id as string) line_id
										from
											@DB_LEVEL@_edm_gold.f_sales_order_line ordr
										inner join
											(select	*
											 from @DB_LEVEL@_edm_gold.f_sales_order_line_extn
											 WHERE src_system_name IN ('ALICE')
											 AND cast(top_model_line_id as STRING) = cast(integration_id as string)
											) ordr_extn
										on ordr_extn.row_wid = ordr.row_wid
										where ordr.src_system_name IN ('ALICE')
										) ordr
										ON inv.sales_order_line_wid = ordr.row_wid	
							inner join (
										select inv.sales_order_num ord_num,ordr.top_model_line_id , inv.invoice_num , sum(ordr.unit_list_price_usd_amt) lstp_a, sum(inv.revenue_usd_amt) nsr_a, sum(inv.invoiced_qty * ordr.unit_list_price_usd_amt) elp_a
										from 
										(
											select * from @DB_LEVEL@_edm_gold.f_sales_invoice_line inv
													where inv.src_system_name='ALICE' 
													and  inv.invoice_line_type_cd='LINE' 
													and inv.invoice_class_cd in ('Invoice','Credit Memo')
													and inv.invoice_clssfctn in ('Order Management','OKS_CONTRACTS','PROJECTS INVOICES')
													and inv.invoice_type_cd in ('Invoice-OKS','Credit-OKS','Projects Invoice','VRT DEPOT INV US','VRT DEPOT INV CA','VRT OE INV CA','VRT OE INV US','VRT Interco INV US') 
										 ) inv
										inner join (select
												ordr.*,cast(ordr_extn.top_model_line_id as string) top_model_line_id, cast(ordr_extn.integration_id as string) line_id
										from
											@DB_LEVEL@_edm_gold.f_sales_order_line ordr
										inner join
											(select	*
											 from @DB_LEVEL@_edm_gold.f_sales_order_line_extn
											 WHERE src_system_name IN ('ALICE')
											) ordr_extn
										on ordr_extn.row_wid = ordr.row_wid
										where ordr.src_system_name IN ('ALICE')
										) ordr
										ON inv.sales_order_line_wid = ordr.row_wid
										group by inv.sales_order_num ,ordr.top_model_line_id, inv.invoice_num
										) inv_agg
										on inv_agg.ord_num = inv.sales_order_num and inv_agg.top_model_line_id = ordr.top_model_line_id and inv_agg.invoice_num = inv.invoice_num	
							union
							-- Query which will not include all the parent child records from Inventory.
							select ordr.unit_list_price_usd_amt lstp_a, inv.revenue_usd_amt nsr_a, (inv.invoiced_qty * ordr.unit_list_price_usd_amt) elp_a,inv.* from 
							(
								select * from @DB_LEVEL@_edm_gold.f_sales_invoice_line inv
										where inv.src_system_name='ALICE' 
										and  inv.invoice_line_type_cd='LINE' 
										and inv.invoice_class_cd in ('Invoice','Credit Memo')
										and inv.invoice_clssfctn in ('Order Management','OKS_CONTRACTS','PROJECTS INVOICES')
										and inv.invoice_type_cd in ('Invoice-OKS','Credit-OKS','Projects Invoice','VRT DEPOT INV US','VRT DEPOT INV CA','VRT OE INV CA','VRT OE INV US','VRT Interco INV US') 
							 ) inv
							inner join (select
										ordr.*,cast(ordr_extn.top_model_line_id as string) top_model_line_id, cast(ordr_extn.integration_id as string) line_id
										from
											@DB_LEVEL@_edm_gold.f_sales_order_line ordr
										inner join
											(select	*
											 from @DB_LEVEL@_edm_gold.f_sales_order_line_extn
											 WHERE src_system_name IN ('ALICE')
											 and row_wid not in 
											 (select row_wid
												from @DB_LEVEL@_edm_gold.f_sales_order_line_extn
												WHERE src_system_name IN ('ALICE')
												AND cast(top_model_line_id as STRING) in 
												(
													select	cast(top_model_line_id as STRING)
													from @DB_LEVEL@_edm_gold.f_sales_order_line_extn
													WHERE src_system_name IN ('ALICE')
													AND cast(top_model_line_id as STRING) = cast(integration_id as string)
												)
											  )
											 ) ordr_extn
										on ordr_extn.row_wid = ordr.row_wid
										where ordr.src_system_name IN ('ALICE')
										) ordr
										ON inv.sales_order_line_wid = ordr.row_wid	
							union
							-- Query which will not include rest of the records in Inventory.
							select ordr.unit_list_price_usd_amt lstp_a, inv.revenue_usd_amt nsr_a, (inv.invoiced_qty * ordr.unit_list_price_usd_amt) elp_a,inv.* 
							from 
							(
								select * from @DB_LEVEL@_edm_gold.f_sales_invoice_line inv
										where inv.src_system_name='ALICE' 
										and  inv.invoice_line_type_cd='LINE' 
										and inv.invoice_class_cd in ('Invoice','Credit Memo')
										and inv.invoice_clssfctn in ('Order Management','OKS_CONTRACTS','PROJECTS INVOICES')
										and inv.invoice_type_cd in ('Invoice-OKS','Credit-OKS','Projects Invoice','VRT DEPOT INV US','VRT DEPOT INV CA','VRT OE INV CA','VRT OE INV US','VRT Interco INV US') 
							 ) inv
							left outer join (select
												ordr.*,cast(ordr_extn.top_model_line_id as string) top_model_line_id, cast(ordr_extn.integration_id as string) line_id
										from
											@DB_LEVEL@_edm_gold.f_sales_order_line ordr
										inner join
											(select	*
											 from @DB_LEVEL@_edm_gold.f_sales_order_line_extn
											 WHERE src_system_name IN ('ALICE')
											 ) ordr_extn
										on ordr_extn.row_wid = ordr.row_wid
											and ordr.src_system_name IN ('ALICE')
										) ordr
										ON inv.sales_order_line_wid = ordr.row_wid	
										where ordr.row_wid is null
		) a;
		
		compute stats @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_temp;
		

3. populate_sales_exploration_data_na

insert overwrite @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na 
SELECT
	Account_Type,
	AccountAM,
	AccountCSM,
	AccountLead,
	AccountPresence,
	AccountServiceSalfes,
	AccountSubType,
	AccountType,
	Activated,
    account_type_aop,
	Advanced_Data_Center_Specialization,
	AnixterGraybarCDWFlag,
	upper(AOP_Account_Name),
	AOP_Category,
	BillToAccountRole,
	upper(BillToCustomerAddress),
	upper(BillToCustomerCity),
	upper(BillToCustomerCountry),
	upper(BillToCustomerCustomerType1),
	upper(BillToCustomerEnterpriseIndustry),
	upper(BillToCustomerGSC),
	upper(BillToCustomerIndustry1),
	upper(BillToCustomerName) BillToCustomerName,
	BillToCustomerNumber,
	upper(BillToCustomerParentAccount),
	upper(BillToCustomerParentName),
	BillToCustomerPostalCode,
	upper(BillToCustomerStandardizedName),
	upper(BillToCustomerState),
	upper(BillToCustomerType1),
	upper(BillToCustomerVertical),
	BillToEnterpriseIndustry,
	BillToGSC_Flag,
	BillToCustomerIndustry1 as BillToIndustry1,
	BillToIndustryCode1,
	BillToParentAccount,
	BillToStandardizedName,
	BSID,
	ChannelFlag,
	ChannelProductGrouping,
	upper(COE),
	Country,
	CustomerPurchaseOrderNumber,
	CustomerRequestDate,
	Data_Last_Refreshed,
	DCPowerFinanceParent,
	DCPowerProfitCenter,
	upper(EndCustomerAccountRole),
	upper(EndCustomerAddress),
	upper(EndCustomerCity),
	upper(EndCustomerCountry),
	upper(EndCustomerCustomerType1),
	upper(EndCustomerCustomerType1_2),
	upper(EndCustomerEnterpriseIndustry),
	upper(EndCustomerEnterpriseIndustry2),
	upper(EndCustomerGSC),
	upper(EndCustomerGSC_Flag),
	upper(EndCustomerIndustry1) as EndCustomerIndustry,
	upper(EndCustomerIndustry1),
	upper(EndCustomerMarket),
	upper(EndCustomerName) EndCustomerName,
	EndCustomerName as EndCustomerName2,
	EndCustomerNumber,
	upper(EndCustomerParentAccount),
	upper(EndCustomerParentName),
	EndCustomerPostalCode,
	upper(EndCustomerStandardizedName),
	upper(EndCustomerState),
	upper(EndCustomerVertical),
	ExchangeRateUsed,
	ExtendedListPrice,
	ExtendedStandardCost,
	F3,
	F4,
	FirstDestinationFlag,
	upper(GBU),
	GBU_Cleaned,
	GBU_Cleaned_groups,
	growth_target,
	InvoiceDate,
	InvoiceLineNumber,
	InvoiceNumber,
	LegacySizeCategory,
	LESBillToMajorClass,
	LESBillToMinorClass,
	alicecommissionoverridepercent,
	LESUnitsFlag,
	upper(Level_6),
	ListPrice,
	upper(LOB),
	MonthlyCost,
	NetSalesRevenue,
	NewLESCrossRef2,
	Office_no,
	office_location,
	office_website,
	OrderCoordinator,
	OrderCreateDate,
	PartnerLevelStandardized,
	PartnerTypeStandardized,
	PartnerWebFolderID,
	PartnerWebQuoteNumber,
	Phone_Area_Code,
	Phone_Number,
	Plant,
	PlantDescription,
	upper(Product_Category),
	upper(Product_Family),
	ProductHierarchyLevel1Description,
	ProductHierarchyLevel2Description,
	ProductHierarchyLevel3Description,
	ProductHierarchyLevel4Code,
	ProductHierarchyLevel4Description,
	PROShipmentNumber,
	QuantityShipped,
	QuoteID, 
	RecordID,
	Upper(RecordSource) RecordSource,
	ResellerMajorCode,
	ResellerMinorCode,
	upper(BillToCustomerName) as ResellerName,
	ResellerPartnerLevel,
	ResellerRegion,
	Right_F3,
	Right_Right_Country,
	Right_Right_OFFICE_LOCATION,
	Sales_Area,
	Sales_Region,
	Sales_Territory,
	SalesDistrictName,
	SalesDistrictNumber,
	SalesOfficeFamily,
	SalesOfficeName,
	SalesOfficeNumber,
	SalesOfficeNumberJoin,
	SalesOfficePrincipalEmail,
	SalesOfficePrincipalName,
	SalesOfficeRegion,
	--SalesOrderNumber,
	CASE WHEN (SalesOrderNumber IS NULL AND SKU='FREIGHT') THEN SalesOrderNumber_freight 
	when RecordSource = 'ALICE' and Sales_order_detail_line_num like '%SMS' then split_part(Sales_order_detail_line_num,'.',1)
	ELSE SalesOrderNumber
	END SalesOrderNumber,
	SalesRegionName,
	SalesRegionNumber,
	SalesRepEmail,
	SalesRepID,
	SalesRepName,
	SAPOEMTag,
	SAPSalesOrganization,
	Segment,
	Selling_Motion,
	SFR_Category,
	ShipDate,
	ShipmentCarrierName,
	ShipToAccountRole,
	upper(ShipToCustomerAddress),
	upper(ShipToCustomerCity),
	upper(ShipToCustomerCustomerType1),
	upper(ShipToCustomerEnterpriseIndustry),
	upper(ShipToCustomerGSC),
	upper(ShipToCustomerIndustry1),
	upper(ShipToCustomerName) ShipToCustomerName,
	ShipToCustomerNumber,
	upper(ShipToCustomerParentAccount),
	upper(ShipToCustomerParentName),
	ShipToCustomerPostalCode,
	upper(ShipToCustomerPostalCodeJoin),
	upper(ShipToCustomerStandardizedName),
	upper(ShipToCustomerState),
	upper(ShipToCustomerType1),
	upper(ShipToCustomerVertical),
	ShipToEnterpriseIndustry,
	ShipToGSC_Flag,
	ShipToCustomerIndustry1 as ShipToIndustry1,
	ShipToParentAccount,
	ShipToStandardizedName,
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
	SMSSiteId,
	SMSTagNumber,
	SMSTicketNumber,
	upper(SoldToCustomerCustomerType1),
	upper(SoldToCustomerEnterpriseIndustry),
	upper(SoldToCustomerGSC),
	upper(SoldToCustomerIndustry1),
	upper(SoldToCustomerName) SoldToCustomerName,
	upper(SoldToCustomerParentAccount),
	upper(SoldToCustomerStandardizedName),
	upper(SoldToCustomerVertical),
	SourceOrder,
	SPEED_DIAL,
	YearMonth,
    effective_user() as w_insert_by ,
    now() as w_insert_dtm ,
   'SalesOps' as src_system_name,
    ResellerNumber,
	resellerbranchnumber,
	resellerbranchname,
    office_type,
	UOM,
	sales_order_line_type,
	Order_type,
	Invoice_type,
	Class_code,
	OEM_FLAG,
	--so-621 new attributes addition
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
	upper(SoldToCustomerCity),
	upper(SoldToCustomerState),
	upper(BillToCustomerProvince),
	upper(EndCustomerProvince),
	upper(ShipToCustomerProvince),
	upper(SoldToCustomerProvince),
	upper(ShipToCustomerCountry),
	upper(SoldToCustomerCountry),
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
	--so-621 new attribute addition ends
	--so-661 new attributes addition starts
	upper(BillToAccountType),
	upper(EndAccountType),
	upper(ShipToAccountType),
	upper(SoldToAccountType),
	--so-661 new attributes addition ends
	productcommissionclasscode,
	--start--added by pooja for geist column addition 9-6-2022--
	'' Measure,
    cast('' as int) Calendar_Month,
    cast('' as int) Calendar_Year,
    '' Local_Currency,
    '' Sales_Office,
    cast('' as Double) Unit_Price,
    cast('' as Double) Unit_Price_FXD_USD,
	--end--added by pooja for geist column addition 9-6-2022--
	upper(BillToServicesMajorAcc), --so-665 new attributes addition starts
	upper(EndServicesMajorAcc),
	upper(ShipToServicesMajorAcc),
	upper(SoldToServicesMajorAcc), --so-665 new attributes addition ends
	upper(BillToCustomerSubClass), --so-728 new attributes addition starts
	upper(EndCustomerSubClass),
	upper(ShipToCustomerSubClass),
	upper(SoldToCustomerSubClass) --so-728 new attributes addition ends
	
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
	    END temp_motion2 --Modified by Hari SO-689
	
from (SELECT
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
		a.standard_cost * QuantityShipped ExtendedStandardCost,
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
		OR (nvl(billtocustomercountry,
		'N') = 'N')) THEN 'INTERCOMPANY OTHER'
		ELSE 'FIELD SALES'
	END temp_motion, --Modified by Hari SO-689
		case when recordsource='ALICE' and sku LIKE '%ATO%' THEN nvl(sku_for_ds,sku)
			else sku
		end SKU_rollup,
		roi.office_number Office_no,
		--nvl(roi.office_name,a.sales_office_name) SalesOfficeName,
		nvl(nvl(roi.office_name,a.sales_office_name),spc.office_name) SalesOfficeName,--modified by HARI SO-638
		roi.office_location office_location,
		roi.office_website office_website,
		roi.sales_area Sales_Area,
		roi.sales_region Sales_Region,
		roi.sales_region SalesOfficeRegion,
		roi.office_family SalesOfficeFamily,
		roi.principal_email SalesOfficePrincipalEmail,
		roi.principal SalesOfficePrincipalName,
		CASE
            WHEN nvl(sa.aopaccountname, 'N') != 'N' THEN sa.aopaccountname
            WHEN nvl(sb.aopaccountname, 'N') != 'N' THEN sb.aopaccountname
            WHEN nvl(a.sm_sku, 'N') != 'N' THEN a.aop_account_name_a
            ELSE 'Non Account'
            END aop_account_name,
			sa.accounttypeaop,
			sb.accounttypeaop as accounttypeaop1,
			nvl(sn.sum_netsales,0) sum_netsales,
            so.attribute_char1 as OEM_FLAG	--	modified by HARI SO-650		
	  FROM (SELECT
			pa.account_type Account_Type,
			pa.account_am AccountAM,
			pa.account_csm AccountCSM,
			pa.account_lead AccountLead,
			pa.account_presence AccountPresence,
			pa.account_service_sales AccountServiceSalfes,
			pa.account_subtype AccountSubType,
			pa.account_type AccountType,
			'' Activated,
			'' Advanced_Data_Center_Specialization,
			'' AnixterGraybarCDWFlag,
			/* CASE
            WHEN nvl(sa.aopaccountname, 'N') != 'N' THEN sa.aopaccountname
            WHEN nvl(sb.aopaccountname, 'N') != 'N' THEN sb.aopaccountname
            WHEN nvl(sm.sm_sku, 'N') != 'N' THEN sm.aop_account_name
            ELSE 'Non Account'
            END aop_account_name, */
			'' BillToAccountRole,
			nvl(bill_loc.site_address1_txt ,bill_loc_leg.customer_st_address1 ) BillToCustomerAddress,
			nvl(bill_loc.site_city_txt ,bill_loc_leg.customer_city ) BillToCustomerCity,
			--bill_loc.country_name BillToCustomerCountry,
			nvl(bill_loc.site_country_cd ,bill_loc_leg.customer_country_name ) BillToCustomerCountry,
			bill_ind.customer_type1 BillToCustomerCustomerType1,
			bill_ind.enterprise_industry BillToCustomerEnterpriseIndustry,
			bill_gsc.gsc BillToCustomerGSC,
			--bill_cust.industry BillToCustomerIndustry1,
			--coalesce(bill_acc.industry_classification_1_txt, bill_acc.industry_classification_2_txt, bill_acc.industry_classification_3_txt) BillToCustomerIndustry1,
			/*case when inv.src_system_name = 'LES' and (nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername ) then
				 nvl(gsa_billto.industry_classification1,coalesce(bill_acc.industry_classification_1_txt, bill_acc.industry_classification_2_txt, bill_acc.industry_classification_3_txt))
				 else coalesce(bill_acc.industry_classification_1_txt, bill_acc.industry_classification_2_txt, bill_acc.industry_classification_3_txt) 
			END BillToCustomerIndustry1,*/			
			case when inv.src_system_name = 'LES' and (nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername ) then
				 nvl(gsa_billto.industry_classification1,nvl(bill_acc.industry_classification_1_txt, bill_acc.industry_classification_2_txt))
				 else nvl(bill_acc.industry_classification_1_txt, bill_acc.industry_classification_2_txt) 
			END BillToCustomerIndustry1,--mapping for BillToCustomerIndustry1 changed so-621
			--bill_acc.account_name BillToCustomerName,
			case when inv.src_system_name = 'LES' then nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) 
				 else nvl(bill_acc.customer_name_txt,bill_acc_leg.account_name) 
			end as BillToCustomerName,
			--inv.legacy_bill_to_customer_account_id BillToCustomerNumber,
			nvl(bill_acc.customer_number,bill_acc_leg.account_num) BillToCustomerNumber,			
			--bill_acc.account_name BillToCustomerParentAccount,
			--bill_cust.parentaccount BillToCustomerParentAccount,
			--bill_acc.account_name BillToCustomerParentAccount,
/* 			case when inv.src_system_name = 'LES' then bill_cust_les.parentaccount 
				 --else nvl(bill_acc.customer_name_txt,bill_acc_leg.account_name) 
				 else COALESCE(bill_acc.ultimate_parent_txt,null)
			end as BillToCustomerParentAccount, */
			case when inv.src_system_name = 'LES' and (nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername ) then COALESCE(gsa_billto.ultimate_parent,bill_acc.ultimate_parent_txt,upper(bill_cust_les.parentaccount) )
            else COALESCE(bill_acc.ultimate_parent_txt, null)
            end as BillToCustomerParentAccount,			
			bill_cust.parentaccount BillToCustomerParentName,
			nvl(bill_loc.site_postal_code_txt ,bill_loc_leg.customer_postal_cd ) BillToCustomerPostalCode,
			bill_cust.StandardizedName BillToCustomerStandardizedName,
			nvl(bill_loc.site_state_cd ,bill_loc_leg.customer_state_name ) BillToCustomerState,
			bill_ind.customer_type1 BillToCustomerType1,
			--bill_ind.vertical BillToCustomerVertical,
			/*case when inv.src_system_name = 'LES' and (nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername ) then
				  nvl(gsa_billto.market_sub_vertical,bill_acc.market_sub_vertical_txt)
				  else bill_acc.market_sub_vertical_txt
			END BillToCustomerVertical,*/			
			case when inv.src_system_name = 'LES' and (nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername ) then
				  nvl(gsa_billto.market_vertical,bill_acc.market_vertical_txt)
				  else bill_acc.market_vertical_txt
			END BillToCustomerVertical,	--mapping for BillToCustomerVertical changed so-621
			bill_ind.enterprise_industry BillToEnterpriseIndustry,
			--bill_cust.industry BillToIndustry1,
			'' BillToIndustryCode1,
			--bill_cust.parentaccount BillToParentAccount,
			case when inv.src_system_name = 'LES' and (nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername ) then COALESCE(gsa_billto.ultimate_parent,bill_acc.ultimate_parent_txt,upper(bill_cust_les.parentaccount) )
            else COALESCE(bill_acc.ultimate_parent_txt, null)
            end as BillToParentAccount,
			'' BillToStandardizedName,
			'' ChannelFlag,
			'' ChannelProductGrouping,
			--cat.catalog_lvl_desc_3 COE,
			/*case when NVL(inv.product_num,pm.projectcode) = sku_lu.sku and inv.src_system_name = sku_lu.recordsource then sku_lu.coe
			else cat.catalog_lvl_desc_3 
			end COE,*/
			case when NVL(inv.product_num,pm.projectcode) = sku_lu.sku and inv.src_system_name = sku_lu.recordsource then sku_lu.coe
			else COALESCE(cat.catalog_lvl_desc_3 ,rlpc.catalog_lvl_desc_3,gph_sku.coe)
			end COE,--mapping changed for COE so-652
			'' Country,
			inv.customer_po_num CustomerPurchaseOrderNumber,
			ordr.customer_requested_dt CustomerRequestDate,
			inv.w_insert_dtm Data_Last_Refreshed,
			'' DCPowerFinanceParent,
			'' DCPowerProfitCenter,
			'' EndCustomerAccountRole,
			nvl(end_loc.site_address1_txt,end_loc_leg.customer_st_address1 ) EndCustomerAddress,
			'' EndCustomerCity,
			'' EndCustomerCountry,
			CASE WHEN inv.src_system_name IN ('LES','ERS_HVM') THEN COALESCE(end_ind.customer_type1,leg_cust_attr_saleswh.customer_type)
			ELSE end_ind.customer_type1
			END EndCustomerCustomerType1, --- VR 05172022 Customer info fields changes SO-644
			CASE WHEN inv.src_system_name IN ('LES','ERS_HVM') THEN COALESCE(end_ind.customer_type1,leg_cust_attr_saleswh.customer_type)
			ELSE end_ind.customer_type1
			END EndCustomerCustomerType1_2, --- VR 05172022 Customer info fields changes SO-644	
			end_ind.enterprise_industry EndCustomerEnterpriseIndustry,
			end_ind.enterprise_industry EndCustomerEnterpriseIndustry2,
			end_gsc.gsc EndCustomerGSC,
			--end_cust.industry EndCustomerIndustry,
			--end_cust.industry EndCustomerIndustry1,
			--coalesce(end_acc.industry_classification_1_txt, end_acc.industry_classification_2_txt, end_acc.industry_classification_3_txt) EndCustomerIndustry1,
			/*case when inv.src_system_name = 'LES' and (nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) = gsa_endto.billtocustomername) then
				 nvl(gsa_endto.industry_classification1,coalesce(end_acc.industry_classification_1_txt, end_acc.industry_classification_2_txt, end_acc.industry_classification_3_txt))
				 else coalesce(end_acc.industry_classification_1_txt, end_acc.industry_classification_2_txt, end_acc.industry_classification_3_txt) 
			END EndCustomerIndustry1,*/			
			CASE
				WHEN inv.src_system_name = 'LES'
					 AND (nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) = gsa_endto.billtocustomername) THEN nvl(gsa_endto.industry_classification1,coalesce(end_acc.industry_classification_1_txt, end_acc.industry_classification_2_txt, end_acc.industry_classification_3_txt))
				WHEN inv.src_system_name IN ('LES','ERS_HVM') THEN COALESCE(end_acc.industry_classification_1_txt, end_acc.industry_classification_2_txt, end_acc.industry_classification_3_txt,leg_cust_attr_saleswh.industry_classification_1_txt,leg_cust_attr_saleswh.industry_classification_3_txt)
				ELSE coalesce(end_acc.industry_classification_1_txt, end_acc.industry_classification_2_txt, end_acc.industry_classification_3_txt)
			END EndCustomerIndustry1,  --- VR 05172022 Customer info fields changes SO-644--mapping for EndCustomerIndustry1 changed so-621
			'' EndCustomerMarket,
			--end_acc.account_name EndCustomerName,
			CASE
				WHEN inv.src_system_name = 'LES' THEN nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name)
				 WHEN inv.src_system_name in ('LES','ERS_HVM') THEN COALESCE(end_acc.customer_name_txt,end_acc_leg.account_name,leg_cust_attr_saleswh.customer_name_txt)
				ELSE nvl(end_acc.customer_name_txt,end_acc_leg.account_name)
			END AS EndCustomerName, --- VR 05172022 Customer info fields changes SO-644
			--end_acc.account_name EndCustomerName2,
			--inv.legacy_end_customer_account_id EndCustomerNumber,
			nvl(end_acc.customer_number ,end_acc_leg.account_num) EndCustomerNumber,			
			--end_cust.parentaccount EndCustomerParentAccount,
			--end_acc.account_name EndCustomerParentAccount,
/* 			case when inv.src_system_name = 'LES' then end_cust_les.parentaccount 
				-- else nvl(end_acc.customer_name_txt,end_acc_leg.account_name) 
				 else COALESCE(end_acc.ultimate_parent_txt,null)
			end as EndCustomerParentAccount, */
			
			CASE
				WHEN inv.src_system_name = 'LES'
					 AND (nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) = gsa_endto.billtocustomername) THEN COALESCE(gsa_endto.ultimate_parent,end_acc.ultimate_parent_txt,upper(end_cust_les.parentaccount))
				WHEN inv.src_system_name in ('LES','ERS_HVM') THEN  COALESCE(end_acc.ultimate_parent_txt, leg_cust_attr_saleswh.ultimate_parent_txt)
				ELSE COALESCE(end_acc.ultimate_parent_txt, NULL)
			END AS EndCustomerParentAccount, --- VR 05172022 Customer info fields changes SO-644		
			
			end_cust.parentaccount EndCustomerParentName,
			nvl(end_loc.site_postal_code_txt,end_loc_leg.customer_postal_cd ) EndCustomerPostalCode,
			end_cust.StandardizedName EndCustomerStandardizedName,
			nvl(end_loc.site_state_cd ,end_loc_leg.customer_state_name ) EndCustomerState,
/* 			CASE WHEN end_ind.vertical='Null' THEN NULL
				 WHEN end_ind.vertical='' THEN NULL 
				 ELSE end_ind.vertical
			END EndCustomerVertical, */
			/*case when inv.src_system_name = 'LES' and (nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) = gsa_endto.billtocustomername) then
				 nvl(gsa_endto.market_sub_vertical,end_acc.market_sub_vertical_txt)
				 else end_acc.market_sub_vertical_txt
			END  EndCustomerVertical,*/			
			CASE
		        WHEN inv.src_system_name = 'LES'
		             AND (nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) = gsa_endto.billtocustomername) THEN nvl(gsa_endto.market_vertical,end_acc.market_vertical_txt)
		        WHEN inv.src_system_name IN ('LES','ERS_HVM') THEN COALESCE(end_acc.market_vertical_txt,leg_cust_attr_saleswh.market_vertical_txt)
		        ELSE end_acc.market_vertical_txt
		    END EndCustomerVertical, --- VR 05172022 Customer info fields changes SO-644 --EndCustomerVertical mapping changes so-621
			CASE
				WHEN inv.invoiced_on_dt < '2017-01-01 00:00:00' THEN fixed_rate.conversion_rate
				ELSE monthly_exch_rate.conversion_rate
			END ExchangeRateUsed,
			'' F3,
			'' F4,
			'' FirstDestinationFlag,
			--cat.catalog_lvl_desc_1 GBU,
			/*case when NVL(inv.product_num,pm.projectcode) = sku_lu.sku and inv.src_system_name = sku_lu.recordsource then sku_lu.gbu 
			else cat.catalog_lvl_desc_1 
			end GBU,*/
			case when NVL(inv.product_num,pm.projectcode) = sku_lu.sku and inv.src_system_name = sku_lu.recordsource then sku_lu.gbu 
			else COALESCE(cat.catalog_lvl_desc_1,rlpc.catalog_lvl_desc_1,gph_sku.gbu) 
			end GBU,--mapping changeed for GBU so-652
			'' GBU_Cleaned,
			'' GBU_Cleaned_groups,
			invoiced_on_dt InvoiceDate,
			inv.invoice_line_num InvoiceLineNumber,
			inv.invoice_num InvoiceNumber,
			'' LegacySizeCategory,
			'' LESBillToMajorClass,
			'' LESBillToMinorClass,
			'' alicecommissionoverridepercent,
			'' LESUnitsFlag,
			--cat.catalog_lvl_desc_6 Level_6,
			/*case when NVL(inv.product_num,pm.projectcode) = sku_lu.sku and inv.src_system_name = sku_lu.recordsource then sku_lu.level6
			else cat.catalog_lvl_desc_6 
			end Level_6,*/
			case when NVL(inv.product_num,pm.projectcode) = sku_lu.sku and inv.src_system_name = sku_lu.recordsource then sku_lu.level6
			else COALESCE(cat.catalog_lvl_desc_6,rlpc.catalog_lvl_desc_6,gph_sku.level_6)
			end Level_6,--mapping changed for Level_6 so-652
			lstp_a ListPrice,
			--ordr.sale_usd_amt ExtendedListPrice,
			--cat.catalog_lvl_desc_2 LOB,
			/*case when NVL(inv.product_num,pm.projectcode) = sku_lu.sku and inv.src_system_name = sku_lu.recordsource then sku_lu.lob
			else cat.catalog_lvl_desc_2 
			end LOB,*/
			case when NVL(inv.product_num,pm.projectcode) = sku_lu.sku and inv.src_system_name = sku_lu.recordsource then sku_lu.lob
			else COALESCE(cat.catalog_lvl_desc_2,rlpc.catalog_lvl_desc_2,gph_sku.lob)
			end LOB,--mapping changed for LOB so-652
			'' MonthlyCost,
			inv.nsr_a NetSalesRevenue,
			inv.elp_a ExtendedListPrice,
			'' NewLESCrossRef2,
			-- roi.office_number Office_no,
			-- roi.office_location officelocation,
			-- roi.office_website office_website,
			'' OrderCoordinator,
			--ordr.order_booked_dt OrderCreateDate,
			CASE WHEN inv.src_system_name in ('SAP_ESNA','ERS_HVM','SAP_AVOCENT') THEN ordr.order_create_dt
			ELSE ordr.order_booked_dt
			END AS OrderCreateDate,	--VR 05042022 Ordercreatedate changes suggested by Ryan.		
			'' PartnerLevelStandardized,
			'' PartnerTypeStandardized,
			'' PartnerWebFolderID,
			'' PartnerWebQuoteNumber,
            isnull(ordr.quote_ref, ordr.legacy_orig_ref_num) as 'QuoteID',
	        CASE WHEN inv.src_system_name ='LES' THEN cpqh_les.bs_id ELSE cpqh_others.bs_id
			END AS 'BSID',			
			--cpqh.bs_id as 'BSID', 
			'' Phone_Area_Code,
			'' Phone_Number,
			--CASE WHEN inv.src_system_name ='ALICE' THEN dorg.org_cd ELSE les_plant.plant_code END AS  Plant,
			--VR 03092022 Changes added to fix plant null for recordsource ORACLEERPCLOUD
			case when ordr.src_system_name ='ALICE' then dorg.org_cd 
			when ordr.src_system_name = 'ORACLEERPCLOUD' then oraerp_plant.plant
			else shipd.plant end as Plant,
			
			'' PlantDescription,
			--cat.catalog_lvl_desc_4 Product_Category,
			/*case when NVL(inv.product_num,pm.projectcode) = sku_lu.sku and inv.src_system_name = sku_lu.recordsource then sku_lu.Product_Category
			else cat.catalog_lvl_desc_4 
			end Product_Category,*/
			case when NVL(inv.product_num,pm.projectcode) = sku_lu.sku and inv.src_system_name = sku_lu.recordsource then sku_lu.Product_Category
			else COALESCE(cat.catalog_lvl_desc_4,rlpc.catalog_lvl_desc_4,gph_sku.product_category)
			end Product_Category,--mapping changed for Product_Category so-652
			--cat.catalog_lvl_desc_5 Product_Family,
			/*case when NVL(inv.product_num,pm.projectcode) = sku_lu.sku and inv.src_system_name = sku_lu.recordsource then sku_lu.Product_Family
			else cat.catalog_lvl_desc_5 
			end Product_Family,*/
			case when NVL(inv.product_num,pm.projectcode) = sku_lu.sku and inv.src_system_name = sku_lu.recordsource then sku_lu.Product_Family
			else COALESCE(cat.catalog_lvl_desc_5,rlpc.catalog_lvl_desc_5,gph_sku.product_family)
			end Product_Family,--mapping changed for Product_Family
			'' ProductHierarchyLevel1Description,
			'' ProductHierarchyLevel2Description,
			'' ProductHierarchyLevel3Description,
			'' ProductHierarchyLevel4Code,
			'' ProductHierarchyLevel4Description,
			shipd.PRO_NBR_01 PROShipmentNumber,
			inv.invoiced_qty QuantityShipped,
			'' RecordID,
			inv.src_system_name RecordSource,
			'' ResellerMajorCode,
			'' ResellerMinorCode,
			'' ResellerName,
			'' ResellerPartnerLevel,
			'' ResellerRegion,
			'' Right_F3,
			'' Right_Right_Country,
			'' Right_Right_OFFICE_LOCATION,
			-- roi.sales_area Sales_Area,
			-- roi.sales_region Sales_Region,
			'' Sales_Territory,
			'' SalesDistrictName,
			'' SalesDistrictNumber,
			--roi.office_family SalesOfficeFamily,
			inv.sales_office_name,
			--ordr.sales_office_number SalesOfficeNumber,
            case when length(ordr.sales_office_number)<5 then lpad(ordr.sales_office_number,5,'0') else ordr.sales_office_number end as SalesOfficeNumber,
			'' SalesOfficeNumberJoin,
			-- roi.principal_email SalesOfficePrincipalEmail,
			-- roi.principal SalesOfficePrincipalName,
			--rep.sales_office_region SalesOfficeRegion,
			inv.sales_order_num SalesOrderNumber,
			inv.sales_order_line_num orderexlinenumber,
			inv_freight.sales_order_num SalesOrderNumber_freight,
			'' SalesRegionName,
			'' SalesRegionNumber,
			rep.sales_rep_email SalesRepEmail,
			rep.sales_rep_num SalesRepID,
			rep.sales_rep_name SalesRepName,
			'' SAPOEMTag,
			'' SAPSalesOrganization,
			'' Segment,
			'' SFR_Category,
			ordr.actual_shipment_dt ShipDate,
			nvl(LINE.shipping_mode_code,
			shipd.vehicle_nbr) ShipmentCarrierName,
			'' ShipToAccountRole,
			nvl(ship_loc.site_address1_txt ,ship_loc_leg.customer_st_address1) ShipToCustomerAddress,
			nvl(ship_loc.site_city_txt,ship_loc_leg.customer_city) ShipToCustomerCity,
			ship_ind.customer_type1 ShipToCustomerCustomerType1,
			ship_ind.enterprise_industry ShipToCustomerEnterpriseIndustry,
			ship_gsc.gsc ShipToCustomerGSC,
			--ship_cust.industry ShipToCustomerIndustry1,
			--coalesce(ship_acc.industry_classification_1_txt, ship_acc.industry_classification_2_txt, ship_acc.industry_classification_3_txt) ShipToCustomerIndustry1,
			nvl(ship_acc.industry_classification_1_txt, ship_acc.industry_classification_2_txt) ShipToCustomerIndustry1,--mapping for ShipToCustomerIndustry1 changed so-621
			--ship_acc.account_name ShipToCustomerName,
			case when inv.src_system_name = 'LES' then nvl(nullif(ship_cust_les.customername,''),les_ship.business_name) 
				 else nvl(ship_acc.customer_name_txt,ship_acc_leg.account_name) 
			end as ShipToCustomerName,
			--inv.legacy_ship_to_customer_account_id ShipToCustomerNumber,
			nvl(ship_acc.customer_number,ship_acc_leg.account_num) ShipToCustomerNumber,
			--ship_cust.parentaccount ShipToCustomerParentAccount,
			--ship_acc.account_name ShipToCustomerParentAccount,
/* 			case when inv.src_system_name = 'LES' then ship_cust_les.parentaccount 
				 --else nvl(ship_acc.customer_name_txt,ship_acc_leg.account_name) 
				  else COALESCE(ship_acc.ultimate_parent_txt,null)
			end as ShipToCustomerParentAccount, */
			
			case when inv.src_system_name = 'LES' then COALESCE(ship_acc.ultimate_parent_txt,upper(ship_cust_les.parentaccount) )
               else COALESCE(ship_acc.ultimate_parent_txt,	null)
            end as ShipToCustomerParentAccount,
			ship_cust.parentaccount ShipToCustomerParentName,
			nvl(ship_loc.site_postal_code_txt,ship_loc_leg.customer_postal_cd) ShipToCustomerPostalCode,
			nvl(ship_loc.site_postal_code_txt ,ship_loc_leg.customer_postal_cd) ShipToCustomerPostalCodeJoin,
			ship_cust.StandardizedName ShipToCustomerStandardizedName,
			nvl(ship_loc.site_state_cd ,ship_loc_leg.customer_state_name) ShipToCustomerState,
			ship_ind.customer_type1 ShipToCustomerType1,
			--ship_ind.vertical ShipToCustomerVertical,
			--nvl(ship_acc.market_sub_vertical_txt,ship_ind.vertical) ShipToCustomerVertical,
			nvl(ship_acc.market_vertical_txt,ship_ind.vertical) ShipToCustomerVertical,--mapping for ShipToCustomerVertical changed so-621
			ship_ind.enterprise_industry ShipToEnterpriseIndustry,
			--ship_cust.industry ShipToIndustry1,
			--ship_cust.parentaccount ShipToParentAccount,
			case when inv.src_system_name = 'LES' then COALESCE(ship_acc.ultimate_parent_txt,upper(ship_cust_les.parentaccount) )
               else COALESCE(ship_acc.ultimate_parent_txt,	null)
            end as ShipToParentAccount,
			ship_cust.StandardizedName ShipToStandardizedName,
			case when prod.product_num='NOT APPLICABLE' and inv.src_system_name != 'ERS_HVM' then inv.product_num 
				 when inv.src_system_name ='ALICE'  and (prod.product_num is null or prod.product_num='') then inv.product_num
			     when inv.src_system_name= 'ERS_HVM' then pm.projectcode
			     else nvl(prod.product_num ,gph_sku.sku)
			end as  SKU,
			--prod.product_desc SKUDescription,
			case when NVL(inv.product_num,pm.projectcode) = sku_lu.sku and inv.src_system_name = sku_lu.recordsource then sku_lu.skudescription
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
			'' SMSSiteId,
			'' SMSTagNumber,
			'' SMSTicketNumber,
			'' SoldToCustomerCustomerType1,
			'' SoldToCustomerEnterpriseIndustry,
			'' SoldToCustomerGSC,
			--'' SoldToCustomerIndustry1,
			--coalesce(sold_acc.industry_classification_1_txt, sold_acc.industry_classification_2_txt, sold_acc.industry_classification_3_txt) SoldToCustomerIndustry1,
			nvl(sold_acc.industry_classification_1_txt, sold_acc.industry_classification_2_txt) SoldToCustomerIndustry1,--mapping for SoldToCustomerIndustry1 changed so-621
			--sold_acc.account_name SoldToCustomerName,
			case when inv.src_system_name = 'LES' then nvl(nullif(sold_cust_les.customername,''),les_sold.business_name) 
				 else nvl(sold_acc.customer_name_txt ,sold_acc_leg.account_name)
			end as SoldToCustomerName,
/* 			case when inv.src_system_name = 'LES' then sold_cust_les.parentaccount 
				 --else nvl(ship_acc.customer_name_txt,ship_acc_leg.account_name) 
				  else COALESCE(sold_acc.ultimate_parent_txt,null)
			end as SoldToCustomerParentAccount, */
			
			case when inv.src_system_name = 'LES' then COALESCE(sold_acc.ultimate_parent_txt,upper(sold_cust_les.parentaccount) )
				else COALESCE(sold_acc.ultimate_parent_txt,	null)
			end as SoldToCustomerParentAccount,				
			--'' SoldToCustomerParentAccount,
			'' SoldToCustomerStandardizedName,
			--'' SoldToCustomerVertical,
			--nvl(sold_acc.market_sub_vertical_txt,'NULL') SoldToCustomerVertical,
			nvl(sold_acc.market_vertical_txt,'NULL') SoldToCustomerVertical,--mapping for SoldToCustomerVertical changed so-621
			'' SourceOrder,
			'' SPEED_DIAL,
			invoiced_on_dt YearMonth,
			shipd.SUM_FROZEN standard_cost,
			end_ref.customer end_customer,
			bill_ref.customer bill_customer,
			sm.sm_sku sm_sku,
			sm.aop_account_name aop_account_name_a,
			sm.sm_account_flag sm_account_flag,
			af.af_sku af_sku,
			--sa.acct_name acct_name,
			py.reseller_number ResellerNumber,
			fix.sku_for_ds as sku_for_ds,
			CASE 
            WHEN nvl(XX.resellerbranchnumber, 'N') != 'N' THEN XX.resellerbranchnumber
            WHEN nvl(h.branch_office_nbr, 'N') != 'N' THEN h.branch_office_nbr
            ELSE NULL
            END resellerbranchnumber,
            CASE 
            WHEN nvl(XX.resellerbranchname, 'N') != 'N' THEN xx.resellerbranchname
            WHEN upper(inv.src_system_name) like '%CDW%' THEN 'CDW LOGISTICS'
            WHEN upper(inv.src_system_name) like '%GRAY%' THEN 'GRAYBAR ELECTRIC'
            WHEN upper(inv.src_system_name) like '%CONNECTION%' THEN 'CONNECTION'
            WHEN nvl(h.business_name, 'N') != 'N' THEN h.business_name
            ELSE NULL
            END resellerbranchname,
			--sa.flag flag,
			--sb.flag as flag1,
            --sa.accounttypeaop,
			--sb.accounttypeaop as accounttypeaop1,
			inv.Sales_order_detail_line_num,
			CASE
			WHEN upper(inv.src_system_name) = 'ERS_HVM' THEN 'FDO'
	        WHEN upper(inv.sales_office_name) like '%VERTIV%'
	        or upper(inv.sales_office_name) like '%LIEBERT%' THEN 'FDO'
	        ELSE 'LVO'
            END office_type,
			h.branch_office_nbr as branch_office_nbr,
            cpqrep.region as region,
			ordr.uom_cd  as UOM, --modified by HARI SO-635
            UPPER(ordr.sales_order_line_type) as sales_order_line_type,
            ordr.sales_order_type_cd as Order_type, --modified by HARI SO-634
            inv.invoice_type_cd as Invoice_type,		--modified by HARI SO-634	  
			prc.class_code as Class_code, --	modified by HARI SO-622	
			--New attributes addition starts So-621
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
			case when inv.src_system_name = 'LES' and (nvl(nullif(bill_cust_les.customername,''),les_bill.business_name) = gsa_billto.billtocustomername ) then
				  nvl(gsa_billto.market_sub_vertical,bill_acc.market_sub_vertical_txt)
				  else bill_acc.market_sub_vertical_txt
			END BillToCustomerSubVertical,
	       case when inv.src_system_name = 'LES' and (nvl(nullif(end_cust_les.customername,''),les_end.install_at_addr_name) = gsa_endto.billtocustomername) then
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
			nvl(sold_loc.site_address1_txt ,sold_loc_leg.customer_st_address1 )SoldToCustomerAddress,
			nvl(sold_loc.site_city_txt,sold_loc_leg.customer_city) SoldToCustomerCity,
			nvl(sold_loc.site_state_cd ,sold_loc_leg.customer_state_name ) SoldToCustomerState,
			bill_loc.site_province_cd BillToCustomerProvince,
			end_loc.site_province_cd EndCustomerProvince,
			ship_loc.site_province_cd ShipToCustomerProvince,
			sold_loc.site_province_cd SoldToCustomerProvince,
			nvl(ship_loc.site_country_cd ,ship_loc_leg.customer_country_name ) ShipToCustomerCountry,
			nvl(sold_loc.site_country_cd ,sold_loc_leg.customer_country_name ) SoldToCustomerCountry,
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
			--so-621 new  attributes addition ends 
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
			bill_acc.services_major_acc BillToServicesMajorAcc, --so-665 new attributes addition starts
			end_acc.services_major_acc EndServicesMajorAcc,
			ship_acc.services_major_acc ShipToServicesMajorAcc,
			sold_acc.services_major_acc SoldToServicesMajorAcc, --so-665 new attributes addition ends
			'' BillToCustomerSubClass, --so-728 new attributes addition starts
			'' EndCustomerSubClass,
			'' ShipToCustomerSubClass,
			'' SoldToCustomerSubClass  --so-728 new attributes addition ends
			/* bill_acc.customer_sub_class BillToCustomerSubClass,  --so-728 new attributes addition starts
			end_acc.customer_sub_class EndCustomerSubClass,
			ship_acc.customer_sub_class ShipToCustomerSubClass,
			sold_acc.customer_sub_class SoldToCustomerSubClass --so-728 new attributes addition ends */
			

		   from (select * from 
					@DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_temp ) inv
				LEFT OUTER JOIN @DB_LEVEL@_edm_gold.f_sales_order_line ordr ON
					inv.sales_order_line_wid = ordr.row_wid
				LEFT OUTER JOIN
				(select distinct sales_order_num ,invoice_num from @DB_LEVEL@_edm_gold.f_sales_invoice_line where	(src_system_name = 'ALICE'
						 and invoice_line_type_cd='LINE' 
						 and invoice_class_cd in ('Invoice','Credit Memo')
						 and invoice_clssfctn in ('Order Management','OKS_CONTRACTS','PROJECTS INVOICES')
                         and invoice_type_cd in ('Invoice-OKS','Credit-OKS','Projects Invoice'))
						 and sales_order_num is not null ) inv_freight ON
				inv.invoice_num = inv_freight.invoice_num
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
				  ordr.inventory_org_wid = oraerp_plant.row_wid  
				 AND  ordr.src_system_name = oraerp_plant.src_system_name
				 AND  oraerp_plant.plant_type ='numeric'				
			 	LEFT OUTER JOIN @DB_LEVEL@_cld_cpq_silver.cpq_quote_headers cpqh_les on
					ordr.order_num = cpqh_les.orcl_erp_ordernumber_t
					and ordr.src_system_name = 'LES'
					--and cpqh_les.opportunityid_t is not null
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
					/* New code for adding customer_type OIC Related data issue ends here*/ 				
				LEFT OUTER JOIN @DB_LEVEL@_edm_gold.d_product_catalog cat ON
					inv.product_wid = cat.product_wid	
	            /*New customer hub changes */
				left outer join @DB_LEVEL@_mdm_hub_gold.d_customer_header_v ship_acc
					on inv.legacy_ship_to_customer_account_id = ship_acc.integration_id_join
					and inv.src_system_name = ship_acc.src_system_name_join
				left outer join  @DB_LEVEL@_mdm_hub_gold.d_customer_header_v bill_acc
					on inv.legacy_bill_to_customer_account_id = bill_acc.integration_id_join
					and inv.src_system_name = bill_acc.src_system_name_join
				left outer join @DB_LEVEL@_mdm_hub_gold.d_customer_header_v end_acc
					on inv.legacy_end_customer_account_id = end_acc.integration_id_join
					and inv.src_system_name = end_acc.src_system_name_join
				left outer join  @DB_LEVEL@_mdm_hub_gold.d_customer_header_v sold_acc
					on inv.legacy_sold_to_customer_account_id = sold_acc.integration_id_join
					and inv.src_system_name = sold_acc.src_system_name_join
				LEFT OUTER JOIN (select distinct party_name,party_st_address2,party_postal_cd,reseller_number from @DB_LEVEL@_edm_gold.d_party) py ON
                    bill_acc.customer_name_txt = py.party_name
                    and bill_acc.address1_primary_txt = py.party_st_address2
                    and bill_acc.postal_code_primary_txt = py.party_postal_cd
				
				left outer join @DB_LEVEL@_edm_gold.d_legacy_customer_account ship_acc_leg
					on inv.legacy_ship_to_customer_account_id = ship_acc_leg.Integration_id
					and inv.src_system_name = ship_acc_leg.src_system_name
				left outer join  @DB_LEVEL@_edm_gold.d_legacy_customer_account bill_acc_leg
					on inv.legacy_bill_to_customer_account_id = bill_acc_leg.Integration_id
					and inv.src_system_name = bill_acc_leg.src_system_name
				left outer join  @DB_LEVEL@_edm_gold.d_legacy_customer_account end_acc_leg
					on inv.legacy_end_customer_account_id = end_acc_leg.Integration_id
					and inv.src_system_name = end_acc_leg.src_system_name
				left outer join  @DB_LEVEL@_edm_gold.d_legacy_customer_account sold_acc_leg
					on inv.legacy_sold_to_customer_account_id = sold_acc_leg.Integration_id
					and inv.src_system_name = sold_acc_leg.src_system_name

                
				
				/*New customer hub changes */				
				left outer join  @DB_LEVEL@_mdm_hub_gold.d_customer_address_v ship_loc
					on inv.legacy_ship_to_customer_loc_id = ship_loc.integration_id_join
					and inv.src_system_name = ship_loc.src_system_name_join	
				left outer join  @DB_LEVEL@_mdm_hub_gold.d_customer_address_v bill_loc
					on inv.legacy_bill_to_customer_loc_id = bill_loc.integration_id_join
					and inv.src_system_name = bill_loc.src_system_name_join	
				left outer join  @DB_LEVEL@_mdm_hub_gold.d_customer_address_v end_loc
					on inv.legacy_end_customer_loc_id = end_loc.integration_id_join
					and inv.src_system_name = end_loc.src_system_name_join	
				left outer join @DB_LEVEL@_mdm_hub_gold.d_customer_address_v sold_loc
					on inv.legacy_sold_to_customer_loc_id = sold_loc.integration_id_join
					and inv.src_system_name = sold_loc.src_system_name_join	

				left outer join  @DB_LEVEL@_edm_gold.d_legacy_customer_loc ship_loc_leg
					on inv.legacy_ship_to_customer_loc_id = ship_loc_leg.Integration_id
					and inv.src_system_name = ship_loc_leg.src_system_name
				left outer join @DB_LEVEL@_edm_gold.d_legacy_customer_loc bill_loc_leg
					on inv.legacy_bill_to_customer_loc_id = bill_loc_leg.Integration_id
					and inv.src_system_name = bill_loc_leg.src_system_name
				left outer join  @DB_LEVEL@_edm_gold.d_legacy_customer_loc end_loc_leg
					on inv.legacy_end_customer_loc_id = end_loc_leg.Integration_id
					and inv.src_system_name = end_loc_leg.src_system_name
				left outer join @DB_LEVEL@_edm_gold.d_legacy_customer_loc sold_loc_leg
					on inv.legacy_sold_to_customer_loc_id = sold_loc_leg.Integration_id
					and inv.src_system_name = sold_loc_leg.src_system_name			
                LEFT OUTER JOIN @DB_LEVEL@_mdm_hub_gold.legacy_customer_attributes_assignment_bysalesorder 	leg_cust_attr_saleswh on
		             ordr.order_num = leg_cust_attr_saleswh.sales_order_number  --- VR 05172022 Customer info fields changes SO-644	

					
				/*
				left outer join @DB_LEVEL@_edm_gold.d_regional_legacy_product_catalog cat 
					on inv.legacy_product_id = cast(cat.inventory_item_id as STRING) 
					--and cat.product_catalog_type='LEGACY'
					--and inv.sub_region_wid =104 
					and inv.src_system_name = cat.src_system_name
				*/	
				LEFT OUTER JOIN @DB_LEVEL@_edm_gold.d_sales_rep rep ON
					inv.sales_rep_wid = rep.row_wid			
				LEFT OUTER JOIN @DB_LEVEL@_edm_gold.d_product prod ON
					inv.product_wid = prod.row_wid
			
				left join @DB_LEVEL@_cld_cpq_silver.cpq_dt_salesrepdetails cpqrep
                on cpqrep.salesrepnumber = rep.sales_rep_num
                and cpqrep.region = 'CANADA'	
				/*
				left outer join @DB_LEVEL@_edm_gold.d_legacy_product prod 
					on inv.legacy_product_id = prod.product_num
					and inv.src_system_name =prod.src_system_name
				*/
				left outer join @DB_LEVEL@_edm_other_src_silver.ref_sellingmotion_sku sm on
					prod.product_num = sm.sm_sku
				left outer join @DB_LEVEL@_edm_other_src_silver.ref_accountsflag_sku af on
				    prod.product_num = af.af_sku
				left outer join @DB_LEVEL@_edm_other_src_silver.ref_customerparentaccounts bill_ref on
					nvl(bill_acc.customer_name_txt,bill_acc_leg.account_name) = bill_ref.customer
				left outer join @DB_LEVEL@_ershvm_silver.hvm_ers_projectmaster pm on  
					inv.sales_order_num = pm.projectnumber
				left outer join (select * from @DB_LEVEL@_edm_other_src_silver.GPHSKUAssignments where record_source = 'OPPORTUNITIES') gph_sku on
                COALESCE( prod.product_num, pm.projectcode, inv.product_num) = gph_sku.sku	
      
                left outer join (select distinct egp1.item_number, item_eff.attribute_char11 from (
                select * from @DB_LEVEL@_cld_oraerp_silver.egp_system_items_b) egp1
                left outer join @DB_LEVEL@_cld_oraerp_silver.ego_item_eff_b item_eff on
                egp1.inventory_item_id = item_eff.inventory_item_id
                AND egp1.organization_id = item_eff.organization_id
                where item_eff.context_code = 'Business Unit Price Control'
                AND upper(item_eff.acd_type) = 'PROD' and attribute_char1='Vertiv Corp'
                and organization_code='999_ITEM_MASTER')pcc on 
                COALESCE(prod.product_num, pm.projectcode, inv.product_num ) = pcc.item_number 
                 and pcc.attribute_char11 is not null				
				
				LEFT OUTER JOIN
                         (SELECT DISTINCT productcommissionclasscode,
                                                    sku,
                                               invoice_number,
                                             sales_office_number,
                                             billtocustomernumber
                         FROM @DB_LEVEL@_edm_gold.f_sales_compensation_hist) f_c on 
                                 f_c.sku = inv.product_num
                             and f_c.invoice_number = inv.invoice_num 
                             and f_c.sales_office_number = inv.sales_office_num
                             and f_c.billtocustomernumber = inv.customer_account_num
				
				left outer join (Select distinct project_id,class_category,class_code from @DB_LEVEL@_ora_alice_silver.alice_pa_project_classes 
                      where class_category = 'Project Category' and  class_code between '110' and '119' ) prc on
                                  pm.projectid = prc.project_id	
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
				on inv.src_system_name = sku_lu.recordsource
				and NVL(inv.product_num,pm.projectcode) = sku_lu.sku
				--new join so-652 starts
				left outer join
				(select * from @DB_LEVEL@_edm_gold.d_regional_legacy_product_catalog 
				where src_system_name='ALICE') rlpc  
				on nvl(inv.product_num,pm.projectcode) = rlpc.product_number
				--new join so-652 ends
				/* New logic added to override GPH fields for list of SKU  ends*/					
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
					nvl(bill_acc.customer_name_txt,bill_acc_leg.account_name) = bill_cust.customername
					AND nvl(bill_acc.src_system_name_join,bill_acc_leg.src_system_name) = bill_cust.recordsource
					AND inv.src_system_name = replace(bill_cust.recordsource,' ','_')
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
					AND nvl(end_acc.src_system_name_join,end_acc_leg.src_system_name  ) = end_cust.recordsource
					AND inv.src_system_name = replace(end_cust.recordsource,' ','_')
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
					nvl(ship_acc.customer_name_txt,ship_acc_leg.account_name) = ship_cust.customername
					AND nvl(ship_acc.src_system_name_join,ship_acc_leg.src_system_name) = ship_cust.recordsource
					AND inv.src_system_name = replace(ship_cust.recordsource,' ','_')
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
ON nvl(bill_acc.customer_number,bill_acc_leg.account_num) = XX.customer_number and nvl(XX.customer_number,'N') != 'N' and inv.src_system_name = xx.src_system_name_join
left Join  @DB_LEVEL@_edm_other_src_silver.Varsdatabase_Sellingmotion h on 
nvl(bill_acc.customer_number,bill_acc_leg.account_num) = h.Business_Nbr	
					
				left outer join @DB_LEVEL@_edm_other_src_silver.ref_customerparentaccounts end_ref on
					        end_cust.parentaccount = end_ref.customer
				LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.parent_account_type pa ON
					end_cust.parentaccount = pa.parent_account
				/*	
				LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.enterprise_industry bill_ind ON
					bill_cust.industry = bill_ind.industry1
				LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.enterprise_industry ship_ind ON
					ship_cust.industry = ship_ind.industry1
				LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.enterprise_industry end_ind ON
					end_cust.industry = end_ind.industry1
				*/	
				LEFT OUTER JOIN 
					(select distinct industry1,customer_type1, enterprise_industry, vertical from
					@DB_LEVEL@_edm_other_src_silver.enterprise_industry) bill_ind ON
					bill_cust.industry = bill_ind.industry1 
				LEFT OUTER JOIN 
					(select distinct industry1,customer_type1, enterprise_industry, vertical from
					@DB_LEVEL@_edm_other_src_silver.enterprise_industry) ship_ind ON
					ship_cust.industry = ship_ind.industry1  
				LEFT OUTER JOIN (select distinct industry1,customer_type1, enterprise_industry, vertical from
					@DB_LEVEL@_edm_other_src_silver.enterprise_industry) end_ind ON
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
					trunc(inv.invoiced_on_dt,
					'dd') >= monthly_exch_rate.eff_from_dtm
					AND trunc(inv.invoiced_on_dt,
					'dd') <= monthly_exch_rate.eff_to_dtm
					AND monthly_exch_rate.from_currency = inv.lcl_currency_cd
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
					trunc(inv.invoiced_on_dt,
					'dd') >= fixed_rate.eff_from_dtm
					AND trunc(inv.invoiced_on_dt,
					'dd') <= fixed_rate.eff_to_dtm
					AND fixed_rate.from_currency = inv.lcl_currency_cd
                LEFT OUTER JOIN (select distinct org_id,inv_org_flg,org_cd from @DB_LEVEL@_edm_gold.d_org where src_system_name ='ALICE') dorg ON
					dorg.org_id = inv.legacy_inventory_org_id
					and inv.src_system_name = 'ALICE'
					and dorg.inv_org_flg = 'Y'					
/* 				LEFT OUTER JOIN (
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
					inv.invoice_num = SHIPD.INVOICE_NBR */
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
				ordr.order_num = SHIPD.order_nbr 
				AND (prod.product_desc = SHIPD.marketing_part_nbr or ordr.product_num = SHIPD.marketing_part_nbr)					
				/* LEFT OUTER JOIN @DB_LEVEL@_raw_les_silver.les_tbl_lbrtsamr_plant les_plant ON
					les_plant.plant_code = SHIPD.shipment_plant */
				LEFT OUTER JOIN @DB_LEVEL@_cld_oraerp_silver.doo_fulfill_lines_all line ON
					CAST(LINE.FULFILL_LINE_ID AS STRING) = ordr.integration_id
					AND ordr.src_system_name = 'ORACLEERPCLOUD'
				-- LEFT OUTER JOIN (
					-- SELECT
						-- DISTINCT office_number,
						-- office_name,
						-- office_location,
						-- office_website,
						-- sales_area,
						-- sales_region,
						-- office_family,
						-- principal_email,
						-- principal
					-- FROM
						-- @DB_LEVEL@_edm_other_src_silver.rep_office_info) roi ON
					--inv.sales_office_name = roi.office_name		  
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
							 AND nvl(inv.product_num,prod.product_num) = fix.ordered_item
							 AND inv.src_system_name = fix.joinrecordsource
					         AND Split_part(ordr.order_detail_line_num, '.', 1) = Cast(fix.line_number AS STRING)   
) a
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
		FROM @DB_LEVEL@_edm_other_src_silver.rep_office_info) roi 
		ON roi.office_location = a.SalesOfficeNumber
		
	left outer join (select distinct office_number,office_name from @DB_LEVEL@_sql_saleswh_silver.supplier_classification) spc
		   on spc.office_number = a.SalesOfficeNumber
		
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
	
) b )dt )tt )st)s1;

-----Query created by pooja for giest data 1/06/2022
-------salesOps requirement----------
insert into @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na 
select 
'' Account_Type,
'' AccountAM,
'' AccountCSM,
'' AccountLead,
'' AccountPresence,
'' AccountServiceSalfes,
'' AccountSubType,
'' AccountType,
'' Activated,
'' account_type_aop,
'' Advanced_Data_Center_Specialization,
'' AnixterGraybarCDWFlag,
'' AOP_Account_Name,
'' AOP_Category,
'' BillToAccountRole,
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
END AS BilltoCustomerAddress,
trim(upper(b.city)) BillToCustomerCity,
trim(upper(b.country)) BillToCustomerCountry,
'' BillToCustomerCustomerType1,
'' BillToCustomerEnterpriseIndustry,
'' BillToCustomerGSC,
'' BillToCustomerIndustry1,
upper(b.attn) BillToCustomerName,
trim(upper(c.custno)) BillToCustomerNumber,
'' BillToCustomerParentAccount,
'' BillToCustomerParentName,
trim(upper(b.zip)) BillToCustomerPostalCode,
upper(b.attn) BillToCustomerStandardizedName,
upper(b.state) BillToCustomerState,
'' BillToCustomerType1,
'' BillToCustomerVertical,
'' BillToEnterpriseIndustry,
'' BillToGSC_Flag,
'' BillToCustomerIndustry1,
'' BillToIndustryCode1,
'' BillToParentAccount,
'' BillToStandardizedName,
'' BSID,
'' ChannelFlag,
'' ChannelProductGrouping,
upper(catl.catalog_lvl_desc_3) COE,
'' Country,
'' CustomerPurchaseOrderNumber,
cast('' as timestamp) CustomerRequestDate,
cast('' as timestamp) Data_Last_Refreshed,
'' DCPowerFinanceParent,
'' DCPowerProfitCenter,
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
'' EndCustomerCustomerType1_2,
'' EndCustomerEnterpriseIndustry,
'' EndCustomerEnterpriseIndustry2,
'' EndCustomerGSC,
'' EndCustomerGSC_Flag,
'' EndCustomerIndustry1,
'' EndCustomerIndustry1,
'' EndCustomerMarket,
upper(s.attn) EndCustomerName,
'' EndCustomerName2,
trim(upper(c.custno)) EndCustomerNumber,
'' EndCustomerParentAccount,
'' EndCustomerParentName,
trim(upper(s.zip)) EndCustomerPostalCode,
'' EndCustomerStandardizedName,
upper(s.state) EndCustomerState,
'' EndCustomerVertical,
cast('' as Double) ExchangeRateUsed,
cast('' as Double) ExtendedListPrice,
cast('' as Double) ExtendedStandardCost,
'' F3,
'' F4,
'' FirstDestinationFlag,
upper(catl.catalog_lvl_desc_1) GBU,
'' GBU_Cleaned,
'' GBU_Cleaned_groups,
'' growth_target,
a.invoice_date InvoiceDate,
'' InvoiceLineNumber,
a.invoice_no InvoiceNumber,
'' LegacySizeCategory,
'' LESBillToMajorClass,
'' LESBillToMinorClass,
'' alicecommissionoverridepercent,
'' LESUnitsFlag,
upper(catl.catalog_lvl_desc_6) Level_6,
nvl(i.nuser4,0) ListPrice,
--'RACK PDU' as LOB,
upper(catl.catalog_lvl_desc_2) LOB,
'' MonthlyCost,
CASE WHEN invoice_qty <> 0 AND sub.no_of_comm <> 0
THEN 
CASE CU.CURR_CODE
        WHEN 'GBP' THEN round((nvl(ad.unit_price,0)  * (nvl(ad.Invoice_Qty,0)) * nvl(et.rate,0)) / SUB.NO_OF_comm,2)
        WHEN 'EUR' THEN round((nvl(ad.unit_price,0)  * (nvl(ad.Invoice_Qty,0)) * nvl(et.rate,0)) / SUB.NO_OF_comm,2)
        WHEN 'CNY' THEN round((nvl(ad.unit_price,0)  * (nvl(ad.Invoice_Qty,0)) * nvl(et.rate,0)) / SUB.NO_OF_comm,2)
        ELSE round((nvl(ad.unit_price,0)  * (nvl(ad.Invoice_Qty,0)) * 1) / SUB.NO_OF_comm,2)
END
ELSE 0
END NetSalesRevenue,---NetSalesRevenue = Ext_Price
'' NewLESCrossRef2,
'' Office_no,
'' office_location,
'' office_website,
'' OrderCoordinator,
o.date_taken OrderCreateDate,
'' PartnerLevelStandardized,
'' PartnerTypeStandardized,
'' PartnerWebFolderID,
'' PartnerWebQuoteNumber,
'' Phone_Area_Code,
'' Phone_Number,
cast(e.id as string) Plant,
'' PlantDescription,
upper(g.primary_category) product_Category,
upper(product_class) product_Family,
'' productHierarchyLevel1Description,
'' productHierarchyLevel2Description,
'' productHierarchyLevel3Description,
'' productHierarchyLevel4Code,
'' productHierarchyLevel4Description,
'' PROShipmentNumber,
CASE WHEN invoice_qty <> 0 AND sub.no_of_comm <> 0
THEN nvl(ad.invoice_qty,0)/nvl(sub.no_of_comm,1)
ELSE 0
END QuantityShipped,
'' QuoteID, 
'' RecordID,
'GEIST' RecordSource,
'' ResellerMajorCode,
'' ResellerMinorCode,
'' ResellerName,
'' ResellerPartnerLevel,
'' ResellerRegion,
'' Right_F3,
'' Right_Right_Country,
'' Right_Right_OFFICE_LOCATION,
'' Sales_Area,
'' Sales_Region,
'' Sales_Territory,
'' SalesDistrictName,
'' SalesDistrictNumber,
'' SalesOfficeFamily,
upper(sa.last_name) SalesOfficeName,
upper(sa.sales_code) SalesOfficeNumber,
'' SalesOfficeNumberJoin,
'' SalesOfficePrincipalEmail,
'' SalesOfficePrincipalName,
upper(sa.first_name) SalesOfficeRegion,
upper(o.orderno) SalesOrderNumber,
'' SalesRegionName,
'' SalesRegionNumber,
'' SalesRepEmail,
'' SalesRepID,
'' SalesRepName,
'' SAPOEMTag,
'' SAPSalesOrganization,
'' Segment,
'' Selling_Motion,
'' SFR_Category,
a.invoice_date ShipDate,
'' ShipmentCarrierName,
'' ShipToAccountRole,
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
trim(upper(s.city)) ShipToCustomerCity,
'' ShipToCustomerCustomerType1,
'' ShipToCustomerEnterpriseIndustry,
'' ShipToCustomerGSC,
'' ShipToCustomerIndustry1,
upper(s.attn) ShipToCustomerName,
trim(upper(c.custno)) ShipToCustomerNumber,
'' ShipToCustomerParentAccount,
'' ShipToCustomerParentName,
trim(upper(s.zip)) ShipToCustomerPostalCode,
'' ShipToCustomerPostalCodeJoin,
'' ShipToCustomerStandardizedName,
upper(s.state) ShipToCustomerState,
'' ShipToCustomerType1,
'' ShipToCustomerVertical,
'' ShipToEnterpriseIndustry,
'' ShipToGSC_Flag,
'' ShipToIndustry1,
'' ShipToParentAccount,
'' ShipToStandardizedName,
'' sizecategory,
--upper(Decode(od.lot_charge_arinvt_id,null,ad.ARINVT_ITEMNO,i.itemno)) SKU,
upper(trim(Decode(od.lot_charge_arinvt_id,null,ad.ARINVT_ITEMNO,i.itemno))) SKU,
 upper(i.DESCRIP)  SKUDescription,
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
'' SMSSiteId,
'' SMSTagNumber,
'' SMSTicketNumber,
'' SoldToCustomerCustomerType1,
'' SoldToCustomerEnterpriseIndustry,
'' SoldToCustomerGSC,
'' SoldToCustomerIndustry1,
'' SoldToCustomerName,
'' SoldToCustomerParentAccount,
'' SoldToCustomerStandardizedName,
'' SoldToCustomerVertical,
'' SourceOrder,
'' SPEED_DIAL,
cast('' as timestamp) YearMonth,
effective_user() as w_insert_by ,
now() as w_insert_dtm ,
'SalesOps' as src_system_name,
'' ResellerNumber,
'' resellerbranchnumber,
'' resellerbranchname,
'' office_type,
'' UOM,
'' sales_order_line_type,
'' Order_type,
'' Invoice_type,
'' Class_code,
'' OEM_FLAG,
'' BillToCustomerClassCode,
'' EndCustomerClassCode,
'' ShipToCustomerClassCode,
'' SoldToCustomerClassCode,
'' BillToCustomerPartnerClassCode,
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
'' SoldToCustomerCity,
'' SoldToCustomerState,
'' BillToCustomerProvince,
'' EndCustomerProvince,
'' ShipToCustomerProvince,
'' SoldToCustomerProvince,
trim(upper(s.country)) ShipToCustomerCountry,
'' SoldToCustomerCountry,
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
'' BillToAccountType,
'' EndAccountType,
'' ShipToAccountType,
'' SoldToAccountType,
---'' productcommissionclasscode,
CASE
		WHEN trim(CAST(com_code.attribute_char11 AS STRING)) = ''
		OR CAST(com_code.attribute_char11 AS STRING) IS NULL THEN 'NA'
		ELSE CAST(com_code.attribute_char11 AS STRING)
END productcommissionclasscode,
	
'Invoice' Measure,
cast(extract (month from a.invoice_date) as int) Calendar_Month,
cast(extract (year from a.invoice_date) as int) Calendar_Year,
upper(CU.CURR_CODE) Local_Currency,
upper(e.company) Sales_Office,
nvl(ad.unit_price,0) Unit_Price,
CASE CU.CURR_CODE
        WHEN 'GBP' THEN nvl(ad.unit_price,0) * nvl(et.rate,0)
        WHEN 'EUR' THEN nvl(ad.unit_price,0) * nvl(et.rate,0)
        WHEN 'CNY' THEN nvl(ad.unit_price,0) * nvl(et.rate,0)
        ELSE nvl(ad.unit_price,0)
END as Unit_Price_FXD_USD,
'' BillToServicesMajorAcc, --so-665 new attributes addition starts
'' EndServicesMajorAcc,
'' ShipToServicesMajorAcc,
'' SoldToServicesMajorAcc, --so-665 new attributes addition ends
'' BillToCustomerSubClass, --so-728 new attributes addition starts
'' EndCustomerSubClass,
'' ShipToCustomerSubClass,
'' SoldToCustomerSubClass  --so-728 new attributes addition ends


FROM @DB_LEVEL@_GEIST_SILVER.GEIST_ARINVOICE_DETAIL AD
LEFT OUTER JOIN @DB_LEVEL@_GEIST_SILVER.GEIST_ARINVOICE A ON AD.ARINVOICE_ID = A.ID 
	LEFT OUTER JOIN @DB_LEVEL@_GEIST_SILVER.GEIST_SHIP_TO S ON AD.EDI_SHIP_TO_ID = S.ID
    LEFT OUTER JOIN @DB_LEVEL@_GEIST_SILVER.GEIST_BILL_TO B ON A.BILL_TO_ID = B.ID
    LEFT OUTER JOIN @DB_LEVEL@_GEIST_SILVER.GEIST_ARCUSTO C ON A.ARCUSTO_ID =C.ID
	LEFT OUTER JOIN @DB_LEVEL@_GEIST_SILVER.GEIST_ARINVT I ON AD.ARINVT_ID = I.ID
	LEFT OUTER JOIN @DB_LEVEL@_GEIST_SILVER.GEIST_ARINVOICE_COMM CM ON AD.ARINVOICE_ID = CM.ID 
	LEFT OUTER JOIN (SELECT ID, ORDERS_ID,LOT_CHARGE_ARINVT_ID FROM @DB_LEVEL@_GEIST_SILVER.GEIST_ORD_DETAIL
                    UNION
                    SELECT ID, ORDERS_ID,LOT_CHARGE_ARINVT_ID FROM @DB_LEVEL@_GEIST_SILVER.GEIST_HIST_ORD_DETAIL) OD ON AD.ORD_DETAIL_ID = OD.ID 
    LEFT OUTER JOIN (SELECT ID, ORDERNO, DATE_TAKEN, EPLANT_ID FROM @DB_LEVEL@_GEIST_SILVER.GEIST_ORDERS
                    UNION
                    SELECT ID, ORDERNO, DATE_TAKEN, EPLANT_ID FROM @DB_LEVEL@_GEIST_SILVER.GEIST_HIST_ORDERS) O ON OD.ORDERS_ID = O.ID
	LEFT OUTER JOIN @DB_LEVEL@_GEIST_SILVER.GEIST_CURRENCY CU ON A.CURRENCY_ID = CU.ID
    LEFT OUTER JOIN(SELECT AA.RATE,AA.EFF_TO_DTM,AA.EFF_FROM_DTM,AA.FROM_CURRENCY
					FROM 
					(SELECT R.RATE,R.EFF_TO_DTM,R.EFF_FROM_DTM,R.FROM_CURRENCY,
					ROW_NUMBER() OVER (PARTITION BY R.FROM_CURRENCY,R.TO_CURRENCY ORDER BY R.EFF_TO_DTM DESC ) RNO
					FROM @DB_LEVEL@_EDM_GOLD.D_XRATE R
					WHERE R.FROM_CURRENCY = 'GBP'
					AND R.TO_CURRENCY = 'USD')AA WHERE AA.RNO=1
					UNION ALL
					SELECT BB.RATE,BB.EFF_TO_DTM,BB.EFF_FROM_DTM,BB.FROM_CURRENCY
					FROM
					(SELECT R.RATE,R.EFF_TO_DTM,R.EFF_FROM_DTM,R.FROM_CURRENCY,
					ROW_NUMBER() OVER (PARTITION BY R.FROM_CURRENCY,R.TO_CURRENCY ORDER BY R.EFF_TO_DTM DESC ) RNO
					FROM @DB_LEVEL@_EDM_GOLD.D_XRATE R
					WHERE R.FROM_CURRENCY = 'EUR'
					AND R.TO_CURRENCY = 'USD')BB WHERE BB.RNO=1
					UNION ALL
					SELECT CB.RATE,CB.EFF_TO_DTM,CB.EFF_FROM_DTM,CB.FROM_CURRENCY
					FROM
					(SELECT R.RATE,R.EFF_TO_DTM,R.EFF_FROM_DTM,R.FROM_CURRENCY,
					ROW_NUMBER() OVER (PARTITION BY R.FROM_CURRENCY,R.TO_CURRENCY ORDER BY R.EFF_TO_DTM DESC ) RNO
					FROM @DB_LEVEL@_EDM_GOLD.D_XRATE R
					WHERE
					R.FROM_CURRENCY = 'CNY'
					AND R.TO_CURRENCY = 'USD')CB WHERE CB.RNO=1
					) ET
					 ON CU.CURR_CODE = ET.FROM_CURRENCY
	LEFT OUTER JOIN @DB_LEVEL@_GEIST_SILVER.GEIST_G_ARINVT_TECH_INFO G ON AD.ARINVT_ID = G.ARINVT_ID
    LEFT OUTER JOIN @DB_LEVEL@_GEIST_SILVER.GEIST_ORD_DETAIL_COMMISSIONS ODC ON OD.ID = ODC.ORD_DETAIL_ID
    LEFT OUTER JOIN @DB_LEVEL@_GEIST_SILVER.GEIST_SALESPEOPLE SA ON ODC.SALESPEOPLE_ID= SA.ID
	LEFT OUTER JOIN @DB_LEVEL@_GEIST_SILVER.GEIST_EPLANT E ON O.EPLANT_ID = E.ID
	LEFT OUTER JOIN (SELECT ORD_DETAIL_ID, COUNT(ORD_DETAIL_ID) AS NO_OF_COMM FROM @DB_LEVEL@_GEIST_SILVER.GEIST_ORD_DETAIL_COMMISSIONS ODC group BY ORD_DETAIL_ID) SUB ON OD.ID = SUB.ORD_DETAIL_ID
	--LEFT OUTER JOIN (SELECT ARINVOICE_DETAIL_ID, COUNT(ARINVOICE_DETAIL_ID) AS NO_OF_COMM FROM @DB_LEVEL@_GEIST_SILVER.GEIST_ARINVOICE_COMM GROUP BY ARINVOICE_DETAIL_ID) SUB ON AD.ID = SUB.ARINVOICE_DETAIL_ID
	LEFT OUTER JOIN @DB_LEVEL@_EDM_GOLD.D_PRODUCT PRO ON
	UPPER(TRIM(I.ITEMNO))=PRO.PART_NUM
	LEFT OUTER JOIN @DB_LEVEL@_EDM_GOLD.D_PRODUCT_CATALOG CATL ON
	PRO.ROW_WID = CATL.PRODUCT_WID	
	---new join for productcommissionclasscode 
	LEFT OUTER JOIN (
	SELECT * FROM
		(SELECT * FROM
			(SELECT EGP1.ORGANIZATION_CODE,EGP1.DESCRIPTION,EGP1.ITEM_NUMBER,ROW_NUMBER() OVER (PARTITION BY ITEM_EFF.INVENTORY_ITEM_ID,ITEM_EFF.ORGANIZATION_ID,ITEM_EFF.CONTEXT_CODE
			ORDER BY ITEM_EFF.LAST_UPDATE_DATE DESC) ROWNUM,item_eff.*
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
	AND upper(trim(COM_CODE.ITEM_NUMBER)) = upper(trim(Decode(od.lot_charge_arinvt_id,null,ad.ARINVT_ITEMNO,i.itemno)))
	
	WHERE TRIM(C.CUSTNO) NOT IN ('LIEBERT','LBRTORACLE','V100','V1032')
	AND NOT(TRIM(I.ITEMNO) IN ('FREIGHT','GEIST NOTES','ITW NOTES','ITWFREIGHT','SEE'))
	AND EXTRACT (YEAR FROM O.DATE_TAKEN) > 2017
	AND ((TRIM(C.CUSTNO) NOT IN ('GA777','GT50') AND O.EPLANT_ID=3)
		OR (TRIM(C.CUSTNO) NOT IN ('GE-GEI03') AND O.EPLANT_ID=6)
		OR O.EPLANT_ID IN (5))
	AND e.company IN ('Vertiv Corporation', 'Vertiv Canada', 'Vertiv Canada ULC');

compute stats @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na;


4. populate_alice_commn_temp_tbl

---Back up of invoice table being created.

insert overwrite @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_bkp 
select * from @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na;


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
   AND CAST(Split_Percent AS DOUBLE) > 0   
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




---Splitting the Alice commissions data and storing it in the table:- sales_exploration_alice_commn_temp_na



insert overwrite @DB_LEVEL@_na_cld_osc_gold.sales_exploration_alice_commn_temp_na
select distinct * from 
(
WITH SPLIT_NULLS AS 
(
select
	distinct inv.account_type ,
	inv.accountam ,
	inv.accountcsm ,
	inv.accountlead ,
	inv.accountpresence ,
	inv.accountservicesalfes ,
	inv.accountsubtype ,
	inv.accounttype ,
	inv.activated ,
	inv.account_type_aop ,
	inv.advanced_data_center_specialization ,
	inv.anixtergraybarcdwflag ,
	inv.aop_account_name ,
	inv.aop_category ,
	inv.billtoaccountrole ,
	inv.billtocustomeraddress ,
	inv.billtocustomercity ,
	inv.billtocustomercountry ,
	inv.billtocustomercustomertype1 ,
	inv.billtocustomerenterpriseindustry ,
	inv.billtocustomergsc ,
	inv.billtocustomerindustry1 ,
	inv.billtocustomername ,
	inv.billtocustomernumber ,
	inv.billtocustomerparentaccount ,
	inv.billtocustomerparentname ,
	inv.billtocustomerpostalcode ,
	inv.billtocustomerstandardizedname ,
	inv.billtocustomerstate ,
	inv.billtocustomertype1 ,
	inv.billtocustomervertical ,
	inv.billtoenterpriseindustry ,
	inv.billtogsc_flag ,
	inv.billtoindustry1 ,
	inv.billtoindustrycode1 ,
	inv.billtoparentaccount ,
	inv.billtostandardizedname ,
	inv.bsid ,
	inv.channelflag ,
	inv.channelproductgrouping ,
	inv.coe ,
	inv.country ,
	inv.customerpurchaseordernumber ,
	inv.customerrequestdate ,
	inv.data_last_refreshed ,
	inv.dcpowerfinanceparent ,
	inv.dcpowerprofitcenter ,
	inv.endcustomeraccountrole ,
	inv.endcustomeraddress ,
	inv.endcustomercity ,
	inv.endcustomercountry ,
	inv.endcustomercustomertype1 ,
	inv.endcustomercustomertype1_2 ,
	inv.endcustomerenterpriseindustry ,
	inv.endcustomerenterpriseindustry2 ,
	inv.endcustomergsc ,
	inv.endcustomergsc_flag ,
	inv.endcustomerindustry ,
	inv.endcustomerindustry1 ,
	inv.endcustomermarket ,
	inv.endcustomername ,
	inv.endcustomername2 ,
	inv.endcustomernumber ,
	inv.endcustomerparentaccount ,
	inv.endcustomerparentname ,
	inv.endcustomerpostalcode ,
	inv.endcustomerstandardizedname ,
	inv.endcustomerstate ,
	inv.endcustomervertical ,
	inv.exchangerateused ,
	inv.extendedlistprice ,
	inv.extendedstandardcost ,
	inv.f3 ,
	inv.f4 ,
	inv.firstdestinationflag ,
	inv.gbu ,
	inv.gbu_cleaned ,
	inv.gbu_cleaned_groups ,
	inv.growth_target ,
	inv.invoicedate ,
	inv.invoicelinenumber ,
	inv.invoicenumber ,
	inv.legacysizecategory ,
	inv.lesbilltomajorclass ,
	inv.lesbilltominorclass ,
	cast(comm.split_percent as string) alicecommissionoverridepercent,
	inv.lesunitsflag ,
	inv.level_6 ,
	inv.listprice ,
	/* CASE 
		WHEN inv.lob IN ('AC POWER','ENERGY STORAGE') then 'AC_POWER'
		WHEN inv.lob IN ('RACKS','EDGE THERMAL','IT SYSTEMS','GLOBAL EDGE SYSTEMS','1 PHASE UPS','RACK PDU') then 'CHANNEL'
		WHEN inv.lob = 'DC POWER' then 'DC_POWER'
		WHEN inv.lob = 'DIGITAL ECOSYSTEM' then 'MONITORING'
		WHEN inv.lob IN ('TARRIF SURCHARGE','GENERAL SURCHARGE','NOT APPLICABLE') then 'NO_COMM'		
		WHEN inv.lob IN ('SERVICES','PARTS','DC POWER SERVICES','VERTIV SERVICES','PROJECT SERVICES','SERVICE AND SOFTWARE SOLUTIONS','SOFTWARE & SOLUTIONS COE','SOFTWARE SOLUTIONS','REGIONAL SERVICES' ) then 'SERVICES'
		WHEN inv.lob IN ('IMS - ENG & 3RD PARTY','IMS/CUSTOM') then 'SOLUTIONS'
		WHEN inv.lob = 'THERMAL' then 'THERMAL'
		WHEN inv.lob IN ('GLOBAL SOLUTIONS','DEFAULT','COMPONENT','EXCLUDE','CUSTOM SKU','QSKU','REGIONAL BUSINESSES','SERVICES & SOFTWARE SOLUTIONS') then NULL		
		--WHEN inv.lob = 'DEFAULT' then 'ORDER_DEFAULT'		
		ELSE REPLACE(inv.lob,' ','_')	
	END lob , */
	inv.lob,
	inv.monthlycost ,
	inv.netsalesrevenue ,
	inv.newlescrossref2 ,
	inv.office_no ,
	inv.office_location ,
	inv.office_website ,
	inv.ordercoordinator ,
	inv.ordercreatedate ,
	inv.partnerlevelstandardized ,
	inv.partnertypestandardized ,
	inv.partnerwebfolderid ,
	inv.partnerwebquotenumber ,
	inv.phone_area_code ,
	inv.phone_number ,
	inv.plant ,
	inv.plantdescription ,
	inv.product_category ,
	inv.product_family ,
	inv.producthierarchylevel1description ,
	inv.producthierarchylevel2description ,
	inv.producthierarchylevel3description ,
	inv.producthierarchylevel4code ,
	inv.producthierarchylevel4description ,
	inv.proshipmentnumber ,
	inv.quantityshipped ,
	inv.quoteid ,
	inv.recordid ,
	inv.recordsource ,
	inv.resellermajorcode ,
	inv.resellerminorcode ,
	inv.resellername ,
	inv.resellerpartnerlevel ,
	inv.resellerregion ,
	inv.right_f3 ,
	inv.right_right_country ,
	inv.right_right_office_location ,
	inv.sales_area ,
	inv.sales_region ,
	inv.sales_territory ,
	inv.salesdistrictname ,
	inv.salesdistrictnumber ,
	inv.salesofficefamily ,
	inv.salesofficename ,
	inv.salesofficenumber ,
	inv.salesofficenumberjoin ,
	inv.salesofficeprincipalemail ,
	inv.salesofficeprincipalname ,
	inv.salesofficeregion ,
	inv.salesordernumber ,
	inv.salesregionname ,
	inv.salesregionnumber ,
	--inv.salesrepemail ,
	comm.participant_email as salesrepemail ,
	--inv.salesrepid ,
	comm.salesrepnumber as salesrepid,
	--inv.salesrepname ,
	comm.sales_rep_name as salesrepname ,
	inv.sapoemtag ,
	inv.sapsalesorganization ,
	inv.segment ,
	inv.selling_motion ,
	inv.sfr_category ,
	inv.shipdate ,
	inv.shipmentcarriername ,
	inv.shiptoaccountrole ,
	inv.shiptocustomeraddress ,
	inv.shiptocustomercity ,
	inv.shiptocustomercustomertype1 ,
	inv.shiptocustomerenterpriseindustry ,
	inv.shiptocustomergsc ,
	inv.shiptocustomerindustry1 ,
	inv.shiptocustomername ,
	inv.shiptocustomernumber ,
	inv.shiptocustomerparentaccount ,
	inv.shiptocustomerparentname ,
	inv.shiptocustomerpostalcode ,
	inv.shiptocustomerpostalcodejoin ,
	inv.shiptocustomerstandardizedname ,
	inv.shiptocustomerstate ,
	inv.shiptocustomertype1 ,
	inv.shiptocustomervertical ,
	inv.shiptoenterpriseindustry ,
	inv.shiptogsc_flag ,
	inv.shiptoindustry1 ,
	inv.shiptoparentaccount ,
	inv.shiptostandardizedname ,
	inv.sizecategory ,
	inv.sku ,
	inv.skudescription ,
	inv.smsbatteriesonlyflag ,
	inv.smsbatteryrbsm ,
	inv.smscontractenddate ,
	inv.smscontractexpiredate ,
	inv.smscontractpms ,
	inv.smscontractsequence ,
	inv.smscontractstartdate ,
	inv.smscontractstatus ,
	inv.smscustomertype ,
	inv.smsequipmentsegment ,
	inv.smssiteid ,
	inv.smstagnumber ,
	inv.smsticketnumber ,
	inv.soldtocustomercustomertype1 ,
	inv.soldtocustomerenterpriseindustry ,
	inv.soldtocustomergsc ,
	inv.soldtocustomerindustry1 ,
	inv.soldtocustomername ,
	inv.soldtocustomerparentaccount ,
	inv.soldtocustomerstandardizedname ,
	inv.soldtocustomervertical ,
	inv.sourceorder ,
	inv.speed_dial ,
	inv.yearmonth ,
	inv.w_insert_by ,
	inv.w_insert_dtm ,
	inv.src_system_name ,
	inv.resellernumber ,
	inv.resellerbranchnumber,
	inv.resellerbranchname,
	inv.office_type,
	inv.uom,
	inv.sales_order_line_type,
	inv.Order_type,
	inv.Invoice_type
from
(select *
from @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_bkp where recordsource='ALICE' ) inv
LEFT OUTER JOIN 
(select
	oe.order_number,
	ca.orcl_erp_ordernumber_t,
	ca.transactionid_t quoteid ,
	ca.bs_id
from
	@DB_LEVEL@_cld_cpq_silver.cpq_quote_headers ca
join
@DB_LEVEL@_ora_alice_silver.alice_oe_order_headers_all oe on
	oe.orig_sys_document_ref = ca.transactionid_t) cqh
on inv.salesordernumber=cast(cqh.order_number as STRING)
LEFT OUTER JOIN
(
select
	distinct quotenumber,sales_office_number,
	sales_office_name ,split_percent,commission_allocation ,lob_group,internal_office_principal_email,
	sales_office_region,repfix.emailaddress as participant_email ,sales_rep_name,salesrepnumber
from
	@DB_LEVEL@_edm_other_src_silver.cpq_commission_split_tbl cst
	---- New Code to Fix Sales Rep ID and Rep Emailso we do not have to fix table
	LEFT JOIN (select distinct emailaddress,fullname,officenumber,salesrepnumber,region from @DB_LEVEL@_cld_cpq_silver.cpq_dt_salesrepdetails ) REPFIX 
	on upper(CST.sales_rep_name) =upper(REPFIX.fullname) and cst.sales_office_number=repfix.officenumber-- and CST.sales_office_region=repfix.region
)comm on 
(
(cqh.quoteid=comm.quotenumber 
and CASE 
	WHEN inv.lob IN ('AC POWER','ENERGY STORAGE') then 'AC_POWER'
	WHEN inv.lob IN ('RACKS','EDGE THERMAL','IT SYSTEMS','GLOBAL EDGE SYSTEMS','1 PHASE UPS','RACK PDU') then 'CHANNEL'
	WHEN inv.lob = 'DC POWER' then 'DC_POWER'
	WHEN inv.lob = 'DIGITAL ECOSYSTEM' then 'MONITORING'
	WHEN inv.lob IN ('TARRIF SURCHARGE','GENERAL SURCHARGE','NOT APPLICABLE') then 'NO_COMM'		
	WHEN inv.lob IN ('SERVICES','PARTS','DC POWER SERVICES','VERTIV SERVICES','PROJECT SERVICES','SERVICE AND SOFTWARE SOLUTIONS','SOFTWARE & SOLUTIONS COE','SOFTWARE SOLUTIONS','REGIONAL SERVICES' ) then 'SERVICES'
	WHEN inv.lob IN ('IMS - ENG & 3RD PARTY','IMS/CUSTOM') then 'SOLUTIONS'
	WHEN inv.lob = 'THERMAL' then 'THERMAL'
	WHEN inv.lob IN ('GLOBAL SOLUTIONS','DEFAULT','COMPONENT','EXCLUDE','CUSTOM SKU','QSKU','REGIONAL BUSINESSES','SERVICES & SOFTWARE SOLUTIONS') then NULL
	--WHEN lob = 'DEFAULT' then 'ORDER_DEFAULT'		
	ELSE REPLACE(inv.lob,' ','_')	
END = comm.lob_group
and inv.salesofficenumber=comm.sales_office_number) 
OR
(
cqh.quoteid=comm.quotenumber
and inv.salesofficenumber=comm.sales_office_number
and comm.lob_group is null and cast(comm.split_percent as string) ='100'
)
)
)
-------------
select c.* from 
(SELECT *
FROM SPLIT_NULLS
where alicecommissionoverridepercent is null
) c
where 0=
(
select count(*) from 
(select distinct b.salesordernumber,b.invoicelinenumber,comm.sales_office_number
--b.*,comm.sales_office_number,comm.split_percent
from 
(select a.salesordernumber salesordernumber1,
	   cqh.quoteid as quoteid_new,
		CASE 
			WHEN a.lob IN ('AC POWER','ENERGY STORAGE') then 'AC_POWER'
			WHEN a.lob IN ('RACKS','EDGE THERMAL','IT SYSTEMS','GLOBAL EDGE SYSTEMS','1 PHASE UPS','RACK PDU') then 'CHANNEL'
			WHEN a.lob = 'DC POWER' then 'DC_POWER'
			WHEN a.lob = 'DIGITAL ECOSYSTEM' then 'MONITORING'
			WHEN a.lob IN ('TARRIF SURCHARGE','GENERAL SURCHARGE','NOT APPLICABLE') then 'NO_COMM'		
			WHEN a.lob IN ('SERVICES','PARTS','DC POWER SERVICES','VERTIV SERVICES','PROJECT SERVICES','SERVICE AND SOFTWARE SOLUTIONS','SOFTWARE & SOLUTIONS COE','SOFTWARE SOLUTIONS','REGIONAL SERVICES' ) then 'SERVICES'
			WHEN a.lob IN ('IMS - ENG & 3RD PARTY','IMS/CUSTOM') then 'SOLUTIONS'
			WHEN a.lob = 'THERMAL' then 'THERMAL'
			WHEN a.lob IN ('GLOBAL SOLUTIONS','DEFAULT','COMPONENT','EXCLUDE','CUSTOM SKU','QSKU','REGIONAL BUSINESSES','SERVICES & SOFTWARE SOLUTIONS') then NULL
			--WHEN lob = 'DEFAULT' then 'ORDER_DEFAULT'		
			ELSE REPLACE(a.lob,' ','_')	
		END lob_new ,
		a.lob lob_orig,
		a.* from 
(SELECT *
FROM SPLIT_NULLS
) a 
left JOIN 
(select distinct 
	oe.order_number,
	ca.transactionid_t quoteid
from
	@DB_LEVEL@_cld_cpq_silver.cpq_quote_headers ca
join
@DB_LEVEL@_ora_alice_silver.alice_oe_order_headers_all oe on
oe.orig_sys_document_ref = ca.transactionid_t
) cqh
on a.salesordernumber=cast(cqh.order_number as STRING)
)b LEFT OUTER JOIN
(
select
	distinct quotenumber,sales_office_number,
	sales_office_name ,split_percent,commission_allocation ,lob_group,internal_office_principal_email,
	sales_office_region,repfix.emailaddress as participant_email ,sales_rep_name,salesrepnumber
from
	@DB_LEVEL@_edm_other_src_silver.cpq_commission_split_tbl cst
	---- New Code to Fix Sales Rep ID and Rep Emailso we do not have to fix table
	LEFT JOIN (select distinct emailaddress,fullname,officenumber,salesrepnumber,region from @DB_LEVEL@_cld_cpq_silver.cpq_dt_salesrepdetails ) REPFIX 
	on upper(CST.sales_rep_name) =upper(REPFIX.fullname) and cst.sales_office_number=repfix.officenumber-- and CST.sales_office_region=repfix.region
)comm on 
b.quoteid_new=comm.quotenumber and b.lob_new= comm.lob_group
)e where c.salesordernumber = e.salesordernumber and c.invoicelinenumber=e.invoicelinenumber
)
UNION
(SELECT * FROM SPLIT_NULLS where alicecommissionoverridepercent is not null )
UNION
/* Bringing in the split commission data   */
select distinct 
inv_final.account_type ,
inv_final.accountam ,
inv_final.accountcsm ,
inv_final.accountlead ,
inv_final.accountpresence ,
inv_final.accountservicesalfes ,
inv_final.accountsubtype ,
inv_final.accounttype ,
inv_final.activated ,
inv_final.account_type_aop ,
inv_final.advanced_data_center_specialization ,
inv_final.anixtergraybarcdwflag ,
inv_final.aop_account_name ,
inv_final.aop_category ,
inv_final.billtoaccountrole ,
inv_final.billtocustomeraddress ,
inv_final.billtocustomercity ,
inv_final.billtocustomercountry ,
inv_final.billtocustomercustomertype1 ,
inv_final.billtocustomerenterpriseindustry ,
inv_final.billtocustomergsc ,
inv_final.billtocustomerindustry1 ,
inv_final.billtocustomername ,
inv_final.billtocustomernumber ,
inv_final.billtocustomerparentaccount ,
inv_final.billtocustomerparentname ,
inv_final.billtocustomerpostalcode ,
inv_final.billtocustomerstandardizedname ,
inv_final.billtocustomerstate ,
inv_final.billtocustomertype1 ,
inv_final.billtocustomervertical ,
inv_final.billtoenterpriseindustry ,
inv_final.billtogsc_flag ,
inv_final.billtoindustry1 ,
inv_final.billtoindustrycode1 ,
inv_final.billtoparentaccount ,
inv_final.billtostandardizedname ,
inv_final.bsid ,
inv_final.channelflag ,
inv_final.channelproductgrouping ,
inv_final.coe ,
inv_final.country ,
inv_final.customerpurchaseordernumber ,
inv_final.customerrequestdate ,
inv_final.data_last_refreshed ,
inv_final.dcpowerfinanceparent ,
inv_final.dcpowerprofitcenter ,
inv_final.endcustomeraccountrole ,
inv_final.endcustomeraddress ,
inv_final.endcustomercity ,
inv_final.endcustomercountry ,
inv_final.endcustomercustomertype1 ,
inv_final.endcustomercustomertype1_2 ,
inv_final.endcustomerenterpriseindustry ,
inv_final.endcustomerenterpriseindustry2 ,
inv_final.endcustomergsc ,
inv_final.endcustomergsc_flag ,
inv_final.endcustomerindustry ,
inv_final.endcustomerindustry1 ,
inv_final.endcustomermarket ,
inv_final.endcustomername ,
inv_final.endcustomername2 ,
inv_final.endcustomernumber ,
inv_final.endcustomerparentaccount ,
inv_final.endcustomerparentname ,
inv_final.endcustomerpostalcode ,
inv_final.endcustomerstandardizedname ,
inv_final.endcustomerstate ,
inv_final.endcustomervertical ,
inv_final.exchangerateused ,
inv_final.extendedlistprice ,
inv_final.extendedstandardcost ,
inv_final.f3 ,
inv_final.f4 ,
inv_final.firstdestinationflag ,
inv_final.gbu ,
inv_final.gbu_cleaned ,
inv_final.gbu_cleaned_groups ,
inv_final.growth_target ,
inv_final.invoicedate ,
inv_final.invoicelinenumber ,
inv_final.invoicenumber ,
inv_final.legacysizecategory ,
inv_final.lesbilltomajorclass ,
inv_final.lesbilltominorclass ,
cast(comm.split_percent as string) alicecommissionoverridepercent,
inv_final.lesunitsflag ,
inv_final.level_6 ,
inv_final.listprice ,
inv_final.gph_lob lob,
inv_final.monthlycost ,
inv_final.netsalesrevenue ,
inv_final.newlescrossref2 ,
inv_final.office_no ,
inv_final.office_location ,
inv_final.office_website ,
inv_final.ordercoordinator ,
inv_final.ordercreatedate ,
inv_final.partnerlevelstandardized ,
inv_final.partnertypestandardized ,
inv_final.partnerwebfolderid ,
inv_final.partnerwebquotenumber ,
inv_final.phone_area_code ,
inv_final.phone_number ,
inv_final.plant ,
inv_final.plantdescription ,
inv_final.product_category ,
inv_final.product_family ,
inv_final.producthierarchylevel1description ,
inv_final.producthierarchylevel2description ,
inv_final.producthierarchylevel3description ,
inv_final.producthierarchylevel4code ,
inv_final.producthierarchylevel4description ,
inv_final.proshipmentnumber ,
inv_final.quantityshipped ,
inv_final.quoteid ,
inv_final.recordid ,
inv_final.recordsource ,
inv_final.resellermajorcode ,
inv_final.resellerminorcode ,
inv_final.resellername ,
inv_final.resellerpartnerlevel ,
inv_final.resellerregion ,
inv_final.right_f3 ,
inv_final.right_right_country ,
inv_final.right_right_office_location ,
inv_final.sales_area ,
inv_final.sales_region ,
inv_final.sales_territory ,
inv_final.salesdistrictname ,
inv_final.salesdistrictnumber ,
inv_final.salesofficefamily ,
comm.sales_office_name salesofficename ,
comm.sales_office_number salesofficenumber ,
inv_final.salesofficenumberjoin ,
comm.internal_office_principal_email as salesofficeprincipalemail ,
inv_final.salesofficeprincipalname ,
inv_final.salesofficeregion ,
inv_final.salesordernumber ,
comm.sales_office_region as salesregionname ,
inv_final.salesregionnumber ,
comm.participant_email as salesrepemail ,
--inv_final.salesrepid ,
comm.salesrepnumber as salesrepid,
comm.sales_rep_name as salesrepname ,
inv_final.sapoemtag ,
inv_final.sapsalesorganization ,
inv_final.segment ,
inv_final.selling_motion ,
inv_final.sfr_category ,
inv_final.shipdate ,
inv_final.shipmentcarriername ,
inv_final.shiptoaccountrole ,
inv_final.shiptocustomeraddress ,
inv_final.shiptocustomercity ,
inv_final.shiptocustomercustomertype1 ,
inv_final.shiptocustomerenterpriseindustry ,
inv_final.shiptocustomergsc ,
inv_final.shiptocustomerindustry1 ,
inv_final.shiptocustomername ,
inv_final.shiptocustomernumber ,
inv_final.shiptocustomerparentaccount ,
inv_final.shiptocustomerparentname ,
inv_final.shiptocustomerpostalcode ,
inv_final.shiptocustomerpostalcodejoin ,
inv_final.shiptocustomerstandardizedname ,
inv_final.shiptocustomerstate ,
inv_final.shiptocustomertype1 ,
inv_final.shiptocustomervertical ,
inv_final.shiptoenterpriseindustry ,
inv_final.shiptogsc_flag ,
inv_final.shiptoindustry1 ,
inv_final.shiptoparentaccount ,
inv_final.shiptostandardizedname ,
inv_final.sizecategory ,
inv_final.sku ,
inv_final.skudescription ,
inv_final.smsbatteriesonlyflag ,
inv_final.smsbatteryrbsm ,
inv_final.smscontractenddate ,
inv_final.smscontractexpiredate ,
inv_final.smscontractpms ,
inv_final.smscontractsequence ,
inv_final.smscontractstartdate ,
inv_final.smscontractstatus ,
inv_final.smscustomertype ,
inv_final.smsequipmentsegment ,
inv_final.smssiteid ,
inv_final.smstagnumber ,
inv_final.smsticketnumber ,
inv_final.soldtocustomercustomertype1 ,
inv_final.soldtocustomerenterpriseindustry ,
inv_final.soldtocustomergsc ,
inv_final.soldtocustomerindustry1 ,
inv_final.soldtocustomername ,
inv_final.soldtocustomerparentaccount ,
inv_final.soldtocustomerstandardizedname ,
inv_final.soldtocustomervertical ,
inv_final.sourceorder ,
inv_final.speed_dial ,
inv_final.yearmonth ,
inv_final.w_insert_by ,
inv_final.w_insert_dtm ,
inv_final.src_system_name ,
inv_final.resellernumber ,
inv_final.resellerbranchnumber,
inv_final.resellerbranchname,
inv_final.office_type,
inv_final.uom,
inv_final.sales_order_line_type,
inv_final.Order_type,
inv_final.Invoice_type
from 
(select
	distinct inv.*,CPQ_quoteid
	--cqh.quoteid
from
(select account_type ,
accountam ,
accountcsm ,
accountlead ,
accountpresence ,
accountservicesalfes ,
accountsubtype ,
accounttype ,
activated ,
account_type_aop ,
advanced_data_center_specialization ,
anixtergraybarcdwflag ,
aop_account_name ,
aop_category ,
billtoaccountrole ,
billtocustomeraddress ,
billtocustomercity ,
billtocustomercountry ,
billtocustomercustomertype1 ,
billtocustomerenterpriseindustry ,
billtocustomergsc ,
billtocustomerindustry1 ,
billtocustomername ,
billtocustomernumber ,
billtocustomerparentaccount ,
billtocustomerparentname ,
billtocustomerpostalcode ,
billtocustomerstandardizedname ,
billtocustomerstate ,
billtocustomertype1 ,
billtocustomervertical ,
billtoenterpriseindustry ,
billtogsc_flag ,
billtoindustry1 ,
billtoindustrycode1 ,
billtoparentaccount ,
billtostandardizedname ,
bsid ,
channelflag ,
channelproductgrouping ,
coe ,
country ,
customerpurchaseordernumber ,
customerrequestdate ,
data_last_refreshed ,
dcpowerfinanceparent ,
dcpowerprofitcenter ,
endcustomeraccountrole ,
endcustomeraddress ,
endcustomercity ,
endcustomercountry ,
endcustomercustomertype1 ,
endcustomercustomertype1_2 ,
endcustomerenterpriseindustry ,
endcustomerenterpriseindustry2 ,
endcustomergsc ,
endcustomergsc_flag ,
endcustomerindustry ,
endcustomerindustry1 ,
endcustomermarket ,
endcustomername ,
endcustomername2 ,
endcustomernumber ,
endcustomerparentaccount ,
endcustomerparentname ,
endcustomerpostalcode ,
endcustomerstandardizedname ,
endcustomerstate ,
endcustomervertical ,
exchangerateused ,
extendedlistprice ,
extendedstandardcost ,
f3 ,
f4 ,
firstdestinationflag ,
gbu ,
gbu_cleaned ,
gbu_cleaned_groups ,
growth_target ,
invoicedate ,
invoicelinenumber ,
invoicenumber ,
legacysizecategory ,
lesbilltomajorclass ,
lesbilltominorclass ,
alicecommissionoverridepercent ,
lesunitsflag ,
level_6 ,
listprice ,
	CASE 
		WHEN lob IN ('AC POWER','ENERGY STORAGE') then 'AC_POWER'
		WHEN lob IN ('RACKS','EDGE THERMAL','IT SYSTEMS','GLOBAL EDGE SYSTEMS','1 PHASE UPS','RACK PDU') then 'CHANNEL'
		WHEN lob = 'DC POWER' then 'DC_POWER'
		WHEN lob = 'DIGITAL ECOSYSTEM' then 'MONITORING'
		WHEN lob IN ('TARRIF SURCHARGE','GENERAL SURCHARGE','NOT APPLICABLE') then 'NO_COMM'		
		WHEN lob IN ('SERVICES','PARTS','DC POWER SERVICES','VERTIV SERVICES','PROJECT SERVICES','SERVICE AND SOFTWARE SOLUTIONS','SOFTWARE & SOLUTIONS COE','SOFTWARE SOLUTIONS','REGIONAL SERVICES' ) then 'SERVICES'
		WHEN lob IN ('IMS - ENG & 3RD PARTY','IMS/CUSTOM') then 'SOLUTIONS'
		WHEN lob = 'THERMAL' then 'THERMAL'
		WHEN lob IN ('GLOBAL SOLUTIONS','DEFAULT','COMPONENT','EXCLUDE','CUSTOM SKU','QSKU','REGIONAL BUSINESSES','SERVICES & SOFTWARE SOLUTIONS') then NULL
		--WHEN lob = 'DEFAULT' then 'ORDER_DEFAULT'		
		ELSE REPLACE(lob,' ','_')	
	END lob ,
lob as gph_lob,
monthlycost ,
netsalesrevenue ,
newlescrossref2 ,
office_no ,
office_location ,
office_website ,
ordercoordinator ,
ordercreatedate ,
partnerlevelstandardized ,
partnertypestandardized ,
partnerwebfolderid ,
partnerwebquotenumber ,
phone_area_code ,
phone_number ,
plant ,
plantdescription ,
product_category ,
product_family ,
producthierarchylevel1description ,
producthierarchylevel2description ,
producthierarchylevel3description ,
producthierarchylevel4code ,
producthierarchylevel4description ,
proshipmentnumber ,
quantityshipped ,
quoteid ,
recordid ,
recordsource ,
resellermajorcode ,
resellerminorcode ,
resellername ,
resellerpartnerlevel ,
resellerregion ,
right_f3 ,
right_right_country ,
right_right_office_location ,
sales_area ,
sales_region ,
sales_territory ,
salesdistrictname ,
salesdistrictnumber ,
salesofficefamily ,
salesofficename ,
salesofficenumber ,
salesofficenumberjoin ,
salesofficeprincipalemail ,
salesofficeprincipalname ,
salesofficeregion ,
salesordernumber ,
salesregionname ,
salesregionnumber ,
salesrepemail ,
salesrepid ,
salesrepname ,
sapoemtag ,
sapsalesorganization ,
segment ,
selling_motion ,
sfr_category ,
shipdate ,
shipmentcarriername ,
shiptoaccountrole ,
shiptocustomeraddress ,
shiptocustomercity ,
shiptocustomercustomertype1 ,
shiptocustomerenterpriseindustry ,
shiptocustomergsc ,
shiptocustomerindustry1 ,
shiptocustomername ,
shiptocustomernumber ,
shiptocustomerparentaccount ,
shiptocustomerparentname ,
shiptocustomerpostalcode ,
shiptocustomerpostalcodejoin ,
shiptocustomerstandardizedname ,
shiptocustomerstate ,
shiptocustomertype1 ,
shiptocustomervertical ,
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
smssiteid ,
smstagnumber ,
smsticketnumber ,
soldtocustomercustomertype1 ,
soldtocustomerenterpriseindustry ,
soldtocustomergsc ,
soldtocustomerindustry1 ,
soldtocustomername ,
soldtocustomerparentaccount ,
soldtocustomerstandardizedname ,
soldtocustomervertical ,
sourceorder ,
speed_dial ,
yearmonth ,
w_insert_by ,
w_insert_dtm ,
src_system_name ,
resellernumber ,
resellerbranchnumber,
resellerbranchname,
office_type,
uom,
sales_order_line_type,
Order_type,
Invoice_type
from @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_bkp where recordsource='ALICE' ) inv
LEFT OUTER JOIN 
(select
	oe.order_number,
	ca.orcl_erp_ordernumber_t,
	ca.transactionid_t CPQ_quoteid ,
	ca.bs_id
from
	@DB_LEVEL@_cld_cpq_silver.cpq_quote_headers ca
join
@DB_LEVEL@_ora_alice_silver.alice_oe_order_headers_all oe on
	oe.orig_sys_document_ref = ca.transactionid_t) cqh
on inv.salesordernumber=cast(cqh.order_number as STRING)) inv_final
LEFT OUTER JOIN
(
select
	distinct quotenumber,sales_office_number,
	sales_office_name ,split_percent,commission_allocation ,lob_group,internal_office_principal_email,
	sales_office_region,repfix.emailaddress as participant_email ,sales_rep_name,salesrepnumber
from
	@DB_LEVEL@_edm_other_src_silver.cpq_commission_split_tbl cst
	---- New Code to Fix Sales Rep ID and Rep Emailso we do not have to fix table
	LEFT JOIN (select distinct emailaddress,fullname,officenumber,salesrepnumber,region from @DB_LEVEL@_cld_cpq_silver.cpq_dt_salesrepdetails ) REPFIX 
	on upper(CST.sales_rep_name) =upper(REPFIX.fullname) and cst.sales_office_number=repfix.officenumber-- and CST.sales_office_region=repfix.region
)comm on 
inv_final.CPQ_quoteid=comm.quotenumber 
and inv_final.lob=comm.lob_group 
/*New code added to remove dups comming from extra added fields.*/
/* where not exists 
(
select * from 
(
select
	distinct 	
	cast(comm.split_percent as string) alicecommissionoverridepercent,
	inv.level_6,
	inv.listprice,
	CASE 
		WHEN inv.lob IN ('AC POWER','ENERGY STORAGE') then 'AC_POWER'
		WHEN inv.lob IN ('RACKS','EDGE THERMAL','IT SYSTEMS','GLOBAL EDGE SYSTEMS','1 PHASE UPS','RACK PDU') then 'CHANNEL'
		WHEN inv.lob = 'DC POWER' then 'DC_POWER'
		WHEN inv.lob = 'DIGITAL ECOSYSTEM' then 'MONITORING'
		WHEN inv.lob IN ('TARRIF SURCHARGE','GENERAL SURCHARGE','NOT APPLICABLE') then 'NO_COMM'		
		WHEN inv.lob IN ('SERVICES','PARTS','DC POWER SERVICES','VERTIV SERVICES','PROJECT SERVICES','SERVICE AND SOFTWARE SOLUTIONS','SOFTWARE & SOLUTIONS COE','SOFTWARE SOLUTIONS','REGIONAL SERVICES' ) then 'SERVICES'
		WHEN inv.lob IN ('IMS - ENG & 3RD PARTY','IMS/CUSTOM') then 'SOLUTIONS'
		WHEN inv.lob = 'THERMAL' then 'THERMAL'
		WHEN inv.lob IN ('GLOBAL SOLUTIONS','DEFAULT','COMPONENT','EXCLUDE','CUSTOM SKU','QSKU','REGIONAL BUSINESSES','SERVICES & SOFTWARE SOLUTIONS') then NULL		
		--WHEN inv.lob = 'DEFAULT' then 'ORDER_DEFAULT'		
		ELSE REPLACE(inv.lob,' ','_')	
	END lob ,
	inv.lob gph_lob,
	--replace(inv.lob,' ','_') lob,
	inv.invoicelinenumber,	
	inv.quantityshipped,
	inv.quoteid,
	inv.recordsource,
	inv.salesofficename,
	inv.salesofficenumber,
	inv.salesofficeprincipalemail,	
	inv.salesordernumber,
	inv.salesregionname,
	inv.salesregionnumber,
	inv.salesrepemail,
	inv.salesrepid,
	inv.salesrepname,	
	inv.sku,	
	inv.src_system_name,
	inv.resellernumber	
from
(select *
from @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_bkp where recordsource='ALICE' ) inv
LEFT OUTER JOIN 
(select 
	orcl_erp_ordernumber_t,
	transactionid_t quoteid ,
	bs_id 
from
	@DB_LEVEL@_cld_cpq_silver.cpq_quote_headers) cqh
on inv.salesordernumber=cqh.orcl_erp_ordernumber_t
LEFT OUTER JOIN
(
select
	distinct quotenumber,sales_office_number,
	sales_office_name ,split_percent,commission_allocation ,lob_group,internal_office_principal_email,
	sales_office_region,participant_email ,sales_rep_name
from
	@DB_LEVEL@_edm_other_src_silver.cpq_commission_split_tbl
)comm on 
cqh.quoteid=comm.quotenumber 
--and replace(inv.lob,' ','_')=comm.lob_group
and inv.salesofficenumber=comm.sales_office_number
)j
where j.salesordernumber=inv_final.salesordernumber
      and j.sku=inv_final.sku
	  and j.invoicelinenumber=inv_final.invoicelinenumber
	  and j.salesofficenumber=inv_final.salesofficenumber
	  and j.gph_lob = inv_final.gph_lob ) */
and nvl(inv_final.salesofficenumber,'')<>comm.sales_office_number	  
)q ;


5. Insert_into_sales_exploration_final


insert overwrite @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na
select  
account_type ,
accountam ,
accountcsm ,
accountlead ,
accountpresence ,
accountservicesalfes ,
accountsubtype ,
accounttype ,
activated ,
account_type_aop ,
advanced_data_center_specialization ,
anixtergraybarcdwflag ,
aop_account_name ,
aop_category ,
billtoaccountrole ,
billtocustomeraddress ,
billtocustomercity ,
billtocustomercountry ,
billtocustomercustomertype1 ,
billtocustomerenterpriseindustry ,
billtocustomergsc ,
billtocustomerindustry1 ,
billtocustomername ,
billtocustomernumber ,
billtocustomerparentaccount ,
billtocustomerparentname ,
billtocustomerpostalcode ,
billtocustomerstandardizedname ,
billtocustomerstate ,
billtocustomertype1 ,
billtocustomervertical ,
billtoenterpriseindustry ,
billtogsc_flag ,
billtoindustry1 ,
billtoindustrycode1 ,
billtoparentaccount ,
billtostandardizedname ,
bsid ,
channelflag ,
channelproductgrouping ,
coe ,
country ,
customerpurchaseordernumber ,
customerrequestdate ,
data_last_refreshed ,
dcpowerfinanceparent ,
dcpowerprofitcenter ,
endcustomeraccountrole ,
endcustomeraddress ,
endcustomercity ,
endcustomercountry ,
endcustomercustomertype1 ,
endcustomercustomertype1_2 ,
endcustomerenterpriseindustry ,
endcustomerenterpriseindustry2 ,
endcustomergsc ,
endcustomergsc_flag ,
endcustomerindustry ,
endcustomerindustry1 ,
endcustomermarket ,
endcustomername ,
endcustomername2 ,
endcustomernumber ,
endcustomerparentaccount ,
endcustomerparentname ,
endcustomerpostalcode ,
endcustomerstandardizedname ,
endcustomerstate ,
endcustomervertical ,
exchangerateused ,
extendedlistprice,
extendedstandardcost ,
f3 ,
f4 ,
firstdestinationflag ,
gbu ,
gbu_cleaned ,
gbu_cleaned_groups ,
growth_target ,
invoicedate ,
invoicelinenumber ,
invoicenumber ,
legacysizecategory ,
lesbilltomajorclass ,
lesbilltominorclass ,
alicecommissionoverridepercent ,
lesunitsflag ,
level_6 ,
listprice,
lob ,
monthlycost ,
netsalesrevenue,
newlescrossref2 ,
office_no ,
office_location ,
office_website ,
ordercoordinator ,
ordercreatedate ,
partnerlevelstandardized ,
partnertypestandardized ,
partnerwebfolderid ,
partnerwebquotenumber ,
phone_area_code ,
phone_number ,
plant ,
plantdescription ,
product_category ,
product_family ,
producthierarchylevel1description ,
producthierarchylevel2description ,
producthierarchylevel3description ,
producthierarchylevel4code ,
producthierarchylevel4description ,
proshipmentnumber ,
quantityshipped,
quoteid ,
recordid ,
recordsource ,
resellermajorcode ,
resellerminorcode ,
resellername ,
resellerpartnerlevel ,
resellerregion ,
right_f3 ,
right_right_country ,
right_right_office_location ,
sales_area ,
sales_region ,
sales_territory ,
salesdistrictname ,
salesdistrictnumber ,
salesofficefamily ,
salesofficename ,
salesofficenumber ,
salesofficenumberjoin ,
salesofficeprincipalemail ,
salesofficeprincipalname ,
salesofficeregion ,
salesordernumber ,
salesregionname ,
salesregionnumber ,
salesrepemail ,
salesrepid ,
salesrepname ,
sapoemtag ,
sapsalesorganization ,
segment ,
selling_motion ,
sfr_category ,
shipdate ,
shipmentcarriername ,
shiptoaccountrole ,
shiptocustomeraddress ,
shiptocustomercity ,
shiptocustomercustomertype1 ,
shiptocustomerenterpriseindustry ,
shiptocustomergsc ,
shiptocustomerindustry1 ,
shiptocustomername ,
shiptocustomernumber ,
shiptocustomerparentaccount ,
shiptocustomerparentname ,
shiptocustomerpostalcode ,
shiptocustomerpostalcodejoin ,
shiptocustomerstandardizedname ,
shiptocustomerstate ,
shiptocustomertype1 ,
shiptocustomervertical ,
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
smssiteid ,
smstagnumber ,
smsticketnumber ,
soldtocustomercustomertype1 ,
soldtocustomerenterpriseindustry ,
soldtocustomergsc ,
soldtocustomerindustry1 ,
soldtocustomername ,
soldtocustomerparentaccount ,
soldtocustomerstandardizedname ,
soldtocustomervertical ,
sourceorder ,
speed_dial ,
yearmonth ,
w_insert_by ,
w_insert_dtm ,
src_system_name ,
resellernumber ,
resellerbranchnumber ,
resellerbranchname ,
CASE
			WHEN upper(recordsource) = 'ERS_HVM' THEN 'FDO'
	        WHEN upper(salesofficename) like '%VERTIV%'
	        or upper(salesofficename) like '%LIEBERT%' THEN 'FDO'
	        ELSE 'LVO'
            END office_type,
uom,
sales_order_line_type,
Order_type,
Invoice_type		
from 
(select distinct
commission_allocation,
account_type ,
accountam ,
accountcsm ,
accountlead ,
accountpresence ,
accountservicesalfes ,
accountsubtype ,
accounttype ,
activated ,
account_type_aop ,
advanced_data_center_specialization ,
anixtergraybarcdwflag ,
aop_account_name ,
aop_category ,
billtoaccountrole ,
billtocustomeraddress ,
billtocustomercity ,
billtocustomercountry ,
billtocustomercustomertype1 ,
billtocustomerenterpriseindustry ,
billtocustomergsc ,
billtocustomerindustry1 ,
billtocustomername ,
billtocustomernumber ,
billtocustomerparentaccount ,
billtocustomerparentname ,
billtocustomerpostalcode ,
billtocustomerstandardizedname ,
billtocustomerstate ,
billtocustomertype1 ,
billtocustomervertical ,
billtoenterpriseindustry ,
billtogsc_flag ,
billtoindustry1 ,
billtoindustrycode1 ,
billtoparentaccount ,
billtostandardizedname ,
bsid ,
channelflag ,
channelproductgrouping ,
coe ,
country ,
customerpurchaseordernumber ,
customerrequestdate ,
data_last_refreshed ,
dcpowerfinanceparent ,
dcpowerprofitcenter ,
endcustomeraccountrole ,
endcustomeraddress ,
endcustomercity ,
endcustomercountry ,
endcustomercustomertype1 ,
endcustomercustomertype1_2 ,
endcustomerenterpriseindustry ,
endcustomerenterpriseindustry2 ,
endcustomergsc ,
endcustomergsc_flag ,
endcustomerindustry ,
endcustomerindustry1 ,
endcustomermarket ,
endcustomername ,
endcustomername2 ,
endcustomernumber ,
endcustomerparentaccount ,
endcustomerparentname ,
endcustomerpostalcode ,
endcustomerstandardizedname ,
endcustomerstate ,
endcustomervertical ,
exchangerateused ,
CASE WHEN extendedlistprice<>0 AND c.split_percent IS NOT NULL THEN  nvl(extendedlistprice *(cast(c.split_percent as DOUBLE)/100),extendedlistprice) 
ELSE extendedlistprice
END AS extendedlistprice,
extendedstandardcost ,
f3 ,
f4 ,
firstdestinationflag ,
gbu ,
gbu_cleaned ,
gbu_cleaned_groups ,
growth_target ,
invoicedate ,
invoicelinenumber ,
invoicenumber ,
legacysizecategory ,
lesbilltomajorclass ,
lesbilltominorclass ,
cast(c.split_percent as STRING) as alicecommissionoverridepercent,
lesunitsflag ,
level_6 ,
CASE WHEN listprice<>0 AND c.split_percent IS NOT NULL THEN nvl(listprice *(cast(c.split_percent as DOUBLE)/100),listprice)
ELSE listprice
END AS listprice,
lob ,
monthlycost ,
CASE WHEN netsalesrevenue<>0 AND c.split_percent IS NOT NULL THEN nvl(netsalesrevenue *(cast(c.split_percent as DOUBLE)/100),netsalesrevenue)
ELSE netsalesrevenue
END AS netsalesrevenue,
newlescrossref2 ,
office_no ,
office_location ,
office_website ,
ordercoordinator ,
ordercreatedate ,
partnerlevelstandardized ,
partnertypestandardized ,
partnerwebfolderid ,
partnerwebquotenumber ,
phone_area_code ,
phone_number ,
plant ,
plantdescription ,
product_category ,
product_family ,
producthierarchylevel1description ,
producthierarchylevel2description ,
producthierarchylevel3description ,
producthierarchylevel4code ,
producthierarchylevel4description ,
proshipmentnumber ,
CASE WHEN quantityshipped <>0 AND c.split_percent IS NOT NULL THEN nvl(quantityshipped *(cast(c.split_percent as DOUBLE)/100),quantityshipped) 
ELSE quantityshipped
END as quantityshipped,
quoteid ,
recordid ,
recordsource ,
resellermajorcode ,
resellerminorcode ,
resellername ,
resellerpartnerlevel ,
resellerregion ,
right_f3 ,
right_right_country ,
right_right_office_location ,
sales_area ,
a.sales_region ,
sales_territory ,
salesdistrictname ,
salesdistrictnumber ,
salesofficefamily ,
--c.sales_office_name salesofficename ,
c1.officename salesofficename , ---- MN 3/4/2022 sales office name change below join Commission Fix 
c.sales_office_number salesofficenumber,
salesofficenumberjoin ,
c.internal_office_principal_email salesofficeprincipalemail ,
salesofficeprincipalname ,
salesofficeregion ,
salesordernumber ,
c.sales_office_region salesregionname,
salesregionnumber ,
c.participant_email salesrepemail ,
c1.salesrepnumber salesrepid ,
c.sales_rep_name salesrepname ,
sapoemtag ,
sapsalesorganization ,
segment ,
selling_motion ,
sfr_category ,
shipdate ,
shipmentcarriername ,
shiptoaccountrole ,
shiptocustomeraddress ,
shiptocustomercity ,
shiptocustomercustomertype1 ,
shiptocustomerenterpriseindustry ,
shiptocustomergsc ,
shiptocustomerindustry1 ,
shiptocustomername ,
shiptocustomernumber ,
shiptocustomerparentaccount ,
shiptocustomerparentname ,
shiptocustomerpostalcode ,
shiptocustomerpostalcodejoin ,
shiptocustomerstandardizedname ,
shiptocustomerstate ,
shiptocustomertype1 ,
shiptocustomervertical ,
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
smssiteid ,
smstagnumber ,
smsticketnumber ,
soldtocustomercustomertype1 ,
soldtocustomerenterpriseindustry ,
soldtocustomergsc ,
soldtocustomerindustry1 ,
soldtocustomername ,
soldtocustomerparentaccount ,
soldtocustomerstandardizedname ,
soldtocustomervertical ,
sourceorder ,
speed_dial ,
yearmonth ,
a.w_insert_by ,
a.w_insert_dtm ,
a.src_system_name ,
resellernumber ,
resellerbranchnumber ,
resellerbranchname ,
a.office_type,
uom,
sales_order_line_type,
Order_type,
Invoice_type
from @DB_LEVEL@_na_cld_osc_gold.sales_exploration_alice_commn_temp_na a
INNER JOIN @DB_LEVEL@_edm_other_src_silver.cpq_commission_split_tbl c ON a.quoteid=c.quotenumber
AND c.commission_allocation='Territory'
and CASE 
	WHEN lob IN ('AC POWER','ENERGY STORAGE') then 'AC_POWER'
	WHEN lob IN ('RACKS','EDGE THERMAL','IT SYSTEMS','GLOBAL EDGE SYSTEMS','1 PHASE UPS','RACK PDU') then 'CHANNEL'
	WHEN lob = 'DC POWER' then 'DC_POWER'
	WHEN lob = 'DIGITAL ECOSYSTEM' then 'MONITORING'
	WHEN lob IN ('TARRIF SURCHARGE','GENERAL SURCHARGE','NOT APPLICABLE') then 'NO_COMM'		
	WHEN lob IN ('SERVICES','PARTS','DC POWER SERVICES','VERTIV SERVICES','PROJECT SERVICES','SERVICE AND SOFTWARE SOLUTIONS','SOFTWARE & SOLUTIONS COE','SOFTWARE SOLUTIONS','REGIONAL SERVICES' ) then 'SERVICES'
	WHEN lob IN ('IMS - ENG & 3RD PARTY','IMS/CUSTOM') then 'SOLUTIONS'
	WHEN lob = 'THERMAL' then 'THERMAL'
	WHEN lob IN ('GLOBAL SOLUTIONS','DEFAULT','COMPONENT','EXCLUDE','CUSTOM SKU','QSKU','REGIONAL BUSINESSES','SERVICES & SOFTWARE SOLUTIONS') then NULL
	--WHEN ordr.lob = 'DEFAULT' then 'ORDER_DEFAULT'		
	ELSE REPLACE(lob,' ','_')	
END = c.lob_group
---- MN 3/4/2022 sales office name change below join Commission Fix 
 LEFT outer JOIN 
( SELECT b.zip_code, fullname, max(salesrepnumber) as salesrepnumber,officenumber,officename FROM @DB_LEVEL@_cld_cpq_silver.cpq_dt_salesrepdetails a
join @DB_LEVEL@_sql_saleswh_silver.supplier_classification b on (replace(upper(replace(a.officename,'-',' ')),' ','')= replace(upper(replace(b.office_name,'-',' ')),' ','') )
or (case when b.office_number='89400' then '72300' else b.office_number end = a.officenumber) group by b.zip_code, fullname,officenumber,officename )c1
 on upper(c.sales_rep_name) =upper(c1.fullname) and c.sales_office_number=c1.officenumber
WHERE (a.endcustomerpostalcode=c1.zip_code  or SPLIT_PART(a.endcustomerpostalcode,' ' ,1)=c1.zip_code ) 

--VR 03232022 Below block commented to remove dups (sample salesordernumber '1066687’) and clubbed in the lower block
/* UNION ALL
select distinct
commission_allocation,
account_type ,
accountam ,
accountcsm ,
accountlead ,
accountpresence ,
accountservicesalfes ,
accountsubtype ,
accounttype ,
activated ,
account_type_aop ,
advanced_data_center_specialization ,
anixtergraybarcdwflag ,
aop_account_name ,
aop_category ,
billtoaccountrole ,
billtocustomeraddress ,
billtocustomercity ,
billtocustomercountry ,
billtocustomercustomertype1 ,
billtocustomerenterpriseindustry ,
billtocustomergsc ,
billtocustomerindustry1 ,
billtocustomername ,
billtocustomernumber ,
billtocustomerparentaccount ,
billtocustomerparentname ,
billtocustomerpostalcode ,
billtocustomerstandardizedname ,
billtocustomerstate ,
billtocustomertype1 ,
billtocustomervertical ,
billtoenterpriseindustry ,
billtogsc_flag ,
billtoindustry1 ,
billtoindustrycode1 ,
billtoparentaccount ,
billtostandardizedname ,
bsid ,
channelflag ,
channelproductgrouping ,
coe ,
country ,
customerpurchaseordernumber ,
customerrequestdate ,
data_last_refreshed ,
dcpowerfinanceparent ,
dcpowerprofitcenter ,
endcustomeraccountrole ,
endcustomeraddress ,
endcustomercity ,
endcustomercountry ,
endcustomercustomertype1 ,
endcustomercustomertype1_2 ,
endcustomerenterpriseindustry ,
endcustomerenterpriseindustry2 ,
endcustomergsc ,
endcustomergsc_flag ,
endcustomerindustry ,
endcustomerindustry1 ,
endcustomermarket ,
endcustomername ,
endcustomername2 ,
endcustomernumber ,
endcustomerparentaccount ,
endcustomerparentname ,
endcustomerpostalcode ,
endcustomerstandardizedname ,
endcustomerstate ,
endcustomervertical ,
exchangerateused ,
CASE WHEN extendedlistprice<>0 AND c.split_percent IS NOT NULL THEN  nvl(extendedlistprice *(cast(c.split_percent as DOUBLE)/100),extendedlistprice) 
ELSE extendedlistprice
END AS extendedlistprice,
extendedstandardcost ,
f3 ,
f4 ,
firstdestinationflag ,
gbu ,
gbu_cleaned ,
gbu_cleaned_groups ,
growth_target ,
invoicedate ,
invoicelinenumber ,
invoicenumber ,
legacysizecategory ,
lesbilltomajorclass ,
lesbilltominorclass ,
cast(c.split_percent as STRING) as alicecommissionoverridepercent,
lesunitsflag ,
level_6 ,
CASE WHEN listprice<>0 AND c.split_percent IS NOT NULL THEN nvl(listprice *(cast(c.split_percent as DOUBLE)/100),listprice)
ELSE listprice
END AS listprice,
lob ,
monthlycost ,
CASE WHEN netsalesrevenue<>0 AND c.split_percent IS NOT NULL THEN nvl(netsalesrevenue *(cast(c.split_percent as DOUBLE)/100),netsalesrevenue)
ELSE netsalesrevenue
END AS netsalesrevenue,
newlescrossref2 ,
office_no ,
office_location ,
office_website ,
ordercoordinator ,
ordercreatedate ,
partnerlevelstandardized ,
partnertypestandardized ,
partnerwebfolderid ,
partnerwebquotenumber ,
phone_area_code ,
phone_number ,
plant ,
plantdescription ,
product_category ,
product_family ,
producthierarchylevel1description ,
producthierarchylevel2description ,
producthierarchylevel3description ,
producthierarchylevel4code ,
producthierarchylevel4description ,
proshipmentnumber ,
CASE WHEN quantityshipped <>0 AND c.split_percent IS NOT NULL THEN nvl(quantityshipped *(cast(c.split_percent as DOUBLE)/100),quantityshipped) 
ELSE quantityshipped
END as quantityshipped,
quoteid ,
recordid ,
recordsource ,
resellermajorcode ,
resellerminorcode ,
resellername ,
resellerpartnerlevel ,
resellerregion ,
right_f3 ,
right_right_country ,
right_right_office_location ,
sales_area ,
a.sales_region ,
sales_territory ,
salesdistrictname ,
salesdistrictnumber ,
salesofficefamily ,
--c.sales_office_name salesofficename ,
c1.officename salesofficename, ---- MN 3/4/2022 sales office name change below join Commission Fix 
c.sales_office_number salesofficenumber,
salesofficenumberjoin ,
c.internal_office_principal_email salesofficeprincipalemail ,
salesofficeprincipalname ,
salesofficeregion ,
salesordernumber ,
c.sales_office_region salesregionname,
salesregionnumber ,
c.participant_email salesrepemail ,
c1.salesrepnumber salesrepid ,
c.sales_rep_name salesrepname ,
sapoemtag ,
sapsalesorganization ,
segment ,
selling_motion ,
sfr_category ,
shipdate ,
shipmentcarriername ,
shiptoaccountrole ,
shiptocustomeraddress ,
shiptocustomercity ,
shiptocustomercustomertype1 ,
shiptocustomerenterpriseindustry ,
shiptocustomergsc ,
shiptocustomerindustry1 ,
shiptocustomername ,
shiptocustomernumber ,
shiptocustomerparentaccount ,
shiptocustomerparentname ,
shiptocustomerpostalcode ,
shiptocustomerpostalcodejoin ,
shiptocustomerstandardizedname ,
shiptocustomerstate ,
shiptocustomertype1 ,
shiptocustomervertical ,
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
smssiteid ,
smstagnumber ,
smsticketnumber ,
soldtocustomercustomertype1 ,
soldtocustomerenterpriseindustry ,
soldtocustomergsc ,
soldtocustomerindustry1 ,
soldtocustomername ,
soldtocustomerparentaccount ,
soldtocustomerstandardizedname ,
soldtocustomervertical ,
sourceorder ,
speed_dial ,
yearmonth ,
a.w_insert_by ,
a.w_insert_dtm ,
a.src_system_name ,
resellernumber ,
resellerbranchnumber ,
resellerbranchname ,
a.office_type,
uom,
sales_order_line_type,
Order_type,
Invoice_type
from @DB_LEVEL@_na_cld_osc_gold.sales_exploration_alice_commn_temp_na a
INNER JOIN @DB_LEVEL@_edm_other_src_silver.cpq_commission_split_tbl c ON ( a.quoteid=c.quotenumber
AND (c.commission_allocation <>'Territory'--MN Code needs to be joined by LOB to prevent wrong splits
and CASE 
	WHEN lob IN ('AC POWER','ENERGY STORAGE') then 'AC_POWER'
	WHEN lob IN ('RACKS','EDGE THERMAL','IT SYSTEMS','GLOBAL EDGE SYSTEMS','1 PHASE UPS','RACK PDU') then 'CHANNEL'
	WHEN lob = 'DC POWER' then 'DC_POWER'
	WHEN lob = 'DIGITAL ECOSYSTEM' then 'MONITORING'
	WHEN lob IN ('TARRIF SURCHARGE','GENERAL SURCHARGE','NOT APPLICABLE') then 'NO_COMM'		
	WHEN lob IN ('SERVICES','PARTS','DC POWER SERVICES','VERTIV SERVICES','PROJECT SERVICES','SERVICE AND SOFTWARE SOLUTIONS','SOFTWARE & SOLUTIONS COE','SOFTWARE SOLUTIONS','REGIONAL SERVICES' ) then 'SERVICES'
	WHEN lob IN ('IMS - ENG & 3RD PARTY','IMS/CUSTOM') then 'SOLUTIONS'
	WHEN lob = 'THERMAL' then 'THERMAL'
	WHEN lob IN ('GLOBAL SOLUTIONS','DEFAULT','COMPONENT','EXCLUDE','CUSTOM SKU','QSKU','REGIONAL BUSINESSES','SERVICES & SOFTWARE SOLUTIONS') then NULL
	--WHEN ordr.lob = 'DEFAULT' then 'ORDER_DEFAULT'		
	ELSE REPLACE(lob,' ','_')	
END = c.lob_group
)or (a.quoteid=c.quotenumber and c.commission_allocation is null and c.lob_group is null and c.split_percent=100)
)
LEFT outer JOIN (select  fullname, max(salesrepnumber) as salesrepnumber,officenumber,officename from @DB_LEVEL@_cld_cpq_silver.cpq_dt_salesrepdetails 
group by fullname,officenumber,officename ) c1  --MN 3/4/2022 Took out parts sub query which were causing dups and removed zip match no longer needed now 
	on upper(c.sales_rep_name) =upper(c1.fullname) and c.sales_office_number=c1.officenumber
LEFT OUTER JOIN @DB_LEVEL@_sql_saleswh_silver.supplier_classification b ON c.sales_office_number = b.office_number	
WHERE c.sales_office_number IS NOT NULL */

UNION ALL
--MN 3/4/2022 New union block added for no allocation 
select distinct
nvl(commission_allocation,'No Allocation')  as  commission_allocation,
account_type ,
accountam ,
accountcsm ,
accountlead ,
accountpresence ,
accountservicesalfes ,
accountsubtype ,
accounttype ,
activated ,
account_type_aop ,
advanced_data_center_specialization ,
anixtergraybarcdwflag ,
aop_account_name ,
aop_category ,
billtoaccountrole ,
billtocustomeraddress ,
billtocustomercity ,
billtocustomercountry ,
billtocustomercustomertype1 ,
billtocustomerenterpriseindustry ,
billtocustomergsc ,
billtocustomerindustry1 ,
billtocustomername ,
billtocustomernumber ,
billtocustomerparentaccount ,
billtocustomerparentname ,
billtocustomerpostalcode ,
billtocustomerstandardizedname ,
billtocustomerstate ,
billtocustomertype1 ,
billtocustomervertical ,
billtoenterpriseindustry ,
billtogsc_flag ,
billtoindustry1 ,
billtoindustrycode1 ,
billtoparentaccount ,
billtostandardizedname ,
bsid ,
channelflag ,
channelproductgrouping ,
coe ,
country ,
customerpurchaseordernumber ,
customerrequestdate ,
data_last_refreshed ,
dcpowerfinanceparent ,
dcpowerprofitcenter ,
endcustomeraccountrole ,
endcustomeraddress ,
endcustomercity ,
endcustomercountry ,
endcustomercustomertype1 ,
endcustomercustomertype1_2 ,
endcustomerenterpriseindustry ,
endcustomerenterpriseindustry2 ,
endcustomergsc ,
endcustomergsc_flag ,
endcustomerindustry ,
endcustomerindustry1 ,
endcustomermarket ,
endcustomername ,
endcustomername2 ,
endcustomernumber ,
endcustomerparentaccount ,
endcustomerparentname ,
endcustomerpostalcode ,
endcustomerstandardizedname ,
endcustomerstate ,
endcustomervertical ,
exchangerateused ,
CASE WHEN extendedlistprice<>0 AND c.split_percent IS NOT NULL THEN  nvl(extendedlistprice *(cast(c.split_percent as DOUBLE)/100),extendedlistprice) 
ELSE extendedlistprice
END AS extendedlistprice,
extendedstandardcost ,
f3 ,
f4 ,
firstdestinationflag ,
gbu ,
gbu_cleaned ,
gbu_cleaned_groups ,
growth_target ,
invoicedate ,
invoicelinenumber ,
invoicenumber ,
legacysizecategory ,
lesbilltomajorclass ,
lesbilltominorclass ,
cast(c.split_percent as STRING) as alicecommissionoverridepercent,
lesunitsflag ,
level_6 ,
CASE WHEN listprice<>0 AND c.split_percent IS NOT NULL THEN nvl(listprice *(cast(c.split_percent as DOUBLE)/100),listprice)
ELSE listprice
END AS listprice,
lob ,
monthlycost ,
CASE WHEN netsalesrevenue<>0 AND c.split_percent IS NOT NULL THEN nvl(netsalesrevenue *(cast(c.split_percent as DOUBLE)/100),netsalesrevenue)
ELSE netsalesrevenue
END AS netsalesrevenue,
newlescrossref2 ,
office_no ,
office_location ,
office_website ,
ordercoordinator ,
ordercreatedate ,
partnerlevelstandardized ,
partnertypestandardized ,
partnerwebfolderid ,
partnerwebquotenumber ,
phone_area_code ,
phone_number ,
plant ,
plantdescription ,
product_category ,
product_family ,
producthierarchylevel1description ,
producthierarchylevel2description ,
producthierarchylevel3description ,
producthierarchylevel4code ,
producthierarchylevel4description ,
proshipmentnumber ,
CASE WHEN quantityshipped <>0 AND c.split_percent IS NOT NULL THEN nvl(quantityshipped *(cast(c.split_percent as DOUBLE)/100),quantityshipped) 
ELSE quantityshipped
END as quantityshipped,
quoteid ,
recordid ,
recordsource ,
resellermajorcode ,
resellerminorcode ,
resellername ,
resellerpartnerlevel ,
resellerregion ,
right_f3 ,
right_right_country ,
right_right_office_location ,
sales_area ,
a.sales_region ,
sales_territory ,
salesdistrictname ,
salesdistrictnumber ,
salesofficefamily ,
--c.sales_office_name salesofficename ,
c1.officename salesofficename,
c.sales_office_number salesofficenumber,
salesofficenumberjoin ,
c.internal_office_principal_email salesofficeprincipalemail ,
salesofficeprincipalname ,
salesofficeregion ,
salesordernumber ,
c.sales_office_region salesregionname,
salesregionnumber ,
c.participant_email salesrepemail ,
c1.salesrepnumber salesrepid ,
c.sales_rep_name salesrepname ,
sapoemtag ,
sapsalesorganization ,
segment ,
selling_motion ,
sfr_category ,
shipdate ,
shipmentcarriername ,
shiptoaccountrole ,
shiptocustomeraddress ,
shiptocustomercity ,
shiptocustomercustomertype1 ,
shiptocustomerenterpriseindustry ,
shiptocustomergsc ,
shiptocustomerindustry1 ,
shiptocustomername ,
shiptocustomernumber ,
shiptocustomerparentaccount ,
shiptocustomerparentname ,
shiptocustomerpostalcode ,
shiptocustomerpostalcodejoin ,
shiptocustomerstandardizedname ,
shiptocustomerstate ,
shiptocustomertype1 ,
shiptocustomervertical ,
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
smssiteid ,
smstagnumber ,
smsticketnumber ,
soldtocustomercustomertype1 ,
soldtocustomerenterpriseindustry ,
soldtocustomergsc ,
soldtocustomerindustry1 ,
soldtocustomername ,
soldtocustomerparentaccount ,
soldtocustomerstandardizedname ,
soldtocustomervertical ,
sourceorder ,
speed_dial ,
yearmonth ,
a.w_insert_by ,
a.w_insert_dtm ,
a.src_system_name ,
resellernumber ,
resellerbranchnumber ,
resellerbranchname ,
a.office_type,
uom,
sales_order_line_type,
Order_type,
Invoice_type
from @DB_LEVEL@_na_cld_osc_gold.sales_exploration_alice_commn_temp_na a
inner join   ( Select distinct quotenumber,commission_allocation,lob_group,sales_office_number,split_percent,internal_office_principal_email,participant_email,
   sales_office_region,sales_rep_name from  @DB_LEVEL@_edm_other_src_silver.cpq_commission_split_tbl) c  ON a.quoteid=c.quotenumber
AND  (a.quoteid=c.quotenumber and c.commission_allocation is null and c.lob_group is null and c.split_percent=100)
OR (
( a.quoteid=c.quotenumber
AND (c.commission_allocation <>'Territory'--MN Code needs to be joined by LOB to prevent wrong splits
and CASE 
	WHEN lob IN ('AC POWER','ENERGY STORAGE') then 'AC_POWER'
	WHEN lob IN ('RACKS','EDGE THERMAL','IT SYSTEMS','GLOBAL EDGE SYSTEMS','1 PHASE UPS','RACK PDU') then 'CHANNEL'
	WHEN lob = 'DC POWER' then 'DC_POWER'
	WHEN lob = 'DIGITAL ECOSYSTEM' then 'MONITORING'
	WHEN lob IN ('TARRIF SURCHARGE','GENERAL SURCHARGE','NOT APPLICABLE') then 'NO_COMM'		
	WHEN lob IN ('SERVICES','PARTS','DC POWER SERVICES','VERTIV SERVICES','PROJECT SERVICES','SERVICE AND SOFTWARE SOLUTIONS','SOFTWARE & SOLUTIONS COE','SOFTWARE SOLUTIONS','REGIONAL SERVICES' ) then 'SERVICES'
	WHEN lob IN ('IMS - ENG & 3RD PARTY','IMS/CUSTOM') then 'SOLUTIONS'
	WHEN lob = 'THERMAL' then 'THERMAL'
	WHEN lob IN ('GLOBAL SOLUTIONS','DEFAULT','COMPONENT','EXCLUDE','CUSTOM SKU','QSKU','REGIONAL BUSINESSES','SERVICES & SOFTWARE SOLUTIONS') then NULL
	--WHEN ordr.lob = 'DEFAULT' then 'ORDER_DEFAULT'		
	ELSE REPLACE(lob,' ','_')	
END = c.lob_group
) or (a.quoteid=c.quotenumber and c.commission_allocation is null and c.lob_group is null and c.split_percent=100)
)
)
LEFT outer JOIN (select  fullname, max(salesrepnumber) as salesrepnumber,officenumber,officename from @DB_LEVEL@_cld_cpq_silver.cpq_dt_salesrepdetails 
group by fullname,officenumber,officename ) c1  -- 3/4/2022 Took out parts sub query which were causing dups and removed zip match no longer needed now 
	on upper(c.sales_rep_name) =upper(c1.fullname) and c.sales_office_number=c1.officenumber
LEFT OUTER JOIN @DB_LEVEL@_sql_saleswh_silver.supplier_classification b ON c.sales_office_number = b.office_number
WHERE c.sales_office_number IS NOT NULL


UNION ALL
-- MN 3/1/2022 Added LES Migrated Orders Commissions 
select distinct
c.split_type as commission_allocation,
account_type ,
accountam ,
accountcsm ,
accountlead ,
accountpresence ,
accountservicesalfes ,
accountsubtype ,
accounttype ,
activated ,
account_type_aop ,
advanced_data_center_specialization ,
anixtergraybarcdwflag ,
aop_account_name ,
aop_category ,
billtoaccountrole ,
billtocustomeraddress ,
billtocustomercity ,
billtocustomercountry ,
billtocustomercustomertype1 ,
billtocustomerenterpriseindustry ,
billtocustomergsc ,
billtocustomerindustry1 ,
billtocustomername ,
billtocustomernumber ,
billtocustomerparentaccount ,
billtocustomerparentname ,
billtocustomerpostalcode ,
billtocustomerstandardizedname ,
billtocustomerstate ,
billtocustomertype1 ,
billtocustomervertical ,
billtoenterpriseindustry ,
billtogsc_flag ,
billtoindustry1 ,
billtoindustrycode1 ,
billtoparentaccount ,
billtostandardizedname ,
bsid ,
channelflag ,
channelproductgrouping ,
coe ,
country ,
customerpurchaseordernumber ,
customerrequestdate ,
data_last_refreshed ,
dcpowerfinanceparent ,
dcpowerprofitcenter ,
endcustomeraccountrole ,
endcustomeraddress ,
endcustomercity ,
endcustomercountry ,
endcustomercustomertype1 ,
endcustomercustomertype1_2 ,
endcustomerenterpriseindustry ,
endcustomerenterpriseindustry2 ,
endcustomergsc ,
endcustomergsc_flag ,
endcustomerindustry ,
endcustomerindustry1 ,
endcustomermarket ,
endcustomername ,
endcustomername2 ,
endcustomernumber ,
endcustomerparentaccount ,
endcustomerparentname ,
endcustomerpostalcode ,
endcustomerstandardizedname ,
endcustomerstate ,
endcustomervertical ,
exchangerateused ,
CASE WHEN extendedlistprice<>0 AND c.split_percent IS NOT NULL THEN  nvl(extendedlistprice *(cast(c.split_percent as DOUBLE)/100),extendedlistprice) 
ELSE extendedlistprice
END AS extendedlistprice,
extendedstandardcost ,
f3 ,
f4 ,
firstdestinationflag ,
gbu ,
gbu_cleaned ,
gbu_cleaned_groups ,
growth_target ,
invoicedate ,
invoicelinenumber ,
invoicenumber ,
legacysizecategory ,
lesbilltomajorclass ,
lesbilltominorclass ,
cast(c.split_percent as STRING) as alicecommissionoverridepercent,
lesunitsflag ,
level_6 ,
CASE WHEN listprice<>0 AND c.split_percent IS NOT NULL THEN nvl(listprice *(cast(c.split_percent as DOUBLE)/100),listprice)
ELSE listprice
END AS listprice,
lob ,
monthlycost ,
CASE WHEN netsalesrevenue<>0 AND c.split_percent IS NOT NULL THEN nvl(netsalesrevenue *(cast(c.split_percent as DOUBLE)/100),netsalesrevenue)
ELSE netsalesrevenue
END AS netsalesrevenue,
newlescrossref2 ,
office_no ,
office_location ,
office_website ,
ordercoordinator ,
ordercreatedate ,
partnerlevelstandardized ,
partnertypestandardized ,
partnerwebfolderid ,
partnerwebquotenumber ,
phone_area_code ,
phone_number ,
plant ,
plantdescription ,
product_category ,
product_family ,
producthierarchylevel1description ,
producthierarchylevel2description ,
producthierarchylevel3description ,
producthierarchylevel4code ,
producthierarchylevel4description ,
proshipmentnumber ,
CASE WHEN quantityshipped <>0 AND c.split_percent IS NOT NULL THEN nvl(quantityshipped *(cast(c.split_percent as DOUBLE)/100),quantityshipped) 
ELSE quantityshipped
END as quantityshipped,
quoteid ,
recordid ,
recordsource ,
resellermajorcode ,
resellerminorcode ,
resellername ,
resellerpartnerlevel ,
resellerregion ,
right_f3 ,
right_right_country ,
right_right_office_location ,
sales_area ,
a.sales_region ,
sales_territory ,
salesdistrictname ,
salesdistrictnumber ,
salesofficefamily ,
c.sales_office_name salesofficename ,
c.sales_office_number salesofficenumber,
salesofficenumberjoin ,
c.internal_office_principal_email salesofficeprincipalemail ,
salesofficeprincipalname ,
salesofficeregion ,
salesordernumber ,
c.sales_office_region salesregionname,
salesregionnumber ,
c.participant_email salesrepemail ,
c.salesrepnumber salesrepid ,
c.sales_rep_name salesrepname ,
sapoemtag ,
sapsalesorganization ,
segment ,
selling_motion ,
sfr_category ,
shipdate ,
shipmentcarriername ,
shiptoaccountrole ,
shiptocustomeraddress ,
shiptocustomercity ,
shiptocustomercustomertype1 ,
shiptocustomerenterpriseindustry ,
shiptocustomergsc ,
shiptocustomerindustry1 ,
shiptocustomername ,
shiptocustomernumber ,
shiptocustomerparentaccount ,
shiptocustomerparentname ,
shiptocustomerpostalcode ,
shiptocustomerpostalcodejoin ,
shiptocustomerstandardizedname ,
shiptocustomerstate ,
shiptocustomertype1 ,
shiptocustomervertical ,
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
smssiteid ,
smstagnumber ,
smsticketnumber ,
soldtocustomercustomertype1 ,
soldtocustomerenterpriseindustry ,
soldtocustomergsc ,
soldtocustomerindustry1 ,
soldtocustomername ,
soldtocustomerparentaccount ,
soldtocustomerstandardizedname ,
soldtocustomervertical ,
sourceorder ,
speed_dial ,
yearmonth ,
a.w_insert_by ,
a.w_insert_dtm ,
a.src_system_name ,
resellernumber ,
resellerbranchnumber ,
resellerbranchname ,
a.office_type,
uom,
sales_order_line_type,
Order_type,
Invoice_type
from @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_bkp a
inner join @DB_LEVEL@_sql_saleswh_gold.LES_commission_split_vw c on a.quoteid=c.reference_les_order
and (NVL(upper(c.split_type),'') not like '%STARTUP%')
where BSID is null  --MN 3/4/2022 New condition added

UNION ALL

select '' as commission_allocation,* from @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_bkp where recordsource<>'ALICE'

UNION ALL

select '' as commission_allocation,* from 
(select * from @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_bkp where recordsource='ALICE'  ) a 
where not exists
(
select * from 
(select
	oe.order_number,
	ca.orcl_erp_ordernumber_t,
	ca.transactionid_t quoteid ,
	ca.bs_id
from
	@DB_LEVEL@_cld_cpq_silver.cpq_quote_headers ca
join
@DB_LEVEL@_ora_alice_silver.alice_oe_order_headers_all oe on
	oe.orig_sys_document_ref = ca.transactionid_t) b where
a.salesordernumber=cast(b.order_number as STRING)	
)

UNION ALL -- MN 3/1/2022 Migrated Orders Commission Fix 
select '' as commission_allocation,* from 
(select * from @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_bkp where recordsource='ALICE' and BSID is  null and quoteid not like 'CPQ-%' 
) a 
where not exists
(
select * from 
(select
 reference_les_order from 
@DB_LEVEL@_sql_saleswh_gold.LES_commission_split_vw	) b where
a.quoteid=b.reference_les_order)

)w ;



6. new_commissions_split_logic

---Back up of invoice table being created.

insert overwrite @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_bkp 
select * from @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na where sku not in ('CSHMVECTD','CSHMVEDTC','REBATE-ACP','REBATE-AVCT','VATWHND','BACKCHARGE-MRKTG');


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
   AND CAST(Split_Percent AS DOUBLE) >= 0   --Vishal, July 25 2022.
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


----New commissions logic code starts here 


--Step1#
--Populate the territory temp table
TRUNCATE TABLE @DB_LEVEL@_edm_other_src_silver.Commissions_territory_tmp_tbl;

INSERT INTO @DB_LEVEL@_edm_other_src_silver.Commissions_territory_tmp_tbl
SELECT DISTINCT cast(oe.order_number AS string) AS Alice_order_Number,
       orcl_erp_ordernumber_t AS ORERP_Order_number,
       csp.*,
       zip_code,
       emailaddress,
       fullname,
       officenumber,
       salesrepnumber
FROM (SELECT * FROM @DB_LEVEL@_edm_other_src_silver.cpq_commission_split_tbl WHERE commission_allocation='Territory') csp
LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_oe_order_headers_all oe ON oe.orig_sys_document_ref = csp.quotenumber
JOIN @DB_LEVEL@_cld_cpq_silver.cpq_quote_headers qh ON csp.quotenumber=qh.transactionid_t
JOIN @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_bkp sed on sed.salesordernumber =cast(oe.order_number AS string)
JOIN @DB_LEVEL@_edm_other_src_silver.zip_counties_rep_region sclass ON sclass.office_number = csp.sales_office_number
and sclass.zip_code =sed.endcustomerpostalcode
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
TRUNCATE TABLE @DB_LEVEL@_edm_other_src_silver.Commissions_non_territory_tmp_tbl;

INSERT INTO @DB_LEVEL@_edm_other_src_silver.Commissions_non_territory_tmp_tbl
SELECT cast(oe.order_number AS string) AS Alice_order_Number,
       orcl_erp_ordernumber_t AS ORERP_Order_number,
       csp.*,
       emailaddress,
       fullname,
       officenumber,
       salesrepnumber
FROM (SELECT * FROM @DB_LEVEL@_edm_other_src_silver.cpq_commission_split_tbl WHERE commission_allocation<>'Territory') csp
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
SELECT cast(oe.order_number AS string) AS Alice_order_Number,
       orcl_erp_ordernumber_t AS ORERP_Order_number,
       csp.*,
       zip_code,
       emailaddress,
       fullname,
       officenumber,
       salesrepnumber
FROM (SELECT * FROM @DB_LEVEL@_edm_other_src_silver.cpq_commission_split_tbl WHERE commission_allocation='Territory') csp
LEFT OUTER JOIN @DB_LEVEL@_ora_alice_silver.alice_oe_order_headers_all oe ON oe.orig_sys_document_ref = csp.quotenumber
LEFT OUTER JOIN @DB_LEVEL@_cld_cpq_silver.cpq_quote_headers qh ON csp.quotenumber=qh.transactionid_t
LEFT OUTER JOIN @DB_LEVEL@_edm_other_src_silver.zip_counties_rep_region sclass ON sclass.office_number = csp.sales_office_number
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
FROM (SELECT * FROM @DB_LEVEL@_edm_other_src_silver.cpq_commission_split_tbl WHERE commission_allocation<>'Territory' ) csp
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
TRUNCATE TABLE @DB_LEVEL@_edm_other_src_silver.Invoice_Commissions_stage_tbl;

INSERT INTO @DB_LEVEL@_edm_other_src_silver.Invoice_Commissions_stage_tbl
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
                   officenumber,
                   salesrepnumber
   FROM (SELECT DISTINCT b.quoteid,
                   b.endcustomerpostalcode,
                   a.salesordernumber,
                   a.lob,
                   a.recordsource
   FROM @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_bkp a
   JOIN @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_bkp b ON a.salesordernumber = b.salesordernumber) Core
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
                officenumber,
                salesrepnumber
   FROM (SELECT DISTINCT b.quoteid,
                   b.endcustomerpostalcode,
                   a.salesordernumber,
                   a.lob,
                   a.recordsource
   FROM @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_bkp a
   JOIN @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_bkp b ON a.salesordernumber = b.salesordernumber) Core
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
                      sales_contact_email AS emailaddress,
                      sales_rep_name AS fullname,
                      Sales_office_number AS officenumber,
                      salesrepnumber AS salesrepnumber
   FROM (SELECT DISTINCT b.quoteid,
                   b.endcustomerpostalcode,
                   a.salesordernumber,
                   a.lob,
                   a.recordsource,
				   b.bsid
   FROM @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_bkp a
   JOIN @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_bkp b ON a.salesordernumber = b.salesordernumber) Core
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
                officenumber,
                salesrepnumber
   FROM (SELECT DISTINCT b.quoteid,
                   b.endcustomerpostalcode,
                   a.salesordernumber,
                   a.lob,
                   a.recordsource
   FROM @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_bkp a
   JOIN @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_bkp b ON a.salesordernumber = b.salesordernumber) Core
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
                      officenumber,
                      salesrepnumber
   FROM (SELECT DISTINCT b.quoteid,
                   b.endcustomerpostalcode,
                   a.salesordernumber,
                   a.lob,
                   a.recordsource
   FROM @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_bkp a
   JOIN @DB_LEVEL@_na_cld_osc_gold.orders_exploration_data_na_bkp b ON a.salesordernumber = b.salesordernumber) Core
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

--------------------------------------------------------------
--Step6# 
--populate the final sales_exploration_data_na table using commissions_stage_tbl sales  back table

INSERT OVERWRITE @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na
SELECT	a.account_type ,
		a.accountam ,
		a.accountcsm ,
		a.accountlead ,
		a.accountpresence ,
		a.accountservicesalfes ,
		a.accountsubtype ,
		a.accounttype ,
		a.activated ,
		a.account_type_aop ,
		a.advanced_data_center_specialization ,
		a.anixtergraybarcdwflag ,
		a.aop_account_name ,
		a.aop_category ,
		a.billtoaccountrole ,
		a.billtocustomeraddress ,
		a.billtocustomercity ,
		a.billtocustomercountry ,
		a.billtocustomercustomertype1 ,
		a.billtocustomerenterpriseindustry ,
		a.billtocustomergsc ,
		a.billtocustomerindustry1 ,
		a.billtocustomername ,
		a.billtocustomernumber ,
		a.billtocustomerparentaccount ,
		a.billtocustomerparentname ,
		a.billtocustomerpostalcode ,
		a.billtocustomerstandardizedname ,
		a.billtocustomerstate ,
		a.billtocustomertype1 ,
		a.billtocustomervertical ,
		a.billtoenterpriseindustry ,
		a.billtogsc_flag ,
		a.billtoindustry1 ,
		a.billtoindustrycode1 ,
		a.billtoparentaccount ,
		a.billtostandardizedname ,
		a.bsid ,
		a.channelflag ,
		a.channelproductgrouping ,
		a.coe ,
		a.country ,
		a.customerpurchaseordernumber ,
		a.customerrequestdate ,
		a.data_last_refreshed ,
		a.dcpowerfinanceparent ,
		a.dcpowerprofitcenter ,
		a.endcustomeraccountrole ,
		a.endcustomeraddress ,
		a.endcustomercity ,
		a.endcustomercountry ,
		a.endcustomercustomertype1 ,
		a.endcustomercustomertype1_2 ,
		a.endcustomerenterpriseindustry ,
		a.endcustomerenterpriseindustry2 ,
		a.endcustomergsc ,
		a.endcustomergsc_flag ,
		a.endcustomerindustry ,
		a.endcustomerindustry1 ,
		a.endcustomermarket ,
		a.endcustomername ,
		a.endcustomername2 ,
		a.endcustomernumber ,
		a.endcustomerparentaccount ,
		a.endcustomerparentname ,
		a.endcustomerpostalcode ,
		a.endcustomerstandardizedname ,
		a.endcustomerstate ,
		a.endcustomervertical ,
		a.exchangerateused ,
		CASE
			WHEN a.extendedlistprice<>0
				 AND b.split_percent IS NOT NULL THEN nvl(a.extendedlistprice *(cast(b.split_percent AS DOUBLE)/100),a.extendedlistprice)
			WHEN b.split_percent = 0 THEN 0
			ELSE a.extendedlistprice
		END AS extendedlistprice,
		a.extendedstandardcost ,
		a.f3 ,
		a.f4 ,
		a.firstdestinationflag ,
		a.gbu ,
		a.gbu_cleaned ,
		a.gbu_cleaned_groups ,
		a.growth_target ,
		a.invoicedate ,
		a.invoicelinenumber ,
		a.invoicenumber ,
		a.legacysizecategory ,
		a.lesbilltomajorclass ,
		a.lesbilltominorclass ,
		cast(b.split_percent as STRING) AS alicecommissionoverridepercent ,
		a.lesunitsflag ,
		a.level_6 ,
		CASE
			WHEN a.listprice<>0
				 AND b.split_percent IS NOT NULL THEN nvl(a.listprice *(cast(b.split_percent AS DOUBLE)/100),a.listprice)
			WHEN b.split_percent = 0 THEN 0
			ELSE a.listprice
		END AS listprice,	
		a.lob ,
		a.monthlycost ,
		CASE
			WHEN a.netsalesrevenue<>0
				 AND b.split_percent IS NOT NULL THEN nvl(a.netsalesrevenue *(cast(b.split_percent AS DOUBLE)/100),a.netsalesrevenue)
			WHEN b.split_percent = 0 THEN 0
			ELSE a.netsalesrevenue
		END AS netsalesrevenue,	
		a.newlescrossref2 ,
		a.office_no ,
		a.office_location ,
		a.office_website ,
		a.ordercoordinator ,
		a.ordercreatedate ,
		a.partnerlevelstandardized ,
		a.partnertypestandardized ,
		a.partnerwebfolderid ,
		a.partnerwebquotenumber ,
		a.phone_area_code ,
		a.phone_number ,
		a.plant ,
		a.plantdescription ,
		a.product_category ,
		a.product_family ,
		a.producthierarchylevel1description ,
		a.producthierarchylevel2description ,
		a.producthierarchylevel3description ,
		a.producthierarchylevel4code ,
		a.producthierarchylevel4description ,
		a.proshipmentnumber ,		 
		CASE
			WHEN a.quantityshipped <>0
				 AND b.split_percent IS NOT NULL THEN nvl(a.quantityshipped *(cast(b.split_percent AS DOUBLE)/100),a.quantityshipped)
			WHEN b.split_percent = 0 THEN 0
			ELSE a.quantityshipped
		END AS quantityshipped,
		a.quoteid ,
		a.recordid ,
		a.recordsource ,
		a.resellermajorcode ,
		a.resellerminorcode ,
		a.resellername ,
		a.resellerpartnerlevel ,
		a.resellerregion ,
		a.right_f3 ,
		a.right_right_country ,
		a.right_right_office_location ,
		a.sales_area ,
		a.sales_region ,
		a.sales_territory ,
		a.salesdistrictname ,
		a.salesdistrictnumber ,
		a.salesofficefamily ,
		NVL(b.sales_office_name,a.salesofficename) salesofficename ,  --VR 05202022 SO-672 
		NVL(b.officenumber,a.salesofficenumber) salesofficenumber ,   --VR 05202022 SO-672 
		a.salesofficenumberjoin , 
		a.salesofficeprincipalemail ,
		a.salesofficeprincipalname ,
		a.salesofficeregion ,
		a.salesordernumber ,
		a.salesregionname ,
		a.salesregionnumber ,
		b.emailaddress salesrepemail ,
		b.salesrepnumber salesrepid ,
		b.sales_rep_name salesrepname ,
		a.sapoemtag ,
		a.sapsalesorganization ,
		a.segment ,
		a.selling_motion ,
		a.sfr_category ,
		a.shipdate ,
		a.shipmentcarriername ,
		a.shiptoaccountrole ,
		a.shiptocustomeraddress ,
		a.shiptocustomercity ,
		a.shiptocustomercustomertype1 ,
		a.shiptocustomerenterpriseindustry ,
		a.shiptocustomergsc ,
		a.shiptocustomerindustry1 ,
		a.shiptocustomername ,
		a.shiptocustomernumber ,
		a.shiptocustomerparentaccount ,
		a.shiptocustomerparentname ,
		a.shiptocustomerpostalcode ,
		a.shiptocustomerpostalcodejoin ,
		a.shiptocustomerstandardizedname ,
		a.shiptocustomerstate ,
		a.shiptocustomertype1 ,
		a.shiptocustomervertical ,
		a.shiptoenterpriseindustry ,
		a.shiptogsc_flag ,
		a.shiptoindustry1 ,
		a.shiptoparentaccount ,
		a.shiptostandardizedname ,
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
		a.smssiteid ,
		a.smstagnumber ,
		a.smsticketnumber ,
		a.soldtocustomercustomertype1 ,
		a.soldtocustomerenterpriseindustry ,
		a.soldtocustomergsc ,
		a.soldtocustomerindustry1 ,
		a.soldtocustomername ,
		a.soldtocustomerparentaccount ,
		a.soldtocustomerstandardizedname ,
		a.soldtocustomervertical ,
		a.sourceorder ,
		a.speed_dial ,
		a.yearmonth ,
		a.w_insert_by ,
		a.w_insert_dtm ,
		a.src_system_name ,
		a.resellernumber ,
		a.resellerbranchnumber ,
		a.resellerbranchname ,
		a.office_type ,
		a.uom ,
		a.sales_order_line_type ,
		a.order_type ,
		a.invoice_type,
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
		a.soldtocustomercity,
		a.soldtocustomerstate,
		a.billtocustomerprovince,
		a.endcustomerprovince,
		a.shiptocustomerprovince,
		a.soldtocustomerprovince,
		a.shiptocustomercountry,
		a.soldtocustomercountry,
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
        --start--added by pooja for geist column addition 9-6-2022--
	    a.Measure,
        a.Calendar_Month,
        a.Calendar_Year,
        a.Local_Currency,
        a.Sales_Office,
        a.Unit_Price,
        a.Unit_Price_FXD_USD,
	    --end--added by pooja for geist column addition 9-6-2022--
	    a.billtoservicesmajoracc, --so-665 new attributes addition starts
		a.endservicesmajoracc,
		a.shiptoservicesmajoracc,
		a.soldtoservicesmajoracc,--so-665 new attributes addition ends
		a.billtocustomersubclass, --so-728 new attributes addition starts
		a.endcustomersubclass,
		a.shiptocustomersubclass,
		a.soldtocustomersubclass  --so-728 new attributes addition ends		
FROM @DB_LEVEL@_na_cld_osc_gold.sales_exploration_data_na_bkp a
LEFT JOIN @DB_LEVEL@_edm_other_src_silver.Invoice_Commissions_stage_tbl b 
on a.salesordernumber = b.salesordernumber
and a.endcustomerpostalcode = b.endcustomerpostalcode
and a.lob = b.lob
and a.recordsource = b.recordsource



----New commissions logic code ends here 