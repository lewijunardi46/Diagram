# Auto-generated from SQL Server - Database: Foundation
 
ActiveRecord::Schema[8.1].define(version: 20260515_000000) do
 
  create_table "asset_accessory", force: :cascade do |t|
    t.bigint "asset_accessory_id", null: false
    t.bigint "asset_type_id", null: false
    t.string "asset_accessory_code", limit: 25
    t.string "asset_accessory_name", limit: 50, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "asset_attr", force: :cascade do |t|
    t.bigint "asset_attr_id", null: false
    t.bigint "asset_type_id", null: false
    t.bigint "ref_attr_id", null: false
    t.boolean "is_editable_after_go_live", null: false
  end
 
  create_table "asset_category", force: :cascade do |t|
    t.bigint "asset_category_id", null: false
    t.bigint "asset_type_id", null: false
    t.string "asset_category_code", limit: 25, null: false
    t.string "asset_category_name", limit: 50, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "asset_doc_list", force: :cascade do |t|
    t.bigint "asset_doc_list_id", null: false
    t.bigint "asset_type_id", null: false
    t.bigint "ref_asset_doc_id", null: false
    t.boolean "is_main_doc", null: false
    t.boolean "is_value_needed", null: false
    t.boolean "is_pledge", null: false
    t.boolean "is_borrow", null: false
    t.boolean "is_mandatory_new", null: false
    t.boolean "is_mandatory_used", null: false
    t.boolean "is_active", null: false
    t.boolean "is_exp_dt_mandatory", default: false, null: false
  end
 
  create_table "asset_master", force: :cascade do |t|
    t.bigint "asset_master_id", null: false
    t.bigint "asset_category_id"
    t.bigint "asset_type_id", null: false
    t.string "asset_code", limit: 25, null: false
    t.string "asset_name", limit: 50, null: false
    t.integer "hierarchy_lvl", null: false
    t.string "full_asset_code", limit: 250, null: false
    t.string "full_asset_name", limit: 500, null: false
    t.bigint "parent_id"
    t.boolean "is_final", null: false
    t.boolean "is_active", null: false
    t.string "reserve_field_1", limit: 2000
    t.string "reserve_field_2", limit: 2000
    t.string "reserve_field_3", limit: 2000
    t.string "reserve_field_4", limit: 2000
    t.string "reserve_field_5", limit: 2000
  end
 
  create_table "asset_master_attr_content", force: :cascade do |t|
    t.bigint "asset_master_attr_content_id", null: false
    t.bigint "asset_master_id", null: false
    t.bigint "asset_attr_id", null: false
    t.string "attr_content", limit: 50, null: false
  end
 
  create_table "asset_negative", force: :cascade do |t|
    t.bigint "asset_negative_id", null: false
    t.bigint "asset_master_id", null: false
    t.string "serial_no_1", limit: 25
    t.string "serial_no_2", limit: 25
    t.string "serial_no_3", limit: 25
    t.string "serial_no_4", limit: 25
    t.string "serial_no_5", limit: 25
    t.string "mr_neg_asset_source_code", limit: 25, null: false
    t.string "notes", limit: 2000
    t.boolean "is_active", null: false
  end
 
  create_table "asset_negative_hist", force: :cascade do |t|
    t.bigint "asset_negative_hist_id", null: false
    t.bigint "asset_negative_id", null: false
    t.string "mr_neg_asset_source_code", limit: 25, null: false
    t.string "notes", limit: 2000
    t.boolean "is_active", null: false
    t.integer "version", null: false
  end
 
  create_table "asset_schm_d", force: :cascade do |t|
    t.bigint "asset_schm_d_id", null: false
    t.bigint "asset_schm_h_id", null: false
    t.bigint "asset_master_id", null: false
  end
 
  create_table "asset_schm_h", force: :cascade do |t|
    t.bigint "asset_schm_h_id", null: false
    t.bigint "asset_type_id", null: false
    t.string "asset_schm_code", limit: 25, null: false
    t.string "asset_schm_name", limit: 50, null: false
    t.boolean "is_active", null: false
    t.boolean "is_system", default: false, null: false
  end
 
  create_table "asset_type", force: :cascade do |t|
    t.bigint "asset_type_id", null: false
    t.string "asset_type_code", limit: 25, null: false
    t.string "asset_type_name", limit: 50, null: false
    t.integer "max_hierarchy_level", null: false
    t.string "hierarchy_label_level_1", limit: 50
    t.string "hierarchy_label_level_2", limit: 50
    t.string "hierarchy_label_level_3", limit: 50
    t.string "hierarchy_label_level_4", limit: 50
    t.string "hierarchy_label_level_5", limit: 50
    t.string "serial_no_1_label", limit: 50
    t.string "serial_no_2_label", limit: 50
    t.string "serial_no_3_label", limit: 50
    t.string "serial_no_4_label", limit: 50
    t.string "serial_no_5_label", limit: 50
    t.boolean "is_mndtry_serial_no_1"
    t.boolean "is_mndtry_serial_no_2"
    t.boolean "is_mndtry_serial_no_3"
    t.boolean "is_mndtry_serial_no_4"
    t.boolean "is_mndtry_serial_no_5"
    t.boolean "is_loan_obj", null: false
    t.boolean "is_active", null: false
    t.integer "total_serial_no_label", default: 0, null: false
  end
 
  create_table "auth_api", force: :cascade do |t|
    t.bigint "auth_api_id", null: false
    t.bigint "ref_api_id", null: false
    t.bigint "ref_form_id", null: false
  end
 
  create_table "auth_form", force: :cascade do |t|
    t.bigint "auth_form_id", null: false
    t.bigint "ref_form_id", null: false
    t.bigint "ref_role_id", null: false
    t.string "form_feature", limit: 2000
  end
 
  create_table "center_grp", force: :cascade do |t|
    t.bigint "center_grp_id", null: false
    t.string "center_grp_code", limit: 25, null: false
    t.string "center_grp_name", limit: 50, null: false
    t.string "mr_center_grp_type_code", limit: 25, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "center_grp_office_mbr", force: :cascade do |t|
    t.bigint "center_grp_office_mbr_id", null: false
    t.bigint "center_grp_id", null: false
    t.bigint "ref_office_id", null: false
    t.boolean "is_coordinator", null: false
  end
 
  create_table "coa_schm", force: :cascade do |t|
    t.bigint "coa_schm_id", null: false
    t.string "schm_code", limit: 25, null: false
    t.string "schm_name", limit: 50, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "cust", force: :cascade do |t|
    t.bigint "cust_id", null: false
    t.string "cust_no", limit: 50
    t.string "cust_name", limit: 250, null: false
    t.string "mr_cust_type_code", limit: 25, null: false
    t.string "mr_cust_model_code", limit: 25
    t.string "mr_id_type_code", limit: 25
    t.string "id_no", limit: 25
    t.datetime "id_expired_dt"
    t.string "tax_id_no", limit: 25
    t.boolean "is_vip", null: false
    t.string "original_office_code", limit: 25
    t.boolean "is_affiliate_with_mf", null: false
    t.string "vip_notes", limit: 2000
    t.boolean "is_customer", default: false, null: false
    t.boolean "is_family", default: false, null: false
    t.boolean "is_guarantor", default: false, null: false
    t.boolean "is_shareholder", default: false, null: false
    t.string "third_party_trx_no", limit: 50
    t.datetime "validfrom", default: "getdate", null: false
    t.datetime "validtill", default: "9999-12-31 23:59:59", null: false
    t.string "modifieduser", limit: 64
    t.string "third_party_rslt_h_group_no", limit: 25
    t.boolean "is_cust_grp", default: false, null: false
  end
 
  create_table "cust_addr", force: :cascade do |t|
    t.bigint "cust_addr_id", null: false
    t.bigint "cust_id", null: false
    t.string "mr_cust_addr_type_code", limit: 25, null: false
    t.string "addr", limit: 500
    t.string "area_code_1", limit: 25
    t.string "area_code_2", limit: 25
    t.string "area_code_3", limit: 25
    t.string "area_code_4", limit: 25
    t.string "city", limit: 25
    t.string "zipcode", limit: 25
    t.string "mr_building_ownership_code", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_1", limit: 25
    t.string "phn_ext_1", limit: 5
    t.string "phn_area_2", limit: 10
    t.string "phn_2", limit: 25
    t.string "phn_ext_2", limit: 5
    t.string "phn_area_3", limit: 10
    t.string "phn_3", limit: 25
    t.string "phn_ext_3", limit: 5
    t.string "fax_area", limit: 10
    t.string "fax", limit: 25
    t.string "notes", limit: 2000
    t.string "sub_zipcode", limit: 25
    t.decimal "stay_length", precision: 17, scale: 2
    t.datetime "stay_since"
  end
 
  create_table "cust_addr_attr_content", force: :cascade do |t|
    t.bigint "cust_addr_attr_content_id", null: false
    t.bigint "cust_addr_id", null: false
    t.string "attr_value", limit: 500, null: false
    t.bigint "ref_attr_id", default: 0, null: false
  end
 
  create_table "cust_addr_attr_content_hist", force: :cascade do |t|
    t.bigint "cust_addr_attr_content_hist_id", null: false
    t.bigint "cust_addr_id", null: false
    t.string "attr_value", limit: 500, null: false
    t.bigint "ref_attr_id", default: 0, null: false
  end
 
  create_table "cust_addr_hist", force: :cascade do |t|
    t.bigint "cust_addr_hist_id", null: false
    t.bigint "cust_id", null: false
    t.bigint "cust_addr_id", null: false
    t.string "mr_cust_addr_type_code", limit: 25, null: false
    t.string "addr", limit: 500
    t.string "area_code_1", limit: 25
    t.string "area_code_2", limit: 25
    t.string "area_code_3", limit: 25
    t.string "area_code_4", limit: 25
    t.string "city", limit: 25
    t.string "zipcode", limit: 25
    t.string "sub_zipcode", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_1", limit: 25
    t.string "phn_ext_1", limit: 5
    t.string "phn_area_2", limit: 10
    t.string "phn_2", limit: 25
    t.string "phn_ext_2", limit: 5
    t.string "phn_area_3", limit: 10
    t.string "phn_3", limit: 25
    t.string "phn_ext_3", limit: 5
    t.string "fax_area", limit: 10
    t.string "fax", limit: 25
    t.string "mr_building_ownership_code", limit: 25
    t.string "notes", limit: 2000
    t.decimal "stay_length", precision: 17, scale: 2
    t.datetime "stay_since"
  end
 
  create_table "cust_asset", force: :cascade do |t|
    t.bigint "cust_asset_id", null: false
    t.bigint "cust_id", null: false
    t.string "mr_cust_asset_type_code", limit: 100, null: false
    t.string "asset_descr", limit: 127
    t.decimal "asset_value", precision: 17, scale: 2
    t.integer "asset_qty"
    t.decimal "asset_total_value", precision: 17, scale: 2
  end
 
  create_table "cust_attr_content", force: :cascade do |t|
    t.bigint "cust_attr_content_id", null: false
    t.bigint "cust_id", null: false
    t.string "attr_value", limit: 500, null: false
    t.bigint "ref_attr_id", default: 0, null: false
  end
 
  create_table "cust_attr_content_hist", force: :cascade do |t|
    t.bigint "cust_attr_content_hist_id", null: false
    t.bigint "cust_id", null: false
    t.string "attr_value", limit: 500, null: false
    t.bigint "ref_attr_id", default: 0, null: false
    t.integer "seq_no", default: 0, null: false
  end
 
  create_table "cust_bank_acc", force: :cascade do |t|
    t.bigint "cust_bank_acc_id", null: false
    t.bigint "cust_id", null: false
    t.bigint "ref_bank_id", null: false
    t.string "bank_branch", limit: 25, null: false
    t.string "bank_acc_no", limit: 250, null: false
    t.string "bank_acc_name", limit: 250, null: false
    t.boolean "is_bank_stmnt", null: false
    t.string "bank_branch_reg_rpt_code", limit: 25
    t.decimal "balance_amt", precision: 17, scale: 2, null: false
    t.boolean "is_default", null: false
    t.boolean "is_active", null: false
    t.string "end_period", limit: 25
    t.string "start_period", limit: 25
    t.decimal "beg_balance_amt", precision: 17, scale: 2, default: "00:00:00", null: false
  end
 
  create_table "cust_bank_stmnt", force: :cascade do |t|
    t.bigint "cust_bank_stmnt_id", null: false
    t.bigint "cust_bank_acc_id", null: false
    t.string "month", limit: 25, null: false
    t.string "year", limit: 25, null: false
    t.integer "debit_trx_count"
    t.decimal "debit_amt", precision: 17, scale: 2, null: false
    t.integer "credit_trx_count"
    t.decimal "credit_amt", precision: 17, scale: 2, null: false
    t.decimal "balance_amt", precision: 17, scale: 2, null: false
  end
 
  create_table "cust_bank_stmnt_d", force: :cascade do |t|
    t.bigint "cust_bank_stmnt_d_id", null: false
    t.bigint "cust_bank_stmnt_h_id", null: false
    t.string "month", limit: 25, null: false
    t.string "year", limit: 25, null: false
    t.decimal "debit_amt", precision: 17, scale: 2, null: false
    t.decimal "credit_amt", precision: 17, scale: 2, null: false
    t.decimal "balance_amt", precision: 17, scale: 2, null: false
    t.integer "debit_trx_count"
    t.integer "credit_trx_count"
  end
 
  create_table "cust_company", force: :cascade do |t|
    t.bigint "cust_company_id", null: false
    t.bigint "cust_id", null: false
    t.string "mr_company_type_code", limit: 25
    t.bigint "ref_industry_type_id"
    t.string "registration_no", limit: 50
    t.string "license_no", limit: 50
    t.integer "num_of_emp"
    t.string "mr_investment_type_code", limit: 25
    t.datetime "establishment_dt"
    t.boolean "is_affiliated", null: false
    t.string "website", limit: 50
    t.string "phn_area_1", limit: 10
    t.string "phn_1", limit: 25
    t.string "phn_ext_1", limit: 5
    t.string "phn_area_2", limit: 10
    t.string "phn_2", limit: 25
    t.string "phn_ext_2", limit: 5
    t.string "email_1", limit: 25
    t.string "email_2", limit: 25
    t.boolean "is_taxable", default: false, null: false
    t.bigint "ref_sector_economy_slik_id"
    t.string "modifieduser", limit: 64
    t.string "establishment_city", limit: 50
  end
 
  create_table "cust_company_contact_person", force: :cascade do |t|
    t.bigint "cust_company_contact_person_id", null: false
    t.bigint "cust_company_id", null: false
    t.string "contact_person_name", limit: 250
    t.string "mr_job_position_code", limit: 25
    t.string "job_title_name", limit: 50
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "email_1", limit: 25
    t.string "email_2", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_1", limit: 25
    t.string "phn_ext_1", limit: 5
    t.string "phn_area_2", limit: 10
    t.string "phn_2", limit: 25
    t.string "phn_ext_2", limit: 5
    t.string "mr_gender_code", limit: 25, null: false
    t.datetime "birth_dt"
    t.string "birth_place", limit: 100
    t.string "id_no", limit: 25
    t.string "mr_cust_relationship_code", limit: 25
    t.string "mr_id_type_code", limit: 25
    t.datetime "id_expired_dt"
    t.string "mobile_phn_no_3", limit: 25
  end
 
  create_table "cust_company_fin_data", force: :cascade do |t|
    t.bigint "cust_company_fin_data_id", null: false
    t.bigint "cust_company_id", null: false
    t.decimal "gross_monthly_income_amt", precision: 17, scale: 2, null: false
    t.decimal "gross_profit_amt", precision: 17, scale: 2, null: false
    t.decimal "return_of_investment_prcnt", precision: 9, scale: 6, null: false
    t.decimal "return_of_equity_prcnt", precision: 9, scale: 6, null: false
    t.decimal "return_of_asset_prcnt", precision: 9, scale: 6, null: false
    t.decimal "profit_margin_prcnt", precision: 9, scale: 6, null: false
    t.decimal "current_ratio_prcnt", precision: 9, scale: 6, null: false
    t.decimal "debt_equity_ratio_prcnt", precision: 9, scale: 6, null: false
    t.decimal "inv_turn_over_prcnt", precision: 9, scale: 6, null: false
    t.decimal "ar_turn_over_prcnt", precision: 9, scale: 6, null: false
    t.decimal "growth_prcnt", precision: 9, scale: 6, null: false
    t.decimal "working_capital_amt", precision: 17, scale: 2, null: false
    t.decimal "oth_monthly_inst_amt", precision: 17, scale: 2, null: false
    t.datetime "date_as_of"
    t.decimal "revenue", precision: 17, scale: 2, null: false
    t.decimal "opr_cost", precision: 17, scale: 2, null: false
    t.decimal "profit_before_tax", precision: 17, scale: 2, null: false
    t.decimal "curr_asset", precision: 17, scale: 2, null: false
    t.decimal "net_fixed_asset", precision: 17, scale: 2, null: false
    t.decimal "total_asset", precision: 17, scale: 2, null: false
    t.decimal "curr_liablts", precision: 17, scale: 2, null: false
    t.decimal "long_temr_liablts", precision: 17, scale: 2, null: false
    t.decimal "shareholder_equity", precision: 17, scale: 2, null: false
    t.decimal "curr_ratio", precision: 17, scale: 2, null: false
  end
 
  create_table "cust_company_hist", force: :cascade do |t|
    t.bigint "cust_company_hist_id", null: false
    t.bigint "cust_company_id", null: false
    t.bigint "cust_id", null: false
    t.string "mr_company_type_code", limit: 25
    t.bigint "ref_industry_type_id"
    t.string "registration_no", limit: 50
    t.string "license_no", limit: 50
    t.integer "num_of_emp"
    t.string "mr_investment_type_code", limit: 25
    t.datetime "establishment_dt"
    t.boolean "is_affiliated", null: false
    t.string "website", limit: 50
    t.string "phn_area_1", limit: 10
    t.string "phn_1", limit: 25
    t.string "phn_ext_1", limit: 5
    t.string "phn_area_2", limit: 10
    t.string "phn_2", limit: 25
    t.string "phn_ext_2", limit: 5
    t.string "email_1", limit: 25
    t.string "email_2", limit: 25
  end
 
  create_table "cust_company_legal_doc", force: :cascade do |t|
    t.bigint "cust_company_legal_doc_id", null: false
    t.bigint "cust_company_id", null: false
    t.string "mr_legal_doc_type_code", limit: 25
    t.string "doc_no", limit: 25
    t.datetime "doc_dt"
    t.datetime "doc_expired_dt"
    t.string "doc_notes", limit: 2000
    t.string "notary_name", limit: 250
    t.string "notary_location", limit: 2000
    t.boolean "is_exp_dt_mandatory", default: false, null: false
    t.string "doc_name", limit: 100
    t.boolean "need_legal_opinion", default: false, null: false
    t.bigint "doc_dms_id"
    t.string "doc_upload_name", limit: 100
  end
 
  create_table "cust_company_mgmnt_shrholder", force: :cascade do |t|
    t.bigint "cust_company_mgmnt_shrholder_id", null: false
    t.bigint "cust_id"
    t.bigint "shareholder_id"
    t.decimal "share_prcnt", precision: 9, scale: 6
    t.string "mr_job_position_code", limit: 25
    t.boolean "is_active", null: false
    t.boolean "is_owner", null: false
    t.boolean "is_signer", null: false
    t.datetime "establishment_dt"
    t.string "mr_position_slik_code", limit: 50
    t.string "mr_public_type_code", limit: 50
    t.string "mr_shrholder_type_code", limit: 50
    t.string "public_addr", limit: 1000
    t.string "public_area_code_1", limit: 50
    t.string "public_area_code_2", limit: 50
    t.string "public_area_code_3", limit: 50
    t.string "public_area_code_4", limit: 50
    t.string "public_city", limit: 50
    t.string "public_identity_no", limit: 100
    t.string "public_name", limit: 500
    t.string "public_zipcode", limit: 50
    t.datetime "business_start_dt"
    t.datetime "signer_end_dt"
    t.string "spouse_check_flag", limit: 25
  end
 
  create_table "cust_expsr_app_agr_hist", force: :cascade do |t|
    t.bigint "cust_expsr_app_agr_hist_id", null: false
    t.bigint "cust_expsr_h_id", null: false
    t.string "app_no", limit: 100, null: false
    t.string "agrmnt_no", limit: 100
    t.datetime "go_live_dt"
    t.string "offering_name", limit: 100
    t.string "app_stat", limit: 50
    t.string "app_step", limit: 50
    t.string "contract_stat", limit: 50
    t.decimal "os_principal", precision: 17, scale: 2, null: false
    t.string "fpd", limit: 25
    t.string "cust_name", limit: 500
    t.string "role_cust", limit: 50
    t.decimal "overdue_amt", precision: 17, scale: 2
    t.integer "overdue_days"
  end
 
  create_table "cust_expsr_bucket", force: :cascade do |t|
    t.bigint "cust_expsr_bucket_id", null: false
    t.bigint "cust_expsr_d_id", null: false
    t.bigint "order_no", null: false
    t.string "bucket_range", limit: 50
    t.decimal "value", precision: 17, scale: 2, null: false
  end
 
  create_table "cust_expsr_d", force: :cascade do |t|
    t.bigint "cust_expsr_d_id", null: false
    t.bigint "cust_expsr_h_id", null: false
    t.string "exposure_type", limit: 25
    t.decimal "os_principal_amt", precision: 17, scale: 2, null: false
    t.decimal "os_interest_amt", precision: 17, scale: 2, null: false
    t.decimal "os_ar_balance", precision: 17, scale: 2, null: false
    t.decimal "max_ar", precision: 17, scale: 2, null: false
    t.decimal "max_installment_amt", precision: 17, scale: 2, null: false
    t.integer "total_agrmnt_overdue", null: false
    t.integer "max_overdue_days", null: false
    t.decimal "max_overdue_amt", precision: 17, scale: 2, null: false
    t.integer "span_of_month", null: false
    t.integer "active_agrmnt", null: false
    t.integer "agrmnt_in_process", null: false
    t.integer "agrmnt_rejected", null: false
    t.integer "agrmnt_cancelled", null: false
    t.integer "agrmnt_repossess", null: false
    t.integer "agrmnt_paid_off", null: false
    t.integer "agrmnt_written_off", null: false
    t.integer "agrmnt_non_acrual", null: false
    t.integer "agrmnt_fpd", null: false
    t.string "fpd_indicator", limit: 50
    t.string "fpd_indicator_descr", limit: 500
    t.integer "bounce_cheque", null: false
    t.integer "asset_in_financing", null: false
    t.integer "asset_repossessed", null: false
    t.integer "asset_inventoried", null: false
    t.string "overdue_indicator", limit: 50
    t.string "overdue_indicator_descr", limit: 500
  end
 
  create_table "cust_expsr_h", force: :cascade do |t|
    t.bigint "cust_expsr_h_id", null: false
    t.bigint "cust_expsr_info_id", null: false
    t.string "cust_no", limit: 50
    t.string "cust_name", limit: 500
    t.string "cust_indicator", limit: 50
    t.string "cust_indicator_descr", limit: 500
    t.string "id_type", limit: 50
    t.string "id_no", limit: 50
    t.string "relation_with_cust", limit: 50
    t.string "relation_type", limit: 25
  end
 
  create_table "cust_expsr_info", force: :cascade do |t|
    t.bigint "cust_expsr_info_id", null: false
    t.bigint "cust_id", null: false
    t.string "cust_no", limit: 50
    t.string "cust_name", limit: 500
    t.string "cust_indicator", limit: 50
    t.string "cust_indicator_descr", limit: 500
    t.integer "cust_expsr_version", null: false
    t.datetime "as_of_date", null: false
    t.string "capture_stat", limit: 25
  end
 
  create_table "cust_fin_data_attr_content", force: :cascade do |t|
    t.bigint "cust_fin_data_attr_content_id", null: false
    t.bigint "cust_id", null: false
    t.bigint "ref_attr_id", null: false
    t.string "attr_value", limit: 500, null: false
    t.string "attr_group", limit: 25
  end
 
  create_table "cust_grp", force: :cascade do |t|
    t.bigint "cust_grp_id", null: false
    t.bigint "cust_id", null: false
    t.bigint "member_cust_id", null: false
    t.string "mr_cust_relationship_code", limit: 25
    t.string "cust_grp_notes", limit: 2000
    t.boolean "is_active", null: false
  end
 
  create_table "cust_hist", force: :cascade do |t|
    t.bigint "cust_hist_id", null: false
    t.bigint "cust_id", null: false
    t.string "cust_no", limit: 50
    t.string "cust_name", limit: 250, null: false
    t.string "mr_cust_type_code", limit: 25, null: false
    t.string "mr_cust_model_code", limit: 25
    t.string "mr_id_type_code", limit: 25
    t.string "id_no", limit: 25
    t.datetime "id_expired_dt"
    t.string "tax_id_no", limit: 25
    t.boolean "is_vip", null: false
    t.string "original_office_code", limit: 25
    t.boolean "is_affiliate_with_mf", null: false
    t.string "vip_notes", limit: 2000
  end
 
  create_table "cust_id_type_hist", force: :cascade do |t|
    t.bigint "cust_id_type_hist_id", null: false
    t.bigint "cust_id", null: false
    t.string "mr_id_type_code", limit: 25, null: false
    t.string "id_no", limit: 25, null: false
  end
 
  create_table "cust_other_info", force: :cascade do |t|
    t.bigint "cust_other_info_id", null: false
    t.bigint "cust_id", null: false
    t.bigint "lbppms_cntrprt_id", null: false
    t.bigint "lbppms_biz_sustain_id", null: false
    t.bigint "lbppms_biz_scl_id", default: 0, null: false
    t.bigint "lbppms_debt_grp_id", default: 0, null: false
    t.string "lbppms_biz_scl_code", limit: 25
    t.string "lbppms_biz_sustain_code", limit: 25
    t.string "lbppms_cntrprt_code", limit: 25
    t.string "lbppms_debt_grp_code", limit: 25
  end
 
  create_table "cust_personal", force: :cascade do |t|
    t.bigint "cust_personal_id", null: false
    t.bigint "cust_id", null: false
    t.string "cust_full_name", limit: 250
    t.string "cust_prefix_name", limit: 100
    t.string "cust_suffix_name", limit: 100
    t.string "nick_name", limit: 50
    t.string "birth_place", limit: 25
    t.datetime "birth_dt"
    t.string "mother_maiden_name", limit: 250
    t.string "mr_gender_code", limit: 25
    t.string "mr_religion_code", limit: 25
    t.string "mr_education_code", limit: 25
    t.string "mr_nationality_code", limit: 25
    t.string "wna_country_code", limit: 25
    t.string "mr_marital_stat_code", limit: 25
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "email_1", limit: 25
    t.string "email_2", limit: 25
    t.string "family_card_no", limit: 25
    t.integer "no_of_dependents"
    t.integer "no_of_residence"
    t.boolean "is_rest_in_peace", null: false
    t.string "mr_salutation_code", limit: 25
    t.string "email_3", limit: 25
    t.string "mobile_phn_no_3", limit: 25
    t.string "modifieduser", limit: 64
    t.boolean "is_wa_mobile_phn_no_1", default: false, null: false
    t.boolean "is_wa_mobile_phn_no_2", default: false, null: false
    t.boolean "is_wa_mobile_phn_no_3", default: false, null: false
  end
 
  create_table "cust_personal_emergency_contact", force: :cascade do |t|
    t.bigint "cust_personal_emergency_contact_id", null: false
    t.bigint "cust_id", null: false
    t.string "contact_person_name", limit: 250
    t.string "mr_id_type_code", limit: 25
    t.string "id_no", limit: 25
    t.string "birth_place", limit: 100
    t.datetime "birth_dt"
    t.string "mother_maiden_name", limit: 250
    t.string "mr_gender_code", limit: 25
    t.string "mr_religion_code", limit: 25
    t.string "mr_education_code", limit: 25
    t.string "mr_job_profession_code", limit: 25
    t.string "mr_marital_stat_code", limit: 25
    t.string "mr_nationality_code", limit: 25
    t.string "nationality_country_code", limit: 25
    t.string "mr_cust_relationship_code", limit: 25
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "email", limit: 50
    t.string "addr", limit: 500
    t.string "area_code_1", limit: 25
    t.string "area_code_2", limit: 25
    t.string "area_code_3", limit: 25
    t.string "area_code_4", limit: 25
    t.string "city", limit: 25
    t.string "zipcode", limit: 25
    t.string "sub_zipcode", limit: 25
    t.string "contact_person_cust_no", limit: 50
    t.datetime "id_expired_dt"
    t.string "tax_id_no", limit: 25
    t.string "phn_1", limit: 25
    t.string "phn_2", limit: 25
    t.string "phn_3", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_area_2", limit: 10
    t.string "phn_area_3", limit: 10
    t.string "phn_ext_1", limit: 5
    t.string "phn_ext_2", limit: 5
    t.string "phn_ext_3", limit: 5
    t.boolean "is_wa_mobile_phn_no_1", default: false, null: false
    t.boolean "is_wa_mobile_phn_no_2", default: false, null: false
    t.boolean "is_wa_mobile_phn_no_3", default: false, null: false
    t.string "mobile_phn_no_3", limit: 25
  end
 
  create_table "cust_personal_family", force: :cascade do |t|
    t.bigint "cust_personal_family_id", null: false
    t.bigint "cust_id"
    t.bigint "family_id"
    t.string "mr_cust_relationship", limit: 50, null: false
  end
 
  create_table "cust_personal_fin_data", force: :cascade do |t|
    t.bigint "cust_personal_fin_data_id", null: false
    t.bigint "cust_personal_id", null: false
    t.decimal "monthly_income_amt", precision: 17, scale: 2, null: false
    t.decimal "monthly_expense_amt", precision: 17, scale: 2, null: false
    t.decimal "monthly_installment_amt", precision: 17, scale: 2, null: false
    t.string "mr_source_of_income_code", limit: 25
    t.decimal "spouse_monthly_income_amt", precision: 17, scale: 2, null: false
    t.boolean "is_join_income", null: false
    t.decimal "nett_income_amt", precision: 17, scale: 2, default: "00:00:00", null: false
    t.decimal "nett_profit_monthly_amt", precision: 17, scale: 2, default: "00:00:00", null: false
    t.decimal "other_income_amt", precision: 17, scale: 2, default: "00:00:00", null: false
    t.decimal "other_monthly_installment_amt", precision: 17, scale: 2, default: "00:00:00", null: false
    t.decimal "total_income_amt", precision: 17, scale: 2, default: "00:00:00", null: false
    t.datetime "date_as_of"
  end
 
  create_table "cust_personal_hist", force: :cascade do |t|
    t.bigint "cust_personal_hist_id", null: false
    t.bigint "cust_personal_id", null: false
    t.bigint "cust_id", null: false
    t.string "cust_full_name", limit: 250
    t.string "cust_prefix_name", limit: 100
    t.string "cust_suffix_name", limit: 100
    t.string "nick_name", limit: 50
    t.string "birth_place", limit: 25
    t.datetime "birth_dt"
    t.string "mother_maiden_name", limit: 250
    t.string "mr_gender_code", limit: 25
    t.string "mr_religion_code", limit: 25
    t.string "mr_education_code", limit: 25
    t.string "mr_nationality_code", limit: 25
    t.string "wna_country_code", limit: 25
    t.string "mr_marital_stat_code", limit: 25
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "email_1", limit: 25
    t.string "email_2", limit: 25
    t.string "family_card_no", limit: 25
    t.integer "no_of_dependents"
    t.integer "no_of_residence"
    t.boolean "is_rest_in_peace", null: false
    t.string "mr_salutation_code", limit: 25
    t.string "email_3", limit: 25
    t.string "mobile_phn_no_3", limit: 25
    t.boolean "is_wa_mobile_phn_no_1", default: false, null: false
    t.boolean "is_wa_mobile_phn_no_2", default: false, null: false
    t.boolean "is_wa_mobile_phn_no_3", default: false, null: false
  end
 
  create_table "cust_personal_job_data", force: :cascade do |t|
    t.bigint "cust_personal_job_data_id", null: false
    t.bigint "cust_id"
    t.bigint "ref_profession_id"
    t.string "coy_name", limit: 250
    t.string "mr_job_position_code", limit: 25
    t.bigint "ref_industry_type_id"
    t.string "mr_job_stat_code", limit: 25
    t.string "professional_no", limit: 50
    t.string "job_title_name", limit: 50
    t.datetime "employment_establishment_dt"
    t.boolean "is_mf_emp", null: false
    t.string "mr_coy_scale_code", limit: 25
    t.integer "no_of_employ"
    t.string "mr_investment_type_code", limit: 25
    t.bigint "job_addr_id"
    t.string "prev_coy_name", limit: 50
    t.datetime "prev_employment_dt"
    t.bigint "prev_job_addr_id"
    t.string "emp_no", limit: 25
    t.string "oth_biz_name", limit: 50
    t.string "oth_biz_type", limit: 25
    t.string "oth_biz_industry_type_code", limit: 25
    t.string "oth_biz_job_position", limit: 25
    t.datetime "oth_biz_establishment_dt"
    t.bigint "oth_biz_addr_id"
    t.boolean "is_wellknown_coy"
    t.string "mr_wellknown_coy_code", limit: 25
  end
 
  create_table "emp_bank_acc", force: :cascade do |t|
    t.bigint "emp_bank_acc_id", null: false
    t.bigint "ref_emp_id", null: false
    t.bigint "ref_bank_id", null: false
    t.string "bank_branch", limit: 50
    t.string "bank_branch_reg_code", limit: 25
    t.string "bank_acc_no", limit: 250, null: false
    t.string "bank_acc_name", limit: 250, null: false
  end
 
  create_table "exchange_rate", force: :cascade do |t|
    t.bigint "exchange_rate_id", null: false
    t.bigint "ref_curr_id", null: false
    t.datetime "curr_dt", null: false
    t.decimal "exchange_rate_amt", precision: 17, scale: 2, null: false
    t.datetime "posting_dt", default: "01-01-0001 00:00:00", null: false
    t.datetime "value_dt", default: "01-01-0001 00:00:00", null: false
  end
 
  create_table "general_setting", force: :cascade do |t|
    t.bigint "general_setting_id", null: false
    t.string "gs_code", limit: 25, null: false
    t.string "gs_name", limit: 50, null: false
    t.string "gs_value", limit: 1500, null: false
    t.string "gs_descr", limit: 2000
    t.string "module_code", limit: 25, null: false
    t.string "role_code", limit: 250
    t.boolean "is_updatable", default: false, null: false
  end
 
  create_table "holiday_schm_d", force: :cascade do |t|
    t.bigint "holiday_schm_d_id", null: false
    t.bigint "holiday_schm_h_id", null: false
    t.datetime "holiday_dt", null: false
    t.string "descr", limit: 50, null: false
    t.boolean "is_public_holiday", null: false
  end
 
  create_table "holiday_schm_h", force: :cascade do |t|
    t.bigint "holiday_schm_h_id", null: false
    t.string "holiday_schm_code", limit: 25, null: false
    t.string "holiday_schm_name", limit: 50, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "journal_log", force: :cascade do |t|
    t.bigint "journal_log_id", null: false
    t.string "system_from", limit: 50
    t.string "payload", limit: 127, null: false
    t.string "status", limit: 25, null: false
    t.boolean "is_exec", null: false
    t.boolean "is_success", null: false
    t.datetime "exec_dt"
    t.string "sp_name", limit: 50
    t.string "error_message", limit: 127
  end
 
  create_table "journal_log_failed_d", force: :cascade do |t|
    t.bigint "journal_log_failed_d_id", null: false
    t.bigint "journal_log_failed_h_id", null: false
    t.string "scheme_code", limit: 25, null: false
    t.string "line_description", limit: 100, null: false
    t.string "dc", limit: 0, null: false
    t.string "origin_curr_code", limit: 25, null: false
    t.decimal "origin_amt", precision: 17, scale: 2, null: false
    t.decimal "curr_rate", precision: 17, scale: 2, null: false
    t.decimal "amount", precision: 17, scale: 2, null: false
    t.string "pay_alloc_code", limit: 25
    t.string "coa_branch", limit: 25
    t.string "coa", limit: 25
    t.string "pay_alloc_code_x", limit: 25
    t.string "coa_branch_x", limit: 25
    t.string "coa_x", limit: 25
    t.string "product_id", limit: 25
    t.string "department_id", limit: 25
    t.string "analysis_track_mnt_1_id", limit: 25
    t.string "analysis_track_mnt_2_id", limit: 25
  end
 
  create_table "journal_log_failed_h", force: :cascade do |t|
    t.bigint "journal_log_failed_h_id", null: false
    t.string "office_code", limit: 25, null: false
    t.string "jr_no", limit: 50, null: false
    t.string "txn_code", limit: 25, null: false
    t.datetime "posting_dt", null: false
    t.datetime "value_dt", null: false
    t.string "ref_no", limit: 50, null: false
    t.string "status", limit: 1, null: false
    t.string "err_msg", limit: 2000, null: false
    t.boolean "is_rerun", null: false
    t.bigint "journal_log_id", null: false
  end
 
  create_table "jr_m_entity", force: :cascade do |t|
    t.bigint "jr_m_entity_id", null: false
    t.bigint "jr_m_header_id", null: false
    t.string "entity_type", limit: 100, null: false
  end
 
  create_table "jr_m_group", force: :cascade do |t|
    t.bigint "jr_m_group_id", null: false
    t.bigint "jr_m_header_id", null: false
    t.string "group_name", limit: 100, null: false
  end
 
  create_table "jr_m_group_d_fact", force: :cascade do |t|
    t.bigint "jr_m_group_d_fact_id", null: false
    t.bigint "jr_m_group_id", null: false
    t.string "d_fact_alias", limit: 100, null: false
    t.string "d_fact_property", limit: 100, null: false
    t.string "d_fact_type", limit: 50, null: false
  end
 
  create_table "jr_m_group_d_r", force: :cascade do |t|
    t.bigint "jr_m_group_d_r_id", null: false
    t.bigint "jr_m_header_r_id", null: false
    t.string "group_name", limit: 50, null: false
    t.integer "d_seq_no", null: false
  end
 
  create_table "jr_m_group_fact_r", force: :cascade do |t|
    t.bigint "jr_m_group_fact_r_id", null: false
    t.bigint "jr_m_group_d_r_id", null: false
    t.string "d_fact_alias", limit: 100, null: false
    t.string "d_fact_value", limit: 50, null: false
    t.string "d_fact_type", limit: 25, null: false
    t.string "d_fact_property_r", limit: 110, null: false
  end
 
  create_table "jr_m_header", force: :cascade do |t|
    t.bigint "jr_m_header_id", null: false
    t.string "sub_system", limit: 100, null: false
    t.string "trx_type_code", limit: 50, null: false
    t.string "trx_desc", limit: 250, null: false
  end
 
  create_table "jr_m_header_fact", force: :cascade do |t|
    t.bigint "jr_m_header_fact_id", null: false
    t.bigint "jr_m_header_id", null: false
    t.string "h_fact_alias", limit: 100, null: false
    t.string "h_fact_property", limit: 100, null: false
    t.string "h_fact_type", limit: 50, null: false
  end
 
  create_table "jr_m_header_fact_r", force: :cascade do |t|
    t.bigint "jr_m_header_fact_r_id", null: false
    t.bigint "jr_m_header_r_id", null: false
    t.string "h_fact_alias", limit: 100, null: false
    t.string "h_fact_values", limit: 50, null: false
    t.string "h_fact_type", limit: 25, null: false
    t.string "h_fact_property_r", limit: 110, null: false
  end
 
  create_table "jr_m_header_r", force: :cascade do |t|
    t.bigint "jr_m_header_r_id", null: false
    t.string "trx_sub_system", limit: 25, null: false
    t.string "trx_event_code", limit: 25, null: false
    t.string "trx_type_code", limit: 25, null: false
    t.string "trx_no", limit: 50, null: false
    t.datetime "trx_dt", null: false
    t.string "trx_office_code", limit: 25, null: false
    t.string "trx_username", limit: 50, null: false
    t.string "jr_no", limit: 25, null: false
    t.datetime "jr_req_dt", null: false
    t.string "err_msg", limit: 50, null: false
    t.string "has_been_rerun", limit: 0
  end
 
  create_table "jr_m_item_value", force: :cascade do |t|
    t.bigint "jr_m_item_value_id", null: false
    t.bigint "jr_m_group_id", null: false
    t.string "iv_alias", limit: 100, null: false
    t.string "iv_property", limit: 100, null: false
  end
 
  create_table "jr_m_item_value_r", force: :cascade do |t|
    t.bigint "jr_m_item_value_r_id", null: false
    t.bigint "jr_m_group_d_r_id", null: false
    t.string "iv_alias", limit: 100, null: false
    t.decimal "iv_value", precision: 17, scale: 2, null: false
    t.string "iv_property_r", limit: 110, null: false
  end
 
  create_table "jr_source_file", force: :cascade do |t|
    t.bigint "jr_source_file_id", null: false
    t.string "file_code", limit: 25
    t.string "file_name", limit: 100
    t.binary "data"
    t.integer "version", null: false
    t.datetime "start_date", null: false
  end
 
  create_table "lbppms_biz_scl", force: :cascade do |t|
    t.string "lbppms_biz_scl_code", limit: 25, null: false
    t.string "descr", limit: 50, null: false
    t.string "bi_code", limit: 5, null: false
    t.string "lbpp_code", limit: 5, null: false
    t.bigint "lbppms_biz_scl_id", null: false
  end
 
  create_table "lbppms_biz_sustain", force: :cascade do |t|
    t.bigint "lbppms_biz_sustain_id", null: false
    t.string "descr", limit: 250
    t.string "bi_code", limit: 5
    t.string "lbpp_code", limit: 5
    t.string "lbppms_biz_sustain_code", limit: 25, null: false
  end
 
  create_table "lbppms_cntrprt", force: :cascade do |t|
    t.bigint "lbppms_cntrprt_id", null: false
    t.string "descr", limit: 250, null: false
    t.string "bi_code", limit: 5, null: false
    t.string "lbpp_code", limit: 5, null: false
    t.string "lbppms_cntrprt_code", limit: 25, null: false
  end
 
  create_table "lbppms_debt_grp", force: :cascade do |t|
    t.string "lbppms_debt_grp_code", limit: 25, null: false
    t.string "descr", limit: 50, null: false
    t.string "bi_code", limit: 5, null: false
    t.string "lbpp_code", limit: 5, null: false
    t.bigint "lbppms_debt_grp_id", null: false
  end
 
  create_table "master_sequence", force: :cascade do |t|
    t.bigint "master_sequence_id", null: false
    t.bigint "ref_office_id", null: false
    t.string "master_seq_code", limit: 25, null: false
    t.string "seq_name", limit: 50, null: false
    t.integer "seq_no", null: false
    t.integer "length_no", null: false
    t.string "reset_flag", limit: 0, null: false
    t.string "prefix", limit: 2, null: false
    t.boolean "is_month", null: false
    t.boolean "is_year", null: false
    t.boolean "is_branch", null: false
    t.string "suffix", limit: 1
    t.string "delimiter", limit: 0
    t.boolean "is_use_check_digit", null: false
    t.string "module_code", limit: 25, null: false
    t.string "app_code", limit: 25
  end
 
  create_table "negative_cust", force: :cascade do |t|
    t.bigint "negative_cust_id", null: false
    t.bigint "cust_id"
    t.string "mr_cust_type_code", limit: 25, null: false
    t.string "cust_no", limit: 50
    t.string "cust_name", limit: 250, null: false
    t.string "mr_id_type_code", limit: 25
    t.string "id_no", limit: 25
    t.datetime "id_expired_dt"
    t.string "tax_id_no", limit: 25
    t.string "birth_place", limit: 50
    t.datetime "birth_dt"
    t.string "mr_gender_code", limit: 25
    t.string "mother_maiden_name", limit: 250
    t.string "legal_addr", limit: 100
    t.string "area_code_1", limit: 25
    t.string "area_code_2", limit: 25
    t.string "area_code_3", limit: 25
    t.string "area_code_4", limit: 25
    t.string "zipcode", limit: 25
    t.string "city", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_1", limit: 25
    t.string "phn_ext_1", limit: 5
    t.string "phn_area_2", limit: 10
    t.string "phn_2", limit: 25
    t.string "phn_ext_2", limit: 5
    t.string "phn_area_3", limit: 10
    t.string "phn_3", limit: 25
    t.string "phn_ext_3", limit: 5
    t.string "fax_area", limit: 10
    t.string "fax", limit: 25
    t.string "mobile_phn", limit: 25
    t.string "mr_neg_cust_type_code", limit: 25, null: false
    t.string "mr_neg_cust_source_code", limit: 25, null: false
    t.string "notes", limit: 2000
    t.boolean "is_active", null: false
    t.string "neg_cust_cause", limit: 100
    t.string "negative_cust_no", limit: 50
    t.boolean "is_wa_mobile_phn_no_1", default: false, null: false
    t.boolean "is_wa_mobile_phn_no_2", default: false, null: false
    t.boolean "is_wa_mobile_phn_no_3", default: false, null: false
    t.string "mobile_phn_no_2", limit: 25
    t.string "mobile_phn_no_3", limit: 25
  end
 
  create_table "negative_cust_change_trx", force: :cascade do |t|
    t.bigint "negative_cust_change_trx_id", null: false
    t.bigint "negative_cust_id", null: false
    t.string "trx_no", limit: 50, null: false
    t.string "mr_trx_stat_code", limit: 25, null: false
    t.string "mr_neg_cust_type_code", limit: 25, null: false
    t.string "mr_neg_cust_source_code", limit: 25, null: false
    t.string "notes", limit: 2000
    t.string "rfa_no", limit: 50
    t.datetime "req_dt"
    t.datetime "apv_dt"
    t.datetime "exe_dt"
    t.string "neg_cust_cause", limit: 100
    t.boolean "is_active"
  end
 
  create_table "negative_cust_hist", force: :cascade do |t|
    t.bigint "negative_cust_hist_id", null: false
    t.bigint "negative_cust_id", null: false
    t.string "mr_cust_type_code", limit: 50, null: false
    t.string "cust_no", limit: 100
    t.string "cust_name", limit: 250, null: false
    t.string "mr_id_type_code", limit: 50
    t.string "id_no", limit: 50
    t.datetime "id_expired_dt"
    t.string "tax_id_no", limit: 50
    t.string "birth_place", limit: 100
    t.datetime "birth_dt"
    t.string "mr_gender_code", limit: 50
    t.string "mother_maiden_name", limit: 250
    t.string "legal_addr", limit: 200
    t.string "area_code_1", limit: 50
    t.string "area_code_2", limit: 50
    t.string "area_code_3", limit: 50
    t.string "area_code_4", limit: 50
    t.string "zipcode", limit: 50
    t.string "city", limit: 50
    t.string "phn_area_1", limit: 20
    t.string "phn_1", limit: 50
    t.string "phn_ext_1", limit: 10
    t.string "phn_area_2", limit: 20
    t.string "phn_2", limit: 50
    t.string "phn_ext_2", limit: 10
    t.string "phn_area_3", limit: 20
    t.string "phn_3", limit: 50
    t.string "phn_ext_3", limit: 10
    t.string "fax_area", limit: 20
    t.string "fax", limit: 50
    t.string "mobile_phn", limit: 50
    t.string "mr_neg_cust_type_code", limit: 50, null: false
    t.string "mr_neg_cust_source_code", limit: 50, null: false
    t.string "notes", limit: 127
    t.boolean "is_active", null: false
    t.string "neg_cust_cause", limit: 200
    t.string "negative_cust_no", limit: 100
    t.boolean "is_wa_mobile_phn_no_1", default: false, null: false
    t.boolean "is_wa_mobile_phn_no_2", default: false, null: false
    t.boolean "is_wa_mobile_phn_no_3", default: false, null: false
    t.string "mobile_phn_no_2", limit: 25
    t.string "mobile_phn_no_3", limit: 25
  end
 
  create_table "netwrix_audit_errors", force: :cascade do |t|
    t.string "errorid", default: "newid", null: false
    t.datetime "errortime", default: "getutcdate", null: false
    t.string "workstation", default: "host_name", null: false
    t.string "application", default: "app_name", null: false
    t.string "databasename", limit: 64, default: "db_name", null: false
    t.string "tablename", limit: 64, null: false
    t.integer "messageid", null: false
    t.string "message", null: false
    t.index ["errortime"], name: "NetwrixErrorTimeClustered"
    t.index ["messageid"], name: "NetwrixMessageIDNonClustered"
  end
 
  create_table "office_bank_acc", force: :cascade do |t|
    t.bigint "office_bank_acc_id", null: false
    t.string "office_bank_acc_code", limit: 25, null: false
    t.string "office_bank_acc_branch", limit: 50
    t.string "office_bank_acc_name", limit: 250, null: false
    t.string "office_bank_acc_no", limit: 250, null: false
    t.bigint "ref_office_id", null: false
    t.bigint "ref_bank_id", null: false
    t.bigint "ref_curr_id", null: false
    t.boolean "is_legal_doc"
    t.string "mr_bank_acc_purpose_code", limit: 25, null: false
    t.string "bank_acc_type", limit: 25
    t.string "base_coa", limit: 25
    t.string "bank_branch_reg_rpt_code", limit: 25
    t.string "bank_addr", limit: 2000
    t.string "bank_city", limit: 25
    t.string "bank_area_code_1", limit: 25
    t.string "bank_area_code_2", limit: 25
    t.string "bank_area_code_3", limit: 25
    t.string "bank_area_code_4", limit: 25
    t.string "bank_zipcode", limit: 25
    t.string "bank_phn_area_1", limit: 5
    t.string "bank_phn_1", limit: 25
    t.string "bank_phn_ext_1", limit: 10
    t.string "bank_phn_area_2", limit: 5
    t.string "bank_phn_2", limit: 25
    t.string "bank_phn_ext_2", limit: 10
    t.string "bank_phn_area_3", limit: 5
    t.string "bank_phn_3", limit: 25
    t.string "bank_phn_ext_3", limit: 10
    t.string "bank_fax_area", limit: 5
    t.string "bank_fax", limit: 25
    t.string "cntct_person_job_title", limit: 25
    t.string "cntct_person_name", limit: 250
    t.boolean "is_active", null: false
    t.decimal "end_bal_amt", precision: 17, scale: 2, default: "00:00:00", null: false
    t.string "mr_konven_syariah_code", limit: 25
  end
 
  create_table "ref_api", force: :cascade do |t|
    t.bigint "ref_api_id", null: false
    t.bigint "ref_module_id", null: false
    t.string "ref_api_url", limit: 500, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "ref_app_src", force: :cascade do |t|
    t.bigint "ref_app_src_id", null: false
    t.string "app_src_code", limit: 25
    t.string "app_src_name", limit: 50
    t.string "descr", limit: 2000
    t.boolean "is_active", null: false
    t.string "mr_app_src_type_code", limit: 50
    t.datetime "period_from", null: false
    t.datetime "period_to", null: false
    t.datetime "max_apv_dt", null: false
  end
 
  create_table "ref_app_src_office_mbr", force: :cascade do |t|
    t.bigint "ref_app_src_office_mbr_id", null: false
    t.bigint "ref_app_src_id", null: false
    t.bigint "ref_office_id", null: false
  end
 
  create_table "ref_asset_doc", force: :cascade do |t|
    t.bigint "ref_asset_doc_id", null: false
    t.string "asset_doc_code", limit: 25, null: false
    t.string "asset_doc_name", limit: 50, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "ref_attr", force: :cascade do |t|
    t.bigint "ref_attr_id", null: false
    t.string "attr_code", limit: 25, null: false
    t.string "attr_name", limit: 50, null: false
    t.integer "attr_length"
    t.string "attr_type_code", limit: 25, null: false
    t.string "attr_input_type", limit: 25, null: false
    t.string "attr_value", limit: 500
    t.string "attr_group", limit: 25
    t.string "pattern_code", limit: 25
    t.string "pattern_value", limit: 2000
    t.boolean "is_system", null: false
    t.boolean "is_active", null: false
    t.string "rsv_field_1", limit: 250
    t.string "rsv_field_2", limit: 250
    t.string "rsv_field_3", limit: 250
    t.string "rsv_field_4", limit: 250
    t.string "rsv_field_5", limit: 250
    t.string "default_value", limit: 25
    t.boolean "is_mandatory", default: false, null: false
  end
 
  create_table "ref_attr_type", force: :cascade do |t|
    t.bigint "ref_attr_type_id", null: false
    t.string "attr_type_code", limit: 25, null: false
    t.string "attr_type_name", limit: 50, null: false
    t.boolean "is_active", null: false
    t.boolean "is_system", null: false
    t.string "rsv_field_1_desc", limit: 250
    t.string "rsv_field_2_desc", limit: 250
    t.string "rsv_field_3_desc", limit: 250
    t.string "rsv_field_4_desc", limit: 250
    t.string "rsv_field_5_desc", limit: 250
  end
 
  create_table "ref_bank", force: :cascade do |t|
    t.bigint "ref_bank_id", null: false
    t.string "bank_code", limit: 25, null: false
    t.string "bank_name", limit: 50, null: false
    t.string "reg_rpt_code", limit: 25
    t.boolean "is_active", null: false
    t.string "rtgs_code", limit: 25
    t.string "bank_country_code", limit: 25
  end
 
  create_table "ref_biz_unit", force: :cascade do |t|
    t.bigint "ref_biz_unit_id", null: false
    t.string "biz_unit_code", limit: 25, null: false
    t.string "biz_unit_name", limit: 50, null: false
    t.string "descr", limit: 2000
    t.boolean "is_active", null: false
  end
 
  create_table "ref_coa", force: :cascade do |t|
    t.bigint "ref_coa_id", null: false
    t.bigint "ref_acct_book_id", null: false
    t.bigint "coa_schm_id"
    t.string "mr_entity_type", limit: 25, null: false
    t.string "mr_entity_code", limit: 25, null: false
    t.string "payment_alloc_code", limit: 25, null: false
    t.string "curr_code", limit: 25, null: false
    t.string "coa", limit: 25, null: false
  end
 
  create_table "ref_country", force: :cascade do |t|
    t.bigint "ref_country_id", null: false
    t.string "country_code", limit: 25, null: false
    t.string "country_name", limit: 50, null: false
  end
 
  create_table "ref_coy", force: :cascade do |t|
    t.bigint "ref_coy_id", null: false
    t.string "coy_code", limit: 25, null: false
    t.string "full_name", limit: 250, null: false
    t.string "short_name", limit: 50
    t.string "initial_name", limit: 25
    t.string "tax_id_no", limit: 25
    t.string "registration_no", limit: 25
    t.string "license_no", limit: 25
    t.string "reg_rpt_code", limit: 25
    t.string "addr", limit: 500
    t.string "zipcode", limit: 25
    t.string "area_code_1", limit: 25
    t.string "area_code_2", limit: 25
    t.string "area_code_3", limit: 25
    t.string "area_code_4", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_1", limit: 25
    t.string "phn_ext_1", limit: 5
    t.string "phn_area_2", limit: 10
    t.string "phn_2", limit: 25
    t.string "phn_ext_2", limit: 5
    t.string "phn_area_3", limit: 10
    t.string "phn_3", limit: 25
    t.string "phn_ext_3", limit: 5
    t.string "fax_area", limit: 10
    t.string "fax", limit: 25
    t.string "cntct_person_name", limit: 250
    t.string "cntct_person_job_title", limit: 50
    t.string "cntct_person_email", limit: 100
    t.string "cntct_person_mobile_phn_no_1", limit: 25
    t.string "cntct_person_mobile_phn_no_2", limit: 25
    t.string "city", limit: 25
  end
 
  create_table "ref_curr", force: :cascade do |t|
    t.bigint "ref_curr_id", null: false
    t.string "curr_code", limit: 25, null: false
    t.string "curr_name", limit: 50, null: false
    t.boolean "is_active", null: false
    t.decimal "min_refund_amt", precision: 17, scale: 2, null: false
    t.bigint "cof_id"
    t.string "reg_rpt_code", limit: 25
    t.integer "rounded_amt", default: 0, null: false
  end
 
  create_table "ref_economic_sector", force: :cascade do |t|
    t.bigint "ref_economic_sector_id", null: false
    t.string "economic_sector_code", limit: 25, null: false
    t.string "economic_sector_name", limit: 100, null: false
    t.string "reg_rpt_code", limit: 25
    t.boolean "is_active", null: false
  end
 
  create_table "ref_emp", force: :cascade do |t|
    t.bigint "ref_emp_id", null: false
    t.string "emp_no", limit: 25, null: false
    t.string "emp_name", limit: 50, null: false
    t.datetime "join_dt", null: false
    t.string "addr", limit: 500, null: false
    t.string "zipcode", limit: 25
    t.string "area_code_1", limit: 25
    t.string "area_code_2", limit: 25
    t.string "area_code_3", limit: 25
    t.string "area_code_4", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_1", limit: 25
    t.string "phn_ext_1", limit: 5
    t.string "phn_area_2", limit: 10
    t.string "phn_2", limit: 25
    t.string "phn_ext_2", limit: 5
    t.string "phn_area_3", limit: 10
    t.string "phn_3", limit: 25
    t.string "phn_ext_3", limit: 5
    t.string "fax_area", limit: 10
    t.string "fax", limit: 25
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "email_1", limit: 100
    t.string "email_2", limit: 100
    t.boolean "is_ext", null: false
    t.string "tax_id_no", limit: 25
    t.string "mr_id_type_code", limit: 25
    t.string "id_no", limit: 25
    t.string "image_location", limit: 100
    t.string "loginsoftphone", limit: 10
    t.boolean "is_leave", null: false
    t.boolean "is_active", null: false
    t.string "city", limit: 25, null: false
    t.string "mr_emp_grade_lvl_type_code", limit: 127
    t.datetime "expected_end_dt"
  end
 
  create_table "ref_emp_leave_mngmnt", force: :cascade do |t|
    t.bigint "ref_emp_leave_mngmnt_id", null: false
    t.bigint "ref_emp_id", null: false
    t.datetime "start_dt", null: false
    t.datetime "end_dt", null: false
    t.boolean "is_passed", null: false
  end
 
  create_table "ref_fin_info", force: :cascade do |t|
    t.bigint "ref_fin_info_id", null: false
    t.string "ref_fin_info_code", limit: 25
    t.string "ref_fin_info_name", limit: 50
    t.bigint "ref_fin_info_group_id", null: false
    t.string "ref_fin_info_group_code", limit: 25
    t.string "ref_fin_info_type", limit: 25
    t.string "ref_cust_type", limit: 25
    t.string "ref_cust_model", limit: 25
  end
 
  create_table "ref_form", force: :cascade do |t|
    t.bigint "ref_form_id", null: false
    t.string "form_code", limit: 25, null: false
    t.string "title", limit: 50, null: false
    t.string "path", limit: 500, null: false
    t.string "icon", limit: 50
    t.string "class", limit: 50
    t.string "badge_class", limit: 50
    t.string "form_configuration", limit: 2000
    t.bigint "parent_id"
    t.integer "order_no", null: false
    t.integer "hierarchy_no", null: false
    t.boolean "is_hidden", null: false
    t.boolean "is_external_link", null: false
    t.bigint "ref_module_id", null: false
    t.string "params", limit: 2000
    t.boolean "is_mfe", default: false, null: false
  end
 
  create_table "ref_industry_type", force: :cascade do |t|
    t.bigint "ref_industry_type_id", null: false
    t.string "industry_type_code", limit: 25, null: false
    t.string "industry_type_name", limit: 50, null: false
    t.boolean "is_active", null: false
    t.bigint "ref_industry_type_category_id"
  end
 
  create_table "ref_industry_type_category", force: :cascade do |t|
    t.bigint "ref_industry_type_category_id", null: false
    t.string "ref_industry_type_category_code", limit: 50, null: false
    t.string "ref_industry_type_category_name", limit: 100, null: false
    t.bigint "ref_economic_sector_id", null: false
    t.string "reg_rpt_code", limit: 50
    t.boolean "is_active", null: false
  end
 
  create_table "ref_ins_claim_doc", force: :cascade do |t|
    t.bigint "ref_ins_claim_doc_id", null: false
    t.string "ref_ins_claim_doc_code", limit: 25, null: false
    t.string "ref_ins_claim_doc_name", limit: 50, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "ref_job_title", force: :cascade do |t|
    t.bigint "ref_job_title_id", null: false
    t.string "job_title_code", limit: 25, null: false
    t.string "job_title_name", limit: 50, null: false
    t.string "descr", limit: 2000
    t.boolean "is_active", default: true, null: false
  end
 
  create_table "ref_lob", force: :cascade do |t|
    t.bigint "ref_lob_id", null: false
    t.string "lob_code", limit: 25, null: false
    t.string "lob_name", limit: 50, null: false
    t.string "reg_rpt_code", limit: 25
    t.string "biz_tmplt_code", limit: 25, null: false
    t.string "mr_konven_syariah_code", limit: 25
  end
 
  create_table "ref_master", force: :cascade do |t|
    t.bigint "ref_master_id", null: false
    t.string "master_code", limit: 25, null: false
    t.string "descr", limit: 2000, null: false
    t.string "ref_master_type_code", limit: 25, null: false
    t.integer "seq_no", null: false
    t.string "reserve_field_1", limit: 2000
    t.string "reserve_field_2", limit: 2000
    t.string "reserve_field_3", limit: 2000
    t.string "reserve_field_4", limit: 2000
    t.string "reserve_field_5", limit: 2000
    t.boolean "is_deletable", null: false
    t.boolean "is_system", null: false
    t.boolean "is_active", null: false
    t.boolean "is_default_value", default: false, null: false
    t.string "default_value", limit: 25
    t.string "mapping_code", limit: 25
  end
 
  create_table "ref_master_type", force: :cascade do |t|
    t.string "ref_master_type_code", limit: 25, null: false
    t.string "descr", limit: 50, null: false
    t.string "module_code", limit: 25, null: false
    t.string "role_code", limit: 250
    t.boolean "is_active", null: false
    t.boolean "is_system", null: false
  end
 
  create_table "ref_module", force: :cascade do |t|
    t.bigint "ref_module_id", null: false
    t.string "module_code", limit: 25, null: false
    t.string "module_name", limit: 50, null: false
  end
 
  create_table "ref_office", force: :cascade do |t|
    t.bigint "ref_office_id", null: false
    t.string "office_code", limit: 25, null: false
    t.string "office_name", limit: 50, null: false
    t.string "mr_konven_syariah_code", limit: 25
    t.string "office_addr", limit: 100, null: false
    t.string "zipcode", limit: 25, null: false
    t.string "area_code_1", limit: 25, null: false
    t.string "area_code_2", limit: 25, null: false
    t.string "area_code_3", limit: 25, null: false
    t.string "area_code_4", limit: 25, null: false
    t.string "phn_area_1", limit: 10
    t.string "phn_1", limit: 25
    t.string "phn_ext_1", limit: 5
    t.string "phn_area_2", limit: 10
    t.string "phn_2", limit: 25
    t.string "phn_ext_2", limit: 5
    t.string "phn_area_3", limit: 10
    t.string "phn_3", limit: 25
    t.string "phn_ext_3", limit: 5
    t.string "fax_area", limit: 10
    t.string "fax", limit: 25
    t.string "cntct_person_name", limit: 250, null: false
    t.string "cntct_person_job_title", limit: 50, null: false
    t.string "cntct_person_email_1", limit: 100, null: false
    t.string "cntct_person_email_2", limit: 100
    t.string "mr_office_class_code", limit: 25, null: false
    t.bigint "ref_office_area_id"
    t.boolean "is_active", null: false
    t.bigint "parent_id"
    t.boolean "is_office_close", null: false
    t.datetime "office_opening_dt"
    t.boolean "is_allow_app_created", null: false
    t.bigint "holiday_schm_h_id", null: false
    t.bigint "working_hour_schm_h_id", null: false
    t.boolean "is_virtual_office", null: false
    t.string "mr_office_type_code", limit: 25
    t.string "cntct_person_mobile_phn_no_1", limit: 25, null: false
    t.string "cntct_person_mobile_phn_no_2", limit: 25
    t.string "city", limit: 25, null: false
    t.boolean "is_npwp", default: false, null: false
    t.string "tax_id_no", limit: 25
    t.string "tax_payer_no", limit: 25
    t.boolean "is_have_cashier", default: false, null: false
    t.integer "hierarchy_lvl", default: 0, null: false
    t.bigint "ref_tax_office_id"
    t.string "mr_office_business_unit_type_code", limit: 25
  end
 
  create_table "ref_office_area", force: :cascade do |t|
    t.bigint "ref_office_area_id", null: false
    t.string "area_code", limit: 25, null: false
    t.string "area_name", limit: 50, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "ref_pay_freq", force: :cascade do |t|
    t.bigint "ref_pay_freq_id", null: false
    t.string "pay_freq_code", limit: 25, null: false
    t.string "descr", limit: 50, null: false
    t.string "mr_pay_freq_type_code", limit: 25, null: false
    t.boolean "is_floating_used", null: false
    t.integer "pay_freq_val"
    t.integer "time_of_year"
    t.boolean "is_active", null: false
  end
 
  create_table "ref_payment_alloc", force: :cascade do |t|
    t.bigint "ref_payment_alloc_id", null: false
    t.string "payment_alloc_code", limit: 25, null: false
    t.string "payment_alloc_name", limit: 50, null: false
    t.boolean "is_active", null: false
    t.boolean "is_system", null: false
    t.boolean "is_header", null: false
    t.string "group_coa", limit: 25, null: false
    t.string "mr_pay_alloc_base_type", limit: 25, null: false
    t.string "system_list", limit: 25, null: false
  end
 
  create_table "ref_payment_alloc_attr", force: :cascade do |t|
    t.bigint "ref_payment_alloc_attr_id", null: false
    t.bigint "ref_payment_alloc_id", null: false
    t.string "payment_alloc_attr_code", limit: 25, null: false
    t.string "payment_alloc_attr_name", limit: 50, null: false
    t.integer "attr_length"
    t.string "attr_value", limit: 25
    t.string "pattern_code", limit: 25
    t.string "pattern_value", limit: 50
    t.string "default_value", limit: 50
    t.boolean "is_mandatory", null: false
    t.boolean "is_active", null: false
    t.string "attr_input_type", limit: 25, null: false
  end
 
  create_table "ref_payment_alloc_grp_d", force: :cascade do |t|
    t.bigint "ref_payment_alloc_grp_d_id", null: false
    t.bigint "ref_payment_alloc_grp_h_id", null: false
    t.bigint "ref_payment_alloc_id", null: false
  end
 
  create_table "ref_payment_alloc_grp_h", force: :cascade do |t|
    t.bigint "ref_payment_alloc_grp_h_id", null: false
    t.string "pay_alloc_grp_code", limit: 25, null: false
    t.string "pay_alloc_grp_name", limit: 50, null: false
    t.boolean "is_active", null: false
    t.boolean "is_system", null: false
    t.string "descr", limit: 500
    t.string "mr_pay_alloc_grp_purpose", limit: 25
  end
 
  create_table "ref_profession", force: :cascade do |t|
    t.bigint "ref_profession_id", null: false
    t.string "profession_code", limit: 25, null: false
    t.string "profession_name", limit: 50, null: false
    t.string "mr_cust_model_code", limit: 25, null: false
    t.string "reg_rpt_code", limit: 25
  end
 
  create_table "ref_prov_district", force: :cascade do |t|
    t.bigint "ref_prov_district_id", null: false
    t.string "prov_district_code", limit: 25, null: false
    t.string "prov_district_name", limit: 50, null: false
    t.string "district_reg_rpt_code", limit: 25
    t.string "type", limit: 5, null: false
    t.bigint "parent_id"
    t.boolean "is_active", null: false
    t.string "phn_area", limit: 10
  end
 
  create_table "ref_reason", force: :cascade do |t|
    t.bigint "ref_reason_id", null: false
    t.string "reason_code", limit: 25, null: false
    t.string "reason_descr", limit: 50, null: false
    t.boolean "is_system", null: false
    t.string "ref_reason_type_code", limit: 25, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "ref_reason_type", force: :cascade do |t|
    t.string "ref_reason_type_code", limit: 25, null: false
    t.string "reason_type_name", limit: 50, null: false
    t.boolean "is_active", null: false
    t.string "module_code", limit: 25, null: false
  end
 
  create_table "ref_role", force: :cascade do |t|
    t.bigint "ref_role_id", null: false
    t.string "role_code", limit: 25, null: false
    t.string "role_name", limit: 50, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "ref_status", force: :cascade do |t|
    t.bigint "ref_status_id", null: false
    t.string "ref_status_code", limit: 25, null: false
    t.string "descr", limit: 50, null: false
    t.bigint "ref_trx_type_id", null: false
    t.string "module_code", limit: 25, null: false
    t.boolean "is_active", null: false
    t.string "status_grp_code", limit: 25
  end
 
  create_table "ref_tax_office", force: :cascade do |t|
    t.bigint "ref_tax_office_id", null: false
    t.string "tax_office_code", limit: 25, null: false
    t.string "tax_office_name", limit: 50, null: false
    t.boolean "is_active", null: false
    t.bigint "ref_bank_id", null: false
    t.string "back_acc_no", limit: 12, null: false
    t.string "back_acc_name", limit: 250, null: false
    t.string "bank_branch_bi_code", limit: 5, null: false
  end
 
  create_table "ref_tc", force: :cascade do |t|
    t.bigint "ref_tc_id", null: false
    t.string "tc_code", limit: 25, null: false
    t.string "tc_name", limit: 50, null: false
    t.string "tc_data_type", limit: 25, null: false
    t.integer "tc_length"
    t.string "tc_value", limit: 500
    t.boolean "is_mandatory", null: false
    t.boolean "is_active", null: false
    t.integer "seq_no", null: false
    t.bigint "ref_trx_type_id", null: false
    t.string "tc_type", limit: 25
  end
 
  create_table "ref_trx_type", force: :cascade do |t|
    t.bigint "ref_trx_type_id", null: false
    t.string "trx_type_code", limit: 25, null: false
    t.string "trx_type_name", limit: 50, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "ref_user", force: :cascade do |t|
    t.bigint "ref_user_id", null: false
    t.string "username", limit: 25, null: false
    t.string "password", limit: 50, null: false
    t.bigint "ref_emp_id", null: false
    t.integer "fail_pwd_count", null: false
    t.boolean "is_locked_out", null: false
    t.boolean "is_active", null: false
    t.boolean "is_logged_in", null: false
    t.string "last_ip_address", limit: 25
    t.datetime "last_logged_in"
    t.datetime "last_logged_out"
    t.string "logged_in_method", limit: 100, null: false
    t.datetime "expired_dt"
    t.string "key", limit: 2000
    t.string "token", limit: 500
    t.string "locked_out_reason", limit: 25
    t.datetime "locked_until"
    t.boolean "is_need_update_password", default: false, null: false
    t.datetime "password_expiration_dt"
    t.string "reset_code", null: false
  end
 
  create_table "ref_user_hist", force: :cascade do |t|
    t.bigint "ref_user_hist_id", null: false
    t.bigint "ref_user_id", null: false
    t.string "password", limit: 50, null: false
    t.datetime "change_dt", null: false
    t.integer "seq_no", null: false
  end
 
  create_table "ref_user_log", force: :cascade do |t|
    t.bigint "ref_user_log_id", null: false
    t.bigint "ref_user_id", null: false
    t.string "last_ip_address", limit: 25
    t.datetime "last_logged_in"
    t.datetime "last_logged_out"
    t.boolean "is_active", null: false
    t.string "device", limit: 25
    t.boolean "is_valid", default: false, null: false
    t.string "location", limit: 100
    t.string "software_name", limit: 25
    t.string "user_agent_full", limit: 100
  end
 
  create_table "ref_user_role", force: :cascade do |t|
    t.bigint "ref_user_role_id", null: false
    t.bigint "ref_biz_unit_id", null: false
    t.bigint "ref_job_title_id", null: false
    t.bigint "ref_user_id", null: false
    t.bigint "spv_id"
    t.bigint "ref_role_id", null: false
    t.bigint "ref_office_id", null: false
    t.boolean "is_active", null: false
    t.datetime "effective_end_dt"
    t.datetime "effective_start_dt"
    t.boolean "is_default", default: false, null: false
  end
 
  create_table "ref_verf_answer_type", force: :cascade do |t|
    t.bigint "ref_verf_answer_type_id", null: false
    t.string "verf_answer_type_code", limit: 25, null: false
    t.string "verf_answer_type_descr", limit: 50, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "ref_zipcode", force: :cascade do |t|
    t.bigint "ref_zipcode_id", null: false
    t.string "area_code_1", limit: 25, null: false
    t.string "area_code_2", limit: 25, null: false
    t.string "city", limit: 25, null: false
    t.string "zipcode", limit: 25, null: false
    t.bigint "ref_prov_district_id", null: false
    t.string "sub_zipcode", limit: 25, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "rfa_log", force: :cascade do |t|
    t.bigint "rfa_log_id", null: false
    t.string "apv_category", limit: 25, null: false
    t.string "trx_no", limit: 50, null: false
    t.string "reason_code", limit: 50, null: false
    t.string "notes", limit: 2000, null: false
    t.bigint "rfa_no"
    t.string "apv_stat", limit: 25, null: false
    t.string "apv_scheme_code", limit: 25, null: false
    t.decimal "apv_value", precision: 17, scale: 2, null: false
    t.string "request_by", limit: 25, null: false
    t.datetime "req_dt", null: false
    t.string "final_approve_by", limit: 25
    t.datetime "final_apv_dt"
  end
 
  create_table "rpt_list", force: :cascade do |t|
    t.string "rpt_tmplt_code", limit: 25, null: false
    t.string "rpt_tmplt_name", limit: 50, null: false
    t.string "rpt_tmplt_path", limit: 100, null: false
    t.string "synchronous_type", limit: 1, null: false
    t.string "module_code", limit: 25
  end
 
  create_table "scoring_result_d", force: :cascade do |t|
    t.bigint "scoring_result_d_id", null: false
    t.bigint "scoring_result_h_id", null: false
    t.bigint "seq_no", null: false
    t.string "scoring_question", limit: 2000, null: false
    t.string "scoring_answer", limit: 2000, null: false
    t.decimal "scoring_value", precision: 17, scale: 2, null: false
    t.decimal "weight_prcnt", precision: 9, scale: 6
    t.string "mr_scoring_stat_code", limit: 25
  end
 
  create_table "scoring_result_h", force: :cascade do |t|
    t.bigint "scoring_result_h_id", null: false
    t.string "scoring_trx_no", limit: 50, null: false
    t.string "trx_source_no", limit: 50, null: false
    t.string "trx_source_type", limit: 50, null: false
    t.string "mr_scoring_method_code", limit: 25, null: false
    t.decimal "scoring_value", precision: 17, scale: 2, null: false
    t.string "scoring_alias", limit: 25, null: false
    t.string "office_code", limit: 25, null: false
    t.datetime "req_date", null: false
    t.string "req_by", limit: 25, null: false
    t.string "scoring_category", limit: 50
    t.string "cust_no", limit: 25
  end
 
  create_table "sys_ctrl_coy", force: :cascade do |t|
    t.bigint "sys_ctrl_coy_id", null: false
    t.string "sys_key", limit: 25, null: false
    t.string "sys_value", limit: 50, null: false
  end
 
  create_table "task_upd_cust_data", force: :cascade do |t|
    t.bigint "cust_data_trx_id", null: false
    t.bigint "ref_office_id", null: false
    t.string "applicant_no", limit: 25
    t.string "ref_no", limit: 25
    t.string "cust_no", limit: 25
    t.string "cust_type", limit: 50
    t.string "mr_cust_data_trx_type", limit: 25
    t.datetime "task_dt"
    t.string "user_assigned", limit: 25
    t.datetime "submit_dt"
    t.string "mr_subject_type", limit: 25
    t.string "prod_offering_code", limit: 25, null: false
    t.string "prod_offering_name", limit: 50, null: false
    t.string "prod_offering_version", limit: 10, null: false
    t.string "agrmnt_no", limit: 50
  end
 
  create_table "things_to_do_mapper", force: :cascade do |t|
    t.bigint "things_to_do_mapper_id", null: false
    t.string "things_to_do_type", limit: 50
    t.string "roles", limit: 100
    t.string "things_to_do_query", limit: 2000
    t.string "things_to_do_url", limit: 2000
    t.string "module_code", limit: 50
    t.string "things_to_do_name", limit: 250
    t.boolean "is_external", default: false, null: false
  end
 
  create_table "trx_type_ref_payment_alloc", force: :cascade do |t|
    t.bigint "trx_type_ref_payment_alloc_id", null: false
    t.bigint "ref_payment_alloc_id", null: false
    t.string "trx_type_code", limit: 25, null: false
    t.string "trx_payment_alloc_code", limit: 25, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "update_cust_address", force: :cascade do |t|
    t.bigint "update_cust_address_id", null: false
    t.bigint "cust_data_trx_id", null: false
    t.string "mr_cust_addr_type_code", limit: 25, null: false
    t.string "addr", limit: 500
    t.string "area_code_1", limit: 25
    t.string "area_code_2", limit: 25
    t.string "area_code_3", limit: 25
    t.string "area_code_4", limit: 25
    t.string "city", limit: 25
    t.string "zipcode", limit: 25
    t.string "mr_building_ownership_code", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_1", limit: 25
    t.string "phn_ext_1", limit: 5
    t.string "phn_area_2", limit: 10
    t.string "phn_2", limit: 25
    t.string "phn_ext_2", limit: 5
    t.string "phn_area_3", limit: 10
    t.string "phn_3", limit: 25
    t.string "phn_ext_3", limit: 5
    t.string "fax_area", limit: 10
    t.string "fax", limit: 25
    t.decimal "stay_length", precision: 17, scale: 2
  end
 
  create_table "update_cust_bank_acc", force: :cascade do |t|
    t.bigint "update_cust_bank_acc_id", null: false
    t.bigint "cust_data_trx_id", null: false
    t.bigint "ref_bank_id", null: false
    t.string "bank_branch", limit: 25, null: false
    t.string "bank_acc_no", limit: 250, null: false
    t.string "bank_acc_name", limit: 250, null: false
    t.boolean "is_default", null: false
  end
 
  create_table "update_cust_bank_statement", force: :cascade do |t|
    t.bigint "update_cust_bank_statement_id", null: false
    t.bigint "cust_data_trx_id"
    t.bigint "update_cust_bank_acc_id"
    t.string "month", limit: 25, null: false
    t.string "year", limit: 25, null: false
    t.decimal "debit_amt", precision: 17, scale: 2, null: false
    t.decimal "credit_amt", precision: 17, scale: 2, null: false
    t.decimal "balance_amt", precision: 17, scale: 2, null: false
  end
 
  create_table "update_cust_company_contact_person", force: :cascade do |t|
    t.bigint "update_cust_company_contact_person_id", null: false
    t.bigint "update_cust_company_data_id", null: false
    t.string "contact_person_name", limit: 250
    t.string "mr_job_position_code", limit: 25
    t.string "job_title_name", limit: 50
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "email_1", limit: 25
    t.string "email_2", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_1", limit: 25
    t.string "phn_ext_1", limit: 5
    t.string "phn_area_2", limit: 10
    t.string "phn_2", limit: 25
    t.string "phn_ext_2", limit: 5
    t.string "mr_gender_code", limit: 25
    t.string "mr_cust_relationship_code", limit: 25
    t.string "mr_id_type_code", limit: 25
    t.string "id_no", limit: 25
    t.datetime "id_expired_dt"
    t.string "birth_place", limit: 100
    t.datetime "birth_dt"
  end
 
  create_table "update_cust_company_data", force: :cascade do |t|
    t.bigint "update_cust_company_data_id", null: false
    t.bigint "cust_data_trx_id", null: false
    t.bigint "ref_industry_type_id"
    t.integer "num_of_emp", null: false
    t.datetime "establishment_dt"
  end
 
  create_table "update_cust_company_fin_data", force: :cascade do |t|
    t.bigint "update_cust_company_fin_data_id", null: false
    t.bigint "cust_data_trx_id", null: false
    t.decimal "gross_monthly_income_amt", precision: 17, scale: 2, null: false
    t.decimal "gross_profit_amt", precision: 17, scale: 2, null: false
    t.decimal "return_of_investment_prcnt", precision: 9, scale: 6, null: false
    t.decimal "return_of_equity_prcnt", precision: 9, scale: 6, null: false
    t.decimal "return_of_asset_prcnt", precision: 9, scale: 6, null: false
    t.decimal "profit_margin_prcnt", precision: 9, scale: 6, null: false
    t.decimal "current_ratio_prcnt", precision: 9, scale: 6, null: false
    t.decimal "debt_equity_ratio_prcnt", precision: 9, scale: 6, null: false
    t.decimal "inv_turn_over_prcnt", precision: 9, scale: 6, null: false
    t.decimal "ar_turn_over_prcnt", precision: 9, scale: 6, null: false
    t.decimal "growth_prcnt", precision: 9, scale: 6, null: false
    t.decimal "working_capital_amt", precision: 17, scale: 2, null: false
    t.decimal "oth_monthly_inst_amt", precision: 17, scale: 2, null: false
    t.datetime "date_as_of"
    t.decimal "revenue", precision: 17, scale: 2, null: false
    t.decimal "opr_cost", precision: 17, scale: 2, null: false
    t.decimal "profit_before_tax", precision: 17, scale: 2, null: false
    t.decimal "curr_asset", precision: 17, scale: 2, null: false
    t.decimal "net_fixed_asset", precision: 17, scale: 2, null: false
    t.decimal "total_asset", precision: 17, scale: 2, null: false
    t.decimal "curr_liablts", precision: 17, scale: 2, null: false
    t.decimal "long_temr_liablts", precision: 17, scale: 2, null: false
    t.decimal "shareholder_equity", precision: 17, scale: 2, null: false
    t.decimal "curr_ratio", precision: 17, scale: 2, null: false
  end
 
  create_table "update_cust_company_legal_doc", force: :cascade do |t|
    t.bigint "update_cust_company_legal_doc_id", null: false
    t.bigint "cust_data_trx_id", null: false
    t.string "mr_legal_doc_type_code", limit: 25
    t.string "doc_no", limit: 25
    t.datetime "doc_dt"
    t.datetime "doc_expired_dt"
    t.string "doc_notes", limit: 2000
    t.string "notary_name", limit: 250
    t.string "notary_location", limit: 2000
    t.string "doc_name", limit: 100
    t.boolean "need_legal_opinion", default: false, null: false
  end
 
  create_table "update_cust_company_mgmnt_shareholder", force: :cascade do |t|
    t.bigint "update_cust_company_mgmnt_shareholder_id", null: false
    t.bigint "cust_data_trx_id", null: false
    t.decimal "share_prcnt", precision: 9, scale: 6
    t.string "mr_job_position_code", limit: 25
    t.boolean "is_active", null: false
    t.boolean "is_owner", null: false
    t.boolean "is_signer", null: false
    t.datetime "establishment_dt"
    t.string "shareholder_cust_no", limit: 25
    t.datetime "business_start_dt"
  end
 
  create_table "update_cust_emergency", force: :cascade do |t|
    t.bigint "update_cust_emergency_id", null: false
    t.bigint "cust_data_trx_id", null: false
    t.string "mr_cust_relationship", limit: 25
    t.string "mr_id_type_code", limit: 25
    t.string "id_no", limit: 25
    t.string "birth_place", limit: 100
    t.datetime "birth_dt"
    t.string "mr_gender_code", limit: 25
    t.string "mr_job_profession_code", limit: 25
    t.string "email", limit: 50
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "addr", limit: 500
    t.string "area_code_1", limit: 25
    t.string "area_code_2", limit: 25
    t.string "area_code_3", limit: 25
    t.string "area_code_4", limit: 25
    t.string "city", limit: 25
    t.string "zipcode", limit: 25
    t.datetime "id_expired_dt"
  end
 
  create_table "update_cust_family", force: :cascade do |t|
    t.bigint "update_cust_family_id", null: false
    t.bigint "cust_data_trx_id", null: false
    t.string "family_cust_no", limit: 25
    t.string "mr_cust_relationship", limit: 25
  end
 
  create_table "update_cust_job_data", force: :cascade do |t|
    t.bigint "update_cust_job_data_id", null: false
    t.bigint "cust_data_trx_id", null: false
    t.string "mr_cust_model_code", limit: 25
    t.bigint "ref_profession_id"
    t.boolean "is_mf_emp", null: false
    t.string "mr_job_position_code", limit: 25
    t.string "job_title_name", limit: 50
    t.string "mr_job_stat_code", limit: 25
    t.datetime "employment_establishment_dt"
    t.string "coy_name", limit: 250
    t.bigint "ref_industry_type_id"
    t.string "mr_coy_scale_code", limit: 25
    t.integer "no_of_employ"
  end
 
  create_table "update_cust_personal_data", force: :cascade do |t|
    t.bigint "cust_personal_data_id", null: false
    t.bigint "cust_data_trx_id", null: false
    t.bigint "customer_group"
    t.string "cust_full_name", limit: 500
    t.string "marital_stat", limit: 50
    t.string "mr_nationality_code", limit: 50
    t.string "mr_country_code", limit: 50
    t.string "mr_education_code", limit: 50
    t.string "mr_religion_code", limit: 50
    t.string "family_card_no", limit: 50
    t.integer "no_of_residence", null: false
    t.integer "no_of_dependence", null: false
    t.boolean "affiliate_with_mf", null: false
    t.boolean "vip", null: false
    t.string "vip_notes", limit: 2000
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "email_1", limit: 25
    t.string "email_2", limit: 25
  end
 
  create_table "update_cust_personal_fin_data", force: :cascade do |t|
    t.bigint "update_cust_personal_fin_data_id", null: false
    t.bigint "cust_data_trx_id", null: false
    t.decimal "monthly_income_amt", precision: 17, scale: 2, null: false
    t.string "mr_source_of_income_code", limit: 25
    t.boolean "is_join_income", null: false
    t.decimal "spouse_monthly_income_amt", precision: 17, scale: 2, null: false
    t.decimal "total_income_amt", precision: 17, scale: 2, null: false
    t.decimal "monthly_expense_amt", precision: 17, scale: 2, null: false
    t.decimal "monthly_installment_amt", precision: 17, scale: 2, null: false
    t.decimal "nett_income_amt", precision: 17, scale: 2, null: false
  end
 
  create_table "upload_asset_master", force: :cascade do |t|
    t.bigint "upload_asset_master_id", null: false
    t.string "upload_monitoring_no", limit: 50, null: false
    t.string "asset_type_code", limit: 25
    t.string "asset_category_code", limit: 25
    t.string "asset_code", limit: 25
    t.string "asset_name", limit: 50
    t.boolean "is_active", null: false
    t.bigint "parent_asset_master_id"
    t.bigint "asset_category_id"
    t.bigint "asset_master_id"
    t.string "error_message", limit: 2000
    t.bigint "asset_type_id"
    t.string "parent_full_asset_code", limit: 250
    t.string "upload_status", limit: 25
  end
 
  create_table "upload_asset_negative", force: :cascade do |t|
    t.bigint "upload_asset_negative_id", null: false
    t.string "upload_monitoring_no", limit: 50, null: false
    t.string "full_asset_code", limit: 250
    t.string "serial_no_1", limit: 25
    t.string "serial_no_2", limit: 25
    t.string "serial_no_3", limit: 25
    t.string "serial_no_4", limit: 25
    t.string "serial_no_5", limit: 25
    t.string "notes", limit: 2000
    t.bigint "asset_master_id"
    t.bigint "asset_negative_id"
    t.string "error_message", limit: 2000
    t.string "upload_status", limit: 25, null: false
    t.string "mr_neg_asset_source_code", limit: 25, null: false
  end
 
  create_table "upload_monitoring_h", force: :cascade do |t|
    t.bigint "upload_monitoring_h_id", null: false
    t.string "upload_monitoring_no", limit: 50, null: false
    t.string "office_code", limit: 25, null: false
    t.datetime "upload_dt", null: false
    t.bigint "upload_type_id", null: false
    t.string "file_name", limit: 250, null: false
    t.bigint "total_record", null: false
    t.bigint "total_record_processed", null: false
    t.bigint "total_record_error", null: false
    t.boolean "is_executed", null: false
    t.string "error_message", limit: 2000, null: false
    t.string "upload_by_emp_no", limit: 25, null: false
    t.string "upload_status", limit: 25, null: false
  end
 
  create_table "upload_negative_cust", force: :cascade do |t|
    t.bigint "upload_negative_cust_id", null: false
    t.string "upload_monitoring_no", limit: 50, null: false
    t.string "mr_cust_type_code", limit: 25, null: false
    t.string "cust_no", limit: 50
    t.string "cust_name", limit: 250, null: false
    t.string "mr_id_type_code", limit: 25
    t.string "id_no", limit: 25
    t.datetime "id_expired_dt"
    t.string "tax_id_no", limit: 25
    t.string "birth_place", limit: 50
    t.datetime "birth_dt"
    t.string "mr_gender_code", limit: 25
    t.string "mother_maiden_name", limit: 250
    t.string "legal_addr", limit: 100
    t.string "mobile_phn", limit: 25
    t.string "mr_neg_cust_type_code", limit: 25, null: false
    t.string "mr_neg_cust_source_code", limit: 25, null: false
    t.string "neg_cust_cause", limit: 100
    t.string "notes", limit: 2000
    t.boolean "is_active", null: false
    t.string "error_message", limit: 2000
    t.bigint "negative_cust_id"
    t.string "upload_status", limit: 25
    t.bigint "cust_id"
    t.boolean "is_wa_mobile_phn_no_1", default: false, null: false
    t.boolean "is_wa_mobile_phn_no_2", default: false, null: false
    t.boolean "is_wa_mobile_phn_no_3", default: false, null: false
    t.string "mobile_phn_no_2", limit: 25
    t.string "mobile_phn_no_3", limit: 25
  end
 
  create_table "upload_setting_d", force: :cascade do |t|
    t.bigint "upload_setting_d_id", null: false
    t.bigint "upload_setting_h_id", null: false
    t.bigint "ref_role_id", null: false
  end
 
  create_table "upload_setting_h", force: :cascade do |t|
    t.bigint "upload_setting_h_id", null: false
    t.bigint "upload_type_id", null: false
    t.string "trx_code_wf", limit: 25
    t.string "delimiter", limit: 0
  end
 
  create_table "upload_type", force: :cascade do |t|
    t.bigint "upload_type_id", null: false
    t.string "upload_type_code", limit: 25, null: false
    t.string "upload_type_name", limit: 50, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "user_session_log", force: :cascade do |t|
    t.bigint "user_session_log_id", null: false
    t.string "username", limit: 25
    t.string "office_code", limit: 25
    t.string "office_name", limit: 50
    t.string "role_code", limit: 25
    t.string "role_name", limit: 50
    t.string "job_title_code", limit: 25
    t.string "job_title_name", limit: 50
    t.datetime "login_datetime"
    t.datetime "expiration_datetime"
    t.datetime "logout_datetime"
    t.string "ip_address", limit: 25
  end
 
  create_table "vendor", force: :cascade do |t|
    t.bigint "vendor_id", null: false
    t.bigint "vendor_parent_id"
    t.string "vendor_code", limit: 500
    t.string "vendor_name", limit: 500
    t.string "mr_vendor_category_code", limit: 25, null: false
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "email", limit: 50
    t.decimal "vendor_rating", precision: 17, scale: 2
    t.string "mr_vendor_type_code", limit: 25
    t.string "mr_id_type_code", limit: 25
    t.string "id_no", limit: 25
    t.boolean "is_active", null: false
    t.string "tax_id_no", limit: 25
    t.datetime "partnership_dt"
    t.datetime "establishment_dt"
    t.string "taxpayer_name", limit: 250
    t.string "taxpayer_no", limit: 50
    t.string "mr_tax_calc_method_code", limit: 25
    t.boolean "is_vat", null: false
    t.string "license_no", limit: 25
    t.string "registration_no", limit: 25
    t.string "vendor_rating_alias", limit: 50
    t.string "reserved_field_1", limit: 2000
    t.string "reserved_field_2", limit: 2000
    t.string "reserved_field_3", limit: 2000
    t.string "reserved_field_4", limit: 2000
    t.string "reserved_field_5", limit: 2000
    t.string "reserved_field_6", limit: 2000
    t.string "reserved_field_7", limit: 2000
    t.string "reserved_field_8", limit: 2000
    t.string "reserved_field_9", limit: 2000
    t.string "reserved_field_10", limit: 2000
    t.datetime "active_dt"
    t.string "mr_duplicate_status_code", limit: 25
    t.string "mr_nationaltiy_code", limit: 25
    t.boolean "is_npwp_exist", null: false
    t.string "mr_tax_pgrsv_scheme_code", limit: 25
    t.string "mr_tax_pgrsv_scheme_name", limit: 250
    t.string "mr_vendor_class", limit: 25
    t.string "vendor_atpm_code", limit: 25
    t.boolean "is_one_affiliate", null: false
    t.string "tax_schm_code", limit: 50
    t.string "mr_konven_syariah_code", limit: 25
    t.string "cmo_emp_no", limit: 25
  end
 
  create_table "vendor_addr", force: :cascade do |t|
    t.bigint "vendor_addr_id", null: false
    t.bigint "vendor_id"
    t.bigint "vendor_emp_id"
    t.bigint "vendor_grp_id"
    t.string "mr_addr_type_code", limit: 25, null: false
    t.string "addr", limit: 500
    t.string "zipcode", limit: 25
    t.string "sub_zipcode", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_1", limit: 25
    t.string "phn_ext_1", limit: 5
    t.string "phn_area_2", limit: 10
    t.string "phn_2", limit: 25
    t.string "phn_ext_2", limit: 5
    t.string "area_code_1", limit: 50
    t.string "area_code_2", limit: 50
    t.string "area_code_3", limit: 50
    t.string "area_code_4", limit: 50
    t.string "city", limit: 50
    t.string "province", limit: 50
    t.string "latitude", limit: 250
    t.string "longitude", limit: 250
  end
 
  create_table "vendor_addr_hist", force: :cascade do |t|
    t.bigint "vendor_addr_hist_id", null: false
    t.bigint "vendor_addr_id", null: false
    t.bigint "vendor_id"
    t.bigint "vendor_emp_id"
    t.bigint "vendor_grp_id"
    t.string "mr_addr_type_code", limit: 25, null: false
    t.string "addr", limit: 500, null: false
    t.string "zipcode", limit: 25, null: false
    t.string "sub_zipcode", limit: 25
    t.string "phn_area_1", limit: 10, null: false
    t.string "phn_1", limit: 25, null: false
    t.string "phn_ext_1", limit: 5
    t.string "phn_area_2", limit: 10
    t.string "phn_2", limit: 25
    t.string "phn_ext_2", limit: 5
    t.string "area_code_1", limit: 50
    t.string "area_code_2", limit: 50
    t.string "area_code_3", limit: 50
    t.string "area_code_4", limit: 50
    t.string "city", limit: 50, null: false
    t.string "province", limit: 50, null: false
    t.string "latitude", limit: 250
    t.string "longitude", limit: 250
  end
 
  create_table "vendor_area", force: :cascade do |t|
    t.bigint "vendor_area_id", null: false
    t.string "vendor_area_name", limit: 25, null: false
    t.string "descr", limit: 250
    t.boolean "is_active", null: false
  end
 
  create_table "vendor_area_mbr", force: :cascade do |t|
    t.bigint "vendor_area_mbr_id", null: false
    t.bigint "vendor_area_id", null: false
    t.bigint "vendor_id", null: false
  end
 
  create_table "vendor_atpm_mapping", force: :cascade do |t|
    t.bigint "vendor_atpm_mapping_id", null: false
    t.bigint "vendor_id", null: false
  end
 
  create_table "vendor_attr", force: :cascade do |t|
    t.bigint "vendor_attr_id", null: false
    t.string "mr_vendor_category_code", limit: 25
    t.string "vendor_attr_code", limit: 25
    t.string "vendor_attr_name", limit: 500
    t.string "vendor_attr_type", limit: 50
    t.string "vendor_attr_pattern", limit: 500
    t.string "vendor_attr_type_value", limit: 2000
    t.boolean "is_active", null: false
    t.integer "seq_no", null: false
  end
 
  create_table "vendor_attr_content", force: :cascade do |t|
    t.bigint "vendor_attr_content_id", null: false
    t.bigint "vendor_id", null: false
    t.string "attr_content", limit: 500
    t.string "attr_code", limit: 50
  end
 
  create_table "vendor_bank_acc", force: :cascade do |t|
    t.bigint "vendor_bank_acc_id", null: false
    t.bigint "vendor_id"
    t.bigint "vendor_emp_id"
    t.bigint "ref_bank_id", null: false
    t.string "bank_account_no", limit: 250, null: false
    t.string "bank_account_name", limit: 250, null: false
    t.boolean "is_default", null: false
    t.string "bank_branch", limit: 250
    t.string "notes", limit: 250
    t.boolean "is_active", default: false, null: false
  end
 
  create_table "vendor_contact_person", force: :cascade do |t|
    t.bigint "vendor_contact_person_id", null: false
    t.bigint "vendor_id"
    t.string "name", limit: 250, null: false
    t.string "mr_employee_position", limit: 25, null: false
    t.string "phone_1", limit: 25, null: false
    t.string "phone_2", limit: 25
    t.string "email", limit: 50, null: false
    t.datetime "join_date", null: false
    t.boolean "is_owner", null: false
    t.string "addr", limit: 500
    t.string "zipcode", limit: 25
    t.string "sub_zipcode", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_1", limit: 25
    t.string "phn_ext_1", limit: 5
    t.string "phn_area_2", limit: 10
    t.string "phn_2", limit: 25
    t.string "phn_ext_2", limit: 5
    t.string "area_code_1", limit: 50
    t.string "area_code_2", limit: 50
    t.string "area_code_3", limit: 50
    t.string "area_code_4", limit: 50
    t.string "city", limit: 50
    t.string "province", limit: 50
  end
 
  create_table "vendor_emp", force: :cascade do |t|
    t.bigint "vendor_emp_id", null: false
    t.string "vendor_emp_no", limit: 25
    t.string "vendor_emp_name", limit: 250
    t.bigint "vendor_id", null: false
    t.bigint "supervisor_id"
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "email", limit: 50
    t.string "mr_id_type_code", limit: 25
    t.string "id_no", limit: 25
    t.string "birth_place", limit: 50
    t.datetime "birth_date"
    t.boolean "is_active", null: false
    t.datetime "join_dt"
    t.string "tax_id_no", limit: 25
    t.string "taxpayer_no", limit: 50
    t.string "mr_vendor_emp_position_code", limit: 25
    t.boolean "is_contact_person", null: false
    t.decimal "vendor_emp_rating", precision: 17, scale: 2
    t.boolean "is_owner", null: false
    t.string "tax_payer_name", limit: 250
    t.string "mr_tax_calc_method_code", limit: 25
    t.string "mr_tax_pgrsv_schenme_code", limit: 25
    t.string "mr_tax_pgrsv_scheme_name", limit: 250
    t.boolean "is_npwp_exist", default: false, null: false
    t.boolean "is_internal_employee"
  end
 
  create_table "vendor_grading_hist", force: :cascade do |t|
    t.bigint "vendor_grading_hist_id", null: false
    t.string "vendor_grading_hist_no", limit: 50, null: false
    t.string "vendor_code", limit: 25, null: false
    t.bigint "vendor_id", null: false
    t.bigint "vendor_parent_id"
    t.decimal "prev_rating", precision: 17, scale: 2, null: false
    t.decimal "new_rating", precision: 17, scale: 2, null: false
    t.string "prev_grade", limit: 127
    t.string "new_grade", limit: 127, null: false
    t.datetime "req_dt", null: false
    t.string "req_by_ref_user_id", limit: 50
    t.bigint "ref_reason_id"
    t.datetime "exe_dt"
    t.datetime "apv_dt"
    t.string "status", limit: 50, null: false
    t.string "notes", limit: 2000
    t.bigint "rfa_no"
  end
 
  create_table "vendor_grp", force: :cascade do |t|
    t.bigint "vendor_grp_id", null: false
    t.string "vendor_grp_code", limit: 25
    t.string "vendor_grp_name", limit: 250
    t.string "vendor_grp_desc", limit: 500
    t.string "mr_vendor_category_code", limit: 25
    t.boolean "is_active", null: false
  end
 
  create_table "vendor_grp_mbr", force: :cascade do |t|
    t.bigint "vendor_grp_mbr_id", null: false
    t.bigint "vendor_grp_id", null: false
    t.bigint "vendor_id", null: false
    t.boolean "is_active", null: false
  end
 
  create_table "vendor_office_mbr", force: :cascade do |t|
    t.bigint "vendor_office_mbr_id", null: false
    t.bigint "vendor_id", null: false
    t.bigint "ref_office_id", null: false
    t.boolean "is_active", null: false
  end
 
  create_table "vendor_schm", force: :cascade do |t|
    t.bigint "vendor_schm_id", null: false
    t.string "vendor_schm_code", limit: 25
    t.string "vendor_schm_name", limit: 250
    t.string "vendor_schm_desc", limit: 500
    t.string "mr_vendor_category_code", limit: 25
    t.boolean "is_active", null: false
  end
 
  create_table "vendor_schm_mbr", force: :cascade do |t|
    t.bigint "vendor_schm_mbr_id", null: false
    t.bigint "vendor_schm_id", null: false
    t.bigint "vendor_id", null: false
    t.boolean "is_active", null: false
  end
 
  create_table "verf_question_answer", force: :cascade do |t|
    t.bigint "verf_question_answer_id", null: false
    t.bigint "ref_verf_answer_type_id", null: false
    t.string "verf_question_code", limit: 25, null: false
    t.string "verf_question_text", limit: 500, null: false
    t.string "verf_answer", limit: 1000
    t.boolean "is_active", null: false
    t.boolean "is_mandatory", default: false, null: false
  end
 
  create_table "verf_question_grp_d", force: :cascade do |t|
    t.bigint "verf_question_grp_d_id", null: false
    t.bigint "verf_question_grp_h_id", null: false
    t.bigint "verf_question_answer_id", null: false
    t.integer "seq_no", null: false
    t.boolean "is_active", null: false
  end
 
  create_table "verf_question_grp_h", force: :cascade do |t|
    t.bigint "verf_question_grp_h_id", null: false
    t.string "verf_question_grp_code", limit: 25, null: false
    t.string "verf_question_grp_name", limit: 50, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "verf_result", force: :cascade do |t|
    t.bigint "verf_result_id", null: false
    t.string "verf_result_no", limit: 50, null: false
    t.string "trx_ref_no", limit: 50, null: false
    t.datetime "verf_dt"
    t.string "emp_no", limit: 25, null: false
    t.string "mr_verf_result_stat_code", limit: 25, null: false
    t.string "mr_verf_trx_type_code", limit: 25, null: false
    t.string "lob_code", limit: 25
    t.string "lob_name", limit: 50
    t.string "notes", limit: 2000, null: false
  end
 
  create_table "verf_result_d", force: :cascade do |t|
    t.bigint "verf_result_d_id", null: false
    t.bigint "verf_result_h_id", null: false
    t.bigint "verf_question_answer_id", null: false
    t.string "verf_question_text", limit: 500, null: false
    t.string "answer", limit: 500, null: false
    t.string "notes", limit: 2000
    t.integer "seq_no", null: false
    t.integer "score", default: 0, null: false
    t.string "verf_question_group_code", limit: 500
  end
 
  create_table "verf_result_h", force: :cascade do |t|
    t.bigint "verf_result_h_id", null: false
    t.bigint "verf_result_id", null: false
    t.bigint "verf_scheme_h_id", null: false
    t.string "mr_verf_object_code", limit: 25, null: false
    t.string "mr_verf_subject_relation_code", limit: 25, null: false
    t.datetime "verf_dt"
    t.string "mr_verf_result_h_stat_code", limit: 25, null: false
    t.string "phn", limit: 25, null: false
    t.string "phn_type", limit: 50, null: false
    t.string "notes", limit: 2000
    t.integer "version", default: 0, null: false
    t.integer "score", default: 0, null: false
    t.string "addr", limit: 500
    t.string "mr_addr_type_code", limit: 25
    t.string "trx_ref_no", limit: 50
  end
 
  create_table "verf_scheme_d", force: :cascade do |t|
    t.bigint "verf_scheme_d_id", null: false
    t.bigint "verf_scheme_h_id", null: false
    t.bigint "verf_question_grp_h_id", null: false
    t.integer "seq_no", null: false
  end
 
  create_table "verf_scheme_h", force: :cascade do |t|
    t.bigint "verf_scheme_h_id", null: false
    t.string "verf_scheme_code", limit: 25, null: false
    t.string "verf_scheme_name", limit: 50, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "working_hour_schm_d", force: :cascade do |t|
    t.bigint "working_hour_schm_d_id", null: false
    t.bigint "working_hour_schm_h_id", null: false
    t.string "working_hour_schm_day", limit: 10, null: false
    t.string "working_hour_from_1", limit: 10
    t.string "working_hour_to_1", limit: 10
    t.string "working_hour_from_2", limit: 10
    t.string "working_hour_to_2", limit: 10
  end
 
  create_table "working_hour_schm_h", force: :cascade do |t|
    t.bigint "working_hour_schm_h_id", null: false
    t.string "working_hour_schm_code", limit: 25, null: false
    t.string "working_hour_schm_name", limit: 50, null: false
    t.boolean "is_active", null: false
  end
 
  add_foreign_key "asset_accessory", "asset_type", column: "asset_type_id", name: "FK_ASSET_ACCESSORY_ASSET_TYPE_ID_ASSET_TYPE"
  add_foreign_key "asset_attr", "asset_type", column: "asset_type_id", name: "FK_ASSET_ATTR_ASSET_TYPE_ID_ASSET_TYPE"
  add_foreign_key "asset_attr", "ref_attr", column: "ref_attr_id", name: "FK_ASSET_ATTR_REF_ATTR_ID_REF_ATTR"
  add_foreign_key "asset_category", "asset_type", column: "asset_type_id", name: "FK_ASSET_CATEGORY_ASSET_TYPE_ID_ASSET_TYPE"
  add_foreign_key "asset_doc_list", "asset_type", column: "asset_type_id", name: "FK_ASSET_DOC_LIST_ASSET_TYPE_ID_ASSET_TYPE"
  add_foreign_key "asset_doc_list", "ref_asset_doc", column: "ref_asset_doc_id", name: "FK_ASSET_DOC_LIST_REF_ASSET_DOC_ID_REF_ASSET_DOC"
  add_foreign_key "asset_master", "asset_category", column: "asset_category_id", name: "FK_ASSET_MASTER_ASSET_CATEGORY_ID_ASSET_CATEGORY"
  add_foreign_key "asset_master", "asset_type", column: "asset_type_id", name: "FK_ASSET_MASTER_ASSET_TYPE_ID_ASSET_TYPE"
  add_foreign_key "asset_master", "asset_master", column: "parent_id", name: "FK_ASSET_MASTER_PARENT_ID_ASSET_MASTER"
  add_foreign_key "asset_master_attr_content", "asset_attr", column: "asset_attr_id", name: "FK_ASSET_MASTER_ATTR_CONTENT_ASSET_ATTR_ID_ASSET_ATTR"
  add_foreign_key "asset_master_attr_content", "asset_master", column: "asset_master_id", name: "FK_ASSET_MASTER_ATTR_CONTENT_ASSET_MASTER_ID_ASSET_MASTER"
  add_foreign_key "asset_negative", "asset_master", column: "asset_master_id", name: "FK_ASSET_NEGATIVE_ASSET_MASTER_ID_ASSET_MASTER"
  add_foreign_key "asset_negative_hist", "asset_negative", column: "asset_negative_id", name: "FK_ASSET_NEGATIVE_HIST_ASSET_NEGATIVE_ID_ASSET_NEGATIVE"
  add_foreign_key "asset_schm_d", "asset_master", column: "asset_master_id", name: "FK_ASSET_SCHM_D_ASSET_MASTER_ID_ASSET_MASTER"
  add_foreign_key "asset_schm_d", "asset_schm_h", column: "asset_schm_h_id", name: "FK_ASSET_SCHM_D_ASSET_SCHM_H_ID_ASSET_SCHM_H"
  add_foreign_key "asset_schm_h", "asset_type", column: "asset_type_id", name: "FK_ASSET_SCHM_H_ASSET_TYPE_ID_ASSET_TYPE"
  add_foreign_key "auth_api", "ref_api", column: "ref_api_id", name: "FK_AUTH_API_REF_API_ID_REF_API"
  add_foreign_key "auth_api", "ref_form", column: "ref_form_id", name: "FK_AUTH_API_REF_FORM_ID_REF_FORM"
  add_foreign_key "auth_form", "ref_form", column: "ref_form_id", name: "FK_AUTH_FORM_REF_FORM_ID_REF_FORM"
  add_foreign_key "auth_form", "ref_role", column: "ref_role_id", name: "FK_AUTH_FORM_REF_ROLE_ID_REF_ROLE"
  add_foreign_key "center_grp_office_mbr", "center_grp", column: "center_grp_id", name: "FK_CENTER_GRP_OFFICE_MBR_CENTER_GRP_ID_CENTER_GRP"
  add_foreign_key "center_grp_office_mbr", "ref_office", column: "ref_office_id", name: "FK_CENTER_GRP_OFFICE_MBR_REF_OFFICE_ID_REF_OFFICE"
  add_foreign_key "cust_addr", "cust", column: "cust_id", name: "FK_CUST_ADDR_CUST_ID_CUST"
  add_foreign_key "cust_addr_attr_content", "cust_addr", column: "cust_addr_id", name: "FK_CUST_ADDR_ATTR_CONTENT_CUST_ADDR_ID_CUST_ADDR"
  add_foreign_key "cust_addr_attr_content", "ref_attr", column: "ref_attr_id", name: "FK_CUST_ADDR_ATTR_CONTENT_REF_ATTR_ID_REF_ATTR"
  add_foreign_key "cust_addr_attr_content_hist", "cust_addr", column: "cust_addr_id", name: "FK_CUST_ADDR_ATTR_CONTENT_HIST_CUST_ADDR_ID_CUST_ADDR"
  add_foreign_key "cust_addr_attr_content_hist", "ref_attr", column: "ref_attr_id", name: "FK_CUST_ADDR_ATTR_CONTENT_HIST_REF_ATTR_ID_REF_ATTR"
  add_foreign_key "cust_addr_hist", "cust_addr", column: "cust_addr_id", name: "FK_CUST_ADDR_HIST_CUST_ADDR_ID_CUST_ADDR"
  add_foreign_key "cust_addr_hist", "cust", column: "cust_id", name: "FK_CUST_ADDR_HIST_CUST_ID_CUST"
  add_foreign_key "cust_asset", "cust", column: "cust_id", name: "FK_CUST_ASSET_CUST_ID_CUST"
  add_foreign_key "cust_attr_content", "cust", column: "cust_id", name: "FK_CUST_ATTR_CONTENT_CUST_ID_CUST"
  add_foreign_key "cust_attr_content", "ref_attr", column: "ref_attr_id", name: "FK_CUST_ATTR_CONTENT_REF_ATTR_ID_REF_ATTR"
  add_foreign_key "cust_attr_content_hist", "cust", column: "cust_id", name: "FK_CUST_ATTR_CONTENT_HIST_CUST_ID_CUST"
  add_foreign_key "cust_attr_content_hist", "ref_attr", column: "ref_attr_id", name: "FK_CUST_ATTR_CONTENT_HIST_REF_ATTR_ID_REF_ATTR"
  add_foreign_key "cust_bank_acc", "cust", column: "cust_id", name: "FK_CUST_BANK_ACC_CUST_ID_CUST"
  add_foreign_key "cust_bank_acc", "ref_bank", column: "ref_bank_id", name: "FK_CUST_BANK_ACC_REF_BANK_ID_REF_BANK"
  add_foreign_key "cust_bank_stmnt", "cust_bank_acc", column: "cust_bank_acc_id", name: "FK_CUST_BANK_STMNT_CUST_BANK_ACC_ID_CUST_BANK_ACC"
  add_foreign_key "cust_company", "cust", column: "cust_id", name: "FK_CUST_COMPANY_CUST_ID_CUST"
  add_foreign_key "cust_company", "ref_industry_type", column: "ref_industry_type_id", name: "FK_CUST_COMPANY_REF_INDUSTRY_TYPE_ID_REF_INDUSTRY_TYPE"
  add_foreign_key "cust_company_contact_person", "cust_company", column: "cust_company_id", name: "FK_CUST_COMPANY_CONTACT_PERSON_CUST_COMPANY_ID_CUST_COMPANY"
  add_foreign_key "cust_company_fin_data", "cust_company", column: "cust_company_id", name: "FK_CUST_COMPANY_FIN_DATA_CUST_COMPANY_ID_CUST_COMPANY"
  add_foreign_key "cust_company_hist", "cust_company", column: "cust_company_id", name: "FK_CUST_COMPANY_HIST_CUST_COMPANY_ID_CUST_COMPANY"
  add_foreign_key "cust_company_hist", "cust", column: "cust_id", name: "FK_CUST_COMPANY_HIST_CUST_ID_CUST"
  add_foreign_key "cust_company_legal_doc", "cust_company", column: "cust_company_id", name: "FK_CUST_COMPANY_LEGAL_DOC_CUST_COMPANY_ID_CUST_COMPANY"
  add_foreign_key "cust_company_mgmnt_shrholder", "cust", column: "cust_id", name: "FK_CUST_COMPANY_MGMNT_SHRHOLDER_CUST_ID_CUST"
  add_foreign_key "cust_company_mgmnt_shrholder", "cust", column: "shareholder_id", name: "FK_CUST_COMPANY_MGMNT_SHRHOLDER_SHAREHOLDER_ID_CUST"
  add_foreign_key "cust_expsr_app_agr_hist", "cust_expsr_h", column: "cust_expsr_h_id", name: "FK_CUST_EXPSR_APP_AGR_HIST_CUST_EXPSR_H_ID_CUST_EXPSR_H"
  add_foreign_key "cust_expsr_bucket", "cust_expsr_d", column: "cust_expsr_d_id", name: "FK_CUST_EXPSR_BUCKET_CUST_EXPSR_D_ID_CUST_EXPSR_D"
  add_foreign_key "cust_expsr_d", "cust_expsr_h", column: "cust_expsr_h_id", name: "FK_CUST_EXPSR_D_CUST_EXPSR_H_ID_CUST_EXPSR_H"
  add_foreign_key "cust_expsr_h", "cust_expsr_info", column: "cust_expsr_info_id", name: "FK_CUST_EXPSR_H_CUST_EXPSR_INFO_ID_CUST_EXPSR_INFO"
  add_foreign_key "cust_expsr_info", "cust", column: "cust_id", name: "FK_CUST_EXPSR_INFO_CUST_ID_CUST"
  add_foreign_key "cust_fin_data_attr_content", "cust", column: "cust_id", name: "FK_CUST_FIN_DATA_ATTR_CONTENT_CUST_ID_CUST"
  add_foreign_key "cust_fin_data_attr_content", "ref_attr", column: "ref_attr_id", name: "FK_CUST_FIN_DATA_ATTR_CONTENT_REF_ATTR_ID_REF_ATTR"
  add_foreign_key "cust_grp", "cust", column: "cust_id", name: "FK_CUST_GRP_CUST_ID_CUST"
  add_foreign_key "cust_grp", "cust", column: "member_cust_id", name: "FK_CUST_GRP_MEMBER_CUST_ID_CUST"
  add_foreign_key "cust_hist", "cust", column: "cust_id", name: "FK_CUST_HIST_CUST_ID_CUST"
  add_foreign_key "cust_id_type_hist", "cust", column: "cust_id", name: "FK_CUST_ID_TYPE_HIST_CUST_ID_CUST"
  add_foreign_key "cust_other_info", "cust", column: "cust_id", name: "FK_CUST_OTHER_INFO_CUST_ID_CUST"
  add_foreign_key "cust_other_info", "lbppms_biz_scl", column: "lbppms_biz_scl_id", name: "FK_CUST_OTHER_INFO_LBPPMS_BIZ_SCL_ID_LBPPMS_BIZ_SCL"
  add_foreign_key "cust_other_info", "lbppms_biz_sustain", column: "lbppms_biz_sustain_id", name: "FK_CUST_OTHER_INFO_LBPPMS_BIZ_SUSTAIN_ID_LBPPMS_BIZ_SUSTAIN"
  add_foreign_key "cust_other_info", "lbppms_cntrprt", column: "lbppms_cntrprt_id", name: "FK_CUST_OTHER_INFO_LBPPMS_CNTRPRT_ID_LBPPMS_CNTRPRT"
  add_foreign_key "cust_other_info", "lbppms_debt_grp", column: "lbppms_debt_grp_id", name: "FK_CUST_OTHER_INFO_LBPPMS_DEBT_GRP_ID_LBPPMS_DEBT_GRP"
  add_foreign_key "cust_personal", "cust", column: "cust_id", name: "FK_CUST_PERSONAL_CUST_ID_CUST"
  add_foreign_key "cust_personal_emergency_contact", "cust", column: "cust_id", name: "FK_CUST_PERSONAL_EMERGENCY_CONTACT_CUST_ID_CUST"
  add_foreign_key "cust_personal_family", "cust", column: "cust_id", name: "FK_CUST_PERSONAL_FAMILY_CUST_ID_CUST"
  add_foreign_key "cust_personal_family", "cust", column: "family_id", name: "FK_CUST_PERSONAL_FAMILY_FAMILY_ID_CUST"
  add_foreign_key "cust_personal_fin_data", "cust_personal", column: "cust_personal_id", name: "FK_CUST_PERSONAL_FIN_DATA_CUST_PERSONAL_ID_CUST_PERSONAL"
  add_foreign_key "cust_personal_hist", "cust", column: "cust_id", name: "FK_CUST_PERSONAL_HIST_CUST_ID_CUST"
  add_foreign_key "cust_personal_hist", "cust_personal", column: "cust_personal_id", name: "FK_CUST_PERSONAL_HIST_CUST_PERSONAL_ID_CUST_PERSONAL"
  add_foreign_key "cust_personal_job_data", "cust", column: "cust_id", name: "FK_CUST_PERSONAL_JOB_DATA_CUST_ID_CUST"
  add_foreign_key "cust_personal_job_data", "cust_addr", column: "job_addr_id", name: "FK_CUST_PERSONAL_JOB_DATA_JOB_ADDR_ID_CUST_ADDR"
  add_foreign_key "cust_personal_job_data", "cust_addr", column: "oth_biz_addr_id", name: "FK_CUST_PERSONAL_JOB_DATA_OTH_BIZ_ADDR_ID_CUST_ADDR"
  add_foreign_key "cust_personal_job_data", "cust_addr", column: "prev_job_addr_id", name: "FK_CUST_PERSONAL_JOB_DATA_PREV_JOB_ADDR_ID_CUST_ADDR"
  add_foreign_key "cust_personal_job_data", "ref_industry_type", column: "ref_industry_type_id", name: "FK_CUST_PERSONAL_JOB_DATA_REF_INDUSTRY_TYPE_ID_REF_INDUSTRY_TYPE"
  add_foreign_key "emp_bank_acc", "ref_bank", column: "ref_bank_id", name: "FK_EMP_BANK_ACC_REF_BANK_ID_REF_BANK"
  add_foreign_key "emp_bank_acc", "ref_emp", column: "ref_emp_id", name: "FK_EMP_BANK_ACC_REF_EMP_ID_REF_EMP"
  add_foreign_key "exchange_rate", "ref_curr", column: "ref_curr_id", name: "FK_EXCHANGE_RATE_REF_CURR_ID_REF_CURR"
  add_foreign_key "holiday_schm_d", "holiday_schm_h", column: "holiday_schm_h_id", name: "FK_HOLIDAY_SCHM_D_HOLIDAY_SCHM_H_ID_HOLIDAY_SCHM_H"
  add_foreign_key "journal_log_failed_d", "journal_log_failed_h", column: "journal_log_failed_h_id", name: "FK_JOURNAL_LOG_FAILED_D_JOURNAL_LOG_FAILED_H_ID_JOURNAL_LOG_FAILED_H"
  add_foreign_key "journal_log_failed_h", "journal_log", column: "journal_log_id", name: "FK_JOURNAL_LOG_FAILED_H_JOURNAL_LOG_ID_JOURNAL_LOG"
  add_foreign_key "jr_m_entity", "jr_m_header", column: "jr_m_header_id", name: "FK_JR_M_ENTITY_JR_M_HEADER_ID_JR_M_HEADER"
  add_foreign_key "jr_m_group", "jr_m_header", column: "jr_m_header_id", name: "FK_JR_M_GROUP_JR_M_HEADER_ID_JR_M_HEADER"
  add_foreign_key "jr_m_group_d_fact", "jr_m_group", column: "jr_m_group_id", name: "FK_JR_M_GROUP_D_FACT_JR_M_GROUP_ID_JR_M_GROUP"
  add_foreign_key "jr_m_group_d_r", "jr_m_header_r", column: "jr_m_header_r_id", name: "FK_JR_M_GROUP_D_R_JR_M_HEADER_R_ID_JR_M_HEADER_R"
  add_foreign_key "jr_m_group_fact_r", "jr_m_group_d_r", column: "jr_m_group_d_r_id", name: "FK_JR_M_GROUP_FACT_R_JR_M_GROUP_D_R_ID_JR_M_GROUP_D_R"
  add_foreign_key "jr_m_header_fact", "jr_m_header", column: "jr_m_header_id", name: "FK_JR_M_HEADER_FACT_JR_M_HEADER_ID_JR_M_HEADER"
  add_foreign_key "jr_m_header_fact_r", "jr_m_header_r", column: "jr_m_header_r_id", name: "FK_JR_M_HEADER_FACT_R_JR_M_HEADER_R_ID_JR_M_HEADER_R"
  add_foreign_key "jr_m_item_value", "jr_m_group", column: "jr_m_group_id", name: "FK_JR_M_ITEM_VALUE_JR_M_GROUP_ID_JR_M_GROUP"
  add_foreign_key "jr_m_item_value_r", "jr_m_group_d_r", column: "jr_m_group_d_r_id", name: "FK_JR_M_ITEM_VALUE_R_JR_M_GROUP_D_R_ID_JR_M_GROUP_D_R"
  add_foreign_key "master_sequence", "ref_office", column: "ref_office_id", name: "FK_MASTER_SEQUENCE_REF_OFFICE_ID_REF_OFFICE"
  add_foreign_key "negative_cust", "cust", column: "cust_id", name: "FK_NEGATIVE_CUST_CUST_ID_CUST"
  add_foreign_key "negative_cust_change_trx", "negative_cust", column: "negative_cust_id", name: "FK_NEGATIVE_CUST_CHANGE_TRX_NEGATIVE_CUST_ID_NEGATIVE_CUST"
  add_foreign_key "negative_cust_hist", "negative_cust", column: "negative_cust_id", name: "FK_NEGATIVE_CUST_HIST_NEGATIVE_CUST_ID_NEGATIVE_CUST"
  add_foreign_key "office_bank_acc", "ref_bank", column: "ref_bank_id", name: "FK_OFFICE_BANK_ACC_REF_BANK_ID_REF_BANK"
  add_foreign_key "office_bank_acc", "ref_curr", column: "ref_curr_id", name: "FK_OFFICE_BANK_ACC_REF_CURR_ID_REF_CURR"
  add_foreign_key "office_bank_acc", "ref_office", column: "ref_office_id", name: "FK_OFFICE_BANK_ACC_REF_OFFICE_ID_REF_OFFICE"
  add_foreign_key "ref_api", "ref_module", column: "ref_module_id", name: "FK_REF_API_REF_MODULE_ID_REF_MODULE"
  add_foreign_key "ref_app_src_office_mbr", "ref_app_src", column: "ref_app_src_id", name: "FK_REF_APP_SRC_OFFICE_MBR_REF_APP_SRC_ID_REF_APP_SRC"
  add_foreign_key "ref_app_src_office_mbr", "ref_office", column: "ref_office_id", name: "FK_REF_APP_SRC_OFFICE_MBR_REF_OFFICE_ID_REF_OFFICE"
  add_foreign_key "ref_coa", "coa_schm", column: "coa_schm_id", name: "FK_REF_COA_COA_SCHM_ID_COA_SCHM"
  add_foreign_key "ref_emp_leave_mngmnt", "ref_emp", column: "ref_emp_id", name: "FK_REF_EMP_LEAVE_MNGMNT_REF_EMP_ID_REF_EMP"
  add_foreign_key "ref_form", "ref_form", column: "parent_id", name: "FK_REF_FORM_PARENT_ID_REF_FORM"
  add_foreign_key "ref_form", "ref_module", column: "ref_module_id", name: "FK_REF_FORM_REF_MODULE_ID_REF_MODULE"
  add_foreign_key "ref_industry_type", "ref_industry_type_category", column: "ref_industry_type_category_id", name: "FK_REF_INDUSTRY_TYPE_REF_INDUSTRY_TYPE_CATEGORY_ID_REF_INDUSTRY_TYPE_CATEGORY"
  add_foreign_key "ref_industry_type_category", "ref_economic_sector", column: "ref_economic_sector_id", name: "FK_REF_INDUSTRY_TYPE_CATEGORY_REF_ECONOMIC_SECTOR_ID_REF_ECONOMIC_SECTOR"
  add_foreign_key "ref_office", "holiday_schm_h", column: "holiday_schm_h_id", name: "FK_REF_OFFICE_HOLIDAY_SCHM_H_ID_HOLIDAY_SCHM_H"
  add_foreign_key "ref_office", "ref_office", column: "parent_id", name: "FK_REF_OFFICE_PARENT_ID_REF_OFFICE"
  add_foreign_key "ref_office", "ref_office_area", column: "ref_office_area_id", name: "FK_REF_OFFICE_REF_OFFICE_AREA_ID_REF_OFFICE_AREA"
  add_foreign_key "ref_office", "ref_tax_office", column: "ref_tax_office_id", name: "FK_REF_OFFICE_REF_TAX_OFFICE_ID_REF_TAX_OFFICE"
  add_foreign_key "ref_office", "working_hour_schm_h", column: "working_hour_schm_h_id", name: "FK_REF_OFFICE_WORKING_HOUR_SCHM_H_ID_WORKING_HOUR_SCHM_H"
  add_foreign_key "ref_payment_alloc_attr", "ref_payment_alloc", column: "ref_payment_alloc_id", name: "FK_REF_PAYMENT_ALLOC_ATTR_REF_PAYMENT_ALLOC_ID_REF_PAYMENT_ALLOC"
  add_foreign_key "ref_payment_alloc_grp_d", "ref_payment_alloc_grp_h", column: "ref_payment_alloc_grp_h_id", name: "FK_REF_PAYMENT_ALLOC_GRP_D_REF_PAYMENT_ALLOC_GRP_H_ID_REF_PAYMENT_ALLOC_GRP_H"
  add_foreign_key "ref_payment_alloc_grp_d", "ref_payment_alloc", column: "ref_payment_alloc_id", name: "FK_REF_PAYMENT_ALLOC_GRP_D_REF_PAYMENT_ALLOC_ID_REF_PAYMENT_ALLOC"
  add_foreign_key "ref_prov_district", "ref_prov_district", column: "parent_id", name: "FK_REF_PROV_DISTRICT_PARENT_ID_REF_PROV_DISTRICT"
  add_foreign_key "ref_status", "ref_trx_type", column: "ref_trx_type_id", name: "FK_REF_STATUS_REF_TRX_TYPE_ID_REF_TRX_TYPE"
  add_foreign_key "ref_tax_office", "ref_bank", column: "ref_bank_id", name: "FK_REF_TAX_OFFICE_REF_BANK_ID_REF_BANK"
  add_foreign_key "ref_tc", "ref_trx_type", column: "ref_trx_type_id", name: "FK_REF_TC_REF_TRX_TYPE_ID_REF_TRX_TYPE"
  add_foreign_key "ref_user", "ref_emp", column: "ref_emp_id", name: "FK_REF_USER_REF_EMP_ID_REF_EMP"
  add_foreign_key "ref_user_hist", "ref_user", column: "ref_user_id", name: "FK_REF_USER_HIST_REF_USER_ID_REF_USER"
  add_foreign_key "ref_user_log", "ref_user", column: "ref_user_id", name: "FK_REF_USER_LOG_REF_USER_ID_REF_USER"
  add_foreign_key "ref_user_role", "ref_biz_unit", column: "ref_biz_unit_id", name: "FK_REF_USER_ROLE_REF_BIZ_UNIT_ID_REF_BIZ_UNIT"
  add_foreign_key "ref_user_role", "ref_job_title", column: "ref_job_title_id", name: "FK_REF_USER_ROLE_REF_JOB_TITLE_ID_REF_JOB_TITLE"
  add_foreign_key "ref_user_role", "ref_office", column: "ref_office_id", name: "FK_REF_USER_ROLE_REF_OFFICE_ID_REF_OFFICE"
  add_foreign_key "ref_user_role", "ref_role", column: "ref_role_id", name: "FK_REF_USER_ROLE_REF_ROLE_ID_REF_ROLE"
  add_foreign_key "ref_user_role", "ref_user", column: "ref_user_id", name: "FK_REF_USER_ROLE_REF_USER_ID_REF_USER"
  add_foreign_key "ref_user_role", "ref_user", column: "spv_id", name: "FK_REF_USER_ROLE_SPV_ID_REF_USER"
  add_foreign_key "ref_zipcode", "ref_prov_district", column: "ref_prov_district_id", name: "FK_REF_ZIPCODE_REF_PROV_DISTRICT_ID_REF_PROV_DISTRICT"
  add_foreign_key "scoring_result_d", "scoring_result_h", column: "scoring_result_h_id", name: "FK_SCORING_RESULT_D_SCORING_RESULT_H_ID_SCORING_RESULT_H"
  add_foreign_key "task_upd_cust_data", "ref_office", column: "ref_office_id", name: "FK_TASK_UPD_CUST_DATA_REF_OFFICE_ID_REF_OFFICE"
  add_foreign_key "trx_type_ref_payment_alloc", "ref_payment_alloc", column: "ref_payment_alloc_id", name: "FK_TRX_TYPE_REF_PAYMENT_ALLOC_REF_PAYMENT_ALLOC_ID_REF_PAYMENT_ALLOC"
  add_foreign_key "update_cust_bank_statement", "update_cust_bank_acc", column: "update_cust_bank_acc_id", name: "FK_UPDATE_CUST_BANK_STATEMENT_UPDATE_CUST_BANK_ACC_ID_UPDATE_CUST_BANK_ACC"
  add_foreign_key "update_cust_company_contact_person", "update_cust_company_data", column: "update_cust_company_data_id", name: "FK_UPDATE_CUST_COMPANY_CONTACT_PERSON_UPDATE_CUST_COMPANY_DATA_ID_UPDATE_CUST_COMPANY_DATA"
  add_foreign_key "update_cust_company_data", "ref_industry_type", column: "ref_industry_type_id", name: "FK_UPDATE_CUST_COMPANY_DATA_REF_INDUSTRY_TYPE_ID_REF_INDUSTRY_TYPE"
  add_foreign_key "upload_asset_master", "asset_category", column: "asset_category_id", name: "FK_UPLOAD_ASSET_MASTER_ASSET_CATEGORY_ID_ASSET_CATEGORY"
  add_foreign_key "upload_asset_master", "asset_master", column: "asset_master_id", name: "FK_UPLOAD_ASSET_MASTER_ASSET_MASTER_ID_ASSET_MASTER"
  add_foreign_key "upload_asset_master", "asset_type", column: "asset_type_id", name: "FK_UPLOAD_ASSET_MASTER_ASSET_TYPE_ID_ASSET_TYPE"
  add_foreign_key "upload_asset_master", "asset_master", column: "parent_asset_master_id", name: "FK_UPLOAD_ASSET_MASTER_PARENT_ASSET_MASTER_ID_ASSET_MASTER"
  add_foreign_key "upload_asset_negative", "asset_master", column: "asset_master_id", name: "FK_UPLOAD_ASSET_NEGATIVE_ASSET_MASTER_ID_ASSET_MASTER"
  add_foreign_key "upload_asset_negative", "asset_negative", column: "asset_negative_id", name: "FK_UPLOAD_ASSET_NEGATIVE_ASSET_NEGATIVE_ID_ASSET_NEGATIVE"
  add_foreign_key "upload_monitoring_h", "upload_type", column: "upload_type_id", name: "FK_UPLOAD_MONITORING_H_UPLOAD_TYPE_ID_UPLOAD_TYPE"
  add_foreign_key "upload_negative_cust", "cust", column: "cust_id", name: "FK_UPLOAD_NEGATIVE_CUST_CUST_ID_CUST"
  add_foreign_key "upload_negative_cust", "negative_cust", column: "negative_cust_id", name: "FK_UPLOAD_NEGATIVE_CUST_NEGATIVE_CUST_ID_NEGATIVE_CUST"
  add_foreign_key "upload_setting_d", "ref_role", column: "ref_role_id", name: "FK_UPLOAD_SETTING_D_REF_ROLE_ID_REF_ROLE"
  add_foreign_key "upload_setting_d", "upload_setting_h", column: "upload_setting_h_id", name: "FK_UPLOAD_SETTING_D_UPLOAD_SETTING_H_ID_UPLOAD_SETTING_H"
  add_foreign_key "upload_setting_h", "upload_type", column: "upload_type_id", name: "FK_UPLOAD_SETTING_H_UPLOAD_TYPE_ID_UPLOAD_TYPE"
  add_foreign_key "vendor", "vendor", column: "vendor_parent_id", name: "FK_VENDOR_VENDOR_PARENT_ID_VENDOR"
  add_foreign_key "vendor_addr", "vendor_emp", column: "vendor_emp_id", name: "FK_VENDOR_ADDR_VENDOR_EMP_ID_VENDOR_EMP"
  add_foreign_key "vendor_addr", "vendor_grp", column: "vendor_grp_id", name: "FK_VENDOR_ADDR_VENDOR_GRP_ID_VENDOR_GRP"
  add_foreign_key "vendor_addr", "vendor", column: "vendor_id", name: "FK_VENDOR_ADDR_VENDOR_ID_VENDOR"
  add_foreign_key "vendor_addr_hist", "vendor_addr", column: "vendor_addr_id", name: "FK_VENDOR_ADDR_HIST_VENDOR_ADDR_ID_VENDOR_ADDR"
  add_foreign_key "vendor_area_mbr", "vendor_area", column: "vendor_area_id", name: "FK_VENDOR_AREA_MBR_VENDOR_AREA_ID_VENDOR_AREA"
  add_foreign_key "vendor_area_mbr", "vendor", column: "vendor_id", name: "FK_VENDOR_AREA_MBR_VENDOR_ID_VENDOR"
  add_foreign_key "vendor_atpm_mapping", "vendor", column: "vendor_id", name: "FK_VENDOR_ATPM_MAPPING_VENDOR_ID_VENDOR"
  add_foreign_key "vendor_attr_content", "vendor", column: "vendor_id", name: "FK_VENDOR_ATTR_CONTENT_VENDOR_ID_VENDOR"
  add_foreign_key "vendor_bank_acc", "ref_bank", column: "ref_bank_id", name: "FK_VENDOR_BANK_ACC_REF_BANK_ID_REF_BANK"
  add_foreign_key "vendor_bank_acc", "vendor_emp", column: "vendor_emp_id", name: "FK_VENDOR_BANK_ACC_VENDOR_EMP_ID_VENDOR_EMP"
  add_foreign_key "vendor_bank_acc", "vendor", column: "vendor_id", name: "FK_VENDOR_BANK_ACC_VENDOR_ID_VENDOR"
  add_foreign_key "vendor_contact_person", "vendor", column: "vendor_id", name: "FK_VENDOR_CONTACT_PERSON_VENDOR_ID_VENDOR"
  add_foreign_key "vendor_emp", "vendor_emp", column: "supervisor_id", name: "FK_VENDOR_EMP_SUPERVISOR_ID_VENDOR_EMP"
  add_foreign_key "vendor_emp", "vendor", column: "vendor_id", name: "FK_VENDOR_EMP_VENDOR_ID_VENDOR"
  add_foreign_key "vendor_grading_hist", "ref_reason", column: "ref_reason_id", name: "FK_VENDOR_GRADING_HIST_REF_REASON_ID_REF_REASON"
  add_foreign_key "vendor_grading_hist", "vendor", column: "vendor_id", name: "FK_VENDOR_GRADING_HIST_VENDOR_ID_VENDOR"
  add_foreign_key "vendor_grading_hist", "vendor", column: "vendor_parent_id", name: "FK_VENDOR_GRADING_HIST_VENDOR_PARENT_ID_VENDOR"
  add_foreign_key "vendor_grp_mbr", "vendor_grp", column: "vendor_grp_id", name: "FK_VENDOR_GRP_MBR_VENDOR_GRP_ID_VENDOR_GRP"
  add_foreign_key "vendor_grp_mbr", "vendor", column: "vendor_id", name: "FK_VENDOR_GRP_MBR_VENDOR_ID_VENDOR"
  add_foreign_key "vendor_office_mbr", "ref_office", column: "ref_office_id", name: "FK_VENDOR_OFFICE_MBR_REF_OFFICE_ID_REF_OFFICE"
  add_foreign_key "vendor_office_mbr", "vendor", column: "vendor_id", name: "FK_VENDOR_OFFICE_MBR_VENDOR_ID_VENDOR"
  add_foreign_key "vendor_schm_mbr", "vendor", column: "vendor_id", name: "FK_VENDOR_SCHM_MBR_VENDOR_ID_VENDOR"
  add_foreign_key "vendor_schm_mbr", "vendor_schm", column: "vendor_schm_id", name: "FK_VENDOR_SCHM_MBR_VENDOR_SCHM_ID_VENDOR_SCHM"
  add_foreign_key "verf_question_answer", "ref_verf_answer_type", column: "ref_verf_answer_type_id", name: "FK_VERF_QUESTION_ANSWER_REF_VERF_ANSWER_TYPE_ID_REF_VERF_ANSWER_TYPE"
  add_foreign_key "verf_question_grp_d", "verf_question_answer", column: "verf_question_answer_id", name: "FK_VERF_QUESTION_GRP_D_VERF_QUESTION_ANSWER_ID_VERF_QUESTION_ANSWER"
  add_foreign_key "verf_question_grp_d", "verf_question_grp_h", column: "verf_question_grp_h_id", name: "FK_VERF_QUESTION_GRP_D_VERF_QUESTION_GRP_H_ID_VERF_QUESTION_GRP_H"
  add_foreign_key "verf_result_d", "verf_question_answer", column: "verf_question_answer_id", name: "FK_VERF_RESULT_D_VERF_QUESTION_ANSWER_ID_VERF_QUESTION_ANSWER"
  add_foreign_key "verf_result_d", "verf_result_h", column: "verf_result_h_id", name: "FK_VERF_RESULT_D_VERF_RESULT_H_ID_VERF_RESULT_H"
  add_foreign_key "verf_result_h", "verf_result", column: "verf_result_id", name: "FK_VERF_RESULT_H_VERF_RESULT_ID_VERF_RESULT"
  add_foreign_key "verf_result_h", "verf_scheme_h", column: "verf_scheme_h_id", name: "FK_VERF_RESULT_H_VERF_SCHEME_H_ID_VERF_SCHEME_H"
  add_foreign_key "verf_scheme_d", "verf_question_grp_h", column: "verf_question_grp_h_id", name: "FK_VERF_SCHEME_D_VERF_QUESTION_GRP_H_ID_VERF_QUESTION_GRP_H"
  add_foreign_key "verf_scheme_d", "verf_scheme_h", column: "verf_scheme_h_id", name: "FK_VERF_SCHEME_D_VERF_SCHEME_H_ID_VERF_SCHEME_H"
  add_foreign_key "working_hour_schm_d", "working_hour_schm_h", column: "working_hour_schm_h_id", name: "FK_WORKING_HOUR_SCHM_D_WORKING_HOUR_SCHM_H_ID_WORKING_HOUR_SCHM_H"
 

# =============================================
  # VIEWPOINTS - Grouping tabel per modul
  # =============================================

  create_viewpoint "Customer", desc: "Data master dan transaksi customer" do |v|
    v.tables = %w[
      cust cust_hist cust_grp
      cust_addr cust_addr_hist cust_addr_attr_content cust_addr_attr_content_hist
      cust_attr_content cust_attr_content_hist cust_fin_data_attr_content
      cust_asset cust_bank_acc cust_bank_stmnt
      cust_company cust_company_hist cust_company_contact_person
      cust_company_fin_data cust_company_legal_doc cust_company_mgmnt_shrholder
      cust_personal cust_personal_hist cust_personal_emergency_contact
      cust_personal_family cust_personal_fin_data cust_personal_job_data
      cust_id_type_hist cust_other_info
      cust_expsr_info cust_expsr_h cust_expsr_d cust_expsr_bucket cust_expsr_app_agr_hist
      negative_cust negative_cust_hist negative_cust_change_trx
    ]
  end

  create_viewpoint "Vendor", desc: "Data master dan transaksi vendor" do |v|
    v.tables = %w[
      vendor vendor_addr vendor_addr_hist vendor_attr vendor_attr_content
      vendor_emp vendor_bank_acc vendor_contact_person
      vendor_grp vendor_grp_mbr vendor_schm vendor_schm_mbr
      vendor_area vendor_area_mbr vendor_office_mbr
      vendor_atpm_mapping vendor_grading_hist
    ]
  end

  create_viewpoint "Asset", desc: "Data master asset dan skema" do |v|
    v.tables = %w[
      asset_type asset_category asset_master asset_master_attr_content
      asset_attr asset_accessory asset_doc_list
      asset_negative asset_negative_hist
      asset_schm_h asset_schm_d
      ref_asset_doc
    ]
  end

  create_viewpoint "Reference - Office & User", desc: "Referensi kantor, user, dan role" do |v|
    v.tables = %w[
      ref_office ref_office_area
      ref_emp ref_emp_leave_mngmnt emp_bank_acc
      ref_user ref_user_hist ref_user_log ref_user_role
      ref_role ref_biz_unit ref_job_title
      ref_module ref_form ref_api
      auth_form auth_api
      center_grp center_grp_office_mbr
      master_sequence
    ]
  end

  create_viewpoint "Reference - Master Data", desc: "Tabel referensi dan master data umum" do |v|
    v.tables = %w[
      ref_attr ref_attr_type ref_master ref_master_type
      ref_bank ref_curr ref_coa coa_schm
      ref_industry_type ref_industry_type_category ref_economic_sector
      ref_prov_district ref_zipcode ref_country ref_coy
      ref_trx_type ref_status ref_tc ref_reason ref_reason_type
      ref_payment_alloc ref_payment_alloc_attr ref_payment_alloc_grp_h ref_payment_alloc_grp_d
      ref_tax_office ref_lob ref_pay_freq ref_profession ref_fin_info ref_app_src ref_app_src_office_mbr
      ref_verf_answer_type
      lbppms_cntrprt lbppms_biz_sustain lbppms_biz_scl lbppms_debt_grp
      office_bank_acc exchange_rate
      holiday_schm_h holiday_schm_d working_hour_schm_h working_hour_schm_d
    ]
  end

  create_viewpoint "Journal & Accounting", desc: "Jurnal dan mapping akuntansi" do |v|
    v.tables = %w[
      journal_log journal_log_failed_h journal_log_failed_d
      jr_m_header jr_m_header_fact jr_m_header_r jr_m_header_fact_r
      jr_m_entity jr_m_group jr_m_group_d_fact jr_m_group_d_r jr_m_group_fact_r
      jr_m_item_value jr_m_item_value_r jr_source_file
      trx_type_ref_payment_alloc
      scoring_result_h scoring_result_d
      rfa_log
    ]
  end

  create_viewpoint "Upload & Verification", desc: "Upload data massal dan verifikasi" do |v|
    v.tables = %w[
      upload_type upload_monitoring_h upload_setting_h upload_setting_d
      upload_asset_master upload_asset_negative upload_negative_cust
      verf_question_answer verf_question_grp_h verf_question_grp_d
      verf_scheme_h verf_scheme_d
      verf_result verf_result_h verf_result_d
    ]
  end

  create_viewpoint "Update Customer Task", desc: "Task update data customer dari proses" do |v|
    v.tables = %w[
      task_upd_cust_data
      update_cust_personal_data update_cust_address update_cust_emergency update_cust_family
      update_cust_job_data update_cust_personal_fin_data
      update_cust_bank_acc update_cust_bank_statement
      update_cust_company_data update_cust_company_contact_person
      update_cust_company_fin_data update_cust_company_legal_doc update_cust_company_mgmnt_shareholder
    ]
  end
end
