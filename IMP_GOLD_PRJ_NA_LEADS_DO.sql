1. INVALIDATE METADATA

invalidate metadata @DB_LEVEL@_na_cld_osc_gold.leads_data_na;
invalidate metadata @DB_LEVEL@_cld_osc_gold.crmod_osc_leads_vw;
invalidate metadata @DB_LEVEL@_edm_other_src_silver.rep_office_info;

2. populate_leads_data_na


insert overwrite @DB_LEVEL@_na_cld_osc_gold.leads_data_na
SELECT 
leads.ac_power ,
leads.account_type as accounttype ,
leads.acct_orig_sys_ref ,
leads.address1 ,
leads.address2 ,
leads.address3 ,
leads.address4 ,
leads.application ,
leads.area_of_expertise ,
leads.bu_id ,
leads.campaign_id ,
leads.campaign_name ,
leads.city ,
upper(leads.coe) as coe,
leads.company ,
leads.contact_email ,
leads.contact_full_name ,
leads.contact_id ,
leads.contact_type ,
leads.country ,
leads.country_c ,
leads.country_code ,
leads.county ,
leads.created_by ,
leads.created_date ,
leads.created_on ,
leads.currency_code ,
leads.custom_engineer ,
leads.dc_power ,
leads.deal_size ,
leads.division_c ,
leads.eloqua_id ,
nvl(leads.end_user_vertical_market,leads.vrt_industry_c) end_user_vertical_market ,
leads.estimated_close_date ,
leads.event_description ,
leads.expiration_date ,
leads.follow_up_date ,
leads.functional_program ,
leads.furniture ,
leads.industrial_power ,
leads.industry ,
leads.industry_group ,
leads.infrastructure_mgt_mntr ,
leads.internal_gtm_team ,
leads.job_title ,
leads.last_update_date ,
leads.lead_assignment_status ,
leads.lead_country ,
leads.lead_description ,
leads.lead_generating_team ,
leads.lead_id ,
leads.lead_name ,
leads.lead_number ,
leads.lead_priority ,
leads.lead_rating ,
leads.lead_source_most_recent ,
leads.lead_source_org ,
leads.lead_type ,
leads.legacy_lead_id ,
leads.manager_name ,
leads.market_unit ,
leads.mobile_workstation ,
leads.modified_by ,
leads.opportunity_id ,
leads.opportunity_name ,
leads.outside_plant ,
leads.owner_id ,
leads.owner_name ,
leads.postal_code ,
leads.postal_plus4_code ,
leads.potential_revenue ,
leads.power_switching ,
leads.prefix ,
leads.primary_contact ,
leads.primary_contact_id ,
leads.primary_phone_area_code ,
leads.primary_phone_country_code ,
leads.primary_phone_number ,
leads.primarysalesoffice_c ,
leads.product_interest ,
leads.qualification_date ,
leads.qualification_score ,
leads.racks ,
leads.rank ,
leads.region_c ,
leads.reject_code ,
leads.rejected_comments ,
leads.rejected_reason ,
leads.retire_reason ,
leads.retirement_comments ,
leads.sales_account_name ,
case when length(leads.sales_office_number)<5 and leads.sales_office_number <> '' then lpad(leads.sales_office_number,5,'0') else leads.sales_office_number end as salesofficenumber ,
roi.office_name as salesofficename ,
leads.sales_owner ,
leads.sales_party_id ,
leads.services ,
leads.site_id ,
leads.sms_customer_type ,
leads.source ,
leads.source_code ,
leads.state ,
leads.status ,
leads.status_c ,
leads.status_code ,
leads.strategic_campaign ,
leads.tag ,
leads.thermal ,
leads.timeframe ,
leads.unified_infrastructure ,
leads.unsubscribed ,
leads.vrt_apac_eventname_c ,
leads.vrt_apac_eventname_id_c ,
leads.vrt_country_dcl_c ,
leads.vrt_country_dcl_id_c ,
leads.vrt_industry_c ,
leads.work_phone_area_code ,
leads.work_phone_country_code ,
leads.work_phone_number ,
effective_user() as w_insert_by ,
now() as w_insert_dtm ,
'SalesOps' as src_system_name
FROM 
(select	* from	@DB_LEVEL@_cld_osc_gold.crmod_osc_leads_vw where lead_country in ('United States', 'Canada') ) leads
left outer join @DB_LEVEL@_edm_other_src_silver.rep_office_info roi ON
case when length(leads.sales_office_number)<5 and leads.sales_office_number <> '' then lpad(leads.sales_office_number,5,'0') else leads.sales_office_number end = roi.office_location;

invalidate metadata @DB_LEVEL@_na_cld_osc_gold.leads_data_na ;