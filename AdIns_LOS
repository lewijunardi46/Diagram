# Auto-generated from SQL Server - Database: AdInsLOS
 
ActiveRecord::Schema[8.1].define(version: 20260703_000000) do
 
  create_table "aging_app", force: :cascade do |t|
    t.bigint "aging_app_id", null: false
    t.datetime "aging_dt", null: false
    t.bigint "agrmnt_id"
    t.string "agrmnt_no", limit: 25
    t.string "app_curr_step", limit: 25, null: false
    t.bigint "app_id", null: false
    t.string "app_no", limit: 25, null: false
    t.string "app_stat", limit: 25, null: false
    t.datetime "approval_dt"
    t.string "approval_stat", limit: 25
    t.string "cust_name", limit: 250
    t.string "cust_no", limit: 25
    t.string "daily_monthly", limit: 0, null: false
    t.decimal "inst_amt", precision: 19, scale: 4, null: false
    t.bigint "lead_id"
    t.string "lead_no", limit: 25
    t.string "lob_code", limit: 25, null: false
    t.bigint "mou_cust_id"
    t.string "mou_cust_no", limit: 25
    t.decimal "ntf_amt", precision: 19, scale: 4, null: false
    t.integer "num_of_asset", null: false
    t.string "ori_office_code", limit: 25, null: false
    t.string "ori_office_name", limit: 50, null: false
    t.string "prod_offering_code", limit: 25, null: false
    t.string "prod_offering_name", limit: 50, null: false
    t.string "ref_prod_type_code", limit: 25, null: false
    t.string "sales_name", limit: 250
    t.string "sales_username", limit: 25
    t.string "suppl_code", limit: 25
    t.string "suppl_ho_code", limit: 25
    t.string "suppl_ho_name", limit: 250
    t.string "suppl_name", limit: 250
    t.decimal "total_ar_amt", precision: 19, scale: 4, null: false
    t.decimal "total_asset_price_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "aging_lead", force: :cascade do |t|
    t.datetime "aging_dt", null: false
    t.bigint "aging_lead_id", null: false
    t.string "daily_monthly", limit: 0, null: false
    t.decimal "inst_amt", precision: 19, scale: 4, null: false
    t.bigint "lead_id", null: false
    t.string "lead_no", limit: 25, null: false
    t.string "lead_stat", limit: 25, null: false
    t.string "lead_step", limit: 25, null: false
    t.string "lob_code", limit: 25, null: false
    t.string "mr_lead_source_code", limit: 25, null: false
    t.decimal "ntf_amt", precision: 19, scale: 4, null: false
    t.string "ori_office_code", limit: 25, null: false
    t.string "ori_office_name", limit: 50, null: false
    t.decimal "total_ar_amt", precision: 19, scale: 4, null: false
    t.decimal "total_asset_price_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "aging_mou", force: :cascade do |t|
    t.datetime "aging_dt", null: false
    t.bigint "aging_mou_id", null: false
    t.decimal "available_amt", precision: 19, scale: 4, null: false
    t.string "cust_name", limit: 250
    t.string "cust_no", limit: 25
    t.string "daily_monthly", limit: 0, null: false
    t.decimal "in_process_amt", precision: 19, scale: 4, null: false
    t.bigint "mou_cust_id", null: false
    t.string "mou_cust_no", limit: 25, null: false
    t.string "mou_stat", limit: 25
    t.string "mr_mou_type_code", limit: 25
    t.integer "num_of_app", null: false
    t.decimal "plafond_amt", precision: 19, scale: 4, null: false
    t.decimal "plafond_collateral_amt", precision: 19, scale: 4, null: false
    t.string "plafond_type", limit: 25
    t.decimal "realisation_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "agrmnt", force: :cascade do |t|
    t.datetime "agrmnt_created_dt", null: false
    t.string "agrmnt_curr_step", limit: 25, null: false
    t.bigint "agrmnt_id", null: false
    t.string "agrmnt_last_step", limit: 25
    t.string "agrmnt_no", limit: 50, null: false
    t.string "agrmnt_stat", limit: 25, null: false
    t.bigint "app_id"
    t.string "biz_template_code", limit: 50, null: false
    t.datetime "crd_apv_result_exp_dt"
    t.string "credit_admin_no", limit: 25
    t.string "credit_analyst_no", limit: 25
    t.string "credit_risk_no", limit: 25
    t.string "curr_code", limit: 25, null: false
    t.string "cust_name", limit: 250
    t.string "cust_no", limit: 50
    t.string "data_entry_no", limit: 25
    t.string "doc_print_needs_stat", limit: 25
    t.datetime "effective_dt"
    t.datetime "go_live_dt"
    t.decimal "lc_ins_rate_prml", precision: 19, scale: 4
    t.decimal "lc_inst_rate_prml", precision: 19, scale: 4
    t.bigint "lead_id"
    t.string "lob_code", limit: 25, null: false
    t.bigint "mou_cust_id"
    t.string "mr_app_source_code", limit: 25, null: false
    t.string "mr_first_inst_type_code", limit: 25, null: false
    t.string "mr_lc_calc_method_code", limit: 25
    t.string "mr_wop_code", limit: 25, null: false
    t.integer "num_of_asset", null: false
    t.integer "num_of_inst", null: false
    t.string "office_code", limit: 25, null: false
    t.string "office_name", limit: 50, null: false
    t.string "pay_freq_code", limit: 25, null: false
    t.string "prod_offering_code", limit: 25, null: false
    t.string "prod_offering_name", limit: 50, null: false
    t.string "prod_offering_version", limit: 25, null: false
    t.string "ref_prod_type_code", limit: 25, null: false
    t.string "rsv_field_1", limit: 2000
    t.string "rsv_field_2", limit: 2000
    t.string "rsv_field_3", limit: 2000
    t.string "rsv_field_4", limit: 2000
    t.string "rsv_field_5", limit: 2000
    t.string "sales_head_no", limit: 50
    t.string "sales_notes", limit: 2000
    t.string "sales_officer_no", limit: 25, null: false
    t.integer "tenor", null: false
  end
 
  create_table "agrmnt_commission_d", force: :cascade do |t|
    t.bigint "agrmnt_commission_d_id", null: false
    t.bigint "agrmnt_commission_h_id", null: false
    t.decimal "commission_amt", precision: 19, scale: 4, null: false
    t.decimal "commission_amt_after_tax", precision: 19, scale: 4, null: false
    t.string "mr_commission_source_code", limit: 25, null: false
    t.decimal "penalty_amt", precision: 19, scale: 4, null: false
    t.decimal "tax_amt", precision: 19, scale: 4, null: false
    t.decimal "vat_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "agrmnt_commission_h", force: :cascade do |t|
    t.bigint "agrmnt_commission_h_id", null: false
    t.bigint "agrmnt_id", null: false
    t.string "bank_acc_name", limit: 250, null: false
    t.string "bank_acc_no", limit: 250, null: false
    t.string "bank_branch", limit: 50
    t.string "bank_code", limit: 25, null: false
    t.string "bank_name", limit: 50
    t.string "commission_recipient_ref_no", limit: 100, null: false
    t.string "mr_commission_recipient_type_code", limit: 25, null: false
    t.string "mr_tax_calc_method_code", limit: 25, null: false
    t.string "mr_tax_kind_code", limit: 25, null: false
    t.decimal "penalty_amt", precision: 19, scale: 4, null: false
    t.string "reserved_field_1", limit: 50
    t.string "reserved_field_2", limit: 50
    t.string "reserved_field_3", limit: 50
    t.string "reserved_field_4", limit: 50
    t.string "reserved_field_5", limit: 50
    t.decimal "tax_amt", precision: 19, scale: 4, null: false
    t.string "tax_office_code", limit: 25
    t.string "taxpayer_no", limit: 50
    t.decimal "total_commission_after_tax_amt", precision: 19, scale: 4, null: false
    t.decimal "total_commission_amt", precision: 19, scale: 4, null: false
    t.decimal "total_disburse_amt", precision: 19, scale: 4, null: false
    t.decimal "total_expense_amt", precision: 19, scale: 4, null: false
    t.decimal "vat_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "agrmnt_dlr_fncng", force: :cascade do |t|
    t.bigint "agrmnt_dlr_fncng_id", null: false
    t.bigint "app_dlr_fncng_id", null: false
    t.decimal "disb_amt", precision: 19, scale: 4, null: false
    t.decimal "invc_amt", precision: 19, scale: 4, null: false
    t.string "mr_inst_type_code", limit: 25
    t.integer "num_of_invc", null: false
  end
 
  create_table "agrmnt_doc", force: :cascade do |t|
    t.bigint "agrmnt_doc_id", null: false
    t.bigint "agrmnt_id", null: false
    t.string "doc_code", limit: 25, null: false
    t.datetime "doc_dt"
    t.string "doc_name", limit: 50, null: false
    t.string "doc_no", limit: 25
    t.string "doc_notes", limit: 2000
    t.boolean "is_need_to_be_printed", null: false
    t.string "last_print_by_emp_no", limit: 25
    t.datetime "last_print_dt"
    t.string "mr_doc_object_code", limit: 25, null: false
    t.integer "num_of_doc_printed", null: false
    t.integer "seq_no", null: false
  end
 
  create_table "agrmnt_doc_print", force: :cascade do |t|
    t.bigint "agrmnt_doc_id", null: false
    t.bigint "agrmnt_doc_print_id", null: false
    t.bigint "agrmnt_id", null: false
    t.string "doc_print_by_emp_no", limit: 50
    t.datetime "doc_print_dt", null: false
    t.integer "print_seq_no", null: false
  end
 
  create_table "agrmnt_fctr", force: :cascade do |t|
    t.bigint "agrmnt_fctr_id", null: false
    t.bigint "app_fctr_id", null: false
    t.decimal "disb_amt", precision: 19, scale: 4, null: false
    t.decimal "invc_amt", precision: 19, scale: 4, null: false
    t.datetime "invc_dt", null: false
    t.integer "num_of_invc", null: false
    t.decimal "retention_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "agrmnt_fee", force: :cascade do |t|
    t.bigint "agrmnt_fee_id", null: false
    t.bigint "agrmnt_id", null: false
    t.decimal "app_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "app_fee_prcnt", precision: 9, scale: 4, null: false
    t.decimal "cptlz_amt", precision: 19, scale: 4, null: false
    t.boolean "is_cptlz", null: false
    t.string "mr_fee_type_code", limit: 25, null: false
    t.decimal "sell_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "sell_fee_prcnt", precision: 9, scale: 4, null: false
    t.decimal "std_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "std_fee_prcnt", precision: 9, scale: 4, null: false
  end
 
  create_table "agrmnt_fin_data", force: :cascade do |t|
    t.bigint "agrmnt_fin_data_id", null: false
    t.bigint "agrmnt_id", null: false
    t.decimal "balloon_value_amt", precision: 19, scale: 4, null: false
    t.decimal "commission_allocated_amt", precision: 19, scale: 4
    t.integer "cummulative_tenor", null: false
    t.decimal "diff_rate_amt", precision: 19, scale: 4, null: false
    t.decimal "down_payment_gross_amt", precision: 19, scale: 4
    t.decimal "down_payment_nett_amt", precision: 19, scale: 4
    t.decimal "dsr", precision: 9, scale: 4
    t.decimal "effective_rate_prcnt", precision: 9, scale: 4, null: false
    t.decimal "flat_rate_prcnt", precision: 9, scale: 4, null: false
    t.integer "grace_period"
    t.decimal "gross_yield_prcnt", precision: 9, scale: 4, null: false
    t.decimal "ins_cptlz_amt", precision: 19, scale: 4, null: false
    t.decimal "inst_amt", precision: 19, scale: 4, null: false
    t.decimal "lc_inst_admin_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "life_ins_cptlz_amt", precision: 19, scale: 4, null: false
    t.decimal "ltv", precision: 9, scale: 4
    t.datetime "maturity_date"
    t.decimal "max_allocated_refund_amt", precision: 19, scale: 4, null: false
    t.string "mr_grace_period_type_code", limit: 25
    t.string "mr_inst_scheme_code", limit: 25, null: false
    t.string "mr_interest_type_code", limit: 25
    t.decimal "ntf_amt", precision: 19, scale: 4, null: false
    t.decimal "reserved_fund_allocated_amt", precision: 19, scale: 4
    t.decimal "residual_value_amt", precision: 19, scale: 4, null: false
    t.decimal "rounding_amt", precision: 19, scale: 4, null: false
    t.decimal "std_gross_yield_prcnt", precision: 9, scale: 4, null: false
    t.decimal "suppl_effective_rate_prcnt", precision: 9, scale: 4
    t.decimal "suppl_flat_rate_prcnt", precision: 9, scale: 4
    t.decimal "tdp_paid_coy_amt", precision: 19, scale: 4, null: false
    t.decimal "total_ar", precision: 19, scale: 4, null: false
    t.decimal "total_asset_price_amt", precision: 19, scale: 4, null: false
    t.decimal "total_down_payment_gross_amt", precision: 19, scale: 4
    t.decimal "total_down_payment_nett_amt", precision: 19, scale: 4
    t.decimal "total_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "total_fee_cptlz_amt", precision: 19, scale: 4, null: false
    t.decimal "total_ins_cust_amt", precision: 19, scale: 4, null: false
    t.decimal "total_ins_insco_amt", precision: 19, scale: 4, null: false
    t.decimal "total_interest_amt", precision: 19, scale: 4, null: false
    t.decimal "total_life_ins_cust_amt", precision: 19, scale: 4, null: false
    t.decimal "total_life_ins_insco_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "agrmnt_inst_schdl", force: :cascade do |t|
    t.bigint "agrmnt_id", null: false
    t.bigint "agrmnt_inst_schdl_id", null: false
    t.decimal "inst_amt", precision: 19, scale: 4, null: false
    t.decimal "inst_paid_amt", precision: 19, scale: 4, null: false
    t.integer "inst_seq_no", null: false
    t.decimal "interest_amt", precision: 19, scale: 4, null: false
    t.decimal "os_interest_amt", precision: 19, scale: 4, null: false
    t.decimal "os_principal_amt", precision: 19, scale: 4, null: false
    t.decimal "principal_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "agrmnt_life_ins_d", force: :cascade do |t|
    t.bigint "age", null: false
    t.bigint "agrmnt_life_ins_d_id", null: false
    t.bigint "agrmnt_life_ins_h_id", null: false
    t.decimal "base_rate", precision: 9, scale: 4
    t.decimal "cust_rate", precision: 9, scale: 4
    t.decimal "disc_amt", precision: 19, scale: 4, null: false
    t.decimal "disc_rate", precision: 9, scale: 4, null: false
    t.decimal "gross_premium_amt", precision: 19, scale: 4, null: false
    t.decimal "insco_rate", precision: 9, scale: 4
    t.string "insured_name", limit: 250, null: false
    t.string "mr_cust_type_code", limit: 25, null: false
    t.decimal "nett_premium_amt", precision: 19, scale: 4, null: false
    t.decimal "os_cust_exposure_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "agrmnt_life_ins_h", force: :cascade do |t|
    t.bigint "agrmnt_id", null: false
    t.bigint "agrmnt_life_ins_h_id", null: false
    t.decimal "coverage_amt", precision: 19, scale: 4, null: false
    t.decimal "cust_admin_fee_amt", precision: 19, scale: 4, null: false
    t.boolean "is_capitalized", null: false
    t.boolean "is_cust_cover", null: false
    t.boolean "is_guarantor_cover", null: false
    t.boolean "is_spouse_cover", null: false
    t.decimal "life_insco_admin_fee_amt", precision: 19, scale: 4, null: false
    t.string "life_insco_brnch_code", limit: 25
    t.string "life_insco_brnch_name", limit: 250
    t.string "mr_life_ins_paid_method_code", limit: 25, null: false
    t.datetime "new_cover_input_dt", null: false
    t.string "new_cover_notes", limit: 2000
    t.decimal "paid_in_adv_prcnt", precision: 9, scale: 4, null: false
    t.decimal "total_life_ins_cptlz_amt", precision: 19, scale: 4, null: false
    t.decimal "total_life_ins_income_amt", precision: 19, scale: 4, null: false
    t.decimal "total_premi_from_insco", precision: 19, scale: 4, null: false
    t.decimal "total_premi_to_cust", precision: 19, scale: 4, null: false
  end
 
  create_table "agrmnt_other_info", force: :cascade do |t|
    t.string "additional_interest_paid_by", limit: 10
    t.bigint "agrmnt_id", null: false
    t.bigint "agrmnt_other_info_id", null: false
    t.string "bank_acc_name", limit: 500
    t.string "bank_acc_no", limit: 250
    t.string "bank_branch", limit: 50
    t.string "bank_code", limit: 50
    t.string "prod_ho_code", limit: 25
    t.boolean "sb_apdueaftrglv"
    t.boolean "sb_bpkbaging"
  end
 
  create_table "agrmnt_reserved_fund", force: :cascade do |t|
    t.bigint "agrmnt_id", null: false
    t.bigint "agrmnt_reserved_fund_id", null: false
    t.string "behaviour", limit: 25
    t.string "mr_reserved_fund_code", limit: 25, null: false
    t.string "mr_reserved_fund_source_code", limit: 25, null: false
    t.decimal "refund_amt", precision: 19, scale: 4, null: false
    t.decimal "reserved_fund_amt", precision: 19, scale: 4, null: false
    t.decimal "std_reserved_fund_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "agrmnt_signer", force: :cascade do |t|
    t.bigint "agrmnt_id", null: false
    t.bigint "agrmnt_signer_id", null: false
    t.bigint "app_cust_company_mgmnt_shrholder_1_id"
    t.bigint "app_cust_company_mgmnt_shrholder_2_id"
    t.bigint "app_cust_company_mgmnt_shrholder_3_id"
    t.bigint "app_cust_personal_id"
    t.bigint "app_cust_spouse_id"
    t.string "mf_emp_name_1", limit: 50
    t.string "mf_emp_name_2", limit: 50
    t.string "mf_emp_no_1", limit: 25
    t.string "mf_emp_no_2", limit: 25
    t.string "mr_job_position_mf_emp_no_1_code", limit: 25
    t.string "mr_job_position_mf_emp_no_1_name", limit: 250
    t.string "mr_job_position_mf_emp_no_2_code", limit: 25
    t.string "mr_job_position_mf_emp_no_2_name", limit: 250
    t.string "mr_job_position_mgmnt_shrholder_1_code", limit: 25
    t.string "mr_job_position_mgmnt_shrholder_1_name", limit: 50
    t.string "mr_job_position_mgmnt_shrholder_2_code", limit: 25
    t.string "mr_job_position_mgmnt_shrholder_2_name", limit: 50
    t.string "mr_job_position_mgmnt_shrholder_3_code", limit: 25
    t.string "mr_job_position_mgmnt_shrholder_3_name", limit: 50
    t.string "mr_job_position_suppl_branch_emp_code", limit: 25
    t.string "mr_job_position_suppl_branch_emp_name", limit: 250
    t.string "suppl_branch_emp_name", limit: 250
    t.string "suppl_branch_emp_no", limit: 25
  end
 
  create_table "agrmnt_subsidy", force: :cascade do |t|
    t.bigint "agrmnt_id", null: false
    t.bigint "agrmnt_subsidy_id", null: false
    t.string "mr_subd_alloc_code", limit: 25, null: false
    t.string "mr_subd_from_type_code", limit: 25, null: false
    t.string "mr_subd_from_value_code", limit: 25
    t.string "mr_subd_source_code", limit: 25, null: false
    t.decimal "subsidy_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "agrmnt_tc", force: :cascade do |t|
    t.bigint "agmrnt_tc_id", null: false
    t.bigint "agrmnt_id", null: false
    t.datetime "checked_dt"
    t.datetime "expired_dt"
    t.boolean "is_additional", null: false
    t.boolean "is_checked", null: false
    t.boolean "is_exp_dt_mandatory", null: false
    t.boolean "is_mandatory", null: false
    t.boolean "is_waivable", null: false
    t.boolean "is_waived", null: false
    t.string "notes", limit: 2000
    t.string "prior_to", limit: 25, null: false
    t.datetime "promised_dt"
    t.string "tc_code", limit: 25, null: false
  end
 
  create_table "app", force: :cascade do |t|
    t.datetime "app_created_dt", null: false
    t.string "app_curr_step", limit: 25, null: false
    t.bigint "app_id", null: false
    t.string "app_last_step", limit: 25
    t.string "app_no", limit: 50, null: false
    t.string "app_stat", limit: 25, null: false
    t.string "approval_stat", limit: 25
    t.datetime "apv_dt"
    t.string "biz_template_code", limit: 50, null: false
    t.datetime "crd_apv_result_exp_dt"
    t.string "credit_admin_no", limit: 50
    t.string "credit_analyst_no", limit: 50
    t.string "credit_risk_no", limit: 50
    t.string "crt_office_code", limit: 25, null: false
    t.string "crt_office_name", limit: 50, null: false
    t.string "curr_code", limit: 25, null: false
    t.string "cust_checking_step", limit: 25
    t.string "data_entry_no", limit: 50
    t.string "floating_period_code", limit: 25
    t.boolean "is_app_init_done", null: false
    t.integer "lc_grace_period", null: false
    t.decimal "lc_ins_rate_prml", precision: 19, scale: 4
    t.decimal "lc_inst_rate_prml", precision: 19, scale: 4
    t.bigint "lead_id"
    t.string "lob_code", limit: 25, null: false
    t.bigint "mou_cust_id"
    t.string "mr_app_source_code", limit: 25
    t.string "mr_cust_notify_opt_code", limit: 25
    t.string "mr_first_inst_type_code", limit: 25
    t.string "mr_lc_calc_method_code", limit: 25
    t.string "mr_order_info_code", limit: 25
    t.string "mr_sales_recommend_code", limit: 25
    t.string "mr_wop_code", limit: 25
    t.integer "num_of_asset", null: false
    t.integer "num_of_inst", null: false
    t.string "ori_office_code", limit: 25, null: false
    t.string "ori_office_name", limit: 50, null: false
    t.string "pay_freq_code", limit: 25
    t.decimal "prepayment_penalty_rate", precision: 9, scale: 4
    t.bigint "previous_app_id"
    t.string "prod_offering_code", limit: 25, null: false
    t.string "prod_offering_name", limit: 50, null: false
    t.string "prod_offering_version", limit: 10, null: false
    t.string "purpose_of_fin_code", limit: 25
    t.string "ref_prod_type_code", limit: 25, null: false
    t.string "rsv_field_1", limit: 2000
    t.string "rsv_field_2", limit: 2000
    t.string "rsv_field_3", limit: 2000
    t.string "rsv_field_4", limit: 2000
    t.string "rsv_field_5", limit: 2000
    t.string "sales_head_no", limit: 50
    t.string "sales_notes", limit: 2000
    t.string "sales_officer_no", limit: 50
    t.string "srvy_order_no", limit: 50
    t.datetime "submit_dt"
    t.integer "tenor", null: false
    t.string "way_of_fin_code", limit: 25
  end
 
  create_table "app_agrmnt_cancel", force: :cascade do |t|
    t.bigint "agrmnt_id"
    t.bigint "app_agrmnt_cancel_id", null: false
    t.bigint "app_id", null: false
    t.string "cancel_by_ref_no", limit: 25, null: false
    t.datetime "cancel_dt", null: false
    t.string "cancel_notes", limit: 2000, null: false
    t.boolean "is_contract_signed"
    t.string "reason_code", limit: 25, null: false
  end
 
  create_table "app_asset", force: :cascade do |t|
    t.bigint "agrmnt_id"
    t.bigint "app_asset_id", null: false
    t.bigint "app_id", null: false
    t.string "asset_category_code", limit: 25, null: false
    t.string "asset_notes", limit: 2000
    t.decimal "asset_price_amt", precision: 19, scale: 4, null: false
    t.integer "asset_seq_no", null: false
    t.string "asset_stat", limit: 25, null: false
    t.datetime "asset_tax_dt"
    t.string "asset_type_code", limit: 25, null: false
    t.string "color", limit: 25
    t.decimal "down_payment_amt", precision: 19, scale: 4, null: false
    t.decimal "down_payment_prcnt", precision: 9, scale: 4, null: false
    t.string "full_asset_code", limit: 250, null: false
    t.string "full_asset_name", limit: 500, null: false
    t.boolean "is_collateral", null: false
    t.boolean "is_editable_dp", null: false
    t.boolean "is_insurance", null: false
    t.integer "manufacturing_year"
    t.decimal "max_down_payment_prcnt", precision: 9, scale: 4, null: false
    t.decimal "min_down_payment_prcnt", precision: 9, scale: 4, null: false
    t.string "mr_asset_condition_code", limit: 25, null: false
    t.string "mr_asset_usage_code", limit: 25, null: false
    t.string "rsv_field_1", limit: 2000
    t.string "rsv_field_2", limit: 2000
    t.string "rsv_field_3", limit: 2000
    t.string "rsv_field_4", limit: 2000
    t.string "rsv_field_5", limit: 2000
    t.string "serial_no_1", limit: 50
    t.string "serial_no_2", limit: 50
    t.string "serial_no_3", limit: 50
    t.string "serial_no_4", limit: 50
    t.string "serial_no_5", limit: 50
    t.string "suppl_code", limit: 25
    t.string "suppl_name", limit: 250
    t.string "tax_city_issuer", limit: 50
    t.datetime "tax_issue_dt"
    t.datetime "temp_regis_lett_dt"
    t.string "temp_regis_lett_no", limit: 50
    t.decimal "total_accessory_down_payment_amt", precision: 19, scale: 4, null: false
    t.decimal "total_accessory_price_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "app_asset_accessory", force: :cascade do |t|
    t.string "accessory_notes", limit: 2000
    t.decimal "accessory_price_amt", precision: 19, scale: 4, null: false
    t.bigint "app_asset_accessory_id", null: false
    t.bigint "app_asset_id", null: false
    t.string "asset_accessory_code", limit: 25, null: false
    t.string "asset_accessory_name", limit: 50, null: false
    t.decimal "down_payment_amt", precision: 19, scale: 4, null: false
    t.decimal "down_payment_prcnt", precision: 9, scale: 4, null: false
    t.string "suppl_code", limit: 25, null: false
    t.string "suppl_name", limit: 250, null: false
  end
 
  create_table "app_asset_attr", force: :cascade do |t|
    t.bigint "app_asset_attr_id", null: false
    t.bigint "app_asset_id", null: false
    t.string "asset_attr_code", limit: 25, null: false
    t.string "asset_attr_name", limit: 50, null: false
    t.string "attr_value", limit: 2000, null: false
  end
 
  create_table "app_asset_cancel_opl", force: :cascade do |t|
    t.bigint "app_asset_cancel_opl_id", null: false
    t.bigint "app_asset_id", null: false
    t.string "cancel_by_ref_no", limit: 25, null: false
    t.datetime "cancel_dt", null: false
    t.string "cancel_notes", limit: 2000, null: false
    t.boolean "is_contract_signed"
    t.string "po_cancel_notes", limit: 2000
    t.string "po_reason_code", limit: 25
    t.string "reason_code", limit: 25, null: false
  end
 
  create_table "app_asset_fee_opl", force: :cascade do |t|
    t.bigint "app_asset_fee_opl_id", null: false
    t.bigint "app_asset_id", null: false
    t.string "cap_amt_behaviour_code", limit: 25, null: false
    t.decimal "capitalized_amt", precision: 19, scale: 4, null: false
    t.decimal "fee_amt", precision: 19, scale: 4, null: false
    t.string "fee_amt_behaviour_code", limit: 25, null: false
    t.string "fee_code", limit: 25, null: false
    t.decimal "vat_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "app_asset_ins_add_cvg_opl", force: :cascade do |t|
    t.bigint "app_asset_ins_add_cvg_opl_id", null: false
    t.bigint "app_asset_ins_main_cvg_opl_id", null: false
    t.decimal "insco_add_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "insco_add_premi_rate", precision: 9, scale: 4, null: false
    t.string "mr_add_cvg_type_code", limit: 25, null: false
    t.decimal "sum_insured_amt", precision: 19, scale: 4, null: false
    t.decimal "sum_insured_prcnt", precision: 9, scale: 4, null: false
  end
 
  create_table "app_asset_ins_fee_opl", force: :cascade do |t|
    t.bigint "app_asset_ins_fee_opl_id", null: false
    t.bigint "app_asset_ins_opl_id", null: false
    t.decimal "fee_amt", precision: 19, scale: 4, null: false
    t.string "mr_ins_fee_type_code", limit: 25, null: false
  end
 
  create_table "app_asset_ins_main_cvg_opl", force: :cascade do |t|
    t.bigint "app_asset_ins_main_cvg_opl_id", null: false
    t.bigint "app_asset_ins_opl_id", null: false
    t.decimal "insco_main_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "insco_main_premi_rate", precision: 9, scale: 4, null: false
    t.string "mr_main_cvg_type_code", limit: 25, null: false
    t.decimal "sum_insured_amt", precision: 19, scale: 4, null: false
    t.decimal "sum_insured_prcnt", precision: 9, scale: 4, null: false
    t.bigint "tenor", null: false
    t.decimal "total_ins_insco_amt", precision: 19, scale: 4, null: false
    t.decimal "total_insco_add_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "total_insco_fee_amt", precision: 19, scale: 4, null: false
    t.bigint "year_no", null: false
  end
 
  create_table "app_asset_ins_opl", force: :cascade do |t|
    t.bigint "app_asset_id", null: false
    t.bigint "app_asset_ins_opl_id", null: false
    t.decimal "cvg_amt", precision: 19, scale: 4, null: false
    t.string "ins_asset_region", limit: 25, null: false
    t.decimal "ins_disc_amt", precision: 19, scale: 4, null: false
    t.bigint "ins_length", null: false
    t.string "insco_branch_code", limit: 50, null: false
    t.string "mr_ins_cover_period_code", limit: 50, null: false
    t.string "notes", limit: 2000
    t.decimal "total_ins_insco_amt", precision: 19, scale: 4, null: false
    t.decimal "total_insco_add_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "total_insco_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "total_insco_main_premi_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "app_asset_maint_d", force: :cascade do |t|
    t.bigint "app_asset_maint_d_id", null: false
    t.bigint "app_asset_maint_h_id", null: false
    t.decimal "fee_amt", precision: 19, scale: 4, null: false
    t.string "mr_service_code", limit: 25
    t.string "mr_sparepart_code", limit: 25
  end
 
  create_table "app_asset_maint_h", force: :cascade do |t|
    t.bigint "app_asset_id", null: false
    t.string "app_asset_maint_behaviour_code", limit: 25, null: false
    t.bigint "app_asset_maint_h_id", null: false
    t.boolean "is_addable", null: false
    t.string "mr_maint_package_code", limit: 25, null: false
    t.decimal "total_service_amt", precision: 19, scale: 4, null: false
    t.decimal "total_sparepart_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "app_asset_opl", force: :cascade do |t|
    t.string "app_asset_curr_step_code", limit: 25
    t.bigint "app_asset_id", null: false
    t.string "app_asset_last_step_code", limit: 25
    t.string "app_asset_no", limit: 50
    t.bigint "app_asset_opl_id", null: false
    t.string "app_asset_stat_code", limit: 25
    t.decimal "asset_price_bef_disc_amt", precision: 19, scale: 4, null: false
    t.decimal "discount_amt", precision: 19, scale: 4, null: false
    t.string "dlvry_addr", limit: 250
    t.string "dlvry_area_code_1", limit: 25
    t.string "dlvry_area_code_2", limit: 25
    t.string "dlvry_area_code_3", limit: 25
    t.string "dlvry_area_code_4", limit: 25
    t.string "dlvry_city", limit: 25
    t.datetime "dlvry_dt"
    t.string "dlvry_zipcode", limit: 25
    t.datetime "effective_dt"
    t.datetime "expected_dlvry_dt"
    t.datetime "go_live_dt"
    t.string "go_live_notes", limit: 2000
    t.boolean "is_need_replacement_car", null: false
    t.string "location_addr", limit: 250
    t.string "location_area_code_1", limit: 25
    t.string "location_area_code_2", limit: 25
    t.string "location_area_code_3", limit: 25
    t.string "location_area_code_4", limit: 25
    t.string "location_city", limit: 25
    t.string "location_zipcode", limit: 25
  end
 
  create_table "app_asset_oth_expense_opl", force: :cascade do |t|
    t.bigint "app_asset_id", null: false
    t.bigint "app_asset_oth_expense_opl_id", null: false
    t.boolean "is_addable", null: false
    t.string "mr_oth_expense_type_opl_code", limit: 25, null: false
    t.string "oth_exp_behaviour_code", limit: 25, null: false
    t.decimal "oth_expense_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "app_asset_rent_data_opl", force: :cascade do |t|
    t.bigint "app_asset_id", null: false
    t.bigint "app_asset_rent_data_opl_id", null: false
    t.decimal "cof_interest_amt", precision: 19, scale: 4, null: false
    t.decimal "cof_interest_prnct", precision: 9, scale: 4, null: false
    t.decimal "gross_yield_prcnt", precision: 9, scale: 4, null: false
    t.decimal "margin_amt", precision: 19, scale: 4, null: false
    t.decimal "margin_prcnt", precision: 9, scale: 4, null: false
    t.decimal "rent_amt", precision: 19, scale: 4, null: false
    t.decimal "residual_value_amt", precision: 19, scale: 4, null: false
    t.decimal "residual_value_prcnt", precision: 9, scale: 4, null: false
    t.decimal "security_deposit_amt", precision: 19, scale: 4, null: false
    t.decimal "total_cost_amt", precision: 19, scale: 4, null: false
    t.decimal "total_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "total_fee_capitalized", precision: 19, scale: 4, null: false
    t.decimal "total_insurance_amt", precision: 19, scale: 4, null: false
    t.decimal "total_maint_amt", precision: 19, scale: 4, null: false
    t.decimal "total_oth_expense_amt", precision: 19, scale: 4, null: false
    t.decimal "vat_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "app_asset_rent_schdl_opl", force: :cascade do |t|
    t.bigint "app_asset_id", null: false
    t.bigint "app_asset_rent_schdl_opl_id", null: false
    t.decimal "cof_interest", precision: 19, scale: 4, null: false
    t.decimal "cof_principal", precision: 19, scale: 4, null: false
    t.decimal "cost_amt", precision: 19, scale: 4, null: false
    t.decimal "margin_amt", precision: 19, scale: 4, null: false
    t.decimal "rent_amt", precision: 19, scale: 4, null: false
    t.decimal "rent_amt_excl_vat", precision: 19, scale: 4, null: false
    t.decimal "seq_no", precision: 19, scale: 4, null: false
    t.decimal "vat_amt", precision: 19, scale: 4, null: false
    t.decimal "withholding_tax_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "app_asset_suppl_emp", force: :cascade do |t|
    t.bigint "app_asset_id", null: false
    t.bigint "app_asset_suppl_emp_id", null: false
    t.string "mr_suppl_emp_position_code", limit: 25, null: false
    t.string "report_to_suppl_emp_no", limit: 25
    t.string "suppl_emp_name", limit: 250, null: false
    t.string "suppl_emp_no", limit: 25, null: false
  end
 
  create_table "app_attr_content", force: :cascade do |t|
    t.bigint "app_attr_content_id", null: false
    t.bigint "app_id", null: false
    t.string "attr_value", limit: 2000, null: false
    t.string "ref_attr_code", limit: 25, null: false
  end
 
  create_table "app_cashflow", force: :cascade do |t|
    t.bigint "app_asset_id", null: false
    t.bigint "app_cashflow_id", null: false
    t.bigint "app_id", null: false
    t.decimal "cashflow_amt", precision: 19, scale: 4, null: false
    t.string "mr_cashflow_item_code", limit: 25, null: false
    t.bigint "seq_no", null: false
  end
 
  create_table "app_collateral", force: :cascade do |t|
    t.bigint "agrmnt_id"
    t.bigint "app_asset_id"
    t.bigint "app_collateral_id", null: false
    t.bigint "app_id", null: false
    t.string "asset_category_code", limit: 25, null: false
    t.string "asset_notes", limit: 2000
    t.datetime "asset_tax_dt"
    t.string "asset_type_code", limit: 25, null: false
    t.string "collateral_no", limit: 50
    t.string "collateral_notes", limit: 2000
    t.decimal "collateral_portion_amt", precision: 19, scale: 4
    t.decimal "collateral_portion_prcnt", precision: 9, scale: 4
    t.integer "collateral_seq_no", null: false
    t.string "collateral_stat", limit: 25, null: false
    t.decimal "collateral_value_amt", precision: 19, scale: 4, null: false
    t.string "color", limit: 25
    t.string "full_asset_code", limit: 250, null: false
    t.string "full_asset_name", limit: 500, null: false
    t.boolean "is_main_collateral", null: false
    t.integer "manufacturing_year"
    t.decimal "max_coll_prcnt", precision: 9, scale: 4
    t.string "mr_collateral_condition_code", limit: 25, null: false
    t.string "mr_collateral_usage_code", limit: 25, null: false
    t.string "rsv_field_1", limit: 2000
    t.string "rsv_field_2", limit: 2000
    t.string "rsv_field_3", limit: 2000
    t.string "rsv_field_4", limit: 2000
    t.string "rsv_field_5", limit: 2000
    t.string "serial_no_1", limit: 50
    t.string "serial_no_2", limit: 50
    t.string "serial_no_3", limit: 50
    t.string "serial_no_4", limit: 50
    t.string "serial_no_5", limit: 50
    t.string "tax_city_issuer", limit: 50
    t.datetime "tax_issue_dt"
    t.decimal "total_accessory_down_payment_amt", precision: 19, scale: 4, null: false
    t.decimal "total_accessory_price_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "app_collateral_accessory", force: :cascade do |t|
    t.string "accessory_notes", limit: 2000
    t.decimal "accessory_price_amt", precision: 19, scale: 4, null: false
    t.bigint "app_collateral_accessory_id", null: false
    t.bigint "app_collateral_id", null: false
    t.string "collateral_accessory_code", limit: 25, null: false
    t.string "collateral_accessory_name", limit: 50, null: false
    t.decimal "down_payment_amt", precision: 19, scale: 4, null: false
    t.decimal "down_payment_prcnt", precision: 9, scale: 4, null: false
  end
 
  create_table "app_collateral_allocation", force: :cascade do |t|
    t.bigint "agrmnt_id", null: false
    t.bigint "app_collateral_allocation_id", null: false
    t.bigint "app_collateral_id", null: false
    t.decimal "collateral_portion_amt", precision: 19, scale: 4
    t.decimal "collateral_portion_prcnt", precision: 9, scale: 4
  end
 
  create_table "app_collateral_attr", force: :cascade do |t|
    t.bigint "app_collateral_attr_id", null: false
    t.bigint "app_collateral_id", null: false
    t.string "attr_value", limit: 2000, null: false
    t.string "collateral_attr_code", limit: 25, null: false
    t.string "collateral_attr_name", limit: 50, null: false
  end
 
  create_table "app_collateral_doc", force: :cascade do |t|
    t.bigint "app_collateral_doc_id", null: false
    t.bigint "app_collateral_id", null: false
    t.string "doc_code", limit: 25, null: false
    t.string "doc_name", limit: 50
    t.string "doc_no", limit: 25
    t.string "doc_notes", limit: 2000
    t.datetime "expired_dt"
    t.boolean "is_received", null: false
  end
 
  create_table "app_collateral_registration", force: :cascade do |t|
    t.bigint "app_collateral_id", null: false
    t.bigint "app_collateral_registration_id", null: false
    t.string "location_addr", limit: 250
    t.string "location_area_code_1", limit: 25
    t.string "location_area_code_2", limit: 25
    t.string "location_area_code_3", limit: 25
    t.string "location_area_code_4", limit: 25
    t.string "location_city", limit: 25
    t.string "location_zipcode", limit: 25
    t.string "mr_id_type_code", limit: 25
    t.string "mr_owner_relationship_code", limit: 25
    t.string "mr_owner_type_code", limit: 25
    t.string "mr_user_relationship_code", limit: 25
    t.string "notes", limit: 2000
    t.string "owner_addr", limit: 500
    t.string "owner_area_code_1", limit: 25
    t.string "owner_area_code_2", limit: 25
    t.string "owner_area_code_3", limit: 25
    t.string "owner_area_code_4", limit: 25
    t.string "owner_city", limit: 25
    t.string "owner_id_no", limit: 25
    t.string "owner_mobile_phn_no", limit: 25
    t.string "owner_name", limit: 250
    t.string "owner_profession_code", limit: 25
    t.string "owner_zipcode", limit: 25
    t.string "user_name", limit: 250
  end
 
  create_table "app_comm_compnt", force: :cascade do |t|
    t.bigint "app_commission_compnt_id", null: false
    t.bigint "app_id", null: false
    t.decimal "commission_compnt_amt", precision: 19, scale: 4, null: false
    t.decimal "commission_compnt_prcnt", precision: 9, scale: 4, null: false
    t.decimal "max_commission_amt", precision: 19, scale: 4, null: false
    t.decimal "max_commission_prcnt", precision: 9, scale: 4, null: false
    t.string "mr_commission_compnt_code", limit: 25, null: false
  end
 
  create_table "app_commission_d", force: :cascade do |t|
    t.bigint "app_commission_d_id", null: false
    t.bigint "app_commission_h_id", null: false
    t.decimal "commission_amt", precision: 19, scale: 4, null: false
    t.decimal "commission_amt_after_tax", precision: 19, scale: 4, null: false
    t.string "mr_commission_source_code", limit: 25, null: false
    t.decimal "penalty_amt", precision: 19, scale: 4, null: false
    t.decimal "refund_amt", precision: 19, scale: 4, null: false
    t.decimal "tax_amt", precision: 19, scale: 4, null: false
    t.decimal "vat_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "app_commission_h", force: :cascade do |t|
    t.bigint "app_commission_h_id", null: false
    t.bigint "app_id", null: false
    t.string "bank_acc_name", limit: 250, null: false
    t.string "bank_acc_no", limit: 250, null: false
    t.string "bank_branch", limit: 50
    t.string "bank_code", limit: 25, null: false
    t.string "bank_name", limit: 50
    t.string "commission_recipient_ref_no", limit: 100, null: false
    t.string "mr_commission_recipient_type_code", limit: 25, null: false
    t.string "mr_tax_calc_method_code", limit: 25, null: false
    t.string "mr_tax_kind_code", limit: 25, null: false
    t.decimal "penalty_amt", precision: 19, scale: 4, null: false
    t.string "reserved_field_1", limit: 50
    t.string "reserved_field_2", limit: 50
    t.string "reserved_field_3", limit: 50
    t.string "reserved_field_4", limit: 50
    t.string "reserved_field_5", limit: 50
    t.decimal "tax_amt", precision: 19, scale: 4, null: false
    t.string "tax_office_code", limit: 25
    t.string "taxpayer_no", limit: 50
    t.decimal "total_commission_after_tax_amt", precision: 19, scale: 4, null: false
    t.decimal "total_commission_amt", precision: 19, scale: 4, null: false
    t.decimal "total_disburse_amt", precision: 19, scale: 4, null: false
    t.decimal "total_expense_amt", precision: 19, scale: 4, null: false
    t.decimal "vat_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "app_crd_ins", force: :cascade do |t|
    t.bigint "app_crd_ins_id", null: false
    t.bigint "app_id", null: false
    t.decimal "coverage_amt", precision: 19, scale: 4, null: false
    t.datetime "end_dt"
    t.decimal "fee_amt", precision: 19, scale: 4, null: false
    t.integer "ins_length", null: false
    t.string "insco_branch_code", limit: 25
    t.string "notes", limit: 2000
    t.decimal "premi_amt", precision: 19, scale: 4, null: false
    t.datetime "start_dt"
    t.decimal "sum_insured_prcnt", precision: 9, scale: 4, null: false
  end
 
  create_table "app_crd_invstg_d", force: :cascade do |t|
    t.string "analysis_result", limit: 2000
    t.bigint "app_crd_invstg_d_id", null: false
    t.bigint "app_crd_invstg_h_id", null: false
    t.string "mr_analysis_item_code", limit: 25
  end
 
  create_table "app_crd_invstg_h", force: :cascade do |t|
    t.bigint "app_crd_invstg_h_id", null: false
    t.bigint "app_id", null: false
    t.string "crd_invstg_stat", limit: 25, null: false
    t.string "crd_risk_emp_no", limit: 25, null: false
    t.string "return_notes"
    t.datetime "submit_dt", null: false
  end
 
  create_table "app_crd_rvw_d", force: :cascade do |t|
    t.string "analysis_result", limit: 2000, null: false
    t.bigint "app_crd_rvw_d_id", null: false
    t.bigint "app_crd_rvw_h_id", null: false
    t.string "mr_analysis_item_code", limit: 25, null: false
  end
 
  create_table "app_crd_rvw_h", force: :cascade do |t|
    t.bigint "app_crd_rvw_h_id", null: false
    t.bigint "app_id", null: false
    t.string "crd_analyst_emp_no", limit: 25, null: false
    t.string "crd_rvw_stat", limit: 25, null: false
    t.string "return_notes", limit: 2000
    t.datetime "submit_dt", null: false
  end
 
  create_table "app_cross", force: :cascade do |t|
    t.bigint "app_cross_id", null: false
    t.bigint "app_id", null: false
    t.string "contract_stat", limit: 25
    t.string "cross_agrmnt_no", limit: 50
    t.string "cross_app_no", limit: 50
    t.string "cust_name", limit: 250
    t.datetime "maturity_dt"
  end
 
  create_table "app_cust", force: :cascade do |t|
    t.bigint "app_cust_id", null: false
    t.bigint "app_id", null: false
    t.string "applicant_no", limit: 25
    t.string "cust_name", limit: 250, null: false
    t.string "cust_no", limit: 25
    t.datetime "id_expired_dt"
    t.string "id_no", limit: 25, null: false
    t.boolean "is_affiliate_with_mf", null: false
    t.boolean "is_app_cust_checked", null: false
    t.boolean "is_completion", null: false
    t.boolean "is_customer", null: false
    t.boolean "is_existing_cust", null: false
    t.boolean "is_family", null: false
    t.boolean "is_guarantor", null: false
    t.boolean "is_shareholder", null: false
    t.boolean "is_vip", null: false
    t.string "mr_cust_model_code", limit: 25
    t.string "mr_cust_relationship_code", limit: 25
    t.string "mr_cust_type_code", limit: 25, null: false
    t.string "mr_id_type_code", limit: 25, null: false
    t.string "tax_id_no", limit: 25
    t.string "vip_notes", limit: 2000
  end
 
  create_table "app_cust_addr", force: :cascade do |t|
    t.string "addr", limit: 500
    t.bigint "app_cust_addr_id", null: false
    t.bigint "app_cust_id", null: false
    t.string "area_code_1", limit: 25
    t.string "area_code_2", limit: 25
    t.string "area_code_3", limit: 25
    t.string "area_code_4", limit: 25
    t.string "city", limit: 25
    t.string "fax", limit: 25
    t.string "fax_area", limit: 10
    t.string "mr_cust_addr_type_code", limit: 25, null: false
    t.string "mr_house_ownership_code", limit: 25
    t.string "notes", limit: 2000
    t.string "phn_1", limit: 25
    t.string "phn_2", limit: 25
    t.string "phn_3", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_area_2", limit: 10
    t.string "phn_area_3", limit: 10
    t.string "phn_ext_1", limit: 5
    t.string "phn_ext_2", limit: 5
    t.string "phn_ext_3", limit: 5
    t.decimal "stay_length", precision: 19, scale: 4
    t.string "sub_zipcode", limit: 25
    t.string "zipcode", limit: 25
  end
 
  create_table "app_cust_addr_attr_content", force: :cascade do |t|
    t.bigint "app_cust_addr_attr_content_id", null: false
    t.bigint "app_cust_addr_id", null: false
    t.string "cust_addr_attr_code", limit: 25, null: false
    t.string "cust_addr_attr_value", limit: 2000
  end
 
  create_table "app_cust_asset", force: :cascade do |t|
    t.bigint "app_cust_asset_id", null: false
    t.bigint "app_cust_id", null: false
    t.string "asset_descr"
    t.integer "asset_qty"
    t.decimal "asset_total_value", precision: 19, scale: 4
    t.decimal "asset_value", precision: 19, scale: 4
    t.string "mr_cust_asset_type_code", limit: 100, null: false
  end
 
  create_table "app_cust_attr_content", force: :cascade do |t|
    t.bigint "app_cust_attr_content_id", null: false
    t.bigint "app_cust_id", null: false
    t.string "attr_value", limit: 500, null: false
    t.string "ref_attr_code", limit: 25
  end
 
  create_table "app_cust_bank_acc", force: :cascade do |t|
    t.bigint "app_cust_bank_acc_id", null: false
    t.bigint "app_cust_id", null: false
    t.decimal "balance_amt", precision: 19, scale: 4, null: false
    t.string "bank_acc_name", limit: 250, null: false
    t.string "bank_acc_no", limit: 250, null: false
    t.string "bank_branch", limit: 25, null: false
    t.string "bank_branch_reg_rpt_code", limit: 25
    t.string "bank_code", limit: 25, null: false
    t.decimal "beg_balance_amt", precision: 19, scale: 4, null: false
    t.boolean "is_active", null: false
    t.boolean "is_bank_stmnt", null: false
    t.boolean "is_default", null: false
  end
 
  create_table "app_cust_bank_facility", force: :cascade do |t|
    t.bigint "app_cust_bank_facility_id", null: false
    t.bigint "app_cust_id", null: false
    t.string "bank_acc_no", limit: 250
    t.string "bank_code", limit: 25
    t.string "bank_name", limit: 100
    t.string "collateral", limit: 50
    t.string "curr_code", limit: 25
    t.decimal "facility_amt", precision: 19, scale: 4
    t.string "facility_type", limit: 50
    t.integer "seq_no"
  end
 
  create_table "app_cust_bank_stmnt", force: :cascade do |t|
    t.bigint "app_cust_bank_acc_id", null: false
    t.bigint "app_cust_bank_stmnt_id", null: false
    t.decimal "balance_amt", precision: 19, scale: 4, null: false
    t.decimal "credit_amt", precision: 19, scale: 4, null: false
    t.integer "credit_trx_count"
    t.decimal "debit_amt", precision: 19, scale: 4, null: false
    t.integer "debit_trx_count"
    t.string "month", limit: 25, null: false
    t.string "year", limit: 5, null: false
  end
 
  create_table "app_cust_company", force: :cascade do |t|
    t.bigint "app_cust_company_id", null: false
    t.bigint "app_cust_id", null: false
    t.string "email_1", limit: 25
    t.string "email_2", limit: 25
    t.datetime "establishment_dt"
    t.string "industry_type_code", limit: 25
    t.boolean "is_taxable", null: false
    t.string "mr_company_type_code", limit: 25
    t.integer "num_of_emp"
  end
 
  create_table "app_cust_company_contact_person", force: :cascade do |t|
    t.bigint "app_cust_company_contact_person_id", null: false
    t.bigint "app_cust_company_id", null: false
    t.datetime "birth_dt"
    t.string "birth_place", limit: 100
    t.string "contact_person_name", limit: 250
    t.string "email_1", limit: 25
    t.string "email_2", limit: 25
    t.datetime "id_expired_dt"
    t.string "id_no", limit: 25
    t.string "job_title_name", limit: 50
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "mr_cust_relationship_code", limit: 25
    t.string "mr_gender_code", limit: 25
    t.string "mr_id_type_code", limit: 25
    t.string "mr_job_position_code", limit: 25
  end
 
  create_table "app_cust_company_fin_data", force: :cascade do |t|
    t.bigint "app_cust_company_fin_data_id", null: false
    t.bigint "app_cust_id", null: false
    t.decimal "ar_turn_over_prcnt", precision: 9, scale: 4, null: false
    t.decimal "curr_asset", precision: 19, scale: 4, null: false
    t.decimal "curr_liablts", precision: 19, scale: 4, null: false
    t.decimal "curr_ratio", precision: 19, scale: 4, null: false
    t.decimal "current_ratio_prcnt", precision: 9, scale: 4, null: false
    t.datetime "date_as_of"
    t.decimal "debt_equity_ratio_prcnt", precision: 9, scale: 4, null: false
    t.decimal "gross_monthly_expense_amt", precision: 19, scale: 4, null: false
    t.decimal "gross_monthly_income_amt", precision: 19, scale: 4, null: false
    t.decimal "gross_profit_amt", precision: 19, scale: 4, null: false
    t.decimal "growth_prcnt", precision: 9, scale: 4, null: false
    t.decimal "inv_turn_over_prcnt", precision: 9, scale: 4, null: false
    t.decimal "long_term_liablts", precision: 19, scale: 4, null: false
    t.decimal "net_fixed_asset", precision: 19, scale: 4, null: false
    t.decimal "opr_cost", precision: 19, scale: 4, null: false
    t.decimal "oth_monthly_inst_amt", precision: 19, scale: 4, null: false
    t.decimal "profit_before_tax", precision: 19, scale: 4, null: false
    t.decimal "profit_margin_prcnt", precision: 9, scale: 4, null: false
    t.decimal "return_of_asset_prcnt", precision: 9, scale: 4, null: false
    t.decimal "return_of_equity_prcnt", precision: 9, scale: 4, null: false
    t.decimal "return_of_investment_prcnt", precision: 9, scale: 4, null: false
    t.decimal "revenue", precision: 19, scale: 4, null: false
    t.decimal "shareholder_equity", precision: 19, scale: 4, null: false
    t.decimal "total_asset", precision: 19, scale: 4, null: false
    t.decimal "working_capital_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "app_cust_company_legal_doc", force: :cascade do |t|
    t.bigint "app_cust_company_id", null: false
    t.bigint "app_cust_company_legal_doc_id", null: false
    t.datetime "doc_dt"
    t.datetime "doc_expired_dt"
    t.string "doc_no", limit: 25
    t.string "doc_notes", limit: 500
    t.string "mr_legal_doc_type_code", limit: 25
    t.string "notary_location", limit: 2000
    t.string "notary_name", limit: 250
  end
 
  create_table "app_cust_company_mgmnt_shrholder", force: :cascade do |t|
    t.bigint "app_cust_company_id", null: false
    t.bigint "app_cust_company_mgmnt_shrholder_id", null: false
    t.bigint "app_cust_id"
    t.datetime "establishment_dt"
    t.boolean "is_active", null: false
    t.boolean "is_owner", null: false
    t.boolean "is_signer", null: false
    t.string "mr_job_position_code", limit: 25
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
    t.decimal "share_prcnt", precision: 9, scale: 4, null: false
  end
 
  create_table "app_cust_emrgnc_cntct", force: :cascade do |t|
    t.string "addr", limit: 1000
    t.bigint "app_cust_emrgnc_cntct_id", null: false
    t.bigint "app_cust_id", null: false
    t.string "area_code_1", limit: 50
    t.string "area_code_2", limit: 50
    t.string "area_code_3", limit: 50
    t.string "area_code_4", limit: 50
    t.datetime "birth_dt"
    t.string "birth_place", limit: 50
    t.string "city", limit: 50
    t.string "contact_person_name", limit: 50, null: false
    t.string "email", limit: 50
    t.datetime "id_expired_dt"
    t.string "id_no", limit: 50
    t.string "mobile_phn_no_1", limit: 50
    t.string "mobile_phn_no_2", limit: 50
    t.string "mr_cust_relationship_code", limit: 50
    t.string "mr_gender_code", limit: 50
    t.string "mr_id_type_code", limit: 50
    t.string "phn_1", limit: 25
    t.string "phn_2", limit: 25
    t.string "phn_3", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_area_2", limit: 10
    t.string "phn_area_3", limit: 10
    t.string "phn_ext_1", limit: 5
    t.string "phn_ext_2", limit: 5
    t.string "phn_ext_3", limit: 5
    t.string "sub_zipcode", limit: 10
    t.string "zipcode", limit: 10
  end
 
  create_table "app_cust_existing_asset", force: :cascade do |t|
    t.bigint "app_cust_id", null: false
    t.bigint "app_existing_asset_id", null: false
    t.string "asset_category_code", limit: 25
    t.string "asset_notes", limit: 2000
    t.decimal "asset_price_amt", precision: 19, scale: 4, null: false
    t.datetime "asset_tax_dt"
    t.string "asset_type_code", limit: 25
    t.string "full_asset_code", limit: 250
    t.string "full_asset_name", limit: 500
    t.string "mr_asset_ownership_code", limit: 25
    t.string "mr_collateral_condition_code", limit: 25
    t.string "mr_collateral_usage_code", limit: 25
    t.integer "seq_no", null: false
    t.string "serial_no_1", limit: 50
    t.string "serial_no_2", limit: 50
    t.string "serial_no_3", limit: 50
    t.string "serial_no_4", limit: 50
    t.string "serial_no_5", limit: 50
  end
 
  create_table "app_cust_fin_data_attr_content", force: :cascade do |t|
    t.bigint "app_cust_fin_data_attr_content_id", null: false
    t.bigint "app_cust_id", null: false
    t.string "attr_group", limit: 25
    t.string "attr_value", limit: 500, null: false
    t.string "ref_attr_code", limit: 25
  end
 
  create_table "app_cust_grp", force: :cascade do |t|
    t.bigint "app_cust_grp_id", null: false
    t.bigint "app_cust_id", null: false
    t.string "applicant_no", limit: 25
    t.string "cust_no", limit: 25
  end
 
  create_table "app_cust_highlight_comment", force: :cascade do |t|
    t.bigint "app_cust_highlight_comment_id", null: false
    t.bigint "app_id", null: false
    t.string "app_no", limit: 50
    t.string "comment"
    t.string "cust_no", limit: 50
    t.string "input_by", limit: 50, null: false
    t.datetime "input_dt", null: false
  end
 
  create_table "app_cust_other_info", force: :cascade do |t|
    t.bigint "app_cust_id", null: false
    t.bigint "app_cust_other_info_id", null: false
    t.string "lbppms_biz_scl_lbpp_code", limit: 50, null: false
    t.string "lbppms_biz_scl_lbpp_descr", limit: 100
    t.string "lbppms_biz_sustain_lbpp_code", limit: 50
    t.string "lbppms_biz_sustain_lbpp_descr", limit: 500
    t.string "lbppms_cntrprt_lbpp_code", limit: 50
    t.string "lbppms_cntrprt_lbpp_descr", limit: 500
    t.string "lbppms_debt_grp_lbpp_code", limit: 50, null: false
    t.string "lbppms_debt_grp_lbpp_descr", limit: 100
  end
 
  create_table "app_cust_personal", force: :cascade do |t|
    t.bigint "app_cust_id", null: false
    t.bigint "app_cust_personal_id", null: false
    t.datetime "birth_dt", null: false
    t.string "birth_place", limit: 50, null: false
    t.string "cust_full_name", limit: 250, null: false
    t.string "cust_prefix_name", limit: 100
    t.string "cust_suffix_name", limit: 100
    t.string "email_1", limit: 50
    t.string "email_2", limit: 50
    t.string "email_3", limit: 50
    t.string "family_card_no", limit: 25
    t.boolean "is_rest_in_peace", null: false
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "mobile_phn_no_3", limit: 25
    t.string "mother_maiden_name", limit: 250
    t.string "mr_education_code", limit: 25
    t.string "mr_gender_code", limit: 25, null: false
    t.string "mr_marital_stat_code", limit: 25
    t.string "mr_nationality_code", limit: 25
    t.string "mr_religion_code", limit: 25
    t.string "mr_salutation_code", limit: 25
    t.string "nationality_country_code", limit: 25
    t.string "nick_name", limit: 100
    t.integer "no_of_dependents"
    t.integer "no_of_residence"
  end
 
  create_table "app_cust_personal_fin_data", force: :cascade do |t|
    t.bigint "app_cust_personal_fin_data_id", null: false
    t.bigint "app_cust_personal_id", null: false
    t.datetime "date_as_of"
    t.boolean "is_join_income", null: false
    t.decimal "monthly_expense_amt", precision: 19, scale: 4, null: false
    t.decimal "monthly_income_amt", precision: 19, scale: 4, null: false
    t.decimal "monthly_installment_amt", precision: 19, scale: 4, null: false
    t.string "mr_source_of_income_type_code", limit: 25
    t.decimal "nett_income_amt", precision: 19, scale: 4, null: false
    t.decimal "nett_profit_monthly_amt", precision: 19, scale: 4, null: false
    t.decimal "other_income_amt", precision: 19, scale: 4, null: false
    t.decimal "other_monthly_installment_amt", precision: 19, scale: 4, null: false
    t.decimal "spouse_monthly_income_amt", precision: 19, scale: 4, null: false
    t.decimal "total_income_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "app_cust_personal_job_data", force: :cascade do |t|
    t.bigint "app_cust_personal_id", null: false
    t.bigint "app_cust_personal_job_data_id", null: false
    t.string "company_name", limit: 250
    t.string "coy_name", limit: 250
    t.datetime "employment_establishment_dt"
    t.datetime "establishment_dt"
    t.string "industry_type_code", limit: 25
    t.boolean "is_mf_emp"
    t.boolean "is_wellknown_coy"
    t.string "job_title_name", limit: 50
    t.string "mr_company_scale_code", limit: 25
    t.string "mr_coy_scale_code", limit: 25
    t.string "mr_investment_type_code", limit: 25
    t.string "mr_job_position_code", limit: 25
    t.string "mr_job_stat_code", limit: 25
    t.string "mr_profession_code", limit: 25
    t.string "mr_wellknown_coy_code", limit: 25
    t.integer "num_of_employee"
    t.datetime "oth_biz_establishment_dt"
    t.string "oth_biz_industry_type_code", limit: 25
    t.string "oth_biz_job_position", limit: 25
    t.string "oth_biz_name", limit: 50
    t.string "oth_biz_type", limit: 25
    t.string "prev_coy_name", limit: 250
    t.datetime "prev_employment_dt"
    t.string "professional_no", limit: 25
    t.string "ref_sector_economic_slik_code", limit: 25
  end
 
  create_table "app_cust_project", force: :cascade do |t|
    t.bigint "app_cust_id", null: false
    t.bigint "app_cust_project_id", null: false
    t.string "client_name", limit: 100
    t.integer "project_duration"
    t.decimal "project_value", precision: 19, scale: 4
    t.integer "seq_no", null: false
  end
 
  create_table "app_dlr_fncng", force: :cascade do |t|
    t.bigint "app_dlr_fncng_id", null: false
    t.bigint "app_id", null: false
    t.string "asset_condition", limit: 50, null: false
    t.string "dealer_code", limit: 50, null: false
    t.string "dealer_cust_no", limit: 50, null: false
    t.datetime "est_eff_dt"
    t.decimal "extend_rate_prcnt", precision: 9, scale: 4, null: false
    t.decimal "interest_rate_prcnt", precision: 9, scale: 4, null: false
    t.datetime "invc_dt"
    t.decimal "lc_rate", precision: 9, scale: 4, null: false
    t.string "manufacturer_code", limit: 50
    t.string "manufacturer_cust_no", limit: 50
    t.integer "maximum_month_for_extend", null: false
    t.integer "maximum_times_for_extends", null: false
    t.bigint "mou_cust_dlr_fncng_id"
    t.string "mr_inst_type_code", limit: 25
    t.string "pay_freq_code", limit: 50, null: false
    t.decimal "principal_paid_in_extend_prcntg", precision: 9, scale: 4, null: false
    t.integer "spare_day_to_pay", null: false
    t.string "top_based", limit: 25
    t.integer "top_days", null: false
    t.decimal "top_interest_rate_prcnt", precision: 9, scale: 4, null: false
    t.decimal "total_invc_amt", precision: 19, scale: 4
    t.decimal "total_top_amount", precision: 19, scale: 4
  end
 
  create_table "app_dup_check_cust", force: :cascade do |t|
    t.string "address", limit: 2000
    t.bigint "app_dup_check_cust_id", null: false
    t.bigint "app_id", null: false
    t.datetime "birth_dt", null: false
    t.string "cust_name", limit: 50
    t.string "cust_no", limit: 25
    t.string "duplicate_item", limit: 2000
    t.string "id_no", limit: 50
    t.boolean "is_selected", null: false
    t.string "mobile_phn_no", limit: 25
    t.string "mother_maiden_name", limit: 50
    t.string "mr_id_type", limit: 25
    t.string "npwp", limit: 25
  end
 
  create_table "app_fctr", force: :cascade do |t|
    t.bigint "app_fctr_id", null: false
    t.bigint "app_id", null: false
    t.datetime "est_eff_dt"
    t.datetime "invc_dt"
    t.boolean "is_cover_pdc"
    t.boolean "is_cust_listed"
    t.boolean "is_disclosed", null: false
    t.bigint "mou_fctr_id"
    t.string "mr_inst_type_code", limit: 25
    t.string "mr_single_inst_calc_mthd_code", limit: 25
    t.string "paid_by", limit: 25
    t.string "recourse_type", limit: 25
    t.decimal "refund_interest_amt", precision: 19, scale: 4
    t.decimal "retention_prcnt", precision: 9, scale: 4, null: false
    t.string "top_based", limit: 25
    t.integer "top_days"
    t.decimal "total_disb_amt", precision: 19, scale: 4
    t.decimal "total_invc_amt", precision: 19, scale: 4
    t.decimal "total_retention_amt", precision: 19, scale: 4
  end
 
  create_table "app_fee", force: :cascade do |t|
    t.decimal "app_fee_amt", precision: 19, scale: 4, null: false
    t.bigint "app_fee_id", null: false
    t.decimal "app_fee_prcnt", precision: 9, scale: 4, null: false
    t.bigint "app_id", null: false
    t.decimal "cptlz_amt", precision: 19, scale: 4, null: false
    t.boolean "is_cptlz", null: false
    t.decimal "max_sell_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "max_sell_fee_prcnt", precision: 9, scale: 4, null: false
    t.decimal "min_sell_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "min_sell_fee_prcnt", precision: 9, scale: 4, null: false
    t.string "mr_fee_type_code", limit: 25, null: false
    t.decimal "sell_fee_amt", precision: 19, scale: 4, null: false
    t.string "sell_fee_bhv", limit: 25
    t.decimal "sell_fee_prcnt", precision: 9, scale: 4, null: false
    t.decimal "std_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "std_fee_prcnt", precision: 9, scale: 4, null: false
  end
 
  create_table "app_fin_data", force: :cascade do |t|
    t.bigint "app_fin_data_id", null: false
    t.bigint "app_id", null: false
    t.decimal "app_suppl_effective_rate_prcnt", precision: 9, scale: 4, null: false
    t.decimal "apv_amt", precision: 19, scale: 4, null: false
    t.string "balloon_bhv", limit: 25
    t.decimal "balloon_value_amt", precision: 19, scale: 4, null: false
    t.decimal "commission_allocated_amt", precision: 19, scale: 4, null: false
    t.integer "cummulative_tenor", null: false
    t.decimal "diff_rate_amt", precision: 19, scale: 4, null: false
    t.decimal "down_payment_gross_amt", precision: 19, scale: 4, null: false
    t.decimal "down_payment_nett_amt", precision: 19, scale: 4, null: false
    t.decimal "down_payment_nett_prcnt", precision: 9, scale: 4, null: false
    t.decimal "dsr", precision: 9, scale: 4, null: false
    t.string "effective_rate_bhv", limit: 25
    t.decimal "effective_rate_prcnt", precision: 9, scale: 4, null: false
    t.decimal "flat_rate_prcnt", precision: 9, scale: 4, null: false
    t.integer "grace_period"
    t.decimal "gross_yield_prcnt", precision: 9, scale: 4, null: false
    t.decimal "ins_cptlz_amt", precision: 19, scale: 4, null: false
    t.decimal "inst_amt", precision: 19, scale: 4, null: false
    t.string "interest_type", limit: 10, null: false
    t.decimal "lc_inst_admin_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "life_ins_cptlz_amt", precision: 19, scale: 4, null: false
    t.decimal "ltv", precision: 9, scale: 4, null: false
    t.datetime "maturity_date"
    t.decimal "max_allocated_refund_amt", precision: 19, scale: 4, null: false
    t.decimal "max_balloon_amt", precision: 19, scale: 4, null: false
    t.decimal "max_down_payment_nett_prcnt", precision: 9, scale: 4, null: false
    t.decimal "max_effective_rate_prcnt", precision: 9, scale: 4, null: false
    t.decimal "max_gross_yield_prcnt", precision: 9, scale: 4, null: false
    t.decimal "min_balloon_amt", precision: 19, scale: 4, null: false
    t.decimal "min_down_payment_nett_prcnt", precision: 9, scale: 4, null: false
    t.decimal "min_effective_rate_prcnt", precision: 9, scale: 4, null: false
    t.decimal "min_gross_yield_prcnt", precision: 9, scale: 4, null: false
    t.decimal "min_interest_income_amt", precision: 19, scale: 4, null: false
    t.string "mr_grace_period_type_code", limit: 25
    t.string "mr_inst_scheme_code", limit: 25, null: false
    t.string "mr_provision_fee_calc_method_code", limit: 25
    t.string "mr_provision_fee_type_code", limit: 10
    t.decimal "ntf_amt", precision: 19, scale: 4, null: false
    t.decimal "prepayment_penalty_rate", precision: 9, scale: 4, null: false
    t.decimal "reserved_fund_allocated_amt", precision: 19, scale: 4, null: false
    t.decimal "residual_value_amt", precision: 19, scale: 4, null: false
    t.decimal "rounding_amt", precision: 19, scale: 4, null: false
    t.decimal "sell_suppl_effective_rate_prcnt", precision: 9, scale: 4, null: false
    t.decimal "std_effective_rate_prcnt", precision: 9, scale: 4, null: false
    t.decimal "suppl_flat_rate_prcnt", precision: 9, scale: 4, null: false
    t.decimal "tdp_paid_coy_amt", precision: 19, scale: 4, null: false
    t.decimal "total_ar", precision: 19, scale: 4, null: false
    t.decimal "total_asset_price_amt", precision: 19, scale: 4, null: false
    t.decimal "total_down_payment_gross_amt", precision: 19, scale: 4, null: false
    t.decimal "total_down_payment_nett_amt", precision: 19, scale: 4, null: false
    t.decimal "total_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "total_fee_cptlz_amt", precision: 19, scale: 4, null: false
    t.decimal "total_ins_cust_amt", precision: 19, scale: 4, null: false
    t.decimal "total_ins_insco_amt", precision: 19, scale: 4, null: false
    t.decimal "total_interest_amt", precision: 19, scale: 4, null: false
    t.decimal "total_life_ins_cust_amt", precision: 19, scale: 4, null: false
    t.decimal "total_life_ins_insco_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "app_fixed", force: :cascade do |t|
    t.bigint "app_fixed_id", null: false
    t.bigint "app_id", null: false
    t.decimal "asset_price_amt", precision: 19, scale: 4, null: false
    t.decimal "down_payment_amt", precision: 19, scale: 4, null: false
    t.decimal "effective_rate", precision: 9, scale: 4, null: false
    t.integer "grace_period"
    t.decimal "ins_admin_fee", precision: 19, scale: 4
    t.string "ins_package_code", limit: 50
    t.string "insco_branch_code", limit: 50
    t.decimal "inst_amt", precision: 19, scale: 4
    t.boolean "is_cover_life_ins", null: false
    t.boolean "is_editable_dp", null: false
    t.string "life_ins_cover_subject", limit: 50
    t.string "life_ins_payment_method", limit: 25
    t.string "life_insco_branch_code", limit: 50
    t.string "mr_first_inst_type_code", limit: 25, null: false
    t.string "mr_grace_period_type_code", limit: 25
    t.decimal "suppl_effective_rate", precision: 9, scale: 4, null: false
    t.integer "tenor", null: false
  end
 
  create_table "app_fixed_fee", force: :cascade do |t|
    t.bigint "app_fixed_fee_id", null: false
    t.bigint "app_fixed_id", null: false
    t.decimal "cptlz_amt", precision: 19, scale: 4, null: false
    t.decimal "cptlz_prnct", precision: 9, scale: 4, null: false
    t.string "mr_fee_cptlz_type_code", limit: 25, null: false
    t.string "mr_fee_payment_type_code", limit: 25, null: false
    t.string "mr_fee_type_code", limit: 25, null: false
    t.decimal "sell_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "sell_fee_prcnt", precision: 9, scale: 4, null: false
    t.decimal "std_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "std_fee_prcnt", precision: 9, scale: 4, null: false
  end
 
  create_table "app_fixed_ins", force: :cascade do |t|
    t.bigint "app_fixed_id", null: false
    t.bigint "app_fixed_ins_id", null: false
    t.decimal "base_rate_prcnt", precision: 9, scale: 4, null: false
    t.boolean "ins_capitalize", null: false
    t.string "mr_add_cvg_type_code", limit: 250
    t.string "mr_ins_main_cvg_type_code", limit: 25, null: false
    t.decimal "selling_rate_prcnt", precision: 9, scale: 4, null: false
    t.decimal "sum_insured_prcnt", precision: 9, scale: 4, null: false
    t.integer "year_num", null: false
  end
 
  create_table "app_goverment_regulation", force: :cascade do |t|
    t.bigint "app_goverment_regulation_id", null: false
    t.bigint "app_id", null: false
    t.string "mr_characteristic_of_credit_code", limit: 25
    t.string "mr_dp_src_payment_code", limit: 25
    t.string "mr_inst_src_payment_code", limit: 25
    t.string "mr_slik_sec_eco_code", limit: 25
    t.string "mr_way_of_restructure_code", limit: 25
    t.string "prev_agrmnt_no", limit: 50
    t.string "rsv_field_1", limit: 2000
    t.string "rsv_field_2", limit: 2000
    t.string "rsv_field_3", limit: 2000
    t.string "rsv_field_4", limit: 2000
    t.string "rsv_field_5", limit: 2000
  end
 
  create_table "app_ins", force: :cascade do |t|
    t.bigint "app_id", null: false
    t.bigint "app_ins_id", null: false
    t.decimal "total_add_ins_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "total_cust_add_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "total_cust_disc_amt", precision: 19, scale: 4, null: false
    t.decimal "total_cust_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "total_cust_main_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "total_cust_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "total_ins_cptlz_amt", precision: 19, scale: 4, null: false
    t.decimal "total_ins_income_amt", precision: 19, scale: 4, null: false
    t.decimal "total_insco_add_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "total_insco_disc_amt", precision: 19, scale: 4, null: false
    t.decimal "total_insco_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "total_insco_main_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "total_insco_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "total_premi_paid_by_cust_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "app_ins_add_cvg", force: :cascade do |t|
    t.bigint "app_ins_add_cvg_id", null: false
    t.bigint "app_ins_main_cvg_id", null: false
    t.string "base_calc", limit: 25
    t.decimal "cust_add_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "cust_add_premi_rate", precision: 9, scale: 4, null: false
    t.decimal "insco_add_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "insco_add_premi_rate", precision: 9, scale: 4, null: false
    t.string "mr_add_cvg_type_code", limit: 25, null: false
    t.string "premium_type", limit: 25
    t.decimal "sum_insured_amt", precision: 19, scale: 4, null: false
    t.decimal "sum_insured_prcnt", precision: 9, scale: 4, null: false
  end
 
  create_table "app_ins_main_cvg", force: :cascade do |t|
    t.bigint "app_ins_main_cvg_id", null: false
    t.bigint "app_ins_obj_id", null: false
    t.decimal "cust_main_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "cust_main_premi_rate", precision: 9, scale: 4, null: false
    t.decimal "cust_premi_paid_amt", precision: 19, scale: 4, null: false
    t.datetime "end_dt"
    t.decimal "insco_main_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "insco_main_premi_rate", precision: 9, scale: 4, null: false
    t.boolean "is_capitalized", null: false
    t.boolean "is_main_ins", null: false
    t.string "mr_ins_paid_by_code", limit: 25, null: false
    t.string "mr_main_cvg_type_code", limit: 25, null: false
    t.datetime "start_dt"
    t.decimal "sum_insured_amt", precision: 19, scale: 4, null: false
    t.decimal "sum_insured_prcnt", precision: 9, scale: 4, null: false
    t.integer "tenor", null: false
    t.decimal "total_cust_add_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "total_cust_disc_amt", precision: 19, scale: 4, null: false
    t.decimal "total_insco_add_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "total_insco_disc_amt", precision: 19, scale: 4, null: false
    t.integer "year_no", null: false
  end
 
  create_table "app_ins_obj", force: :cascade do |t|
    t.bigint "agrmnt_id"
    t.bigint "app_asset_id"
    t.bigint "app_collateral_id"
    t.bigint "app_id", null: false
    t.bigint "app_ins_obj_id", null: false
    t.decimal "cust_admin_fee_amt", precision: 19, scale: 4, null: false
    t.datetime "cust_cover_start_dt"
    t.decimal "cust_cvg_amt", precision: 19, scale: 4, null: false
    t.string "cust_insco_branch_name", limit: 250
    t.string "cust_notes", limit: 2000
    t.decimal "cust_stamp_duty_fee", precision: 19, scale: 4, null: false
    t.decimal "cvg_amt", precision: 19, scale: 4, null: false
    t.datetime "end_dt"
    t.string "ins_asset_cover_period", limit: 25, null: false
    t.string "ins_asset_covered_by", limit: 25, null: false
    t.string "ins_asset_paid_by", limit: 25, null: false
    t.string "ins_asset_region", limit: 25
    t.decimal "ins_cpltz_amt", precision: 19, scale: 4
    t.integer "ins_length"
    t.string "ins_obj_name", limit: 500
    t.string "ins_policy_name", limit: 250
    t.string "ins_policy_no", limit: 25
    t.integer "ins_seq_no", null: false
    t.string "ins_stat", limit: 10
    t.string "ins_step", limit: 25
    t.decimal "insco_admin_fee_amt", precision: 19, scale: 4, null: false
    t.string "insco_branch_code", limit: 50
    t.string "insco_branch_name", limit: 250
    t.decimal "insco_stamp_duty_fee", precision: 19, scale: 4, null: false
    t.boolean "is_additional_ins"
    t.string "mr_ins_pay_method_code", limit: 25
    t.string "notes", limit: 2000
    t.string "pay_period_to_insco", limit: 25
    t.datetime "start_dt"
    t.decimal "total_cust_add_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "total_cust_disc_amt", precision: 19, scale: 4, null: false
    t.decimal "total_cust_main_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "total_ins_cust_amt", precision: 19, scale: 4, null: false
    t.decimal "total_ins_insco_amt", precision: 19, scale: 4, null: false
    t.decimal "total_insco_add_premi_amt", precision: 19, scale: 4, null: false
    t.decimal "total_insco_disc_amt", precision: 19, scale: 4, null: false
    t.decimal "total_insco_main_premi_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "app_inst_schdl", force: :cascade do |t|
    t.bigint "app_id", null: false
    t.bigint "app_inst_schdl_id", null: false
    t.datetime "due_dt"
    t.decimal "inst_amt", precision: 19, scale: 4, null: false
    t.integer "inst_seq_no", null: false
    t.decimal "interest_amt", precision: 19, scale: 4, null: false
    t.decimal "os_interest_amt", precision: 19, scale: 4, null: false
    t.decimal "os_principal_amt", precision: 19, scale: 4, null: false
    t.decimal "principal_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "app_inst_step_schm", force: :cascade do |t|
    t.bigint "app_id", null: false
    t.bigint "app_inst_step_schm_id", null: false
    t.integer "first_step_seq_no", null: false
    t.decimal "future_value_amt", precision: 19, scale: 4, null: false
    t.decimal "inst_amt", precision: 19, scale: 4, null: false
    t.integer "last_step_seq_no", null: false
    t.integer "num_of_inst", null: false
    t.decimal "present_value_amt", precision: 19, scale: 4, null: false
    t.decimal "step_prcnt", precision: 9, scale: 4, null: false
  end
 
  create_table "app_invoice_dlr_fncng_d", force: :cascade do |t|
    t.bigint "app_invoice_dlr_fncng_d_id", null: false
    t.bigint "app_invoice_dlr_fncng_h_id", null: false
    t.bigint "appdlrfncnghid"
    t.decimal "collateral_price_amt", precision: 19, scale: 4, null: false
    t.string "full_asset_name", limit: 500, null: false
    t.string "serial_no_1", limit: 50
    t.string "serial_no_2", limit: 50
    t.string "serial_no_3", limit: 50
    t.string "serial_no_4", limit: 50
    t.string "serial_no_5", limit: 50
  end
 
  create_table "app_invoice_dlr_fncng_h", force: :cascade do |t|
    t.bigint "app_dlr_fncng_id", null: false
    t.bigint "app_invoice_dlr_fncng_h_id", null: false
    t.decimal "invoice_amt", precision: 19, scale: 4, null: false
    t.datetime "invoice_due_dt", null: false
    t.string "invoice_no", limit: 50, null: false
    t.string "invoice_stat", limit: 50, null: false
    t.boolean "is_approved", null: false
    t.string "notes"
  end
 
  create_table "app_invoice_fctr", force: :cascade do |t|
    t.bigint "app_fctr_id", null: false
    t.bigint "app_invoice_fctr_id", null: false
    t.string "customer_factoring_name", limit: 250, null: false
    t.string "customer_factoring_no", limit: 25
    t.decimal "invoice_amt", precision: 19, scale: 4, null: false
    t.datetime "invoice_due_dt", null: false
    t.string "invoice_no", limit: 25, null: false
    t.string "invoice_stat", limit: 25, null: false
    t.boolean "is_approved", null: false
    t.string "notes", limit: 2000
  end
 
  create_table "app_life_ins_d", force: :cascade do |t|
    t.bigint "age", null: false
    t.bigint "app_life_ins_d_id", null: false
    t.bigint "app_life_ins_h_id", null: false
    t.decimal "base_rate", precision: 9, scale: 4
    t.decimal "cust_rate", precision: 9, scale: 4
    t.decimal "disc_amt", precision: 19, scale: 4, null: false
    t.decimal "disc_amt_to_insco", precision: 19, scale: 4, null: false
    t.decimal "disc_rate", precision: 9, scale: 4, null: false
    t.decimal "disc_rate_to_insco", precision: 9, scale: 4, null: false
    t.decimal "gross_premi", precision: 19, scale: 4, null: false
    t.decimal "gross_premi_to_insco", precision: 19, scale: 4, null: false
    t.decimal "insco_rate", precision: 9, scale: 4
    t.string "insured_name", limit: 250, null: false
    t.string "mr_cust_type_code", limit: 25, null: false
    t.decimal "nett_premi", precision: 19, scale: 4, null: false
    t.decimal "nett_premi_to_insco", precision: 19, scale: 4, null: false
    t.decimal "os_cust_exposure", precision: 19, scale: 4, null: false
    t.bigint "seq_no", null: false
    t.decimal "sum_insured", precision: 9, scale: 4, null: false
  end
 
  create_table "app_life_ins_h", force: :cascade do |t|
    t.bigint "app_id", null: false
    t.bigint "app_life_ins_h_id", null: false
    t.decimal "coverage_amt", precision: 19, scale: 4, null: false
    t.decimal "cust_admin_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "insco_admin_fee_amt", precision: 19, scale: 4, null: false
    t.boolean "is_cust_cover", null: false
    t.boolean "is_guarantor_cover", null: false
    t.boolean "is_spouse_cover", null: false
    t.string "life_insco_branch_code", limit: 25
    t.string "life_insco_branch_name", limit: 250
    t.string "mr_life_ins_paid_method_code", limit: 25
    t.datetime "new_cover_input_dt", null: false
    t.string "new_cover_notes", limit: 2000
    t.decimal "paid_in_adv_prcnt", precision: 9, scale: 4, null: false
    t.decimal "total_life_ins_cptlz_amt", precision: 19, scale: 4, null: false
    t.decimal "total_life_ins_income_amt", precision: 19, scale: 4, null: false
    t.decimal "total_premi_from_insco", precision: 19, scale: 4, null: false
    t.decimal "total_premi_to_cust", precision: 19, scale: 4, null: false
  end
 
  create_table "app_loan_purpose", force: :cascade do |t|
    t.bigint "app_id"
    t.bigint "app_loan_purpose_id", null: false
    t.decimal "budget_plan_amt", precision: 19, scale: 4, null: false
    t.decimal "financing_amt", precision: 19, scale: 4, null: false
    t.boolean "is_disburse_to_cust", null: false
    t.string "mr_loan_purpose_code", limit: 25
    t.decimal "self_financing_amt", precision: 19, scale: 4, null: false
    t.string "suppl_code", limit: 25
  end
 
  create_table "app_negative_check_cust", force: :cascade do |t|
    t.string "address", limit: 2000
    t.bigint "app_id", null: false
    t.bigint "app_negative_check_cust_id", null: false
    t.datetime "birth_dt", null: false
    t.string "cust_name", limit: 50
    t.string "cust_no", limit: 25
    t.string "duplicate_item", limit: 2000
    t.string "id_no", limit: 50
    t.boolean "is_selected", null: false
    t.string "mobile_phn_no", limit: 25
    t.string "mother_maiden_name", limit: 50
    t.string "mr_id_type", limit: 25
    t.string "mr_neg_cust_source_code", limit: 25
    t.string "mr_neg_cust_type_code", limit: 25
    t.string "npwp", limit: 25
  end
 
  create_table "app_negative_cust", force: :cascade do |t|
    t.bigint "app_id", null: false
    t.bigint "app_negative_cust_id", null: false
    t.string "applicant_no", limit: 50
    t.string "cust_no", limit: 50
    t.string "mr_neg_cust_source_code", limit: 25
    t.string "mr_neg_cust_type_code", limit: 25
    t.string "neg_cust_cause", limit: 100
    t.string "negative_cust_no", limit: 50, null: false
  end
 
  create_table "app_other_info", force: :cascade do |t|
    t.bigint "app_id", null: false
    t.bigint "app_other_info_id", null: false
    t.string "bank_acc_name", limit: 500
    t.string "bank_acc_no", limit: 250
    t.string "bank_branch", limit: 50
    t.string "bank_code", limit: 50
    t.string "prod_ho_code", limit: 25
    t.boolean "sb_apdueaftrglv"
    t.boolean "sb_bpkbaging"
  end
 
  create_table "app_referantor", force: :cascade do |t|
    t.bigint "app_id"
    t.bigint "app_referantor_id", null: false
    t.string "bank_acc_name", limit: 250, null: false
    t.string "bank_acc_no", limit: 250, null: false
    t.string "bank_branch", limit: 50
    t.string "mr_referantor_type", limit: 25, null: false
    t.string "mr_tax_calc_method", limit: 25
    t.string "ref_bank_code", limit: 25, null: false
    t.string "referantor_code", limit: 25, null: false
    t.string "referantor_name", limit: 250, null: false
    t.string "tax_id_addr", limit: 500
    t.string "tax_id_area_code_1", limit: 25
    t.string "tax_id_area_code_2", limit: 25
    t.string "tax_id_area_code_3", limit: 25
    t.string "tax_id_area_code_4", limit: 25
    t.string "tax_id_city", limit: 50
    t.string "tax_id_name", limit: 250
    t.string "tax_id_no", limit: 25
    t.string "tax_id_zipcode", limit: 25
    t.string "taxpayer_no", limit: 25
  end
 
  create_table "app_refund_compnt", force: :cascade do |t|
    t.bigint "app_id"
    t.bigint "app_refund_compnt_id", null: false
    t.string "compnt_code", limit: 25
    t.decimal "max_refund_amt", precision: 19, scale: 4
    t.decimal "refund_compnt_amt", precision: 19, scale: 4
  end
 
  create_table "app_reserved_fund", force: :cascade do |t|
    t.bigint "app_id", null: false
    t.bigint "app_reserved_fund_id", null: false
    t.string "behaviour", limit: 25
    t.string "mr_reserved_fund_code", limit: 25, null: false
    t.string "mr_reserved_fund_source_code", limit: 25, null: false
    t.decimal "refund_amt", precision: 19, scale: 4, null: false
    t.decimal "reserved_fund_amt", precision: 19, scale: 4, null: false
    t.decimal "std_reserved_fund_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "app_rvw_rent_data_opl", force: :cascade do |t|
    t.string "app_no", limit: 50, null: false
    t.bigint "app_rvw_rent_data_opl_id", null: false
    t.decimal "asset_price_bef_disc_amt", precision: 19, scale: 4, null: false
    t.bigint "crd_rvw_asset_id", null: false
    t.decimal "discount_amt", precision: 19, scale: 4, null: false
    t.decimal "gross_yield_prcnt", precision: 19, scale: 4, null: false
    t.decimal "margin_amt", precision: 19, scale: 4, null: false
    t.decimal "margin_prcnt", precision: 19, scale: 4, null: false
    t.decimal "rent_amt", precision: 19, scale: 4, null: false
    t.decimal "residual_value_amt", precision: 19, scale: 4, null: false
    t.decimal "residual_value_prcnt", precision: 19, scale: 4, null: false
    t.decimal "security_deposit_amt", precision: 19, scale: 4, null: false
    t.decimal "total_cost_amt", precision: 19, scale: 4, null: false
    t.decimal "total_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "total_fee_capitalized", precision: 19, scale: 4, null: false
    t.decimal "total_insurance_amt", precision: 19, scale: 4, null: false
    t.decimal "total_maint_amt", precision: 19, scale: 4, null: false
    t.decimal "total_oth_expense_amt", precision: 19, scale: 4, null: false
    t.decimal "vat_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "app_score_grade", force: :cascade do |t|
    t.bigint "app_id", null: false
    t.bigint "app_score_grade_id", null: false
    t.string "color", limit: 50
    t.string "grade", limit: 50
    t.string "mr_score_type_code", limit: 25, null: false
    t.string "score_value", limit: 2000
  end
 
  create_table "app_subsidy", force: :cascade do |t|
    t.bigint "app_id", null: false
    t.bigint "app_subsidy_id", null: false
    t.string "mr_subsidy_alloc_code", limit: 25, null: false
    t.string "mr_subsidy_alloc_name", limit: 25
    t.string "mr_subsidy_from_type_code", limit: 25, null: false
    t.string "mr_subsidy_from_type_name", limit: 25
    t.string "mr_subsidy_source_code", limit: 25, null: false
    t.string "mr_subsidy_source_name", limit: 25
    t.string "mr_subsidy_value_type_code", limit: 25, null: false
    t.string "mr_subsidy_value_type_name", limit: 25
    t.decimal "subsidy_amt", precision: 19, scale: 4, null: false
    t.string "subsidy_from_value_code", limit: 25, null: false
    t.string "subsidy_from_value_name", limit: 25
    t.decimal "subsidy_prcnt", precision: 9, scale: 4, null: false
  end
 
  create_table "app_tc", force: :cascade do |t|
    t.bigint "app_id", null: false
    t.bigint "app_tc_id", null: false
    t.datetime "checked_dt"
    t.datetime "expired_dt"
    t.boolean "is_additional", null: false
    t.boolean "is_checked", null: false
    t.boolean "is_exp_dt_mandatory", null: false
    t.boolean "is_mandatory", null: false
    t.boolean "is_waivable", null: false
    t.boolean "is_waived", null: false
    t.string "notes", limit: 2000
    t.string "prior_to", limit: 25, null: false
    t.datetime "promised_dt"
    t.string "tc_code", limit: 25, null: false
  end
 
  create_table "app_tc_hist", force: :cascade do |t|
    t.bigint "app_tc_hist_id", null: false
    t.bigint "app_tc_id", null: false
    t.datetime "promise_made_dt"
    t.datetime "promised_dt"
  end
 
  create_table "asset_accessory_dlvry_opl", force: :cascade do |t|
    t.string "accessory_notes", limit: 2000
    t.string "asset_accessory_code", limit: 25
    t.bigint "asset_accessory_dlvry_opl_id", null: false
    t.string "asset_accessory_name", limit: 50
    t.bigint "asset_dlvry_opl_id", null: false
  end
 
  create_table "asset_accessory_los", force: :cascade do |t|
    t.string "asset_accessory_code", limit: 25, null: false
    t.bigint "asset_accessory_los_id", null: false
    t.string "asset_accessory_name", limit: 250, null: false
  end
 
  create_table "asset_allocation_opl", force: :cascade do |t|
    t.bigint "app_asset_id", null: false
    t.bigint "app_id", null: false
    t.datetime "asset_allocation_dt", null: false
    t.string "asset_allocation_no", limit: 50, null: false
    t.bigint "asset_allocation_opl_id", null: false
    t.string "asset_no", limit: 100, null: false
    t.boolean "is_wf_created", null: false
  end
 
  create_table "asset_attr_los", force: :cascade do |t|
    t.string "asset_attr_code", limit: 25, null: false
    t.bigint "asset_attr_los_id", null: false
    t.string "asset_attr_name", limit: 50, null: false
  end
 
  create_table "asset_dlvry_opl", force: :cascade do |t|
    t.bigint "app_asset_id", null: false
    t.string "asset_category_code", limit: 25
    t.bigint "asset_dlvry_opl_id", null: false
    t.string "asset_no", limit: 25
    t.string "asset_notes", limit: 2000
    t.string "asset_receiver_name", limit: 25
    t.integer "asset_seq_no"
    t.string "asset_type_code", limit: 25
    t.string "color", limit: 25
    t.string "dlvry_cnfrm_addr", limit: 250
    t.string "dlvry_cnfrm_area_code_1", limit: 25
    t.string "dlvry_cnfrm_area_code_2", limit: 25
    t.string "dlvry_cnfrm_area_code_3", limit: 25
    t.string "dlvry_cnfrm_area_code_4", limit: 25
    t.string "dlvry_cnfrm_city", limit: 25
    t.string "dlvry_cnfrm_zipcode", limit: 25
    t.string "full_asset_code", limit: 250
    t.string "full_asset_name", limit: 500
    t.integer "manufacturing_year"
    t.string "mr_asset_condition_code", limit: 25
    t.string "serial_no_1", limit: 50
    t.string "serial_no_2", limit: 50
    t.string "serial_no_3", limit: 50
    t.string "serial_no_4", limit: 50
    t.string "serial_no_5", limit: 50
    t.string "tax_city_issuer", limit: 50
  end
 
  create_table "asset_master_los", force: :cascade do |t|
    t.string "asset_category_code", limit: 25
    t.string "asset_code", limit: 25
    t.bigint "asset_master_los_id", null: false
    t.string "asset_name", limit: 50
    t.string "asset_type_code", limit: 25
    t.string "full_asset_code", limit: 250, null: false
    t.string "full_asset_name", limit: 500, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "change_mou_cust", force: :cascade do |t|
    t.bigint "change_mou_cust_id", null: false
    t.bigint "change_mou_trx_id", null: false
    t.datetime "end_dt", null: false
    t.string "mr_revolving_type_code", limit: 50, null: false
    t.decimal "plafond_amt", precision: 19, scale: 4, null: false
    t.string "ref_no", limit: 100, null: false
    t.datetime "start_dt", null: false
  end
 
  create_table "change_mou_cust_asset", force: :cascade do |t|
    t.bigint "change_mou_cust_asset_id", null: false
    t.bigint "change_mou_trx_id", null: false
    t.string "full_asset_code", limit: 500, null: false
    t.string "full_asset_name", limit: 500, null: false
  end
 
  create_table "change_mou_cust_clause", force: :cascade do |t|
    t.string "asset_type_code", limit: 50, null: false
    t.bigint "change_mou_cust_clause_id", null: false
    t.bigint "change_mou_trx_id", null: false
    t.decimal "down_payment_from_prcnt", precision: 9, scale: 4, null: false
    t.decimal "down_payment_to_prcnt", precision: 9, scale: 4, null: false
    t.string "mr_first_inst_type_code", limit: 50
    t.string "mr_inst_schm_code", limit: 50
    t.string "mr_interest_type_code", limit: 50
    t.string "pay_freq_code", limit: 50
    t.integer "tenor_from", null: false
    t.integer "tenor_to", null: false
  end
 
  create_table "change_mou_cust_collateral", force: :cascade do |t|
    t.string "asset_category_code", limit: 50, null: false
    t.datetime "asset_tax_date", null: false
    t.string "asset_type_code", limit: 50, null: false
    t.bigint "change_mou_cust_collateral_id", null: false
    t.bigint "change_mou_cust_id"
    t.string "collateral_no", limit: 100
    t.string "collateral_notes"
    t.decimal "collateral_portion_amt", precision: 19, scale: 4
    t.decimal "collateral_prcnt", precision: 9, scale: 4
    t.integer "collateral_seq_no", null: false
    t.string "collateral_stat", limit: 50, null: false
    t.decimal "collateral_value_amt", precision: 19, scale: 4, null: false
    t.string "full_asset_code", limit: 500, null: false
    t.string "full_asset_name", limit: 1000, null: false
    t.integer "manufacturing_year", null: false
    t.string "mr_collateral_condition_code", limit: 50, null: false
    t.string "mr_collateral_usage_code", limit: 50, null: false
    t.string "rsv_field_1"
    t.string "rsv_field_2"
    t.string "rsv_field_3"
    t.string "rsv_field_4"
    t.string "rsv_field_5"
    t.string "serial_no_1", limit: 100
    t.string "serial_no_2", limit: 100
    t.string "serial_no_3", limit: 100
    t.string "serial_no_4", limit: 100
    t.string "serial_no_5", limit: 100
    t.string "tax_city_issuer", limit: 50
  end
 
  create_table "change_mou_cust_collateral_attr", force: :cascade do |t|
    t.string "attr_value", limit: 2000, null: false
    t.bigint "change_mou_cust_collateral_attr_id", null: false
    t.bigint "change_mou_cust_collateral_id", null: false
    t.string "collateral_attr_code", limit: 25, null: false
    t.string "collateral_attr_name", limit: 50, null: false
  end
 
  create_table "change_mou_cust_collateral_doc", force: :cascade do |t|
    t.bigint "change_mou_cust_collateral_id", null: false
    t.bigint "chnage_mou_cust_collateral_doc_id", null: false
    t.string "doc_code", limit: 25, null: false
    t.string "doc_name", limit: 50
    t.string "doc_no", limit: 25
    t.string "doc_notes", limit: 2000
    t.datetime "expired_dt"
    t.boolean "is_received", null: false
  end
 
  create_table "change_mou_cust_collateral_registration", force: :cascade do |t|
    t.bigint "change_mou_cust_collateral_id", null: false
    t.bigint "change_mou_cust_collateral_registration_id", null: false
    t.string "location_addr", limit: 250
    t.string "location_area_code_1", limit: 25
    t.string "location_area_code_2", limit: 25
    t.string "location_area_code_3", limit: 25
    t.string "location_area_code_4", limit: 25
    t.string "location_city", limit: 25
    t.string "location_zipcode", limit: 25
    t.string "mr_id_type_code", limit: 25
    t.string "mr_owner_relationship_code", limit: 25
    t.string "mr_owner_type_code", limit: 25
    t.string "mr_user_relationship_code", limit: 25
    t.string "notes", limit: 2000
    t.string "owner_addr", limit: 500
    t.string "owner_area_code_1", limit: 25
    t.string "owner_area_code_2", limit: 25
    t.string "owner_area_code_3", limit: 25
    t.string "owner_area_code_4", limit: 25
    t.string "owner_city", limit: 25
    t.string "owner_id_no", limit: 25
    t.string "owner_mobile_phn_no", limit: 25
    t.string "owner_name", limit: 250
    t.string "owner_profession_code", limit: 25
    t.string "owner_zipcode", limit: 25
    t.string "user_name", limit: 25
  end
 
  create_table "change_mou_cust_dlr_fncg", force: :cascade do |t|
    t.string "asset_condition", limit: 50, null: false
    t.bigint "change_mou_cust_dlr_fncg_id", null: false
    t.bigint "change_mou_trx_id", null: false
    t.string "dealer_code", limit: 50, null: false
    t.string "dealer_cust_no", limit: 50, null: false
    t.decimal "extend_rate_prcnt", precision: 9, scale: 4, null: false
    t.decimal "interest_rate_prcnt", precision: 9, scale: 4, null: false
    t.decimal "lc_rate", precision: 9, scale: 4, null: false
    t.string "manufacturer_code", limit: 50
    t.string "manufacturer_cust_no", limit: 50
    t.integer "maximum_extend_times", null: false
    t.integer "maximum_month_for_extend", null: false
    t.string "notes"
    t.decimal "principal_paid_in_extend_prcntg", precision: 9, scale: 4, null: false
    t.integer "spare_day_to_pay", null: false
    t.integer "top_days", null: false
    t.decimal "top_interest_rate_prcnt", precision: 9, scale: 4, null: false
  end
 
  create_table "change_mou_cust_fctr", force: :cascade do |t|
    t.bigint "change_mou_cust_fctr_id", null: false
    t.bigint "change_mou_trx_id", null: false
    t.decimal "interest_rate_prcnt", precision: 9, scale: 4, null: false
    t.integer "is_disclosed", null: false
    t.string "mr_inst_schm_code", limit: 50, null: false
    t.string "mr_inst_type_code", limit: 50, null: false
    t.string "mr_paid_by_code", limit: 50, null: false
    t.string "mr_recourse_type_code", limit: 50, null: false
    t.string "notes"
    t.string "pay_freq_code", limit: 50, null: false
    t.decimal "retention_prcnt", precision: 9, scale: 4, null: false
    t.string "single_inst_calc_mthd", limit: 50, null: false
    t.integer "tenor_from", null: false
    t.integer "tenor_to", null: false
    t.integer "top_days", null: false
    t.string "vendor_code", limit: 50
    t.string "wop_code", limit: 50, null: false
  end
 
  create_table "change_mou_trx", force: :cascade do |t|
    t.bigint "change_mou_trx_id", null: false
    t.string "change_mou_trx_no", limit: 10, null: false
    t.datetime "execution_date"
    t.bigint "mou_cust_id", null: false
    t.string "notes"
    t.datetime "reject_date"
    t.datetime "request_date", null: false
    t.string "status", limit: 10, null: false
    t.string "trx_type", limit: 25, null: false
    t.bigint "version", null: false
  end
 
  create_table "crd_apv_result_ext", force: :cascade do |t|
    t.bigint "agrmnt_id"
    t.bigint "app_id", null: false
    t.datetime "apv_dt"
    t.string "apv_stat", limit: 100
    t.datetime "crd_apv_result_exp_dt", null: false
    t.bigint "crd_apv_result_ext_id", null: false
    t.string "extend_by", limit: 50, null: false
    t.datetime "extended_crd_apv_result_exp_dt", null: false
    t.bigint "num_of_extended", null: false
  end
 
  create_table "crd_ins", force: :cascade do |t|
    t.bigint "agrmnt_id"
    t.bigint "app_id", null: false
    t.bigint "crd_ins_id", null: false
    t.integer "crd_ins_length"
    t.string "crd_ins_stat", limit: 25, null: false
    t.string "crd_insco_branch_code", limit: 25, null: false
    t.decimal "cvg_amt", precision: 19, scale: 4, null: false
    t.datetime "end_dt"
    t.string "notes", limit: 2000
    t.integer "overdue_to_claim", null: false
    t.datetime "start_dt"
    t.decimal "sum_insured_amt", precision: 19, scale: 4, null: false
    t.decimal "total_disc_amt", precision: 19, scale: 4, null: false
    t.decimal "total_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "total_premi_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "crd_process_step", force: :cascade do |t|
    t.bigint "agrmnt_id"
    t.string "agrmnt_step", limit: 5
    t.bigint "app_id", null: false
    t.string "app_step", limit: 5, null: false
    t.datetime "claim_dt", null: false
    t.bigint "crd_process_step_id", null: false
    t.datetime "finish_dt", null: false
    t.string "process_by_code", limit: 25
    t.string "process_by_name", limit: 250
    t.string "process_by_role", limit: 50
    t.datetime "start_dt", null: false
  end
 
  create_table "crd_rvw_alloc", force: :cascade do |t|
    t.string "alloc_source", limit: 500
    t.decimal "commission_amt", precision: 19, scale: 4, null: false
    t.bigint "crd_rvw_alloc_id", null: false
    t.bigint "crd_rvw_cust_info_id", null: false
    t.decimal "max_alloc_amt", precision: 19, scale: 4, null: false
    t.decimal "reserved_fund_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "crd_rvw_app", force: :cascade do |t|
    t.integer "app_in_prc", null: false
    t.integer "app_liv", null: false
    t.string "app_no", limit: 50
    t.integer "app_rjc", null: false
    t.integer "app_sbmt", null: false
    t.decimal "ar", precision: 19, scale: 4, null: false
    t.bigint "crd_rvw_app_id", null: false
    t.bigint "crd_rvw_cust_info_id", null: false
    t.string "credit_score", limit: 50
    t.string "credit_score_indicator", limit: 50
    t.string "credit_score_indicator_descr", limit: 500
    t.decimal "dsr", precision: 9, scale: 4, null: false
    t.string "dsr_indicator", limit: 50
    t.string "dsr_indicator_descr", limit: 500
    t.decimal "eff_rate", precision: 9, scale: 4, null: false
    t.string "first_inst_type", limit: 50
    t.decimal "flat_rate", precision: 9, scale: 4, null: false
    t.decimal "gross_yield", precision: 9, scale: 4, null: false
    t.decimal "inst_amt", precision: 19, scale: 4, null: false
    t.string "inst_type", limit: 50
    t.decimal "ntf", precision: 19, scale: 4, null: false
    t.integer "num_of_inst", null: false
    t.string "order_info", limit: 50
    t.decimal "std_rate", precision: 9, scale: 4, null: false
    t.string "subject_life_ins", limit: 50
    t.decimal "suppl_rate", precision: 9, scale: 4, null: false
    t.decimal "tac", precision: 9, scale: 4, null: false
    t.string "tac_indicator", limit: 50
    t.string "tac_indicator_descr", limit: 500
    t.string "tc_received", limit: 500
    t.integer "tenor", null: false
    t.decimal "total_expense", precision: 19, scale: 4, null: false
    t.decimal "total_income", precision: 19, scale: 4, null: false
  end
 
  create_table "crd_rvw_app_agr_hist", force: :cascade do |t|
    t.string "agrmnt_no", limit: 100
    t.string "app_no", limit: 100, null: false
    t.string "app_stat", limit: 50
    t.string "app_step", limit: 50
    t.string "contract_stat", limit: 50
    t.bigint "crd_rvw_app_agr_hist_id", null: false
    t.bigint "crd_rvw_exposure_h_id", null: false
    t.string "cust_name", limit: 500
    t.string "fpd", limit: 25
    t.datetime "go_live_dt"
    t.string "offering_name", limit: 100
    t.decimal "os_principal", precision: 19, scale: 4, null: false
    t.string "role_cust", limit: 50
  end
 
  create_table "crd_rvw_asset", force: :cascade do |t|
    t.string "app_no", limit: 50
    t.string "asset_condition", limit: 50
    t.string "asset_name", limit: 1000
    t.decimal "asset_price", precision: 19, scale: 4, null: false
    t.string "asset_usage", limit: 50
    t.string "color", limit: 25
    t.bigint "crd_rvw_asset_id", null: false
    t.bigint "crd_rvw_cust_info_id", null: false
    t.decimal "dp_amount", precision: 19, scale: 4, null: false
    t.decimal "dp_prcnt", precision: 9, scale: 4, null: false
    t.string "insurance"
    t.boolean "is_double_financing", null: false
    t.boolean "is_negative_asset", null: false
    t.integer "manufacturing_year"
    t.string "negative_asset_indicator", limit: 50
    t.string "negative_asset_indicator_descr", limit: 500
    t.string "negative_asset_notes"
    t.decimal "total_asset_acc_dp_amount", precision: 19, scale: 4, null: false
    t.decimal "total_asset_acc_dp_prcnt", precision: 9, scale: 4, null: false
    t.decimal "total_asset_acc_price", precision: 19, scale: 4, null: false
  end
 
  create_table "crd_rvw_cmo", force: :cascade do |t|
    t.integer "agrmnt_fpd", null: false
    t.integer "agrmnt_repo", null: false
    t.integer "agrmnt_sold", null: false
    t.integer "agrmnt_wo", null: false
    t.integer "all_agrmnt", null: false
    t.integer "all_repo", null: false
    t.integer "all_wo", null: false
    t.string "cmo_code", limit: 50
    t.string "cmo_name", limit: 500
    t.bigint "crd_rvw_cmo_id", null: false
    t.bigint "crd_rvw_cust_info_id", null: false
    t.datetime "join_dt"
    t.integer "span_of_month", null: false
    t.string "spv_name", limit: 500
  end
 
  create_table "crd_rvw_cmo_bucket", force: :cascade do |t|
    t.string "bucket_range", limit: 50
    t.bigint "crd_rvw_cmo_bucket_id", null: false
    t.bigint "crd_rvw_cmo_id", null: false
    t.bigint "order_no", null: false
    t.decimal "value", precision: 19, scale: 4, null: false
  end
 
  create_table "crd_rvw_collateral", force: :cascade do |t|
    t.string "app_no", limit: 50
    t.string "collateral_name", limit: 1000
    t.decimal "collateral_portion_amt", precision: 19, scale: 4, null: false
    t.decimal "collateral_portion_prcnt", precision: 9, scale: 4, null: false
    t.decimal "collateral_total_usage", precision: 9, scale: 4, null: false
    t.decimal "collateral_value", precision: 19, scale: 4, null: false
    t.bigint "crd_rvw_collateral_id", null: false
    t.bigint "crd_rvw_cust_info_id", null: false
    t.string "insurance"
  end
 
  create_table "crd_rvw_cust_bucket", force: :cascade do |t|
    t.string "bucket_range", limit: 50
    t.bigint "crd_rvw_cust_bucket_id", null: false
    t.bigint "crd_rvw_exposure_d_id", null: false
    t.bigint "order_no", null: false
    t.decimal "value", precision: 19, scale: 4, null: false
  end
 
  create_table "crd_rvw_cust_coy_info", force: :cascade do |t|
    t.string "address"
    t.bigint "crd_rvw_cust_coy_info_id", null: false
    t.bigint "crd_rvw_cust_info_id", null: false
    t.string "industry_type", limit: 100
    t.string "npwp", limit: 25
    t.string "npwp_indicator", limit: 50
    t.string "npwp_indicator_descr", limit: 500
    t.decimal "roi", precision: 9, scale: 4, null: false
    t.string "roi_indicator", limit: 50
    t.string "roi_indicator_descr", limit: 500
  end
 
  create_table "crd_rvw_cust_info", force: :cascade do |t|
    t.bigint "app_id", null: false
    t.string "appli_no", limit: 50
    t.datetime "as_of_date", null: false
    t.string "capture_stat", limit: 25
    t.bigint "crd_rvw_cust_info_id", null: false
    t.integer "crd_rvw_version", null: false
    t.string "cust_indicator", limit: 50
    t.string "cust_indicator_descr", limit: 500
    t.string "cust_name", limit: 500
    t.string "cust_no", limit: 50
    t.string "diff_to_in_prcss_cust"
    t.string "diff_to_in_prcss_indicator", limit: 50
    t.string "diff_to_in_prcss_indicator_descr", limit: 500
    t.string "diff_to_master_cust"
    t.string "diff_to_master_indicator", limit: 50
    t.string "diff_to_master_indicator_descr", limit: 500
  end
 
  create_table "crd_rvw_cust_pers_info", force: :cascade do |t|
    t.integer "age", null: false
    t.bigint "crd_rvw_cust_info_id", null: false
    t.bigint "crd_rvw_cust_pers_info_id", null: false
    t.string "education", limit: 50
    t.string "house_ownership", limit: 50
    t.string "house_ownership_indicator", limit: 50
    t.string "house_ownership_indicator_descr", limit: 500
    t.boolean "is_join_income", null: false
    t.string "legal_addr"
    t.string "marital_status", limit: 50
    t.decimal "monthly_income", precision: 19, scale: 4, null: false
    t.string "npwp", limit: 50
    t.string "npwp_indicator", limit: 50
    t.string "npwp_indicator_descr", limit: 500
    t.string "occupation", limit: 250
    t.string "occupation_indicator", limit: 50
    t.string "occupation_indicator_descr", limit: 500
    t.string "residence_addr"
    t.decimal "spouse_income", precision: 19, scale: 4, null: false
    t.string "spouse_indicator", limit: 50
    t.string "spouse_indicator_descr", limit: 500
    t.string "spouse_name", limit: 500
    t.string "spouse_no", limit: 50
  end
 
  create_table "crd_rvw_cust_phn_status", force: :cascade do |t|
    t.bigint "crd_rvw_cust_info_id", null: false
    t.bigint "crd_rvw_cust_phn_status_id", null: false
    t.string "phn_indicator", limit: 50, null: false
    t.string "phn_indicator_descr", limit: 500
    t.string "phn_no", limit: 25, null: false
  end
 
  create_table "crd_rvw_dealer", force: :cascade do |t|
    t.integer "agrmnt_fpd", null: false
    t.integer "agrmnt_repo", null: false
    t.integer "agrmnt_wo", null: false
    t.integer "all_agrmnt", null: false
    t.integer "all_repo", null: false
    t.integer "all_wo", null: false
    t.integer "app_incoming", null: false
    t.integer "app_live", null: false
    t.integer "app_reject", null: false
    t.string "bm", limit: 500
    t.datetime "cooperation_dt"
    t.bigint "crd_rvw_cust_info_id", null: false
    t.bigint "crd_rvw_dealer_id", null: false
    t.string "dealer_code", limit: 50
    t.string "dealer_name", limit: 500
    t.string "sales", limit: 500
    t.integer "span_of_month", null: false
    t.string "spv", limit: 500
  end
 
  create_table "crd_rvw_dealer_bucket", force: :cascade do |t|
    t.string "bucket_range", limit: 50
    t.bigint "crd_rvw_dealer_bucket_id", null: false
    t.bigint "crd_rvw_dealer_id", null: false
    t.bigint "order_no", null: false
    t.decimal "value", precision: 19, scale: 4, null: false
  end
 
  create_table "crd_rvw_diff_app_to_in_prc_app_cust", force: :cascade do |t|
    t.string "app_no", limit: 50
    t.string "app_value"
    t.bigint "crd_rvw_cust_info_id", null: false
    t.bigint "crd_rvw_diff_app_to_in_prc_app_cust_id", null: false
    t.string "field_name", limit: 100
    t.boolean "is_difference", null: false
    t.boolean "is_rvw_app", null: false
  end
 
  create_table "crd_rvw_diff_app_to_master_cust", force: :cascade do |t|
    t.string "app_value"
    t.bigint "crd_rvw_cust_info_id", null: false
    t.bigint "crd_rvw_diff_app_to_master_cust_id", null: false
    t.string "field", limit: 100
    t.boolean "is_difference", null: false
    t.string "master_value"
  end
 
  create_table "crd_rvw_exposure_d", force: :cascade do |t|
    t.integer "active_agrmnt", null: false
    t.integer "agrmnt_cancelled", null: false
    t.integer "agrmnt_fpd", null: false
    t.integer "agrmnt_in_process", null: false
    t.integer "agrmnt_non_acrual", null: false
    t.integer "agrmnt_paid_off", null: false
    t.integer "agrmnt_rejected", null: false
    t.integer "agrmnt_repossess", null: false
    t.integer "agrmnt_written_off", null: false
    t.integer "asset_in_financing", null: false
    t.integer "asset_inventoried", null: false
    t.integer "asset_repossessed", null: false
    t.integer "bounce_cheque", null: false
    t.bigint "crd_rvw_exposure_d_id", null: false
    t.bigint "crd_rvw_exposure_h_id", null: false
    t.string "exposure_type", limit: 25
    t.string "fpd_indicator", limit: 50
    t.string "fpd_indicator_descr", limit: 500
    t.decimal "max_ar", precision: 19, scale: 4, null: false
    t.decimal "max_installment_amt", precision: 19, scale: 4, null: false
    t.decimal "max_overdue_amt", precision: 19, scale: 4, null: false
    t.integer "max_overdue_days", null: false
    t.decimal "os_ar_balance", precision: 19, scale: 4, null: false
    t.decimal "os_interest_amt", precision: 19, scale: 4, null: false
    t.decimal "os_principal_amt", precision: 19, scale: 4, null: false
    t.string "overdue_indicator", limit: 50
    t.string "overdue_indicator_descr", limit: 500
    t.integer "span_of_month", null: false
    t.integer "total_agrmnt_overdue", null: false
  end
 
  create_table "crd_rvw_exposure_h", force: :cascade do |t|
    t.bigint "crd_rvw_cust_info_id", null: false
    t.bigint "crd_rvw_exposure_h_id", null: false
    t.string "cust_indicator", limit: 50
    t.string "cust_indicator_descr", limit: 500
    t.string "cust_name", limit: 500
    t.string "cust_no", limit: 50
    t.string "id_no", limit: 50
    t.string "id_type", limit: 50
    t.string "relation_type", limit: 25
    t.string "relation_with_cust", limit: 50
  end
 
  create_table "crd_rvw_ovd", force: :cascade do |t|
    t.bigint "crd_rvw_cust_info_id", null: false
    t.bigint "crd_rvw_ovd_id", null: false
    t.string "cust_name", limit: 500
    t.string "cust_no", limit: 50
    t.decimal "max_overdue_amt", precision: 19, scale: 4, null: false
    t.integer "max_overdue_days", null: false
    t.string "overdue_indicator", limit: 50
    t.string "overdue_indicator_descr", limit: 500
    t.string "relation_type", limit: 25
    t.integer "total_agrmnt_overdue", null: false
  end
 
  create_table "cust_cnfrm", force: :cascade do |t|
    t.bigint "agrmnt_id", null: false
    t.bigint "app_id", null: false
    t.string "cnfmr_notes", limit: 2000
    t.bigint "cust_cnfrm_id", null: false
    t.boolean "is_skip", null: false
    t.string "mr_cust_cnfrm_result_code", limit: 25
    t.string "phone", limit: 25
    t.string "skip_reason", limit: 250
  end
 
  create_table "delivery_order_d", force: :cascade do |t|
    t.bigint "app_asset_id", null: false
    t.bigint "delivery_order_d_id", null: false
    t.bigint "delivery_order_h_id", null: false
    t.integer "seq_no", null: false
  end
 
  create_table "delivery_order_h", force: :cascade do |t|
    t.bigint "agrmnt_id", null: false
    t.bigint "app_id", null: false
    t.string "delivery_addr", limit: 500, null: false
    t.datetime "delivery_dt", null: false
    t.string "delivery_no", limit: 50, null: false
    t.bigint "delivery_order_h_id", null: false
    t.string "mr_cust_relationship_code", limit: 25, null: false
    t.string "recipient_name", limit: 250, null: false
  end
 
  create_table "deviation_result", force: :cascade do |t|
    t.string "apv_at", limit: 25, null: false
    t.string "behaviour_value", limit: 5, null: false
    t.string "current_value", limit: 50, null: false
    t.string "deviation_category", limit: 500, null: false
    t.bigint "deviation_result_id", null: false
    t.boolean "is_fatal", null: false
    t.string "mr_deviation_type", limit: 25, null: false
    t.string "notes", limit: 2000
    t.string "original_value", limit: 50, null: false
    t.string "ref_no", limit: 25, null: false
    t.integer "seq_no", null: false
    t.string "trx_type_code", limit: 25, null: false
  end
 
  create_table "disb_info", force: :cascade do |t|
    t.string "acc_name", limit: 50
    t.string "acc_no", limit: 50
    t.bigint "agrmnt_id"
    t.bigint "app_id", null: false
    t.string "bank_branch", limit: 25
    t.string "bank_branch_bi_code", limit: 25
    t.string "bank_code", limit: 50
    t.bigint "disb_info_id", null: false
    t.string "disb_to", limit: 50
  end
 
  create_table "edit_app_aft_apv_trx_d", force: :cascade do |t|
    t.string "change_item_code", limit: 50, null: false
    t.bigint "edit_app_aft_apv_trx_d_id", null: false
    t.bigint "edit_app_aft_apv_trx_h_id", null: false
    t.string "new_value", limit: 2000, null: false
    t.string "old_value", limit: 2000, null: false
    t.string "ref_code", limit: 50
    t.bigint "ref_id", null: false
    t.string "table_name", limit: 100, null: false
  end
 
  create_table "edit_app_aft_apv_trx_h", force: :cascade do |t|
    t.bigint "agrmnt_id", null: false
    t.datetime "apv_dt"
    t.bigint "edit_app_aft_apv_trx_h_id", null: false
    t.string "edit_app_aft_apv_trx_no", limit: 100, null: false
    t.string "edit_app_aft_apv_trx_stat", limit: 25, null: false
    t.string "notes", limit: 2000
    t.datetime "req_dt", null: false
  end
 
  create_table "edit_nap_cust", force: :cascade do |t|
    t.bigint "app_id", null: false
    t.bigint "edit_nap_cust_id", null: false
    t.string "req_by", limit: 50, null: false
    t.datetime "req_dt", null: false
  end
 
  create_table "general_setting_los", force: :cascade do |t|
    t.bigint "general_setting_los_id", null: false
    t.string "gs_code", limit: 25, null: false
    t.string "gs_value", limit: 1500, null: false
    t.string "module_code", limit: 25
  end
 
  create_table "generate_ro_potential_sp_mapping", force: :cascade do |t|
    t.string "descr", limit: 2000, null: false
    t.bigint "generate_ro_potential_sp_mapping_id", null: false
    t.string "sp_name", limit: 50, null: false
  end
 
  create_table "generate_ro_potential_trx", force: :cascade do |t|
    t.string "batch_no", limit: 50, null: false
    t.string "generate_by", limit: 50, null: false
    t.datetime "generate_dt", null: false
    t.bigint "generate_ro_potential_trx_id", null: false
    t.string "sp_name", limit: 100, null: false
  end
 
  create_table "lead", force: :cascade do |t|
    t.string "agency_code", limit: 25
    t.string "cancel_by_username", limit: 25
    t.datetime "cancel_dt"
    t.string "cancel_notes", limit: 2000
    t.string "cmo_username", limit: 25
    t.string "crt_office_code", limit: 25, null: false
    t.bigint "duplicate_lead_id"
    t.bigint "lead_copy_id"
    t.datetime "lead_dt", null: false
    t.bigint "lead_id", null: false
    t.string "lead_no", limit: 50, null: false
    t.string "lead_stat", limit: 25, null: false
    t.string "lead_step", limit: 25, null: false
    t.string "lob_code", limit: 25
    t.string "mr_cancel_reason_code", limit: 25
    t.string "mr_lead_source_code", limit: 25
    t.string "mr_lead_type_code", limit: 25
    t.string "order_no", limit: 50
    t.string "ori_office_code", limit: 25, null: false
    t.string "srvy_order_no", limit: 50
    t.string "submit_by_username", limit: 25
    t.datetime "submit_dt"
    t.string "surveyor_username", limit: 25
    t.string "tele_marketing_username", limit: 25
  end
 
  create_table "lead_app", force: :cascade do |t|
    t.string "curr_code", limit: 25
    t.string "curr_name", limit: 50
    t.decimal "effective_rate_prcnt", precision: 9, scale: 4
    t.decimal "fee_capitalized_amt", precision: 19, scale: 4
    t.decimal "flat_rate_prcnt", precision: 9, scale: 4
    t.integer "grace_period"
    t.decimal "ins_premium_capitalized_amt", precision: 19, scale: 4
    t.decimal "inst_amt", precision: 19, scale: 4
    t.bigint "lead_app_id", null: false
    t.bigint "lead_id", null: false
    t.string "mr_first_inst_type_code", limit: 25
    t.string "mr_grace_period_type_code", limit: 25
    t.string "mr_inst_scheme_code", limit: 25
    t.string "mr_interest_type_code", limit: 25
    t.string "mr_step_up_down_type_code", limit: 25
    t.decimal "ntf_amt", precision: 19, scale: 4
    t.integer "num_of_asset"
    t.integer "num_of_inst"
    t.string "pay_freq_code", limit: 25
    t.decimal "rounding_amt", precision: 19, scale: 4
    t.integer "tenor"
    t.decimal "total_ar", precision: 19, scale: 4
    t.decimal "total_down_payment_amt", precision: 19, scale: 4
    t.decimal "total_interest", precision: 19, scale: 4
  end
 
  create_table "lead_asset", force: :cascade do |t|
    t.decimal "asset_price_amt", precision: 19, scale: 4
    t.integer "asset_seq_no", null: false
    t.decimal "down_payment_amt", precision: 19, scale: 4
    t.decimal "down_payment_prcnt", precision: 9, scale: 4
    t.string "full_asset_code", limit: 250, null: false
    t.string "full_asset_name", limit: 500, null: false
    t.bigint "lead_asset_id", null: false
    t.bigint "lead_id", null: false
    t.string "manufacturing_year", limit: 5
    t.string "mr_asset_condition_code", limit: 25, null: false
    t.string "mr_down_payment_type_code", limit: 25
    t.string "serial_no_1", limit: 25
    t.string "serial_no_2", limit: 25
    t.string "serial_no_3", limit: 25
    t.string "serial_no_4", limit: 25
    t.string "serial_no_5", limit: 25
  end
 
  create_table "lead_cust", force: :cascade do |t|
    t.string "cust_name", limit: 250, null: false
    t.string "cust_no", limit: 25
    t.datetime "id_expired_dt"
    t.string "id_no", limit: 25, null: false
    t.boolean "is_vip", null: false
    t.bigint "lead_cust_id", null: false
    t.bigint "lead_id", null: false
    t.string "mr_cust_model_code", limit: 25, null: false
    t.string "mr_cust_type_code", limit: 25, null: false
    t.string "mr_id_type_code", limit: 25, null: false
    t.string "tax_id_no", limit: 25
  end
 
  create_table "lead_cust_addr", force: :cascade do |t|
    t.string "addr", limit: 500, null: false
    t.string "area_code_1", limit: 25
    t.string "area_code_2", limit: 25
    t.string "area_code_3", limit: 25
    t.string "area_code_4", limit: 25
    t.string "city", limit: 25
    t.string "fax", limit: 25
    t.string "fax_area", limit: 10
    t.bigint "lead_cust_addr_id", null: false
    t.bigint "lead_cust_id", null: false
    t.string "mr_cust_addr_type_code", limit: 25, null: false
    t.string "mr_house_ownership_code", limit: 25
    t.string "phn_1", limit: 25
    t.string "phn_2", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_area_2", limit: 10
    t.string "phn_ext_1", limit: 5
    t.string "phn_ext_2", limit: 5
    t.string "sub_zipcode", limit: 25
    t.string "zipcode", limit: 25
  end
 
  create_table "lead_cust_bank_acc", force: :cascade do |t|
    t.decimal "balance_amt", precision: 19, scale: 4, null: false
    t.string "bank_acc_name", limit: 250, null: false
    t.string "bank_acc_no", limit: 250, null: false
    t.string "bank_branch", limit: 50, null: false
    t.string "bank_branch_reg_rpt_code", limit: 25
    t.string "bank_code", limit: 25, null: false
    t.string "bank_name", limit: 50, null: false
    t.boolean "is_bank_stmnt", null: false
    t.bigint "lead_cust_bank_acc_id", null: false
    t.bigint "lead_cust_id", null: false
  end
 
  create_table "lead_cust_bank_stmnt", force: :cascade do |t|
    t.decimal "credit_amt", precision: 19, scale: 4, null: false
    t.decimal "debit_amt", precision: 19, scale: 4, null: false
    t.bigint "lead_cust_bank_acc_id", null: false
    t.bigint "lead_cust_bank_stmnt_id", null: false
    t.string "month", limit: 1, null: false
    t.decimal "saldo_amt", precision: 19, scale: 4, null: false
    t.string "year", limit: 2
  end
 
  create_table "lead_cust_company", force: :cascade do |t|
    t.string "email_1", limit: 25
    t.string "email_2", limit: 25
    t.datetime "establishment_dt"
    t.string "industry_type_code", limit: 25
    t.boolean "is_affiliated", null: false
    t.bigint "lead_cust_company_id", null: false
    t.bigint "lead_cust_id", null: false
    t.string "license_no", limit: 50
    t.string "mr_company_type_code", limit: 25
    t.string "mr_investment_type_code", limit: 25
    t.integer "num_of_emp"
    t.string "phn_1", limit: 25
    t.string "phn_2", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_area_2", limit: 10
    t.string "phn_ext_1", limit: 5
    t.string "phn_ext_2", limit: 5
    t.string "registration_no", limit: 50
    t.string "website", limit: 50
  end
 
  create_table "lead_cust_company_contact_person", force: :cascade do |t|
    t.string "contact_person_name", limit: 250
    t.string "email_1", limit: 25
    t.string "email_2", limit: 25
    t.string "job_title_name", limit: 50
    t.bigint "lead_cust_company_contact_person_id", null: false
    t.bigint "lead_cust_company_id", null: false
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "mr_job_position_code", limit: 25
    t.string "phn", limit: 25
    t.string "phn_area", limit: 10
    t.string "phn_ext", limit: 5
  end
 
  create_table "lead_cust_company_fin_data", force: :cascade do |t|
    t.decimal "ar_turn_over_prcnt", precision: 9, scale: 4
    t.decimal "curr_asset", precision: 19, scale: 4
    t.decimal "curr_liablts", precision: 19, scale: 4
    t.decimal "curr_ratio", precision: 19, scale: 4
    t.decimal "current_ratio_prcnt", precision: 9, scale: 4
    t.datetime "date_as_of"
    t.decimal "debt_equity_ratio_prcnt", precision: 9, scale: 4
    t.decimal "gross_monthly_expense_amt", precision: 19, scale: 4, null: false
    t.decimal "gross_monthly_income_amt", precision: 19, scale: 4
    t.decimal "gross_profit_amt", precision: 19, scale: 4
    t.decimal "growth_prcnt", precision: 9, scale: 4
    t.decimal "inv_turn_over_prcnt", precision: 9, scale: 4
    t.bigint "lead_cust_company_fin_data_id", null: false
    t.bigint "lead_cust_company_id", null: false
    t.decimal "long_temr_liablts", precision: 19, scale: 4
    t.decimal "net_fixed_asset", precision: 19, scale: 4
    t.decimal "opr_cost", precision: 19, scale: 4
    t.decimal "oth_monthly_inst_amt", precision: 19, scale: 4
    t.decimal "profit_before_tax", precision: 19, scale: 4
    t.decimal "profit_margin_prcnt", precision: 9, scale: 4
    t.decimal "return_of_asset_prcnt", precision: 9, scale: 4
    t.decimal "return_of_equity_prcnt", precision: 9, scale: 4
    t.decimal "return_of_investment_prcnt", precision: 9, scale: 4
    t.decimal "revenue", precision: 19, scale: 4
    t.decimal "shareholder_equity", precision: 19, scale: 4
    t.decimal "total_asset", precision: 19, scale: 4
    t.decimal "working_capital_amt", precision: 19, scale: 4
  end
 
  create_table "lead_cust_company_legal_doc", force: :cascade do |t|
    t.datetime "doc_dt"
    t.datetime "doc_expired_dt"
    t.string "doc_no", limit: 25
    t.string "doc_notes", limit: 2000
    t.boolean "is_exp_dt_mandatory", null: false
    t.bigint "lead_cust_company_id", null: false
    t.bigint "lead_cust_company_legal_doc_id", null: false
    t.string "mr_legal_doc_type_code", limit: 25, null: false
    t.string "release_by", limit: 100
    t.string "release_location", limit: 100
  end
 
  create_table "lead_cust_company_mgmnt_shrholder", force: :cascade do |t|
    t.datetime "birth_dt"
    t.string "birth_place", limit: 100
    t.string "cust_no", limit: 25
    t.string "email", limit: 25
    t.datetime "establishment_dt"
    t.datetime "id_expired_dt"
    t.string "id_no", limit: 25
    t.boolean "is_signer"
    t.bigint "lead_cust_company_id", null: false
    t.bigint "lead_cust_company_mgmnt_shrholder_id", null: false
    t.string "mgmnt_shrholder_name", limit: 250, null: false
    t.string "mobile_phn_no", limit: 25
    t.string "mr_company_type_code", limit: 25
    t.string "mr_cust_type_code", limit: 25
    t.string "mr_gender_code", limit: 25
    t.string "mr_id_type_code", limit: 25
    t.string "mr_industry_type_code", limit: 25
    t.string "mr_job_position_code", limit: 25
    t.string "mr_nationality_code", limit: 25
    t.string "nationality_country_code", limit: 25
    t.decimal "share_prcnt", precision: 9, scale: 4, null: false
    t.string "tax_id_no", limit: 25
  end
 
  create_table "lead_cust_personal", force: :cascade do |t|
    t.datetime "birth_dt", null: false
    t.string "birth_place", limit: 50, null: false
    t.string "cust_full_name", limit: 250, null: false
    t.string "email_1", limit: 50
    t.string "email_2", limit: 50
    t.string "email_3", limit: 50
    t.string "family_card_no", limit: 25
    t.bigint "lead_cust_id", null: false
    t.bigint "lead_cust_personal_id", null: false
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "mobile_phn_no_3", limit: 25
    t.string "mother_maiden_name", limit: 250
    t.string "mr_education_code", limit: 25
    t.string "mr_gender_code", limit: 25, null: false
    t.string "mr_marital_stat_code", limit: 25
    t.string "mr_nationality_code", limit: 25
    t.string "mr_religion_code", limit: 25
    t.string "nationality_country_code", limit: 25
    t.string "nick_name", limit: 250
    t.integer "no_of_dependents"
    t.integer "no_of_residence"
  end
 
  create_table "lead_cust_personal_contact_person", force: :cascade do |t|
    t.string "addr", limit: 500, null: false
    t.string "area_code_1", limit: 25
    t.string "area_code_2", limit: 25
    t.string "area_code_3", limit: 25
    t.string "area_code_4", limit: 25
    t.datetime "birth_dt", null: false
    t.string "birth_place", limit: 100, null: false
    t.string "city", limit: 25
    t.string "contact_person_cust_no", limit: 25
    t.string "contact_person_name", limit: 250, null: false
    t.string "email", limit: 50
    t.string "id_no", limit: 25
    t.boolean "is_emergency_contact"
    t.boolean "is_family"
    t.bigint "lead_cust_personal_contact_person_id", null: false
    t.bigint "lead_cust_personal_id", null: false
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "mother_maiden_name", limit: 250
    t.string "mr_cust_relationship_code", limit: 25
    t.string "mr_education_code", limit: 25
    t.string "mr_gender_code", limit: 25, null: false
    t.string "mr_id_type_code", limit: 25
    t.string "mr_job_profession_code", limit: 25
    t.string "mr_marital_stat_code", limit: 25
    t.string "mr_nationality_code", limit: 25
    t.string "mr_religion_code", limit: 25
    t.string "nationality_country_code", limit: 25
    t.string "sub_zipcode", limit: 25
    t.string "zipcode", limit: 25
  end
 
  create_table "lead_cust_personal_fin_data", force: :cascade do |t|
    t.boolean "is_join_income", null: false
    t.bigint "lead_cust_personal_fin_data_id", null: false
    t.bigint "lead_cust_personal_id", null: false
    t.decimal "monthly_expense_amt", precision: 19, scale: 4, null: false
    t.decimal "monthly_income_amt", precision: 19, scale: 4, null: false
    t.decimal "monthly_installment_amt", precision: 19, scale: 4
    t.string "mr_source_of_income_code", limit: 25
    t.decimal "spouse_monthly_income_amt", precision: 19, scale: 4
  end
 
  create_table "lead_cust_personal_job_data", force: :cascade do |t|
    t.string "company_name", limit: 50
    t.datetime "establishment_dt"
    t.string "industry_type_code", limit: 25
    t.boolean "is_mf_emp"
    t.bigint "lead_cust_personal_id", null: false
    t.bigint "lead_cust_personal_job_data_id", null: false
    t.string "mr_company_scale_code", limit: 25
    t.string "mr_investment_type_code", limit: 25
    t.string "mr_job_position_code", limit: 25
    t.string "mr_job_stat_code", limit: 25
    t.string "mr_job_title_code", limit: 25
    t.string "mr_profession_code", limit: 25
    t.integer "num_of_employee"
    t.string "professional_no", limit: 25
  end
 
  create_table "lead_cust_socmed", force: :cascade do |t|
    t.bigint "lead_cust_id", null: false
    t.bigint "lead_cust_socmed_id", null: false
    t.string "mr_socmed_code", limit: 25
    t.string "mr_socmed_name", limit: 100
    t.string "socmed_id", limit: 50
  end
 
  create_table "lead_fraud_verf", force: :cascade do |t|
    t.bigint "lead_fraud_verf_id", null: false
    t.bigint "lead_id", null: false
    t.string "notes", limit: 2000
    t.string "verify_by_code", limit: 25, null: false
    t.string "verify_by_name", limit: 250, null: false
    t.datetime "verify_dt", null: false
    t.string "verify_stat", limit: 5, null: false
  end
 
  create_table "lead_step_hist", force: :cascade do |t|
    t.bigint "lead_id", null: false
    t.string "lead_stat", limit: 5, null: false
    t.string "lead_step", limit: 5, null: false
    t.bigint "lead_step_hist_id", null: false
    t.string "process_by_code", limit: 25
    t.string "process_by_name", limit: 250
    t.datetime "process_dt", null: false
  end
 
  create_table "lead_verf", force: :cascade do |t|
    t.bigint "lead_id", null: false
    t.bigint "lead_verf_id", null: false
    t.string "verify_by_code", limit: 25, null: false
    t.string "verify_by_name", limit: 250, null: false
    t.datetime "verify_dt", null: false
    t.string "verify_stat", limit: 25, null: false
  end
 
  create_table "los_error_log", force: :cascade do |t|
    t.string "app_no", limit: 25, null: false
    t.string "error_message", limit: 2000, null: false
    t.boolean "is_fixed", null: false
    t.bigint "log_error_log_id", null: false
  end
 
  create_table "ltkm_cust", force: :cascade do |t|
    t.string "applicant_no", limit: 25
    t.string "cust_name", limit: 250, null: false
    t.string "cust_no", limit: 25
    t.datetime "id_expired_dt"
    t.string "id_no", limit: 25, null: false
    t.boolean "is_affiliate_with_mf", null: false
    t.boolean "is_completion", null: false
    t.boolean "is_customer", null: false
    t.boolean "is_existing_cust", null: false
    t.boolean "is_family", null: false
    t.boolean "is_guarantor", null: false
    t.boolean "is_ltkm_cust_checked", null: false
    t.boolean "is_shareholder", null: false
    t.boolean "is_vip", null: false
    t.bigint "ltkm_cust_id", null: false
    t.bigint "ltkm_req_id", null: false
    t.string "mr_business_period", limit: 25
    t.string "mr_business_source", limit: 25
    t.string "mr_cust_authority", limit: 25
    t.string "mr_cust_model_code", limit: 25, null: false
    t.string "mr_cust_relationship_code", limit: 25
    t.string "mr_cust_type_code", limit: 25, null: false
    t.string "mr_department", limit: 25
    t.string "mr_id_type_code", limit: 25, null: false
    t.string "tax_id_no", limit: 25
    t.string "vip_notes", limit: 2000
  end
 
  create_table "ltkm_cust_addr", force: :cascade do |t|
    t.string "addr", limit: 500, null: false
    t.string "area_code_1", limit: 25
    t.string "area_code_2", limit: 25
    t.string "area_code_3", limit: 25
    t.string "area_code_4", limit: 25
    t.string "city", limit: 25
    t.string "fax", limit: 25
    t.string "fax_area", limit: 10
    t.bigint "ltkm_cust_addr_id", null: false
    t.bigint "ltkm_cust_id", null: false
    t.string "mr_cust_addr_type_code", limit: 25, null: false
    t.string "mr_house_ownership_code", limit: 25
    t.string "phn_1", limit: 25
    t.string "phn_2", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_area_2", limit: 10
    t.string "phn_ext_1", limit: 5
    t.string "phn_ext_2", limit: 5
    t.decimal "stay_length", precision: 19, scale: 4
    t.string "sub_zipcode", limit: 25
    t.string "zipcode", limit: 25
  end
 
  create_table "ltkm_cust_addr_attr_content", force: :cascade do |t|
    t.string "cust_addr_attr_code", limit: 25, null: false
    t.string "cust_addr_attr_value", limit: 2000
    t.bigint "ltkm_cust_addr_attr_content_id", null: false
    t.bigint "ltkm_cust_addr_id", null: false
  end
 
  create_table "ltkm_cust_asset", force: :cascade do |t|
    t.string "asset_descr"
    t.integer "asset_qty"
    t.decimal "asset_total_value", precision: 19, scale: 4
    t.decimal "asset_value", precision: 19, scale: 4
    t.bigint "ltkm_cust_asset_id", null: false
    t.bigint "ltkm_cust_id", null: false
    t.string "mr_cust_asset_type_code", limit: 100, null: false
  end
 
  create_table "ltkm_cust_attr_content", force: :cascade do |t|
    t.string "attr_value", limit: 500, null: false
    t.bigint "ltkm_cust_attr_content_id", null: false
    t.bigint "ltkm_cust_id", null: false
    t.string "ref_attr_code", limit: 25
  end
 
  create_table "ltkm_cust_bank_acc", force: :cascade do |t|
    t.decimal "balance_amt", precision: 19, scale: 4, null: false
    t.string "bank_acc_name", limit: 250, null: false
    t.string "bank_acc_no", limit: 250, null: false
    t.string "bank_branch", limit: 25, null: false
    t.string "bank_branch_reg_rpt_code", limit: 25
    t.string "bank_code", limit: 25, null: false
    t.decimal "beg_balance_amt", precision: 19, scale: 4, null: false
    t.boolean "is_active", null: false
    t.boolean "is_bank_stmnt", null: false
    t.boolean "is_default", null: false
    t.bigint "ltkm_cust_bank_acc_id", null: false
    t.bigint "ltkm_cust_id", null: false
  end
 
  create_table "ltkm_cust_bank_stmnt", force: :cascade do |t|
    t.decimal "balance_amt", precision: 19, scale: 4, null: false
    t.decimal "credit_amt", precision: 19, scale: 4, null: false
    t.integer "credit_trx_count"
    t.decimal "debit_amt", precision: 19, scale: 4, null: false
    t.integer "debit_trx_count"
    t.bigint "ltkm_cust_bank_acc_id", null: false
    t.bigint "ltkm_cust_bank_stmnt_id", null: false
    t.string "month", limit: 25, null: false
    t.string "year", limit: 5, null: false
  end
 
  create_table "ltkm_cust_company", force: :cascade do |t|
    t.string "company_brand_name", limit: 50
    t.string "email_1", limit: 25
    t.string "email_2", limit: 25
    t.datetime "establishment_dt"
    t.string "industry_type_code", limit: 25
    t.boolean "is_affiliated", null: false
    t.string "license_no", limit: 50
    t.bigint "ltkm_cust_company_id", null: false
    t.bigint "ltkm_cust_id", null: false
    t.string "mr_company_type_code", limit: 25
    t.string "mr_investment_type_code", limit: 25
    t.integer "num_of_emp"
    t.string "phn_1", limit: 25
    t.string "phn_2", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_area_2", limit: 10
    t.string "phn_ext_1", limit: 5
    t.string "phn_ext_2", limit: 5
    t.string "ref_sector_economic_slik_code", limit: 25
    t.string "registration_no", limit: 50
    t.string "website", limit: 50
  end
 
  create_table "ltkm_cust_company_contact_person", force: :cascade do |t|
    t.string "birth_place", limit: 100
    t.string "contact_person_name", limit: 250
    t.string "email_1", limit: 25
    t.string "email_2", limit: 25
    t.datetime "id_expired_dt"
    t.string "id_no", limit: 25
    t.string "job_title_name", limit: 50
    t.bigint "ltkm_cust_company_contact_person_id", null: false
    t.bigint "ltkm_cust_company_id", null: false
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "mr_cust_relationship_code", limit: 25
    t.string "mr_gender_code", limit: 25
    t.string "mr_id_type_code", limit: 25
    t.string "mr_job_position_code", limit: 25
  end
 
  create_table "ltkm_cust_company_fin_data", force: :cascade do |t|
    t.decimal "ar_turn_over_prcnt", precision: 9, scale: 4, null: false
    t.decimal "curr_asset", precision: 19, scale: 4, null: false
    t.decimal "curr_liablts", precision: 19, scale: 4, null: false
    t.decimal "curr_ratio", precision: 19, scale: 4, null: false
    t.decimal "current_ratio_prcnt", precision: 9, scale: 4, null: false
    t.datetime "date_as_of"
    t.decimal "debt_equity_ratio_prcnt", precision: 9, scale: 4, null: false
    t.decimal "gross_monthly_expense_amt", precision: 19, scale: 4, null: false
    t.decimal "gross_monthly_income_amt", precision: 19, scale: 4, null: false
    t.decimal "gross_profit_amt", precision: 19, scale: 4, null: false
    t.decimal "growth_prcnt", precision: 9, scale: 4, null: false
    t.decimal "inv_turn_over_prcnt", precision: 9, scale: 4, null: false
    t.decimal "long_term_liablts", precision: 19, scale: 4, null: false
    t.bigint "ltkm_cust_company_fin_data_id", null: false
    t.bigint "ltkm_cust_company_id", null: false
    t.bigint "ltkm_cust_id", null: false
    t.decimal "net_fixed_asset", precision: 19, scale: 4, null: false
    t.decimal "opr_cost", precision: 19, scale: 4, null: false
    t.decimal "oth_monthly_inst_amt", precision: 19, scale: 4, null: false
    t.decimal "profit_before_tax", precision: 19, scale: 4, null: false
    t.decimal "profit_margin_prcnt", precision: 9, scale: 4, null: false
    t.decimal "return_of_asset_prcnt", precision: 9, scale: 4, null: false
    t.decimal "return_of_equity_prcnt", precision: 9, scale: 4, null: false
    t.decimal "return_of_investment_prcnt", precision: 9, scale: 4, null: false
    t.decimal "revenue", precision: 19, scale: 4, null: false
    t.decimal "shareholder_equity", precision: 19, scale: 4, null: false
    t.decimal "total_asset", precision: 19, scale: 4, null: false
    t.decimal "working_capital_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "ltkm_cust_company_legal_doc", force: :cascade do |t|
    t.datetime "doc_dt"
    t.datetime "doc_expired_dt"
    t.string "doc_no", limit: 25
    t.string "doc_notes", limit: 500
    t.boolean "is_exp_dt_mandatory", null: false
    t.bigint "ltkm_cust_company_id", null: false
    t.bigint "ltkm_cust_company_legal_doc_id", null: false
    t.string "mr_legal_doc_type_code", limit: 25
    t.string "notary_location", limit: 2000
    t.string "notary_name", limit: 250
    t.string "release_by", limit: 100
    t.string "release_location", limit: 100
  end
 
  create_table "ltkm_cust_company_mgmnt_shrholder", force: :cascade do |t|
    t.datetime "birth_dt"
    t.string "birth_place", limit: 100
    t.string "cust_no", limit: 25
    t.string "email", limit: 25
    t.datetime "establishment_dt"
    t.datetime "id_expired_dt"
    t.string "id_no", limit: 25
    t.string "industry_type_code", limit: 25
    t.boolean "is_active", null: false
    t.boolean "is_owner", null: false
    t.boolean "is_signer", null: false
    t.bigint "ltkm_cust_company_id", null: false
    t.bigint "ltkm_cust_company_mgmnt_shrholder_id", null: false
    t.bigint "ltkm_cust_id"
    t.string "mgmnt_shrholder_name", limit: 250, null: false
    t.string "mobile_phn_no", limit: 25
    t.string "mr_company_type_code", limit: 25
    t.string "mr_cust_type_code", limit: 25
    t.string "mr_gender_code", limit: 25
    t.string "mr_id_type_code", limit: 25
    t.string "mr_job_position_code", limit: 25
    t.string "mr_nationality_code", limit: 25
    t.string "nationality_country_code", limit: 25
    t.decimal "share_prcnt", precision: 9, scale: 4, null: false
    t.string "tax_id_no", limit: 25
  end
 
  create_table "ltkm_cust_emrgnc_cntct", force: :cascade do |t|
    t.string "addr", limit: 1000
    t.string "area_code_1", limit: 50
    t.string "area_code_2", limit: 50
    t.string "area_code_3", limit: 50
    t.string "area_code_4", limit: 50
    t.datetime "birth_dt"
    t.string "birth_place", limit: 50
    t.string "city", limit: 50
    t.string "contact_person_name", limit: 50, null: false
    t.string "email", limit: 50
    t.datetime "id_expired_dt"
    t.string "id_no", limit: 50
    t.bigint "ltkm_cust_emrgnc_cntct_id", null: false
    t.bigint "ltkm_cust_id", null: false
    t.string "mobile_phn_no_1", limit: 50
    t.string "mobile_phn_no_2", limit: 50
    t.string "mr_cust_relationship_code", limit: 50
    t.string "mr_gender_code", limit: 50
    t.string "mr_id_type_code", limit: 50
    t.string "phn_1", limit: 25
    t.string "phn_2", limit: 25
    t.string "phn_3", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_area_2", limit: 10
    t.string "phn_area_3", limit: 10
    t.string "phn_ext_1", limit: 5
    t.string "phn_ext_2", limit: 5
    t.string "phn_ext_3", limit: 5
    t.string "sub_zipcode", limit: 10
    t.string "zipcode", limit: 10
  end
 
  create_table "ltkm_cust_grp", force: :cascade do |t|
    t.string "applicant_no", limit: 25
    t.string "cust_grp_notes", limit: 2000
    t.string "cust_no", limit: 25
    t.boolean "is_reversible", null: false
    t.bigint "ltkm_cust_grp_id", null: false
    t.bigint "ltkm_cust_id", null: false
    t.string "mr_cust_relationship_code", limit: 25
  end
 
  create_table "ltkm_cust_other_info", force: :cascade do |t|
    t.string "lbppms_biz_scl_lbpp_code", limit: 5, null: false
    t.string "lbppms_biz_scl_lbpp_descr", limit: 250
    t.string "lbppms_biz_sustain_lbpp_code", limit: 5
    t.string "lbppms_biz_sustain_lbpp_descr", limit: 250
    t.string "lbppms_cntrprt_lbpp_code", limit: 5
    t.string "lbppms_cntrprt_lbpp_descr", limit: 250
    t.string "lbppms_debt_grp_lbpp_code", limit: 5, null: false
    t.string "lbppms_debt_grp_lbpp_descr", limit: 250
    t.bigint "ltkm_cust_id", null: false
    t.bigint "ltkm_cust_other_info_id", null: false
  end
 
  create_table "ltkm_cust_personal", force: :cascade do |t|
    t.datetime "birth_dt", null: false
    t.string "birth_place", limit: 50, null: false
    t.string "cust_full_name", limit: 250, null: false
    t.string "cust_prefix_name", limit: 100
    t.string "cust_suffix_name", limit: 100
    t.string "email_1", limit: 50
    t.string "email_2", limit: 50
    t.string "email_3", limit: 50
    t.string "family_card_no", limit: 25
    t.boolean "is_rest_in_peace", null: false
    t.bigint "ltkm_cust_id", null: false
    t.bigint "ltkm_cust_personal_id", null: false
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "mobile_phn_no_3", limit: 25
    t.string "mother_maiden_name", limit: 250
    t.string "mr_education_code", limit: 25
    t.string "mr_gender_code", limit: 25, null: false
    t.string "mr_marital_stat_code", limit: 25
    t.string "mr_nationality_code", limit: 25
    t.string "mr_religion_code", limit: 25
    t.string "mr_salutation_code", limit: 25
    t.string "nationality_country_code", limit: 25
    t.string "nick_name", limit: 100
    t.integer "no_of_dependents"
    t.integer "no_of_residence"
  end
 
  create_table "ltkm_cust_personal_contact_person", force: :cascade do |t|
    t.string "addr", limit: 500
    t.string "area_code_1", limit: 25
    t.string "area_code_2", limit: 25
    t.string "area_code_3", limit: 25
    t.string "area_code_4", limit: 25
    t.datetime "birth_dt"
    t.string "birth_place", limit: 100
    t.string "city", limit: 25
    t.string "contact_person_cust_no", limit: 25
    t.string "contact_person_name", limit: 250
    t.string "email", limit: 50
    t.string "id_no", limit: 25
    t.boolean "is_emergency_contact", null: false
    t.boolean "is_family", null: false
    t.bigint "ltkm_cust_personal_contact_person_id", null: false
    t.bigint "ltkm_cust_personal_id", null: false
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "mother_maiden_name", limit: 250
    t.string "mr_cust_relationship_code", limit: 25
    t.string "mr_education_code", limit: 25
    t.string "mr_gender_code", limit: 25, null: false
    t.string "mr_id_type_code", limit: 25
    t.string "mr_job_profession_code", limit: 25
    t.string "mr_marital_stat_code", limit: 25
    t.string "mr_nationality_code", limit: 25
    t.string "mr_religion_code", limit: 25
    t.string "nationality_country_code", limit: 25
    t.string "sub_zipcode", limit: 5
    t.string "zipcode", limit: 5
  end
 
  create_table "ltkm_cust_personal_fin_data", force: :cascade do |t|
    t.datetime "date_as_of"
    t.boolean "is_join_income", null: false
    t.bigint "ltkm_cust_personal_fin_data_id", null: false
    t.bigint "ltkm_cust_personal_id", null: false
    t.decimal "monthly_expense_amt", precision: 19, scale: 4, null: false
    t.decimal "monthly_income_amt", precision: 19, scale: 4, null: false
    t.decimal "monthly_installment_amt", precision: 19, scale: 4, null: false
    t.string "mr_source_of_income_type_code", limit: 25
    t.decimal "nett_income_amt", precision: 19, scale: 4, null: false
    t.decimal "nett_profit_monthly_amt", precision: 19, scale: 4, null: false
    t.decimal "other_income_amt", precision: 19, scale: 4, null: false
    t.decimal "other_monthly_installment_amt", precision: 19, scale: 4, null: false
    t.decimal "spouse_monthly_income_amt", precision: 19, scale: 4, null: false
    t.decimal "total_income_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "ltkm_cust_personal_job_data", force: :cascade do |t|
    t.string "company_name", limit: 50
    t.decimal "est_remuneration", precision: 19, scale: 4, null: false
    t.datetime "establishment_dt"
    t.string "industry_type_code", limit: 25
    t.boolean "is_mf_emp"
    t.bigint "ltkm_cust_personal_id", null: false
    t.bigint "ltkm_cust_personal_job_data_id", null: false
    t.string "mr_company_scale_code", limit: 25
    t.string "mr_investment_type_code", limit: 25
    t.string "mr_job_position_code", limit: 25
    t.string "mr_job_stat_code", limit: 25
    t.string "mr_job_title_code", limit: 25
    t.string "mr_profession_code", limit: 25
    t.integer "num_of_employee"
    t.datetime "oth_biz_establishment_dt"
    t.string "oth_biz_industry_type_code", limit: 25
    t.string "oth_biz_job_position", limit: 25
    t.string "oth_biz_name", limit: 50
    t.string "oth_biz_type", limit: 25
    t.string "prev_coy_name", limit: 50
    t.datetime "prev_employment_dt"
    t.string "professional_no", limit: 25
    t.string "ref_sector_economic_slik_code", limit: 25
  end
 
  create_table "ltkm_cust_socmed", force: :cascade do |t|
    t.bigint "ltkm_cust_id", null: false
    t.bigint "ltkm_cust_socmed_id", null: false
    t.string "mr_socmed_code", limit: 25
    t.string "mr_socmed_name", limit: 50
    t.string "socmed_id", limit: 50
  end
 
  create_table "ltkm_req", force: :cascade do |t|
    t.string "add_src_notes", limit: 250
    t.string "agrmnt_no", limit: 50
    t.bigint "app_id"
    t.string "app_no", limit: 50
    t.string "approval_stat", limit: 50
    t.datetime "apv_dt"
    t.decimal "asset_price_amt", precision: 19, scale: 4, null: false
    t.string "cust_no", limit: 100, null: false
    t.decimal "down_payment_amt", precision: 19, scale: 4, null: false
    t.decimal "down_payment_prctg", precision: 9, scale: 4, null: false
    t.string "emp_name", limit: 100, null: false
    t.string "emp_no", limit: 50, null: false
    t.decimal "inst_amt", precision: 19, scale: 4, null: false
    t.string "ltkm_analysis_notes", limit: 2000
    t.string "ltkm_no", limit: 100, null: false
    t.bigint "ltkm_req_id", null: false
    t.string "ltkm_src", limit: 1
    t.string "ltkm_step", limit: 50, null: false
    t.string "mr_dp_src_payment", limit: 1000
    t.string "mr_inst_src_payment", limit: 25
    t.string "office_code", limit: 50, null: false
    t.string "office_name", limit: 100, null: false
    t.string "owner_name", limit: 250
    t.string "owner_profession_code", limit: 25
  end
 
  create_table "ltkm_req_detail", force: :cascade do |t|
    t.bigint "ltkm_req_detail_id", null: false
    t.bigint "ltkm_req_id", null: false
    t.string "lvl_indication", limit: 100
    t.string "src_indication", limit: 100
    t.string "susp_for", limit: 100
    t.string "susp_trx_due_to", limit: 100
  end
 
  create_table "mapping_product", force: :cascade do |t|
    t.bigint "mapping_product_id", null: false
    t.string "prod_ho_code_r2", limit: 10
    t.string "prod_ho_code_r3", limit: 10
  end
 
  create_table "mirror_hist", force: :cascade do |t|
    t.string "error_message"
    t.datetime "exec_dt"
    t.boolean "is_exec", null: false
    t.boolean "is_success", null: false
    t.string "mirror_from", limit: 50
    t.bigint "mirror_hist_id", null: false
    t.string "payload", null: false
    t.string "sp_name", limit: 50
    t.string "status", limit: 25, null: false
  end
 
  create_table "mou_cust", force: :cascade do |t|
    t.string "applicant_no", limit: 25
    t.decimal "available_amt", precision: 19, scale: 4, null: false
    t.string "crt_office_code", limit: 25, null: false
    t.string "crt_office_name", limit: 50, null: false
    t.string "curr_code", limit: 25, null: false
    t.string "cust_model_code", limit: 25, null: false
    t.string "cust_name", limit: 250
    t.string "cust_no", limit: 25
    t.datetime "end_dt", null: false
    t.datetime "id_expired_dt"
    t.string "id_no", limit: 25, null: false
    t.decimal "in_process_amt", precision: 19, scale: 4, null: false
    t.boolean "is_affiliate_with_mf"
    t.boolean "is_existing_cust", null: false
    t.boolean "is_freeze", null: false
    t.boolean "is_mou_cust_checked", null: false
    t.boolean "is_revolving", null: false
    t.boolean "is_vip", null: false
    t.datetime "mou_cust_dt"
    t.bigint "mou_cust_id", null: false
    t.string "mou_cust_no", limit: 50, null: false
    t.string "mou_stat", limit: 25, null: false
    t.string "mr_cust_type_code", limit: 25
    t.string "mr_id_type_code", limit: 25, null: false
    t.string "mr_mou_type_code", limit: 25, null: false
    t.string "mr_revolving_type_code", limit: 25
    t.string "notes", limit: 2000
    t.string "ori_office_code", limit: 25, null: false
    t.string "ori_office_name", limit: 50, null: false
    t.decimal "plafond_amt", precision: 19, scale: 4, null: false
    t.decimal "plafond_collateral_amt", precision: 19, scale: 4, null: false
    t.string "plafond_type", limit: 25
    t.decimal "realisation_amt", precision: 19, scale: 4, null: false
    t.string "ref_no", limit: 50
    t.string "srvy_order_no", limit: 50
    t.datetime "start_dt", null: false
    t.string "tax_id_no", limit: 25
    t.bigint "topup_mou_cust_id"
  end
 
  create_table "mou_cust_addr", force: :cascade do |t|
    t.string "addr", limit: 500, null: false
    t.string "area_code_1", limit: 25
    t.string "area_code_2", limit: 25
    t.string "area_code_3", limit: 25
    t.string "area_code_4", limit: 25
    t.string "city", limit: 25
    t.string "fax", limit: 25
    t.string "fax_area", limit: 10
    t.bigint "mou_cust_addr_id", null: false
    t.bigint "mou_cust_id", null: false
    t.string "mr_cust_addr_type_code", limit: 25, null: false
    t.string "mr_house_ownership_code", limit: 25
    t.string "phn_1", limit: 25
    t.string "phn_2", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_area_2", limit: 10
    t.string "phn_ext_1", limit: 5
    t.string "phn_ext_2", limit: 5
    t.decimal "stay_length", precision: 19, scale: 4
    t.string "sub_zipcode", limit: 25
    t.string "zipcode", limit: 25
  end
 
  create_table "mou_cust_addr_attr_content", force: :cascade do |t|
    t.string "cust_addr_attr_code", limit: 25, null: false
    t.string "cust_addr_attr_value", limit: 2000
    t.bigint "mou_cust_addr_attr_content_id", null: false
    t.bigint "mou_cust_addr_id", null: false
  end
 
  create_table "mou_cust_asset", force: :cascade do |t|
    t.string "full_asset_code", limit: 250, null: false
    t.string "full_asset_name", limit: 250, null: false
    t.bigint "mou_cust_asset_id", null: false
    t.bigint "mou_cust_id", null: false
  end
 
  create_table "mou_cust_attr_content", force: :cascade do |t|
    t.string "attr_value", limit: 500, null: false
    t.bigint "mou_cust_attr_content_id", null: false
    t.bigint "mou_cust_id", null: false
    t.string "ref_attr_code", limit: 25
  end
 
  create_table "mou_cust_bank_acc", force: :cascade do |t|
    t.decimal "balance_amt", precision: 19, scale: 4, null: false
    t.string "bank_acc_name", limit: 250, null: false
    t.string "bank_acc_no", limit: 250, null: false
    t.string "bank_branch", limit: 25, null: false
    t.string "bank_branch_reg_rpt_code", limit: 25
    t.string "bank_code", limit: 25, null: false
    t.boolean "is_active"
    t.boolean "is_bank_stmnt", null: false
    t.boolean "is_default", null: false
    t.bigint "mou_cust_bank_acc_id", null: false
    t.bigint "mou_cust_id", null: false
  end
 
  create_table "mou_cust_bank_stmnt", force: :cascade do |t|
    t.decimal "balance_amt", precision: 19, scale: 4, null: false
    t.decimal "credit_amt", precision: 19, scale: 4, null: false
    t.decimal "debit_amt", precision: 19, scale: 4, null: false
    t.string "month", limit: 25, null: false
    t.bigint "mou_cust_bank_acc_id", null: false
    t.bigint "mou_cust_bank_stmnt_id", null: false
    t.string "year", limit: 5, null: false
  end
 
  create_table "mou_cust_cancel", force: :cascade do |t|
    t.string "cancel_by", limit: 25, null: false
    t.datetime "cancel_dt", null: false
    t.string "cancel_notes", limit: 2000, null: false
    t.bigint "mou_cust_cancel_id", null: false
    t.bigint "mou_cust_id", null: false
    t.string "reason_code", limit: 25, null: false
  end
 
  create_table "mou_cust_clause", force: :cascade do |t|
    t.string "asset_type_code", limit: 25, null: false
    t.decimal "down_payment_from_prcnt", precision: 9, scale: 4, null: false
    t.decimal "down_payment_to_prcnt", precision: 9, scale: 4, null: false
    t.bigint "mou_cust_clause_id", null: false
    t.bigint "mou_cust_id", null: false
    t.string "mr_first_inst_type_code", limit: 25
    t.string "mr_inst_schm_code", limit: 25
    t.string "mr_interest_type_code", limit: 25
    t.string "pay_freq_code", limit: 25
    t.integer "tenor_from", null: false
    t.integer "tenor_to", null: false
  end
 
  create_table "mou_cust_collateral", force: :cascade do |t|
    t.string "asset_category_code", limit: 25, null: false
    t.datetime "asset_tax_date"
    t.string "asset_type_code", limit: 25, null: false
    t.string "collateral_no", limit: 50
    t.string "collateral_notes", limit: 2000
    t.decimal "collateral_portion_amt", precision: 19, scale: 4
    t.decimal "collateral_prcnt", precision: 9, scale: 4
    t.integer "collateral_seq_no", null: false
    t.string "collateral_stat", limit: 25, null: false
    t.decimal "collateral_value_amt", precision: 19, scale: 4, null: false
    t.string "full_asset_code", limit: 250, null: false
    t.string "full_asset_name", limit: 500, null: false
    t.integer "manufacturing_year"
    t.decimal "max_coll_prcnt", precision: 9, scale: 4
    t.bigint "mou_cust_collateral_id", null: false
    t.bigint "mou_cust_id", null: false
    t.string "mr_collateral_condition_code", limit: 25, null: false
    t.string "mr_collateral_usage_code", limit: 25, null: false
    t.string "rsv_field_1", limit: 2000
    t.string "rsv_field_2", limit: 2000
    t.string "rsv_field_3", limit: 2000
    t.string "rsv_field_4", limit: 2000
    t.string "rsv_field_5", limit: 2000
    t.string "serial_no_1", limit: 50
    t.string "serial_no_2", limit: 50
    t.string "serial_no_3", limit: 50
    t.string "serial_no_4", limit: 50
    t.string "serial_no_5", limit: 50
    t.string "tax_city_issuer", limit: 50
  end
 
  create_table "mou_cust_collateral_attr", force: :cascade do |t|
    t.string "attr_value", limit: 2000, null: false
    t.string "collateral_attr_code", limit: 25, null: false
    t.string "collateral_attr_name", limit: 50, null: false
    t.bigint "mou_cust_collateral_attr_id", null: false
    t.bigint "mou_cust_collateral_id", null: false
  end
 
  create_table "mou_cust_collateral_doc", force: :cascade do |t|
    t.string "doc_code", limit: 25, null: false
    t.string "doc_name", limit: 50
    t.string "doc_no", limit: 25
    t.string "doc_notes", limit: 2000
    t.datetime "expired_dt"
    t.boolean "is_received", null: false
    t.bigint "mou_cust_collateral_doc_id", null: false
    t.bigint "mou_cust_collateral_id", null: false
  end
 
  create_table "mou_cust_collateral_registration", force: :cascade do |t|
    t.string "location_addr", limit: 250
    t.string "location_area_code_1", limit: 25
    t.string "location_area_code_2", limit: 25
    t.string "location_area_code_3", limit: 25
    t.string "location_area_code_4", limit: 25
    t.string "location_city", limit: 25
    t.string "location_zipcode", limit: 25
    t.bigint "mou_cust_collateral_id", null: false
    t.bigint "mou_cust_collateral_registration_id", null: false
    t.string "mr_id_type_code", limit: 25
    t.string "mr_owner_relationship_code", limit: 25
    t.string "mr_owner_type_code", limit: 25
    t.string "mr_user_relationship_code", limit: 25
    t.string "notes", limit: 2000
    t.string "owner_addr", limit: 500
    t.string "owner_area_code_1", limit: 25
    t.string "owner_area_code_2", limit: 25
    t.string "owner_area_code_3", limit: 25
    t.string "owner_area_code_4", limit: 25
    t.string "owner_city", limit: 25
    t.string "owner_id_no", limit: 25
    t.string "owner_mobile_phn_no", limit: 25
    t.string "owner_name", limit: 250
    t.string "owner_profession_code", limit: 25
    t.string "owner_zipcode", limit: 25
    t.string "user_name", limit: 250
  end
 
  create_table "mou_cust_company", force: :cascade do |t|
    t.string "company_brand_name", limit: 50
    t.string "email_1", limit: 25
    t.string "email_2", limit: 25
    t.datetime "establishment_dt"
    t.string "industry_type_code", limit: 25
    t.boolean "is_affiliated", null: false
    t.string "license_no", limit: 50
    t.bigint "mou_cust_company_id", null: false
    t.bigint "mou_cust_id", null: false
    t.string "mr_company_type_code", limit: 25
    t.string "mr_investment_type_code", limit: 25
    t.integer "num_of_emp"
    t.string "phn_1", limit: 25
    t.string "phn_2", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_area_2", limit: 10
    t.string "phn_ext_1", limit: 5
    t.string "phn_ext_2", limit: 5
    t.string "registration_no", limit: 50
    t.string "website", limit: 50
  end
 
  create_table "mou_cust_company_contact_person", force: :cascade do |t|
    t.string "addr", limit: 500
    t.string "area_code_1", limit: 25
    t.string "area_code_2", limit: 25
    t.string "area_code_3", limit: 25
    t.string "area_code_4", limit: 25
    t.datetime "birth_dt"
    t.string "birth_place", limit: 100
    t.string "city", limit: 25
    t.string "contact_person_name", limit: 250
    t.string "email_1", limit: 25
    t.string "email_2", limit: 25
    t.string "fax", limit: 25
    t.string "fax_area", limit: 10
    t.datetime "id_expired_dt"
    t.string "id_no", limit: 25
    t.string "job_title_name", limit: 50
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.bigint "mou_cust_company_contact_person_id", null: false
    t.bigint "mou_cust_company_id", null: false
    t.string "mr_cust_relationship_code", limit: 25
    t.string "mr_gender_code", limit: 25
    t.string "mr_id_type_code", limit: 25
    t.string "mr_job_position_code", limit: 25
    t.string "phn_1", limit: 25
    t.string "phn_2", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_area_2", limit: 10
    t.string "phn_ext_1", limit: 5
    t.string "phn_ext_2", limit: 5
    t.string "zipcode", limit: 5
  end
 
  create_table "mou_cust_company_fin_data", force: :cascade do |t|
    t.decimal "ar_turn_over_prcnt", precision: 9, scale: 4, null: false
    t.decimal "curr_asset", precision: 19, scale: 4, null: false
    t.decimal "curr_liablts", precision: 19, scale: 4, null: false
    t.decimal "curr_ratio", precision: 19, scale: 4, null: false
    t.decimal "current_ratio_prcnt", precision: 9, scale: 4, null: false
    t.datetime "date_as_of"
    t.decimal "debt_equity_ratio_prcnt", precision: 9, scale: 4, null: false
    t.decimal "gross_monthly_expense_amt", precision: 19, scale: 4, null: false
    t.decimal "gross_monthly_income_amt", precision: 19, scale: 4, null: false
    t.decimal "gross_profit_amt", precision: 19, scale: 4, null: false
    t.decimal "growth_prcnt", precision: 9, scale: 4, null: false
    t.decimal "inv_turn_over_prcnt", precision: 9, scale: 4, null: false
    t.decimal "long_term_liablts", precision: 19, scale: 4, null: false
    t.bigint "mou_cust_company_fin_data_id", null: false
    t.bigint "mou_cust_company_id", null: false
    t.decimal "net_fixed_asset", precision: 19, scale: 4, null: false
    t.decimal "opr_cost", precision: 19, scale: 4, null: false
    t.decimal "oth_monthly_inst_amt", precision: 19, scale: 4, null: false
    t.decimal "profit_before_tax", precision: 19, scale: 4, null: false
    t.decimal "profit_margin_prcnt", precision: 9, scale: 4, null: false
    t.decimal "return_of_asset_prcnt", precision: 9, scale: 4, null: false
    t.decimal "return_of_equity_prcnt", precision: 9, scale: 4, null: false
    t.decimal "return_of_investment_prcnt", precision: 9, scale: 4, null: false
    t.decimal "revenue", precision: 19, scale: 4, null: false
    t.decimal "shareholder_equity", precision: 19, scale: 4, null: false
    t.decimal "total_asset", precision: 19, scale: 4, null: false
    t.decimal "working_capital_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "mou_cust_company_legal_doc", force: :cascade do |t|
    t.datetime "doc_dt"
    t.datetime "doc_expired_dt"
    t.string "doc_no", limit: 25
    t.string "doc_notes", limit: 500
    t.boolean "is_exp_dt_mandatory", null: false
    t.bigint "mou_cust_company_id", null: false
    t.bigint "mou_cust_company_legal_doc_id", null: false
    t.string "mr_legal_doc_type_code", limit: 25
    t.string "release_by", limit: 100
    t.string "release_location", limit: 100
  end
 
  create_table "mou_cust_company_mgmnt_shrholder", force: :cascade do |t|
    t.datetime "birth_dt"
    t.string "birth_place", limit: 100
    t.string "cust_no", limit: 25
    t.string "email", limit: 25
    t.datetime "establishment_dt"
    t.datetime "id_expired_dt"
    t.string "id_no", limit: 25
    t.string "industry_type_code", limit: 25
    t.boolean "is_active", null: false
    t.boolean "is_owner", null: false
    t.boolean "is_signer", null: false
    t.string "mgmnt_shrholder_name", limit: 250, null: false
    t.string "mobile_phn_no", limit: 25
    t.bigint "mou_cust_company_id", null: false
    t.bigint "mou_cust_company_mgmnt_shrholder_id", null: false
    t.string "mr_company_type_code", limit: 25
    t.string "mr_cust_type_code", limit: 25
    t.string "mr_gender_code", limit: 25
    t.string "mr_id_type_code", limit: 25
    t.string "mr_job_position_code", limit: 25
    t.string "mr_nationality_code", limit: 25
    t.string "mr_position_slik_code", limit: 50
    t.string "mr_public_type_code", limit: 50
    t.string "mr_shrholder_type_code", limit: 50
    t.string "nationality_country_code", limit: 25
    t.string "public_addr", limit: 1000
    t.string "public_area_code_1", limit: 50
    t.string "public_area_code_2", limit: 50
    t.string "public_area_code_3", limit: 50
    t.string "public_area_code_4", limit: 50
    t.string "public_city", limit: 50
    t.string "public_identity_no", limit: 100
    t.string "public_name", limit: 500
    t.string "public_zipcode", limit: 50
    t.decimal "share_prcnt", precision: 9, scale: 4, null: false
    t.string "tax_id_no", limit: 25
  end
 
  create_table "mou_cust_dlr_fncng", force: :cascade do |t|
    t.string "asset_condition", limit: 50, null: false
    t.string "dealer_code", limit: 50, null: false
    t.string "dealer_cust_no", limit: 50, null: false
    t.decimal "extend_rate_prcnt", precision: 9, scale: 4, null: false
    t.string "interest_calc_based", limit: 25
    t.decimal "interest_rate_prcnt", precision: 9, scale: 4, null: false
    t.decimal "lc_rate", precision: 9, scale: 4, null: false
    t.string "manufacturer_code", limit: 50
    t.string "manufacturer_cust_no", limit: 50
    t.integer "maximum_extend_times", null: false
    t.integer "maximum_months_for_extend", null: false
    t.integer "maximum_times_for_extends", null: false
    t.bigint "mou_cust_dlr_fncng_id", null: false
    t.bigint "mou_cust_id", null: false
    t.string "mr_inst_type_code", limit: 25
    t.string "notes", limit: 2000
    t.string "pay_freq_code", limit: 100, null: false
    t.decimal "principal_paid_in_extend_prcntg", precision: 9, scale: 4, null: false
    t.integer "spare_day_to_pay", null: false
    t.integer "top_days", null: false
    t.decimal "top_interest_rate_prcnt", precision: 9, scale: 4, null: false
    t.string "virtual_acc_no", limit: 25
    t.string "wop_code", limit: 50, null: false
  end
 
  create_table "mou_cust_doc", force: :cascade do |t|
    t.string "doc_code", limit: 25, null: false
    t.datetime "doc_dt"
    t.string "doc_name", limit: 50, null: false
    t.string "doc_no", limit: 25
    t.string "doc_notes", limit: 2000
    t.boolean "is_need_to_be_printed", null: false
    t.string "last_print_by_emp_no", limit: 25
    t.datetime "last_print_dt"
    t.bigint "mou_cust_doc_id", null: false
    t.bigint "mou_cust_id", null: false
    t.string "mr_doc_object_code", limit: 25, null: false
    t.integer "num_of_doc_printed", null: false
    t.integer "seq_no", null: false
  end
 
  create_table "mou_cust_doc_print", force: :cascade do |t|
    t.string "last_doc_print_by_emp_no", limit: 50
    t.datetime "last_doc_print_dt"
    t.bigint "mou_cust_doc_id", null: false
    t.bigint "mou_cust_doc_print_id", null: false
    t.bigint "mou_cust_id", null: false
    t.integer "print_seq_no", null: false
  end
 
  create_table "mou_cust_fctr", force: :cascade do |t|
    t.decimal "interest_rate_prcnt", precision: 9, scale: 4, null: false
    t.boolean "is_disclosed", null: false
    t.boolean "is_listed_cust", null: false
    t.bigint "mou_cust_fctr_id", null: false
    t.bigint "mou_cust_id", null: false
    t.string "mr_inst_schm_code", limit: 25, null: false
    t.string "mr_inst_type_code", limit: 25, null: false
    t.string "mr_paid_by_code", limit: 25, null: false
    t.string "mr_recourse_type_code", limit: 25, null: false
    t.string "notes", limit: 2000
    t.string "pay_freq_code", limit: 25, null: false
    t.decimal "retention_prcnt", precision: 9, scale: 4, null: false
    t.string "single_inst_calc_mthd", limit: 25, null: false
    t.integer "tenor_from", null: false
    t.integer "tenor_to", null: false
    t.integer "top_days", null: false
    t.string "vendor_code", limit: 25
    t.string "virtual_acc_no", limit: 25
    t.string "wop_code", limit: 25, null: false
  end
 
  create_table "mou_cust_fee", force: :cascade do |t|
    t.decimal "fee_amt", precision: 19, scale: 4
    t.decimal "fee_prcnt", precision: 9, scale: 4
    t.bigint "mou_cust_fee_id", null: false
    t.string "mou_cust_fee_payment_type", limit: 50
    t.bigint "mou_cust_id", null: false
    t.string "mr_agreement_affected", limit: 50
    t.string "mr_fee_type_code", limit: 25, null: false
    t.bigint "ref_fee_id", null: false
  end
 
  create_table "mou_cust_fin_data_attr_content", force: :cascade do |t|
    t.string "attr_group", limit: 25
    t.string "attr_value", limit: 500, null: false
    t.bigint "mou_cust_fin_data_attr_content_id", null: false
    t.bigint "mou_cust_id", null: false
    t.string "ref_attr_code", limit: 25
  end
 
  create_table "mou_cust_grp", force: :cascade do |t|
    t.string "cust_grp_notes", limit: 2000
    t.string "cust_no", limit: 25, null: false
    t.boolean "is_reversible", null: false
    t.bigint "mou_cust_grp_id", null: false
    t.bigint "mou_cust_id", null: false
    t.string "mr_cust_relationship_code", limit: 25
  end
 
  create_table "mou_cust_lgl_review", force: :cascade do |t|
    t.string "lgl_review_result", limit: 2000, null: false
    t.bigint "mou_cust_id", null: false
    t.bigint "mou_cust_lgl_review_id", null: false
    t.string "mr_lgl_review_code", limit: 25, null: false
  end
 
  create_table "mou_cust_listed_cust_fctr", force: :cascade do |t|
    t.string "cust_name", limit: 250, null: false
    t.string "cust_no", limit: 25, null: false
    t.bigint "mou_cust_id", null: false
    t.bigint "mou_listed_cust_fctr_id", null: false
    t.string "mr_cust_type_code", limit: 25, null: false
  end
 
  create_table "mou_cust_other_info", force: :cascade do |t|
    t.string "lbppms_biz_scl_lbpp_code", limit: 50, null: false
    t.string "lbppms_biz_scl_lbpp_descr", limit: 100
    t.string "lbppms_biz_sustain_lbpp_code", limit: 50
    t.string "lbppms_biz_sustain_lbpp_descr", limit: 500
    t.string "lbppms_cntrprt_lbpp_code", limit: 50
    t.string "lbppms_cntrprt_lbpp_descr", limit: 500
    t.string "lbppms_debt_grp_lbpp_code", limit: 50, null: false
    t.string "lbppms_debt_grp_lbpp_descr", limit: 100
    t.bigint "mou_cust_id", null: false
    t.bigint "mou_cust_other_info_id", null: false
  end
 
  create_table "mou_cust_personal", force: :cascade do |t|
    t.datetime "birth_dt", null: false
    t.string "birth_place", limit: 50, null: false
    t.string "cust_full_name", limit: 250, null: false
    t.string "cust_prefix_name", limit: 100
    t.string "cust_suffix_name", limit: 100
    t.string "email_1", limit: 50
    t.string "email_2", limit: 50
    t.string "email_3", limit: 50
    t.string "family_card_no", limit: 25
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "mobile_phn_no_3", limit: 25
    t.string "mother_maiden_name", limit: 250
    t.bigint "mou_cust_id", null: false
    t.bigint "mou_cust_personal_id", null: false
    t.string "mr_education_code", limit: 25
    t.string "mr_gender_code", limit: 25, null: false
    t.string "mr_marital_stat_code", limit: 25
    t.string "mr_nationality_code", limit: 25
    t.string "mr_religion_code", limit: 25
    t.string "mr_salutation_code", limit: 25
    t.string "nationality_country_code", limit: 25
    t.string "nick_name", limit: 100
    t.integer "no_of_dependents"
    t.integer "no_of_residence"
  end
 
  create_table "mou_cust_personal_contact_person", force: :cascade do |t|
    t.string "addr", limit: 500
    t.string "area_code_1", limit: 25
    t.string "area_code_2", limit: 25
    t.string "area_code_3", limit: 25
    t.string "area_code_4", limit: 25
    t.datetime "birth_dt"
    t.string "birth_place", limit: 100
    t.string "city", limit: 25
    t.string "contact_person_cust_no", limit: 25
    t.string "contact_person_name", limit: 250
    t.string "email", limit: 50
    t.datetime "id_expired_dt"
    t.string "id_no", limit: 25
    t.boolean "is_emergency_contact", null: false
    t.boolean "is_family", null: false
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.string "mother_maiden_name", limit: 250
    t.bigint "mou_cust_personal_contact_person_id", null: false
    t.bigint "mou_cust_personal_id", null: false
    t.string "mr_cust_relationship_code", limit: 25
    t.string "mr_education_code", limit: 25
    t.string "mr_gender_code", limit: 25, null: false
    t.string "mr_id_type_code", limit: 25
    t.string "mr_job_profession_code", limit: 25
    t.string "mr_marital_stat_code", limit: 25
    t.string "mr_nationality_code", limit: 25
    t.string "mr_religion_code", limit: 25
    t.string "nationality_country_code", limit: 25
    t.string "phn_1", limit: 25
    t.string "phn_2", limit: 25
    t.string "phn_3", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_area_2", limit: 10
    t.string "phn_area_3", limit: 10
    t.string "phn_ext_1", limit: 5
    t.string "phn_ext_2", limit: 5
    t.string "phn_ext_3", limit: 5
    t.string "sub_zipcode", limit: 5
    t.string "zipcode", limit: 5
  end
 
  create_table "mou_cust_personal_fin_data", force: :cascade do |t|
    t.boolean "is_join_income", null: false
    t.decimal "monthly_expense_amt", precision: 19, scale: 4, null: false
    t.decimal "monthly_income_amt", precision: 19, scale: 4, null: false
    t.decimal "monthly_installment_amt", precision: 19, scale: 4, null: false
    t.bigint "mou_cust_personal_fin_data_id", null: false
    t.bigint "mou_cust_personal_id", null: false
    t.string "mr_source_of_income_type_code", limit: 25
    t.decimal "nett_income_amt", precision: 19, scale: 4
    t.decimal "other_income_amt", precision: 19, scale: 4
    t.decimal "spouse_monthly_income_amt", precision: 19, scale: 4, null: false
    t.decimal "total_income_amt", precision: 19, scale: 4
  end
 
  create_table "mou_cust_personal_job_data", force: :cascade do |t|
    t.string "company_name", limit: 250
    t.datetime "establishment_dt"
    t.string "industry_type_code", limit: 25
    t.boolean "is_mf_emp"
    t.string "job_title_name", limit: 25
    t.bigint "mou_cust_personal_id", null: false
    t.bigint "mou_cust_personal_job_data_id", null: false
    t.string "mr_company_scale_code", limit: 25
    t.string "mr_investment_type_code", limit: 25
    t.string "mr_job_position_code", limit: 25
    t.string "mr_job_stat_code", limit: 25
    t.string "mr_profession_code", limit: 25
    t.integer "num_of_employee"
    t.string "professional_no", limit: 25
  end
 
  create_table "mou_cust_rvw_d", force: :cascade do |t|
    t.string "analysis_result", limit: 2000, null: false
    t.bigint "mou_cust_rvw_d_id", null: false
    t.bigint "mou_cust_rvw_h_id", null: false
    t.string "mr_analysis_item_code", limit: 25, null: false
  end
 
  create_table "mou_cust_rvw_h", force: :cascade do |t|
    t.string "crd_analyst_emp_no", limit: 25, null: false
    t.string "crd_rvw_stat", limit: 25, null: false
    t.bigint "mou_cust_id", null: false
    t.bigint "mou_cust_rvw_h_id", null: false
    t.string "return_notes", limit: 2000
    t.datetime "submit_dt", null: false
  end
 
  create_table "mou_cust_score", force: :cascade do |t|
    t.bigint "mou_cust_id"
    t.bigint "mou_cust_score_id", null: false
    t.string "mr_score_type_code", limit: 25
    t.decimal "score_result", precision: 19, scale: 4
  end
 
  create_table "mou_cust_signer", force: :cascade do |t|
    t.string "cust_signer_job_position_1", limit: 50, null: false
    t.string "cust_signer_job_position_2", limit: 50
    t.string "cust_signer_name_1", limit: 250, null: false
    t.string "cust_signer_name_2", limit: 250
    t.string "mf_signer_job_position_1", limit: 50, null: false
    t.string "mf_signer_job_position_2", limit: 50
    t.string "mf_signer_name_1", limit: 50, null: false
    t.string "mf_signer_name_2", limit: 50
    t.bigint "mou_cust_id", null: false
    t.bigint "mou_cust_signer_id", null: false
  end
 
  create_table "mou_cust_socmed", force: :cascade do |t|
    t.bigint "mou_cust_id", null: false
    t.bigint "mou_cust_socmed_id", null: false
    t.string "mr_socmed_code", limit: 25
    t.string "mr_socmed_name", limit: 50
    t.string "socmed_id", limit: 50
  end
 
  create_table "mou_cust_tc", force: :cascade do |t|
    t.datetime "checked_dt"
    t.datetime "expired_dt"
    t.boolean "is_checked", null: false
    t.boolean "is_expired_dt", null: false
    t.boolean "is_mandatory", null: false
    t.boolean "is_waivable", null: false
    t.boolean "is_waived", null: false
    t.bigint "mou_cust_id"
    t.bigint "mou_cust_tc_id", null: false
    t.string "notes", limit: 2000
    t.string "prior_to", limit: 25, null: false
    t.datetime "promised_dt"
    t.string "tc_code", limit: 25, null: false
  end
 
  create_table "mou_freeze_trx", force: :cascade do |t|
    t.datetime "apv_dt"
    t.datetime "exe_dt"
    t.string "freeze_src", limit: 2, null: false
    t.boolean "is_freeze", null: false
    t.bigint "mou_cust_id", null: false
    t.bigint "mou_freeze_trx_id", null: false
    t.string "mou_freeze_trx_no", limit: 50, null: false
    t.string "notes", limit: 2000
    t.string "ref_reason_code"
    t.string "req_by_ref_user_code"
    t.datetime "req_dt"
    t.string "status", limit: 5
  end
 
  create_table "mou_guarantor", force: :cascade do |t|
    t.string "cust_no", limit: 25
    t.string "guarantor_name", limit: 250, null: false
    t.bigint "mou_cust_id", null: false
    t.bigint "mou_guarantor_id", null: false
    t.string "mr_cust_relationship_code", limit: 25, null: false
    t.string "mr_guarantor_type_code", limit: 25, null: false
    t.string "tax_id_no", limit: 25
  end
 
  create_table "mou_guarantor_company", force: :cascade do |t|
    t.string "addr", limit: 500, null: false
    t.string "area_code_1", limit: 25
    t.string "area_code_2", limit: 25
    t.string "area_code_3", limit: 25
    t.string "area_code_4", limit: 25
    t.string "city", limit: 25
    t.string "contact_email", limit: 25
    t.string "contact_name", limit: 250
    t.string "fax", limit: 25
    t.string "fax_area", limit: 10
    t.string "industry_type_code", limit: 25, null: false
    t.string "mobile_phn_no_1", limit: 25
    t.string "mobile_phn_no_2", limit: 25
    t.bigint "mou_guarantor_company_id", null: false
    t.bigint "mou_guarantor_id", null: false
    t.string "mr_company_type_code", limit: 25, null: false
    t.string "mr_job_position_code", limit: 25
    t.string "phn_1", limit: 25
    t.string "phn_2", limit: 25
    t.string "phn_area_1", limit: 10
    t.string "phn_area_2", limit: 10
    t.string "phn_ext_1", limit: 5
    t.string "phn_ext_2", limit: 5
    t.string "sub_zipcode", limit: 5
    t.string "zipcode", limit: 5
  end
 
  create_table "mou_guarantor_company_legal_doc", force: :cascade do |t|
    t.datetime "doc_dt"
    t.datetime "doc_expired_dt"
    t.string "doc_no", limit: 25
    t.string "doc_notes", limit: 500
    t.boolean "is_exp_dt_mandatory", null: false
    t.bigint "mou_guarantor_company_id", null: false
    t.bigint "mou_guarantor_company_legal_doc_id", null: false
    t.string "mr_legal_doc_type_code", limit: 25
    t.string "release_by", limit: 100
    t.string "release_location", limit: 100
  end
 
  create_table "mou_guarantor_personal", force: :cascade do |t|
    t.string "addr", limit: 500, null: false
    t.string "area_code_1", limit: 25
    t.string "area_code_2", limit: 25
    t.string "area_code_3", limit: 25
    t.string "area_code_4", limit: 25
    t.datetime "birth_dt", null: false
    t.string "birth_place", limit: 50
    t.string "city", limit: 25
    t.string "country_code", limit: 25
    t.string "email", limit: 25
    t.datetime "id_exp_dt"
    t.string "id_no", limit: 25
    t.string "mobile_phn_no", limit: 25
    t.bigint "mou_guarantor_id"
    t.bigint "mou_guarantor_personal_id", null: false
    t.string "mr_gender_code", limit: 25
    t.string "mr_id_type_code", limit: 25
    t.string "mr_marital_stat_code", limit: 25
    t.string "mr_nationality_code", limit: 25
    t.string "mr_religion_code", limit: 25
    t.string "zipcode", limit: 5
  end
 
  create_table "pre_go_live", force: :cascade do |t|
    t.datetime "agrmnt_dt", null: false
    t.bigint "agrmnt_id", null: false
    t.string "approval_stat", limit: 25
    t.datetime "effective_dt", null: false
    t.boolean "is_need_approval", null: false
    t.string "notes", limit: 2000
    t.datetime "pre_go_live_dt", null: false
    t.bigint "pre_go_live_id", null: false
  end
 
  create_table "prod", force: :cascade do |t|
    t.bigint "current_prod_h_id"
    t.bigint "draft_prod_h_id"
    t.datetime "end_dt", null: false
    t.string "prod_code", limit: 25, null: false
    t.string "prod_descr", limit: 2000, null: false
    t.bigint "prod_id", null: false
    t.string "prod_name", limit: 50, null: false
    t.string "prod_stat", limit: 25, null: false
    t.datetime "start_dt", null: false
  end
 
  create_table "prod_branch_mbr", force: :cascade do |t|
    t.string "area_code", limit: 25
    t.string "area_name", limit: 50
    t.boolean "is_allowed_crt", null: false
    t.string "office_code", limit: 25
    t.string "office_name", limit: 50
    t.bigint "prod_branch_mbr_id", null: false
    t.bigint "prod_h_id", null: false
  end
 
  create_table "prod_d", force: :cascade do |t|
    t.string "compnt_value", limit: 500, null: false
    t.string "compnt_value_desc", limit: 500, null: false
    t.string "mr_prod_behaviour_code", limit: 25, null: false
    t.bigint "prod_d_id", null: false
    t.bigint "prod_h_id", null: false
    t.string "ref_prod_compnt_code", limit: 25, null: false
    t.string "ref_prod_compnt_grp_code", limit: 25, null: false
  end
 
  create_table "prod_h", force: :cascade do |t|
    t.datetime "deact_effective_dt"
    t.string "deact_execution_by_user", limit: 25
    t.datetime "deact_execution_dt"
    t.string "deact_execution_notes", limit: 2000
    t.string "deact_notes", limit: 2000
    t.string "deact_reason", limit: 25
    t.string "deact_request_by_user", limit: 25
    t.datetime "deact_request_dt"
    t.datetime "end_dt", null: false
    t.string "execution_by_user", limit: 25
    t.datetime "execution_dt"
    t.string "execution_notes", limit: 2000
    t.bigint "prod_h_id", null: false
    t.bigint "prod_id", null: false
    t.string "prod_stat", limit: 25, null: false
    t.string "prod_version", limit: 25
    t.string "request_by_user", limit: 25
    t.datetime "request_dt"
    t.string "return_notes", limit: 2000
    t.datetime "start_dt", null: false
  end
 
  create_table "prod_inst_schm_map", force: :cascade do |t|
    t.string "biz_tmplt_code", limit: 25, null: false
    t.string "lob_code", limit: 25, null: false
    t.string "mr_inst_schm_code", limit: 25, null: false
    t.string "mr_inst_schm_name", limit: 50, null: false
    t.bigint "prod_inst_schm_map_id", null: false
  end
 
  create_table "prod_offering", force: :cascade do |t|
    t.bigint "current_prod_offering_h_id"
    t.bigint "draft_prod_offering_h_id"
    t.datetime "end_dt", null: false
    t.string "office_code", limit: 25
    t.string "office_name", limit: 50
    t.bigint "prod_id", null: false
    t.string "prod_offering_code", limit: 25, null: false
    t.string "prod_offering_descr", limit: 2000
    t.bigint "prod_offering_id", null: false
    t.string "prod_offering_name", limit: 50, null: false
    t.string "prod_offering_stat", limit: 25, null: false
    t.datetime "start_dt", null: false
  end
 
  create_table "prod_offering_branch_mbr", force: :cascade do |t|
    t.string "area_code", limit: 25
    t.string "area_name", limit: 50
    t.string "office_code", limit: 25
    t.string "office_name", limit: 50
    t.bigint "prod_offering_branch_mbr_id", null: false
    t.bigint "prod_offering_h_id", null: false
  end
 
  create_table "prod_offering_d", force: :cascade do |t|
    t.string "compnt_value", limit: 500, null: false
    t.string "compnt_value_desc", limit: 500, null: false
    t.string "mr_prod_behaviour_code", limit: 25, null: false
    t.bigint "prod_offering_d_id", null: false
    t.bigint "prod_offering_h_id", null: false
    t.string "ref_prod_compnt_code", limit: 25, null: false
    t.string "ref_prod_compnt_grp_code", limit: 25, null: false
  end
 
  create_table "prod_offering_h", force: :cascade do |t|
    t.datetime "deact_effective_dt"
    t.string "deact_execution_by_user", limit: 25
    t.datetime "deact_execution_dt"
    t.string "deact_execution_notes", limit: 2000
    t.string "deact_notes", limit: 2000
    t.string "deact_reason", limit: 25
    t.string "deact_request_by_user", limit: 25
    t.datetime "deact_request_dt"
    t.datetime "end_dt", null: false
    t.string "execution_by_user", limit: 25
    t.datetime "execution_dt"
    t.string "execution_notes", limit: 2000
    t.bigint "prod_h_id"
    t.bigint "prod_offering_h_id", null: false
    t.bigint "prod_offering_id", null: false
    t.string "prod_offering_version", limit: 25
    t.string "prod_stat", limit: 25, null: false
    t.string "request_by_user", limit: 25
    t.datetime "request_dt"
    t.string "return_notes", limit: 2000
    t.datetime "start_dt", null: false
  end
 
  create_table "prod_offering_los", force: :cascade do |t|
    t.string "prod_offering_los_code", limit: 25, null: false
    t.bigint "prod_offering_los_id", null: false
    t.string "prod_offering_los_name", limit: 50, null: false
  end
 
  create_table "purchase_order_d", force: :cascade do |t|
    t.string "mr_po_item_code", limit: 25, null: false
    t.decimal "purchase_order_amt", precision: 19, scale: 4, null: false
    t.bigint "purchase_order_d_id", null: false
    t.bigint "purchase_order_h_id", null: false
  end
 
  create_table "purchase_order_h", force: :cascade do |t|
    t.bigint "agrmnt_id", null: false
    t.string "bank_acc_name", limit: 250, null: false
    t.string "bank_acc_no", limit: 250, null: false
    t.string "bank_branch", limit: 25
    t.string "bank_code", limit: 25, null: false
    t.string "mou_no", limit: 25
    t.string "notes", limit: 2000
    t.integer "num_of_extension"
    t.datetime "purchase_order_dt", null: false
    t.datetime "purchase_order_expired_dt"
    t.bigint "purchase_order_h_id", null: false
    t.string "purchase_order_no", limit: 50, null: false
    t.string "suppl_code", limit: 25, null: false
    t.decimal "total_purchase_order_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "ref_agrmnt_doc", force: :cascade do |t|
    t.string "agrmnt_doc_code", limit: 25
    t.string "agrmnt_doc_name", limit: 50
    t.boolean "is_active", null: false
    t.bigint "ref_agrmnt_doc_id", null: false
    t.string "rpt_tmplt_code"
  end
 
  create_table "ref_app_attr", force: :cascade do |t|
    t.string "app_attr_code", limit: 25, null: false
    t.string "app_attr_dta_type", limit: 25, null: false
    t.integer "app_attr_length"
    t.string "app_attr_name", limit: 50, null: false
    t.string "app_attr_pattern", limit: 1000
    t.string "app_attr_type", limit: 25, null: false
    t.string "app_attr_value", limit: 2000, null: false
    t.boolean "is_active", null: false
    t.boolean "is_system", null: false
    t.string "mr_app_attr_group_code", limit: 25
    t.bigint "ref_app_attr_id", null: false
  end
 
  create_table "ref_app_src", force: :cascade do |t|
    t.string "app_src_code", limit: 25
    t.string "app_src_name", limit: 50
    t.string "descr", limit: 2000
    t.boolean "is_active", null: false
    t.datetime "max_apv_dt", null: false
    t.string "mr_app_src_type_code", limit: 50
    t.datetime "period_from", null: false
    t.datetime "period_to", null: false
    t.bigint "ref_app_src_id", null: false
  end
 
  create_table "ref_app_src_office_mbr", force: :cascade do |t|
    t.bigint "ref_app_src_id", null: false
    t.bigint "ref_app_src_office_mbr_id", null: false
    t.string "ref_office_code", limit: 25, null: false
  end
 
  create_table "ref_asset_doc_los", force: :cascade do |t|
    t.string "asset_doc_code", limit: 25, null: false
    t.string "asset_doc_name", limit: 50, null: false
    t.boolean "is_active", null: false
    t.bigint "ref_asset_doc_los_id", null: false
  end
 
  create_table "ref_attr_los", force: :cascade do |t|
    t.string "attr_code", limit: 25, null: false
    t.string "attr_group", limit: 25
    t.string "attr_input_type", limit: 25, null: false
    t.integer "attr_length"
    t.string "attr_name", limit: 50, null: false
    t.string "attr_type_code", limit: 25, null: false
    t.string "attr_value", limit: 500
    t.string "default_value", limit: 25
    t.boolean "is_active", null: false
    t.boolean "is_mandatory", null: false
    t.string "pattern_code", limit: 25
    t.string "pattern_value", limit: 2000
    t.bigint "ref_attr_los_id", null: false
  end
 
  create_table "ref_auditable_table", force: :cascade do |t|
    t.boolean "is_auditable", null: false
    t.bigint "ref_auditable_table_id", null: false
    t.integer "retention_time"
    t.string "table_name", limit: 100, null: false
  end
 
  create_table "ref_bank_los", force: :cascade do |t|
    t.string "bank_code", limit: 25, null: false
    t.string "bank_name", limit: 50, null: false
    t.boolean "is_active", null: false
    t.bigint "ref_bank_los_id", null: false
  end
 
  create_table "ref_behaviour", force: :cascade do |t|
    t.string "behaviour_code", limit: 25, null: false
    t.string "behaviour_name", limit: 50, null: false
    t.string "behaviour_type_code", limit: 25, null: false
    t.bigint "ref_behaviour_id", null: false
  end
 
  create_table "ref_cof_item", force: :cascade do |t|
    t.string "biz_tmplt_code", limit: 25, null: false
    t.string "descr", limit: 50, null: false
    t.boolean "is_active", null: false
    t.string "mr_cof_item_code", limit: 25, null: false
    t.string "mr_cof_item_type_code", limit: 25, null: false
    t.bigint "ref_cof_item_id", null: false
  end
 
  create_table "ref_coy_los", force: :cascade do |t|
    t.string "addr", limit: 500
    t.string "coy_code", limit: 25, null: false
    t.string "phn_1", limit: 25
    t.string "phn_area_1", limit: 10
    t.bigint "ref_coy_los_id", null: false
    t.string "short_name", limit: 50
  end
 
  create_table "ref_emp_los", force: :cascade do |t|
    t.string "email_1", limit: 100
    t.string "emp_name", limit: 50, null: false
    t.string "emp_no", limit: 25, null: false
    t.boolean "is_ext", null: false
    t.string "mobile_phn_no_1", limit: 25
    t.bigint "ref_emp_los_id", null: false
  end
 
  create_table "ref_fee", force: :cascade do |t|
    t.string "fee_code", limit: 25, null: false
    t.string "fee_name", limit: 50, null: false
    t.boolean "is_active", null: false
    t.bigint "ref_fee_id", null: false
  end
 
  create_table "ref_fee_los", force: :cascade do |t|
    t.string "fee_code", limit: 25, null: false
    t.string "fee_name", limit: 50, null: false
    t.boolean "is_active", null: false
    t.bigint "ref_fee_los_id", null: false
  end
 
  create_table "ref_fee_map_los", force: :cascade do |t|
    t.string "biz_tmplt_code", limit: 25, null: false
    t.string "fee_code", limit: 25, null: false
    t.string "fee_name", limit: 50, null: false
    t.bigint "ref_fee_map_los_id", null: false
  end
 
  create_table "ref_fin_map", force: :cascade do |t|
    t.string "lob_code", limit: 25, null: false
    t.bigint "ref_fin_map_id", null: false
    t.bigint "ref_prod_type_id", null: false
    t.bigint "ref_purpose_of_fin_id", null: false
    t.bigint "ref_way_of_fin_id", null: false
  end
 
  create_table "ref_fraud_item", force: :cascade do |t|
    t.string "fraud_item_code", limit: 25, null: false
    t.string "fraud_item_name", limit: 50, null: false
    t.boolean "is_active", null: false
    t.bigint "ref_fraud_item_id", null: false
  end
 
  create_table "ref_industry_type_los", force: :cascade do |t|
    t.string "economic_sector_code", limit: 25, null: false
    t.string "industry_type_code", limit: 25, null: false
    t.string "industry_type_name", limit: 50, null: false
    t.boolean "is_active", null: false
    t.bigint "ref_industry_type_los_id", null: false
  end
 
  create_table "ref_lob_los", force: :cascade do |t|
    t.string "biz_tmplt_code", limit: 25, null: false
    t.string "lob_code", limit: 25, null: false
    t.string "lob_name", limit: 50, null: false
    t.bigint "ref_lob_los_id", null: false
    t.string "reg_rpt_code", limit: 25
  end
 
  create_table "ref_master_los", force: :cascade do |t|
    t.string "default_value", limit: 25
    t.boolean "is_active", null: false
    t.boolean "is_default_value", null: false
    t.string "mapping_code", limit: 25
    t.string "ref_master_code", limit: 25, null: false
    t.bigint "ref_master_los_id", null: false
    t.string "ref_master_name", limit: 200, null: false
    t.string "ref_master_type_code", limit: 25, null: false
  end
 
  create_table "ref_mou_doc", force: :cascade do |t|
    t.string "mou_doc_code", limit: 25, null: false
    t.string "mou_doc_name", limit: 50, null: false
    t.bigint "ref_mou_doc_id", null: false
    t.string "rpt_tmplt_code", limit: 25
  end
 
  create_table "ref_office_area_los", force: :cascade do |t|
    t.string "area_code", limit: 25, null: false
    t.string "area_name", limit: 50, null: false
    t.boolean "is_active", null: false
    t.bigint "ref_office_area_los_id", null: false
  end
 
  create_table "ref_office_los", force: :cascade do |t|
    t.string "area_code", limit: 25
    t.boolean "is_active", null: false
    t.boolean "is_allow_app_created", null: false
    t.boolean "is_virtual_office", null: false
    t.string "mr_office_type_code", limit: 25
    t.string "office_code", limit: 25, null: false
    t.string "office_name", limit: 50, null: false
    t.string "parent_office_code", limit: 25
    t.bigint "ref_office_los_id", null: false
  end
 
  create_table "ref_pay_freq_los", force: :cascade do |t|
    t.boolean "is_active", null: false
    t.string "mr_pay_freq_type_code", limit: 25, null: false
    t.string "pay_freq_code", limit: 25, null: false
    t.integer "pay_freq_val"
    t.bigint "ref_pay_freq_los_id", null: false
  end
 
  create_table "ref_prod_compnt", force: :cascade do |t|
    t.string "behaviour_type", limit: 25, null: false
    t.string "biz_tmplt_code_list", limit: 1000, null: false
    t.boolean "is_active", null: false
    t.boolean "is_editable", null: false
    t.boolean "is_prod_ho", null: false
    t.boolean "is_prod_offering", null: false
    t.string "prod_compnt_add_crit", limit: 25
    t.string "prod_compnt_code", limit: 25, null: false
    t.string "prod_compnt_dta_src", limit: 50
    t.string "prod_compnt_dta_src_api", limit: 100
    t.string "prod_compnt_dta_value", limit: 50
    t.string "prod_compnt_grp_code", limit: 25, null: false
    t.string "prod_compnt_name", limit: 50, null: false
    t.string "prod_compnt_type", limit: 25, null: false
    t.string "prod_compnt_value", limit: 1000
    t.bigint "ref_prod_compnt_id", null: false
    t.integer "seq_no", null: false
    t.string "user_role", limit: 250
  end
 
  create_table "ref_prod_compnt_grp", force: :cascade do |t|
    t.string "prod_compnt_grp_code", limit: 25, null: false
    t.string "prod_compnt_grp_name", limit: 50, null: false
    t.bigint "ref_prod_compnt_grp_id", null: false
    t.integer "seq_no", null: false
  end
 
  create_table "ref_prod_type", force: :cascade do |t|
    t.boolean "is_active", null: false
    t.string "prod_type_code", limit: 25, null: false
    t.string "prod_type_name", limit: 50, null: false
    t.bigint "ref_prod_type_id", null: false
  end
 
  create_table "ref_profession_los", force: :cascade do |t|
    t.string "mr_cust_model_code", limit: 25, null: false
    t.string "profession_code", limit: 25, null: false
    t.string "profession_name", limit: 50, null: false
    t.bigint "ref_profession_los_id", null: false
    t.string "reg_rpt_code", limit: 25
  end
 
  create_table "ref_purpose_of_fin", force: :cascade do |t|
    t.boolean "is_active", null: false
    t.string "purpose_of_fin_code", limit: 25, null: false
    t.string "purpose_of_fin_name", limit: 50, null: false
    t.bigint "ref_purpose_of_fin_id", null: false
    t.string "reg_rpt_code", limit: 25, null: false
  end
 
  create_table "ref_reason_los", force: :cascade do |t|
    t.boolean "is_active", null: false
    t.string "ref_reason_code", limit: 25, null: false
    t.bigint "ref_reason_los_id", null: false
    t.string "ref_reason_name", limit: 50, null: false
    t.string "ref_reason_type_code", limit: 25, null: false
  end
 
  create_table "ref_slik_code", force: :cascade do |t|
    t.string "master_code", limit: 25
    t.string "ref_master_type_code", limit: 25
    t.bigint "ref_slik_code_id", null: false
    t.string "slik_code", limit: 25
  end
 
  create_table "ref_status_los", force: :cascade do |t|
    t.string "descr", limit: 50, null: false
    t.boolean "is_active", null: false
    t.string "module_code", limit: 25
    t.string "ref_status_code", limit: 25, null: false
    t.bigint "ref_status_los_id", null: false
    t.string "status_grp_code", limit: 25
    t.string "trx_type_code", limit: 25
  end
 
  create_table "ref_tc_los", force: :cascade do |t|
    t.boolean "is_active", null: false
    t.boolean "is_mandatory", null: false
    t.bigint "ref_tc_los_id", null: false
    t.string "tc_code", limit: 25, null: false
    t.string "tc_name", limit: 50, null: false
    t.string "trx_type_code", limit: 25
  end
 
  create_table "ref_trx_type_los", force: :cascade do |t|
    t.boolean "is_active", null: false
    t.bigint "ref_trx_los_id", null: false
    t.string "trx_type_code", limit: 25, null: false
    t.string "trx_type_name", limit: 50, null: false
  end
 
  create_table "ref_user_los", force: :cascade do |t|
    t.string "emp_no", limit: 25
    t.boolean "is_active", null: false
    t.bigint "ref_user_los_id", null: false
    t.string "username", limit: 25, null: false
  end
 
  create_table "ref_way_of_fin", force: :cascade do |t|
    t.boolean "is_active", null: false
    t.bigint "ref_way_of_fin_id", null: false
    t.string "reg_rpt_code", limit: 25, null: false
    t.string "way_of_fin_code", limit: 25, null: false
    t.string "way_of_fin_name", limit: 50, null: false
  end
 
  create_table "ref_webserver", force: :cascade do |t|
    t.string "app_pool_name", limit: 25, null: false
    t.string "ip_addr", limit: 15, null: false
    t.string "password", limit: 50, null: false
    t.bigint "ref_webserver_id", null: false
    t.string "server_name", limit: 50, null: false
    t.string "username", limit: 25, null: false
  end
 
  create_table "ref_yield_item", force: :cascade do |t|
    t.string "biz_tmplt_code", limit: 25
    t.string "desc", limit: 250
    t.boolean "is_active", null: false
    t.string "mr_yield_item_code", limit: 25
    t.string "mr_yield_item_type_code", limit: 25
    t.bigint "ref_yield_item_id", null: false
  end
 
  create_table "req_apv_agrmnt_pre_golive", force: :cascade do |t|
    t.bigint "agrmnt_id", null: false
    t.string "reason", limit: 25
    t.bigint "req_apv_agrmnt_pre_golive_id", null: false
    t.string "req_apv_stat", limit: 25
    t.string "req_by_emp_no", limit: 25
    t.datetime "req_dt"
  end
 
  create_table "requisition_decision_d", force: :cascade do |t|
    t.bigint "app_asset_id", null: false
    t.string "asset_no", limit: 50, null: false
    t.string "mr_decision_code", limit: 25, null: false
    t.string "notes", limit: 2000
    t.bigint "requisition_decision_d_id", null: false
    t.bigint "requisition_decision_h_id", null: false
  end
 
  create_table "requisition_decision_h", force: :cascade do |t|
    t.bigint "app_id", null: false
    t.datetime "requisition_decision_dt"
    t.bigint "requisition_decision_h_id", null: false
    t.string "requisition_decision_no", limit: 50, null: false
  end
 
  create_table "return_handling_d", force: :cascade do |t|
    t.string "mr_return_task_code", limit: 25, null: false
    t.bigint "return_handling_d_id", null: false
    t.string "return_handling_exec_notes", limit: 2000
    t.bigint "return_handling_h_id", null: false
    t.string "return_handling_notes", limit: 2000
    t.string "return_stat", limit: 25, null: false
  end
 
  create_table "return_handling_h", force: :cascade do |t|
    t.bigint "agrmnt_id"
    t.bigint "app_id", null: false
    t.string "return_by", limit: 50, null: false
    t.datetime "return_dt", null: false
    t.string "return_from_trx_type", limit: 25, null: false
    t.string "return_h_reason", limit: 25
    t.string "return_h_status", limit: 25
    t.bigint "return_handling_h_id", null: false
    t.string "return_notes", limit: 2000
  end
 
  create_table "rfa", force: :cascade do |t|
    t.string "apv_category", limit: 25, null: false
    t.string "apv_scheme_code", limit: 25, null: false
    t.string "apv_stat", limit: 25, null: false
    t.decimal "apv_value", precision: 19, scale: 4, null: false
    t.string "final_approve_by", limit: 25
    t.datetime "final_apv_dt"
    t.string "notes", limit: 2000, null: false
    t.string "reason_code", limit: 25, null: false
    t.datetime "req_dt", null: false
    t.string "request_by", limit: 25, null: false
    t.bigint "rfa_id", null: false
    t.bigint "rfa_no"
    t.string "trx_no", limit: 50, null: false
  end
 
  create_table "ro_potential", force: :cascade do |t|
    t.string "agrmnt_no", limit: 50, null: false
    t.string "crt_office_code", limit: 25
    t.string "cust_name", limit: 250, null: false
    t.string "cust_no", limit: 50, null: false
    t.bigint "generate_ro_potential_trx_id", null: false
    t.boolean "is_cust_will_ro"
    t.string "lob_code", limit: 25
    t.datetime "maturity_dt"
    t.string "notes"
    t.string "ori_office_code", limit: 25
    t.datetime "promise_to_loan_dt"
    t.string "reason_code", limit: 25
    t.bigint "ro_potential_id", null: false
    t.string "ro_potential_last_step", limit: 50, null: false
    t.string "ro_potential_no", limit: 50, null: false
    t.string "ro_potential_stat", limit: 50, null: false
  end
 
  create_table "sales_opl", force: :cascade do |t|
    t.datetime "agrmnt_dt", null: false
    t.bigint "agrmnt_id", null: false
    t.string "agrmnt_no", limit: 50, null: false
    t.bigint "app_asset_id", null: false
    t.bigint "app_id", null: false
    t.string "crd_admin_no", limit: 25
    t.string "curr_code", limit: 25, null: false
    t.string "cust_no", limit: 50, null: false
    t.datetime "effective_dt", null: false
    t.integer "grace_period_lc"
    t.string "lc_calc_method", limit: 25, null: false
    t.decimal "lc_ins_rate_prml", precision: 9, scale: 4, null: false
    t.decimal "lc_rent_rate_prml", precision: 9, scale: 4, null: false
    t.string "lob_code", limit: 25, null: false
    t.decimal "margin_prcnt", precision: 9, scale: 4, null: false
    t.datetime "maturity_dt", null: false
    t.string "mr_app_source_code", limit: 25, null: false
    t.string "mr_first_rent_type_code", limit: 25, null: false
    t.string "notes", limit: 2000
    t.integer "num_of_rental_period", null: false
    t.string "office_code", limit: 25, null: false
    t.string "pay_freq_code", limit: 25, null: false
    t.datetime "pre_go_live_dt", null: false
    t.string "prod_offering_code", limit: 25, null: false
    t.string "prod_offering_version", limit: 25, null: false
    t.string "prod_type_code", limit: 25, null: false
    t.string "ref_wop_code", limit: 25, null: false
    t.decimal "rent_per_period_amt", precision: 19, scale: 4, null: false
    t.integer "rental_period", null: false
    t.datetime "sales_dt", null: false
    t.string "sales_officer_no", limit: 25
    t.bigint "sales_opl_id", null: false
    t.string "spouse_no", limit: 50
    t.string "surveyor_no", limit: 25
    t.decimal "total_asset_price_amt", precision: 19, scale: 4, null: false
    t.decimal "total_cof_interest_amt", precision: 19, scale: 4, null: false
    t.decimal "total_cost", precision: 19, scale: 4, null: false
    t.decimal "total_fee_amt", precision: 19, scale: 4, null: false
    t.decimal "total_fee_capitalized_amt", precision: 19, scale: 4, null: false
    t.decimal "total_ins_expense_amt", precision: 19, scale: 4, null: false
    t.decimal "total_maint_expense_amt", precision: 19, scale: 4, null: false
    t.decimal "total_margin_amt", precision: 19, scale: 4, null: false
    t.decimal "total_oth_expense_amt", precision: 19, scale: 4, null: false
    t.decimal "total_paid_in_adv_amt", precision: 19, scale: 4, null: false
    t.decimal "total_rent_amt", precision: 19, scale: 4, null: false
    t.decimal "total_residual_value_amt", precision: 19, scale: 4, null: false
    t.decimal "total_sec_deposit_amt", precision: 19, scale: 4, null: false
  end
 
  create_table "stg_agrmnt_potential_ro", force: :cascade do |t|
    t.bigint "agrmnt_id", null: false
    t.string "agrmnt_no", limit: 50, null: false
    t.string "app_no", limit: 50, null: false
    t.string "crt_office_code", limit: 50, null: false
    t.string "cust_name", limit: 100, null: false
    t.string "cust_no", limit: 50, null: false
    t.datetime "effective_dt"
    t.datetime "go_live_dt"
    t.string "lob_code", limit: 50, null: false
    t.datetime "maturity_dt"
    t.integer "max_tenor"
    t.string "ori_office_code", limit: 50, null: false
    t.decimal "os_ar_agrmnt_master_amt", precision: 19, scale: 4
    t.decimal "os_ar_mpf_dt_amt", precision: 19, scale: 4
    t.bigint "stg_agrmnt_potential_ro_id", null: false
    t.integer "total_agrmnt_mpf_dt"
    t.decimal "total_asset_price", precision: 19, scale: 4
  end
 
  create_table "stg_potential_ro", force: :cascade do |t|
    t.datetime "agrmnt_dt"
    t.bigint "agrmnt_id", null: false
    t.string "agrmnt_no", limit: 50, null: false
    t.string "crt_office_code", limit: 50, null: false
    t.string "cust_name", limit: 100, null: false
    t.string "cust_no", limit: 50, null: false
    t.string "lob_code", limit: 50, null: false
    t.datetime "maturity_dt"
    t.string "ori_office_code", limit: 50, null: false
    t.bigint "stg_potential_ro_id", null: false
  end
 
  create_table "subsidy_map", force: :cascade do |t|
    t.string "biz_template_code", limit: 50
    t.string "mr_subd_alloc_code", limit: 25, null: false
    t.string "mr_subd_from_type_code", limit: 25, null: false
    t.string "mr_subd_source_code", limit: 25, null: false
    t.string "ref_subsidy_value_type", limit: 25
    t.bigint "subsidy_map_id", null: false
  end
 
  create_table "sys_ctrl_coy", force: :cascade do |t|
    t.bigint "sys_ctrl_coy_id", null: false
    t.string "sys_key", limit: 25, null: false
    t.string "sys_value", limit: 50, null: false
  end
 
  create_table "task_reassignment_trx", force: :cascade do |t|
    t.datetime "apv_dt"
    t.string "current_user", limit: 50
    t.string "office_code", limit: 25
    t.string "old_current_user", limit: 100
    t.string "task_reassignment_stat", limit: 50
    t.bigint "task_reassignment_trx_id", null: false
    t.string "task_reassignment_trx_no", limit: 100, null: false
    t.string "wf_activity_code", limit: 100, null: false
    t.string "wf_activity_name", limit: 200
    t.string "wf_code", limit: 25
    t.string "wf_name", limit: 100
    t.string "wf_ref_no", limit: 100, null: false
  end
 
  create_table "third_party_dukcapil_rslt", force: :cascade do |t|
    t.string "diff_item", limit: 100, null: false
    t.string "result", limit: 100, null: false
    t.string "rslt_code", limit: 25, null: false
    t.bigint "third_party_dukcapil_rslt_id", null: false
    t.bigint "third_party_rslt_h_id", null: false
  end
 
  create_table "third_party_pefindo_rslt", force: :cascade do |t|
    t.string "color", limit: 25
    t.string "grade", limit: 25, null: false
    t.decimal "prob_of_def", precision: 9, scale: 4, null: false
    t.string "risk", limit: 25, null: false
    t.bigint "score", null: false
    t.bigint "third_party_pefindo_rslt_id", null: false
    t.bigint "third_party_rslt_h_id", null: false
    t.string "trend", limit: 25, null: false
  end
 
  create_table "third_party_profind_rslt", force: :cascade do |t|
    t.boolean "is_e_contact_verfied", null: false
    t.boolean "is_home_verified", null: false
    t.boolean "is_office_verified", null: false
    t.boolean "is_phone_verified", null: false
    t.bigint "third_party_profind_rslt_id", null: false
    t.bigint "third_party_rslt_h_id", null: false
    t.string "verified_name", limit: 250, null: false
    t.string "verified_office", limit: 250, null: false
  end
 
  create_table "third_party_rapindo_rslt", force: :cascade do |t|
    t.string "active_in", limit: 25, null: false
    t.datetime "active_since", null: false
    t.string "chassis_no", limit: 25, null: false
    t.boolean "is_active", null: false
    t.boolean "is_exists", null: false
    t.bigint "third_party_rapindo_rslt_id", null: false
    t.bigint "third_party_rslt_h_id", null: false
  end
 
  create_table "third_party_rslt_h", force: :cascade do |t|
    t.string "cust_name", limit: 250, null: false
    t.string "id_no", limit: 25, null: false
    t.string "id_type", limit: 50, null: false
    t.string "job_id", limit: 50, null: false
    t.datetime "req_dt", null: false
    t.string "req_json", null: false
    t.datetime "result_dt"
    t.string "svc_type_code", limit: 25, null: false
    t.bigint "third_party_rslt_h_id", null: false
    t.string "trx_no", limit: 25, null: false
    t.string "trx_type_code", limit: 25, null: false
  end
 
  create_table "third_party_slik_rslt", force: :cascade do |t|
    t.bigint "debtor_count", null: false
    t.bigint "doubtful_count", null: false
    t.bigint "non_performing_count", null: false
    t.bigint "performing_count", null: false
    t.bigint "special_mention_count", null: false
    t.bigint "sub_standard_count", null: false
    t.bigint "third_party_rslt_h_id", null: false
    t.bigint "third_party_slik_rslt_id", null: false
  end
 
  create_table "upload_asset_dta_dlv_order", force: :cascade do |t|
    t.string "asset_category_code", limit: 25
    t.string "asset_code", limit: 25
    t.string "asset_type_code", limit: 25
    t.string "error_message", limit: 2000
    t.string "mr_upload_stat_code", limit: 25, null: false
    t.string "serial_no_1", limit: 50
    t.string "serial_no_2", limit: 50
    t.string "serial_no_3", limit: 50
    t.string "serial_no_4", limit: 50
    t.string "serial_no_5", limit: 50
    t.datetime "temp_regis_lett_dt"
    t.string "temp_regis_lett_no", limit: 100
    t.bigint "upload_asset_dta_dlv_order_id", null: false
    t.string "upload_monitoring_h_no", limit: 50, null: false
  end
 
  create_table "upload_lead", force: :cascade do |t|
    t.datetime "birth_dt"
    t.string "birth_place", limit: 50
    t.string "crt_office_code", limit: 25, null: false
    t.string "cust_name", limit: 250, null: false
    t.string "cust_no", limit: 25
    t.string "error_message", limit: 2000
    t.string "id_no", limit: 25, null: false
    t.string "lob_code", limit: 25, null: false
    t.string "mobile_phn_no_1", limit: 25
    t.string "mr_cust_model_code", limit: 25, null: false
    t.string "mr_gender_code", limit: 25
    t.string "mr_id_type_code", limit: 25, null: false
    t.string "ori_office_code", limit: 25, null: false
    t.string "tax_id_no", limit: 25
    t.string "temp_lead_no", limit: 50
    t.bigint "upload_lead_id", null: false
    t.string "upload_monitoring_no", limit: 50, null: false
    t.string "upload_status", limit: 25
  end
 
  create_table "vendor_addr_los", force: :cascade do |t|
    t.string "addr", limit: 500
    t.string "area_code_1", limit: 50
    t.string "area_code_2", limit: 50
    t.string "area_code_3", limit: 50
    t.string "area_code_4", limit: 50
    t.string "city", limit: 50
    t.string "mr_addr_type_code", limit: 25, null: false
    t.string "province", limit: 50
    t.string "sub_zipcode", limit: 25
    t.bigint "vendor_addr_los_id", null: false
    t.string "vendor_code", limit: 25
    t.string "vendor_emp_no", limit: 25
    t.string "vendor_grp_code", limit: 25
    t.string "zipcode", limit: 25
  end
 
  create_table "vendor_attr_los", force: :cascade do |t|
    t.boolean "is_active", null: false
    t.string "mr_vendor_category_code", limit: 25
    t.string "vendor_attr_code", limit: 25
    t.bigint "vendor_attr_los_id", null: false
    t.string "vendor_attr_name", limit: 500
    t.string "vendor_attr_pattern", limit: 500
    t.string "vendor_attr_type", limit: 50
    t.string "vendor_attr_type_value", limit: 2000
  end
 
  create_table "vendor_bank_acc_los", force: :cascade do |t|
    t.string "bank_account_name", limit: 250, null: false
    t.string "bank_account_no", limit: 250, null: false
    t.string "bank_branch", limit: 250
    t.string "bank_code", limit: 25
    t.boolean "is_default", null: false
    t.bigint "vendor_bank_acc_los_id", null: false
    t.string "vendor_code", limit: 25
    t.string "vendor_emp_no", limit: 25
  end
 
  create_table "vendor_emp_los", force: :cascade do |t|
    t.boolean "is_active", null: false
    t.string "mr_vendor_emp_position_code", limit: 25
    t.string "supervisor_emp_no", limit: 25
    t.string "vendor_code", limit: 25
    t.bigint "vendor_emp_los_id", null: false
    t.string "vendor_emp_name", limit: 250
    t.string "vendor_emp_no", limit: 25
  end
 
  create_table "vendor_los", force: :cascade do |t|
    t.string "mr_vendor_category_code", limit: 25, null: false
    t.string "parent_vendor_code", limit: 25
    t.string "vendor_code", limit: 25, null: false
    t.bigint "vendor_los_id", null: false
    t.string "vendor_name", limit: 50, null: false
  end
 
  create_table "wf_main_inst", force: :cascade do |t|
    t.string "sub_wf_code", limit: 50, null: false
    t.string "trx_no", limit: 50, null: false
    t.bigint "wf_main_inst_id", null: false
    t.bigint "wf_task_list_id", null: false
  end
 
  create_table "wf_sub_inst", force: :cascade do |t|
    t.string "office_code", limit: 25, null: false
    t.string "sub_trx_no", limit: 50, null: false
    t.bigint "wf_main_inst_id", null: false
    t.bigint "wf_sub_inst_id", null: false
    t.string "wf_sub_stat", limit: 25, null: false
  end
 
  add_foreign_key "aging_app", "agrmnt", column: "agrmnt_id", name: "FK_AGING_APP_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "aging_app", "app", column: "app_id", name: "FK_AGING_APP_APP_ID_APP_APP_ID"
  add_foreign_key "aging_app", "lead", column: "lead_id", name: "FK_AGING_APP_LEAD_ID_LEAD_LEAD_ID"
  add_foreign_key "aging_app", "mou_cust", column: "mou_cust_id", name: "FK_AGING_APP_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "aging_lead", "lead", column: "lead_id", name: "FK_AGING_LEAD_LEAD_ID_LEAD_LEAD_ID"
  add_foreign_key "aging_mou", "mou_cust", column: "mou_cust_id", name: "FK_AGING_MOU_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "agrmnt", "app", column: "app_id", name: "FK_AGRMNT_APP_ID_APP_APP_ID"
  add_foreign_key "agrmnt", "lead", column: "lead_id", name: "FK_AGRMNT_LEAD_ID_LEAD_LEAD_ID"
  add_foreign_key "agrmnt", "mou_cust", column: "mou_cust_id", name: "FK_AGRMNT_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "agrmnt_commission_d", "agrmnt_commission_h", column: "agrmnt_commission_h_id", name: "FK_AGRMNT_COMMISSION_D_AGRMNT_COMMISSION_H_ID_AGRMNT_COMMISSION_H_AGRMNT_COMMISSION_H_ID"
  add_foreign_key "agrmnt_commission_h", "agrmnt", column: "agrmnt_id", name: "FK_AGRMNT_COMMISSION_H_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "agrmnt_dlr_fncng", "app_dlr_fncng", column: "app_dlr_fncng_id", name: "FK_AGRMNT_DLR_FNCNG_APP_DLR_FNCNG_ID_APP_DLR_FNCNG_APP_DLR_FNCNG_ID"
  add_foreign_key "agrmnt_doc", "agrmnt", column: "agrmnt_id", name: "FK_AGRMNT_DOC_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "agrmnt_doc_print", "agrmnt_doc", column: "agrmnt_doc_id", name: "FK_AGRMNT_DOC_PRINT_AGRMNT_DOC_ID_AGRMNT_DOC_AGRMNT_DOC_ID"
  add_foreign_key "agrmnt_doc_print", "agrmnt", column: "agrmnt_id", name: "FK_AGRMNT_DOC_PRINT_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "agrmnt_fctr", "app_fctr", column: "app_fctr_id", name: "FK_AGRMNT_FCTR_APP_FCTR_ID_APP_FCTR_APP_FCTR_ID"
  add_foreign_key "agrmnt_fee", "agrmnt", column: "agrmnt_id", name: "FK_AGRMNT_FEE_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "agrmnt_fin_data", "agrmnt", column: "agrmnt_id", name: "FK_AGRMNT_FIN_DATA_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "agrmnt_inst_schdl", "agrmnt", column: "agrmnt_id", name: "FK_AGRMNT_INST_SCHDL_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "agrmnt_life_ins_d", "agrmnt_life_ins_h", column: "agrmnt_life_ins_h_id", name: "FK_AGRMNT_LIFE_INS_D_AGRMNT_LIFE_INS_H_ID_AGRMNT_LIFE_INS_H_AGRMNT_LIFE_INS_H_ID"
  add_foreign_key "agrmnt_life_ins_h", "agrmnt", column: "agrmnt_id", name: "FK_AGRMNT_LIFE_INS_H_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "agrmnt_other_info", "agrmnt", column: "agrmnt_id", name: "FK_AGRMNT_OTHER_INFO_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "agrmnt_reserved_fund", "agrmnt", column: "agrmnt_id", name: "FK_AGRMNT_RESERVED_FUND_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "agrmnt_signer", "agrmnt", column: "agrmnt_id", name: "FK_AGRMNT_SIGNER_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "agrmnt_signer", "app_cust_company_mgmnt_shrholder", column: "app_cust_company_mgmnt_shrholder_1_id", name: "FK_AGRMNT_SIGNER_APP_CUST_COMPANY_MGMNT_SHRHOLDER_1_ID_APP_CUST_COMPANY_MGMNT_SHRHOLDER_APP_CUST_COMPANY_MGMNT_SHRHOLDER_ID"
  add_foreign_key "agrmnt_signer", "app_cust_company_mgmnt_shrholder", column: "app_cust_company_mgmnt_shrholder_2_id", name: "FK_AGRMNT_SIGNER_APP_CUST_COMPANY_MGMNT_SHRHOLDER_2_ID_APP_CUST_COMPANY_MGMNT_SHRHOLDER_APP_CUST_COMPANY_MGMNT_SHRHOLDER_ID"
  add_foreign_key "agrmnt_signer", "app_cust_company_mgmnt_shrholder", column: "app_cust_company_mgmnt_shrholder_3_id", name: "FK_AGRMNT_SIGNER_APP_CUST_COMPANY_MGMNT_SHRHOLDER_3_ID_APP_CUST_COMPANY_MGMNT_SHRHOLDER_APP_CUST_COMPANY_MGMNT_SHRHOLDER_ID"
  add_foreign_key "agrmnt_signer", "app_cust_personal", column: "app_cust_personal_id", name: "FK_AGRMNT_SIGNER_APP_CUST_PERSONAL_ID_APP_CUST_PERSONAL_APP_CUST_PERSONAL_ID"
  add_foreign_key "agrmnt_signer", "app_cust_personal", column: "app_cust_spouse_id", name: "FK_AGRMNT_SIGNER_APP_CUST_SPOUSE_ID_APP_CUST_PERSONAL_APP_CUST_PERSONAL_ID"
  add_foreign_key "agrmnt_subsidy", "agrmnt", column: "agrmnt_id", name: "FK_AGRMNT_SUBSIDY_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "agrmnt_tc", "agrmnt", column: "agrmnt_id", name: "FK_AGRMNT_TC_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "app", "lead", column: "lead_id", name: "FK_APP_LEAD_ID_LEAD_LEAD_ID"
  add_foreign_key "app", "mou_cust", column: "mou_cust_id", name: "FK_APP_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "app", "app", column: "previous_app_id", name: "FK_APP_PREVIOUS_APP_ID_APP_APP_ID"
  add_foreign_key "app_agrmnt_cancel", "agrmnt", column: "agrmnt_id", name: "FK_APP_AGRMNT_CANCEL_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "app_agrmnt_cancel", "app", column: "app_id", name: "FK_APP_AGRMNT_CANCEL_APP_ID_APP_APP_ID"
  add_foreign_key "app_asset", "agrmnt", column: "agrmnt_id", name: "FK_APP_ASSET_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "app_asset", "app", column: "app_id", name: "FK_APP_ASSET_APP_ID_APP_APP_ID"
  add_foreign_key "app_asset_accessory", "app_asset", column: "app_asset_id", name: "FK_APP_ASSET_ACCESSORY_APP_ASSET_ID_APP_ASSET_APP_ASSET_ID"
  add_foreign_key "app_asset_attr", "app_asset", column: "app_asset_id", name: "FK_APP_ASSET_ATTR_APP_ASSET_ID_APP_ASSET_APP_ASSET_ID"
  add_foreign_key "app_asset_cancel_opl", "app_asset", column: "app_asset_id", name: "FK_APP_ASSET_CANCEL_OPL_APP_ASSET_ID_APP_ASSET_APP_ASSET_ID"
  add_foreign_key "app_asset_fee_opl", "app_asset", column: "app_asset_id", name: "FK_APP_ASSET_FEE_OPL_APP_ASSET_ID_APP_ASSET_APP_ASSET_ID"
  add_foreign_key "app_asset_ins_add_cvg_opl", "app_asset_ins_main_cvg_opl", column: "app_asset_ins_main_cvg_opl_id", name: "FK_APP_ASSET_INS_ADD_CVG_OPL_APP_ASSET_INS_MAIN_CVG_OPL_ID_APP_ASSET_INS_MAIN_CVG_OPL_APP_ASSET_INS_MAIN_CVG_OPL_ID"
  add_foreign_key "app_asset_ins_fee_opl", "app_asset_ins_opl", column: "app_asset_ins_opl_id", name: "FK_APP_ASSET_INS_FEE_OPL_APP_ASSET_INS_OPL_ID_APP_ASSET_INS_OPL_APP_ASSET_INS_OPL_ID"
  add_foreign_key "app_asset_ins_main_cvg_opl", "app_asset_ins_opl", column: "app_asset_ins_opl_id", name: "FK_APP_ASSET_INS_MAIN_CVG_OPL_APP_ASSET_INS_OPL_ID_APP_ASSET_INS_OPL_APP_ASSET_INS_OPL_ID"
  add_foreign_key "app_asset_ins_opl", "app_asset", column: "app_asset_id", name: "FK_APP_ASSET_INS_OPL_APP_ASSET_ID_APP_ASSET_APP_ASSET_ID"
  add_foreign_key "app_asset_maint_d", "app_asset_maint_h", column: "app_asset_maint_h_id", name: "FK_APP_ASSET_MAINT_D_APP_ASSET_MAINT_H_ID_APP_ASSET_MAINT_H_APP_ASSET_MAINT_H_ID"
  add_foreign_key "app_asset_maint_h", "app_asset", column: "app_asset_id", name: "FK_APP_ASSET_MAINT_H_APP_ASSET_ID_APP_ASSET_APP_ASSET_ID"
  add_foreign_key "app_asset_opl", "app_asset", column: "app_asset_id", name: "FK_APP_ASSET_OPL_APP_ASSET_ID_APP_ASSET_APP_ASSET_ID"
  add_foreign_key "app_asset_oth_expense_opl", "app_asset", column: "app_asset_id", name: "FK_APP_ASSET_OTH_EXPENSE_OPL_APP_ASSET_ID_APP_ASSET_APP_ASSET_ID"
  add_foreign_key "app_asset_rent_data_opl", "app_asset", column: "app_asset_id", name: "FK_APP_ASSET_RENT_DATA_OPL_APP_ASSET_ID_APP_ASSET_APP_ASSET_ID"
  add_foreign_key "app_asset_rent_schdl_opl", "app_asset", column: "app_asset_id", name: "FK_APP_ASSET_RENT_SCHDL_OPL_APP_ASSET_ID_APP_ASSET_APP_ASSET_ID"
  add_foreign_key "app_asset_suppl_emp", "app_asset", column: "app_asset_id", name: "FK_APP_ASSET_SUPPL_EMP_APP_ASSET_ID_APP_ASSET_APP_ASSET_ID"
  add_foreign_key "app_attr_content", "app", column: "app_id", name: "FK_APP_ATTR_CONTENT_APP_ID_APP_APP_ID"
  add_foreign_key "app_cashflow", "app_asset", column: "app_asset_id", name: "FK_APP_CASHFLOW_APP_ASSET_ID_APP_ASSET_APP_ASSET_ID"
  add_foreign_key "app_cashflow", "app", column: "app_id", name: "FK_APP_CASHFLOW_APP_ID_APP_APP_ID"
  add_foreign_key "app_collateral", "agrmnt", column: "agrmnt_id", name: "FK_APP_COLLATERAL_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "app_collateral", "app_asset", column: "app_asset_id", name: "FK_APP_COLLATERAL_APP_ASSET_ID_APP_ASSET_APP_ASSET_ID"
  add_foreign_key "app_collateral", "app", column: "app_id", name: "FK_APP_COLLATERAL_APP_ID_APP_APP_ID"
  add_foreign_key "app_collateral_accessory", "app_collateral", column: "app_collateral_id", name: "FK_APP_COLLATERAL_ACCESSORY_APP_COLLATERAL_ID_APP_COLLATERAL_APP_COLLATERAL_ID"
  add_foreign_key "app_collateral_allocation", "agrmnt", column: "agrmnt_id", name: "FK_APP_COLLATERAL_ALLOCATION_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "app_collateral_allocation", "app_collateral", column: "app_collateral_id", name: "FK_APP_COLLATERAL_ALLOCATION_APP_COLLATERAL_ID_APP_COLLATERAL_APP_COLLATERAL_ID"
  add_foreign_key "app_collateral_attr", "app_collateral", column: "app_collateral_id", name: "FK_APP_COLLATERAL_ATTR_APP_COLLATERAL_ID_APP_COLLATERAL_APP_COLLATERAL_ID"
  add_foreign_key "app_collateral_doc", "app_collateral", column: "app_collateral_id", name: "FK_APP_COLLATERAL_DOC_APP_COLLATERAL_ID_APP_COLLATERAL_APP_COLLATERAL_ID"
  add_foreign_key "app_collateral_registration", "app_collateral", column: "app_collateral_id", name: "FK_APP_COLLATERAL_REGISTRATION_APP_COLLATERAL_ID_APP_COLLATERAL_APP_COLLATERAL_ID"
  add_foreign_key "app_comm_compnt", "app", column: "app_id", name: "FK_APP_COMM_COMPNT_APP_ID_APP_APP_ID"
  add_foreign_key "app_commission_d", "app_commission_h", column: "app_commission_h_id", name: "FK_APP_COMMISSION_D_APP_COMMISSION_H_ID_APP_COMMISSION_H_APP_COMMISSION_H_ID"
  add_foreign_key "app_commission_h", "app", column: "app_id", name: "FK_APP_COMMISSION_H_APP_ID_APP_APP_ID"
  add_foreign_key "app_crd_ins", "app", column: "app_id", name: "FK_APP_CRD_INS_APP_ID_APP_APP_ID"
  add_foreign_key "app_crd_invstg_d", "app_crd_invstg_h", column: "app_crd_invstg_h_id", name: "FK_APP_CRD_INVSTG_D_APP_CRD_INVSTG_H_ID_APP_CRD_INVSTG_H_APP_CRD_INVSTG_H_ID"
  add_foreign_key "app_crd_invstg_h", "app", column: "app_id", name: "FK_APP_CRD_INVSTG_H_APP_ID_APP_APP_ID"
  add_foreign_key "app_crd_rvw_d", "app_crd_rvw_h", column: "app_crd_rvw_h_id", name: "FK_APP_CRD_RVW_D_APP_CRD_RVW_H_ID_APP_CRD_RVW_H_APP_CRD_RVW_H_ID"
  add_foreign_key "app_crd_rvw_h", "app", column: "app_id", name: "FK_APP_CRD_RVW_H_APP_ID_APP_APP_ID"
  add_foreign_key "app_cross", "app", column: "app_id", name: "FK_APP_CROSS_APP_ID_APP_APP_ID"
  add_foreign_key "app_cust", "app", column: "app_id", name: "FK_APP_CUST_APP_ID_APP_APP_ID"
  add_foreign_key "app_cust_addr", "app_cust", column: "app_cust_id", name: "FK_APP_CUST_ADDR_APP_CUST_ID_APP_CUST_APP_CUST_ID"
  add_foreign_key "app_cust_addr_attr_content", "app_cust_addr", column: "app_cust_addr_id", name: "FK_APP_CUST_ADDR_ATTR_CONTENT_APP_CUST_ADDR_ID_APP_CUST_ADDR_APP_CUST_ADDR_ID"
  add_foreign_key "app_cust_asset", "app_cust", column: "app_cust_id", name: "FK_APP_CUST_ASSET_APP_CUST_ID_APP_CUST_APP_CUST_ID"
  add_foreign_key "app_cust_attr_content", "app_cust", column: "app_cust_id", name: "FK_APP_CUST_ATTR_CONTENT_APP_CUST_ID_APP_CUST_APP_CUST_ID"
  add_foreign_key "app_cust_bank_acc", "app_cust", column: "app_cust_id", name: "FK_APP_CUST_BANK_ACC_APP_CUST_ID_APP_CUST_APP_CUST_ID"
  add_foreign_key "app_cust_bank_facility", "app_cust", column: "app_cust_id", name: "FK_APP_CUST_BANK_FACILITY_APP_CUST_ID_APP_CUST_APP_CUST_ID"
  add_foreign_key "app_cust_bank_stmnt", "app_cust_bank_acc", column: "app_cust_bank_acc_id", name: "FK_APP_CUST_BANK_STMNT_APP_CUST_BANK_ACC_ID_APP_CUST_BANK_ACC_APP_CUST_BANK_ACC_ID"
  add_foreign_key "app_cust_company", "app_cust", column: "app_cust_id", name: "FK_APP_CUST_COMPANY_APP_CUST_ID_APP_CUST_APP_CUST_ID"
  add_foreign_key "app_cust_company_contact_person", "app_cust_company", column: "app_cust_company_id", name: "FK_APP_CUST_COMPANY_CONTACT_PERSON_APP_CUST_COMPANY_ID_APP_CUST_COMPANY_APP_CUST_COMPANY_ID"
  add_foreign_key "app_cust_company_fin_data", "app_cust", column: "app_cust_id", name: "FK_APP_CUST_COMPANY_FIN_DATA_APP_CUST_ID_APP_CUST_APP_CUST_ID"
  add_foreign_key "app_cust_company_legal_doc", "app_cust_company", column: "app_cust_company_id", name: "FK_APP_CUST_COMPANY_LEGAL_DOC_APP_CUST_COMPANY_ID_APP_CUST_COMPANY_APP_CUST_COMPANY_ID"
  add_foreign_key "app_cust_company_mgmnt_shrholder", "app_cust_company", column: "app_cust_company_id", name: "FK_APP_CUST_COMPANY_MGMNT_SHRHOLDER_APP_CUST_COMPANY_ID_APP_CUST_COMPANY_APP_CUST_COMPANY_ID"
  add_foreign_key "app_cust_company_mgmnt_shrholder", "app_cust", column: "app_cust_id", name: "FK_APP_CUST_COMPANY_MGMNT_SHRHOLDER_APP_CUST_ID_APP_CUST_APP_CUST_ID"
  add_foreign_key "app_cust_emrgnc_cntct", "app_cust", column: "app_cust_id", name: "FK_APP_CUST_EMRGNC_CNTCT_APP_CUST_ID_APP_CUST_APP_CUST_ID"
  add_foreign_key "app_cust_existing_asset", "app_cust", column: "app_cust_id", name: "FK_APP_CUST_EXISTING_ASSET_APP_CUST_ID_APP_CUST_APP_CUST_ID"
  add_foreign_key "app_cust_fin_data_attr_content", "app_cust", column: "app_cust_id", name: "FK_APP_CUST_FIN_DATA_ATTR_CONTENT_APP_CUST_ID_APP_CUST_APP_CUST_ID"
  add_foreign_key "app_cust_grp", "app_cust", column: "app_cust_id", name: "FK_APP_CUST_GRP_APP_CUST_ID_APP_CUST_APP_CUST_ID"
  add_foreign_key "app_cust_highlight_comment", "app", column: "app_id", name: "FK_APP_CUST_HIGHLIGHT_COMMENT_APP_ID_APP_APP_ID"
  add_foreign_key "app_cust_other_info", "app_cust", column: "app_cust_id", name: "FK_APP_CUST_OTHER_INFO_APP_CUST_ID_APP_CUST_APP_CUST_ID"
  add_foreign_key "app_cust_personal", "app_cust", column: "app_cust_id", name: "FK_APP_CUST_PERSONAL_APP_CUST_ID_APP_CUST_APP_CUST_ID"
  add_foreign_key "app_cust_personal_fin_data", "app_cust_personal", column: "app_cust_personal_id", name: "FK_APP_CUST_PERSONAL_FIN_DATA_APP_CUST_PERSONAL_ID_APP_CUST_PERSONAL_APP_CUST_PERSONAL_ID"
  add_foreign_key "app_cust_personal_job_data", "app_cust_personal", column: "app_cust_personal_id", name: "FK_APP_CUST_PERSONAL_JOB_DATA_APP_CUST_PERSONAL_ID_APP_CUST_PERSONAL_APP_CUST_PERSONAL_ID"
  add_foreign_key "app_cust_project", "app_cust", column: "app_cust_id", name: "FK_APP_CUST_PROJECT_APP_CUST_ID_APP_CUST_APP_CUST_ID"
  add_foreign_key "app_dlr_fncng", "app", column: "app_id", name: "FK_APP_DLR_FNCNG_APP_ID_APP_APP_ID"
  add_foreign_key "app_dlr_fncng", "mou_cust_dlr_fncng", column: "mou_cust_dlr_fncng_id", name: "FK_APP_DLR_FNCNG_MOU_CUST_DLR_FNCNG_ID_MOU_CUST_DLR_FNCNG_MOU_CUST_DLR_FNCNG_ID"
  add_foreign_key "app_dup_check_cust", "app", column: "app_id", name: "FK_APP_DUP_CHECK_CUST_APP_ID_APP_APP_ID"
  add_foreign_key "app_fctr", "app", column: "app_id", name: "FK_APP_FCTR_APP_ID_APP_APP_ID"
  add_foreign_key "app_fctr", "mou_cust_fctr", column: "mou_fctr_id", name: "FK_APP_FCTR_MOU_FCTR_ID_MOU_CUST_FCTR_MOU_CUST_FCTR_ID"
  add_foreign_key "app_fee", "app", column: "app_id", name: "FK_APP_FEE_APP_ID_APP_APP_ID"
  add_foreign_key "app_fin_data", "app", column: "app_id", name: "FK_APP_FIN_DATA_APP_ID_APP_APP_ID"
  add_foreign_key "app_fixed", "app", column: "app_id", name: "FK_APP_FIXED_APP_ID_APP_APP_ID"
  add_foreign_key "app_fixed_fee", "app_fixed", column: "app_fixed_id", name: "FK_APP_FIXED_FEE_APP_FIXED_ID_APP_FIXED_APP_FIXED_ID"
  add_foreign_key "app_fixed_ins", "app_fixed", column: "app_fixed_id", name: "FK_APP_FIXED_INS_APP_FIXED_ID_APP_FIXED_APP_FIXED_ID"
  add_foreign_key "app_goverment_regulation", "app", column: "app_id", name: "FK_APP_GOVERMENT_REGULATION_APP_ID_APP_APP_ID"
  add_foreign_key "app_ins", "app", column: "app_id", name: "FK_APP_INS_APP_ID_APP_APP_ID"
  add_foreign_key "app_ins_add_cvg", "app_ins_main_cvg", column: "app_ins_main_cvg_id", name: "FK_APP_INS_ADD_CVG_APP_INS_MAIN_CVG_ID_APP_INS_MAIN_CVG_APP_INS_MAIN_CVG_ID"
  add_foreign_key "app_ins_main_cvg", "app_ins_obj", column: "app_ins_obj_id", name: "FK_APP_INS_MAIN_CVG_APP_INS_OBJ_ID_APP_INS_OBJ_APP_INS_OBJ_ID"
  add_foreign_key "app_ins_obj", "agrmnt", column: "agrmnt_id", name: "FK_APP_INS_OBJ_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "app_ins_obj", "app_asset", column: "app_asset_id", name: "FK_APP_INS_OBJ_APP_ASSET_ID_APP_ASSET_APP_ASSET_ID"
  add_foreign_key "app_ins_obj", "app_collateral", column: "app_collateral_id", name: "FK_APP_INS_OBJ_APP_COLLATERAL_ID_APP_COLLATERAL_APP_COLLATERAL_ID"
  add_foreign_key "app_ins_obj", "app", column: "app_id", name: "FK_APP_INS_OBJ_APP_ID_APP_APP_ID"
  add_foreign_key "app_inst_schdl", "app", column: "app_id", name: "FK_APP_INST_SCHDL_APP_ID_APP_APP_ID"
  add_foreign_key "app_inst_step_schm", "app", column: "app_id", name: "FK_APP_INST_STEP_SCHM_APP_ID_APP_APP_ID"
  add_foreign_key "app_invoice_dlr_fncng_d", "app_invoice_dlr_fncng_h", column: "app_invoice_dlr_fncng_h_id", name: "FK_APP_INVOICE_DLR_FNCNG_D_APP_INVOICE_DLR_FNCNG_H_ID_APP_INVOICE_DLR_FNCNG_H_APP_INVOICE_DLR_FNCNG_H_ID"
  add_foreign_key "app_invoice_dlr_fncng_h", "app_dlr_fncng", column: "app_dlr_fncng_id", name: "FK_APP_INVOICE_DLR_FNCNG_H_APP_DLR_FNCNG_ID_APP_DLR_FNCNG_APP_DLR_FNCNG_ID"
  add_foreign_key "app_invoice_fctr", "app_fctr", column: "app_fctr_id", name: "FK_APP_INVOICE_FCTR_APP_FCTR_ID_APP_FCTR_APP_FCTR_ID"
  add_foreign_key "app_life_ins_d", "app_life_ins_h", column: "app_life_ins_h_id", name: "FK_APP_LIFE_INS_D_APP_LIFE_INS_H_ID_APP_LIFE_INS_H_APP_LIFE_INS_H_ID"
  add_foreign_key "app_life_ins_h", "app", column: "app_id", name: "FK_APP_LIFE_INS_H_APP_ID_APP_APP_ID"
  add_foreign_key "app_loan_purpose", "app", column: "app_id", name: "FK_APP_LOAN_PURPOSE_APP_ID_APP_APP_ID"
  add_foreign_key "app_negative_check_cust", "app", column: "app_id", name: "FK_APP_NEGATIVE_CHECK_CUST_APP_ID_APP_APP_ID"
  add_foreign_key "app_negative_cust", "app", column: "app_id", name: "FK_APP_NEGATIVE_CUST_APP_ID_APP_APP_ID"
  add_foreign_key "app_other_info", "app", column: "app_id", name: "FK_APP_OTHER_INFO_APP_ID_APP_APP_ID"
  add_foreign_key "app_referantor", "app", column: "app_id", name: "FK_APP_REFERANTOR_APP_ID_APP_APP_ID"
  add_foreign_key "app_refund_compnt", "app", column: "app_id", name: "FK_APP_REFUND_COMPNT_APP_ID_APP_APP_ID"
  add_foreign_key "app_reserved_fund", "app", column: "app_id", name: "FK_APP_RESERVED_FUND_APP_ID_APP_APP_ID"
  add_foreign_key "app_rvw_rent_data_opl", "crd_rvw_asset", column: "crd_rvw_asset_id", name: "FK_APP_RVW_RENT_DATA_OPL_CRD_RVW_ASSET_ID_CRD_RVW_ASSET_CRD_RVW_ASSET_ID"
  add_foreign_key "app_score_grade", "app", column: "app_id", name: "FK_APP_SCORE_GRADE_APP_ID_APP_APP_ID"
  add_foreign_key "app_subsidy", "app", column: "app_id", name: "FK_APP_SUBSIDY_APP_ID_APP_APP_ID"
  add_foreign_key "app_tc", "app", column: "app_id", name: "FK_APP_TC_APP_ID_APP_APP_ID"
  add_foreign_key "app_tc_hist", "app_tc", column: "app_tc_id", name: "FK_APP_TC_HIST_APP_TC_ID_APP_TC_APP_TC_ID"
  add_foreign_key "asset_accessory_dlvry_opl", "asset_dlvry_opl", column: "asset_dlvry_opl_id", name: "FK_ASSET_ACCESSORY_DLVRY_OPL_ASSET_DLVRY_OPL_ID_ASSET_DLVRY_OPL_ASSET_DLVRY_OPL_ID"
  add_foreign_key "asset_allocation_opl", "app_asset", column: "app_asset_id", name: "FK_ASSET_ALLOCATION_OPL_APP_ASSET_ID_APP_ASSET_APP_ASSET_ID"
  add_foreign_key "asset_allocation_opl", "app", column: "app_id", name: "FK_ASSET_ALLOCATION_OPL_APP_ID_APP_APP_ID"
  add_foreign_key "asset_dlvry_opl", "app_asset", column: "app_asset_id", name: "FK_ASSET_DLVRY_OPL_APP_ASSET_ID_APP_ASSET_APP_ASSET_ID"
  add_foreign_key "change_mou_cust", "change_mou_trx", column: "change_mou_trx_id", name: "FK_CHANGE_MOU_CUST_CHANGE_MOU_TRX_ID_CHANGE_MOU_TRX_CHANGE_MOU_TRX_ID"
  add_foreign_key "change_mou_cust_asset", "change_mou_trx", column: "change_mou_trx_id", name: "FK_CHANGE_MOU_CUST_ASSET_CHANGE_MOU_TRX_ID_CHANGE_MOU_TRX_CHANGE_MOU_TRX_ID"
  add_foreign_key "change_mou_cust_clause", "change_mou_trx", column: "change_mou_trx_id", name: "FK_CHANGE_MOU_CUST_CLAUSE_CHANGE_MOU_TRX_ID_CHANGE_MOU_TRX_CHANGE_MOU_TRX_ID"
  add_foreign_key "change_mou_cust_collateral", "change_mou_cust", column: "change_mou_cust_id", name: "FK_CHANGE_MOU_CUST_COLLATERAL_CHANGE_MOU_CUST_ID_CHANGE_MOU_CUST_CHANGE_MOU_CUST_ID"
  add_foreign_key "change_mou_cust_collateral_attr", "change_mou_cust_collateral", column: "change_mou_cust_collateral_id", name: "FK_CHANGE_MOU_CUST_COLLATERAL_ATTR_CHANGE_MOU_CUST_COLLATERAL_ID_CHANGE_MOU_CUST_COLLATERAL_CHANGE_MOU_CUST_COLLATERAL_ID"
  add_foreign_key "change_mou_cust_collateral_doc", "change_mou_cust_collateral", column: "change_mou_cust_collateral_id", name: "FK_CHANGE_MOU_CUST_COLLATERAL_DOC_CHANGE_MOU_CUST_COLLATERAL_ID_CHANGE_MOU_CUST_COLLATERAL_CHANGE_MOU_CUST_COLLATERAL_ID"
  add_foreign_key "change_mou_cust_collateral_registration", "change_mou_cust_collateral", column: "change_mou_cust_collateral_id", name: "FK_CHANGE_MOU_CUST_COLLATERAL_REGISTRATION_CHANGE_MOU_CUST_COLLATERAL_ID_CHANGE_MOU_CUST_COLLATERAL_CHANGE_MOU_CUST_COL_2d67930e"
  add_foreign_key "change_mou_cust_dlr_fncg", "change_mou_trx", column: "change_mou_trx_id", name: "FK_CHANGE_MOU_CUST_DLR_FNCG_CHANGE_MOU_TRX_ID_CHANGE_MOU_TRX_CHANGE_MOU_TRX_ID"
  add_foreign_key "change_mou_cust_fctr", "change_mou_trx", column: "change_mou_trx_id", name: "FK_CHANGE_MOU_CUST_FCTR_CHANGE_MOU_TRX_ID_CHANGE_MOU_TRX_CHANGE_MOU_TRX_ID"
  add_foreign_key "change_mou_trx", "mou_cust", column: "mou_cust_id", name: "FK_CHANGE_MOU_TRX_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "crd_apv_result_ext", "agrmnt", column: "agrmnt_id", name: "FK_CRD_APV_RESULT_EXT_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "crd_apv_result_ext", "app", column: "app_id", name: "FK_CRD_APV_RESULT_EXT_APP_ID_APP_APP_ID"
  add_foreign_key "crd_ins", "agrmnt", column: "agrmnt_id", name: "FK_CRD_INS_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "crd_ins", "app", column: "app_id", name: "FK_CRD_INS_APP_ID_APP_APP_ID"
  add_foreign_key "crd_process_step", "agrmnt", column: "agrmnt_id", name: "FK_CRD_PROCESS_STEP_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "crd_process_step", "app", column: "app_id", name: "FK_CRD_PROCESS_STEP_APP_ID_APP_APP_ID"
  add_foreign_key "crd_rvw_alloc", "crd_rvw_cust_info", column: "crd_rvw_cust_info_id", name: "FK_CRD_RVW_ALLOC_CRD_RVW_CUST_INFO_ID_CRD_RVW_CUST_INFO_CRD_RVW_CUST_INFO_ID"
  add_foreign_key "crd_rvw_app", "crd_rvw_cust_info", column: "crd_rvw_cust_info_id", name: "FK_CRD_RVW_APP_CRD_RVW_CUST_INFO_ID_CRD_RVW_CUST_INFO_CRD_RVW_CUST_INFO_ID"
  add_foreign_key "crd_rvw_app_agr_hist", "crd_rvw_exposure_h", column: "crd_rvw_exposure_h_id", name: "FK_CRD_RVW_APP_AGR_HIST_CRD_RVW_EXPOSURE_H_ID_CRD_RVW_EXPOSURE_H_CRD_RVW_EXPOSURE_H_ID"
  add_foreign_key "crd_rvw_asset", "crd_rvw_cust_info", column: "crd_rvw_cust_info_id", name: "FK_CRD_RVW_ASSET_CRD_RVW_CUST_INFO_ID_CRD_RVW_CUST_INFO_CRD_RVW_CUST_INFO_ID"
  add_foreign_key "crd_rvw_cmo", "crd_rvw_cust_info", column: "crd_rvw_cust_info_id", name: "FK_CRD_RVW_CMO_CRD_RVW_CUST_INFO_ID_CRD_RVW_CUST_INFO_CRD_RVW_CUST_INFO_ID"
  add_foreign_key "crd_rvw_cmo_bucket", "crd_rvw_cmo", column: "crd_rvw_cmo_id", name: "FK_CRD_RVW_CMO_BUCKET_CRD_RVW_CMO_ID_CRD_RVW_CMO_CRD_RVW_CMO_ID"
  add_foreign_key "crd_rvw_collateral", "crd_rvw_cust_info", column: "crd_rvw_cust_info_id", name: "FK_CRD_RVW_COLLATERAL_CRD_RVW_CUST_INFO_ID_CRD_RVW_CUST_INFO_CRD_RVW_CUST_INFO_ID"
  add_foreign_key "crd_rvw_cust_bucket", "crd_rvw_exposure_d", column: "crd_rvw_exposure_d_id", name: "FK_CRD_RVW_CUST_BUCKET_CRD_RVW_EXPOSURE_D_ID_CRD_RVW_EXPOSURE_D_CRD_RVW_EXPOSURE_D_ID"
  add_foreign_key "crd_rvw_cust_coy_info", "crd_rvw_cust_info", column: "crd_rvw_cust_info_id", name: "FK_CRD_RVW_CUST_COY_INFO_CRD_RVW_CUST_INFO_ID_CRD_RVW_CUST_INFO_CRD_RVW_CUST_INFO_ID"
  add_foreign_key "crd_rvw_cust_info", "app", column: "app_id", name: "FK_CRD_RVW_CUST_INFO_APP_ID_APP_APP_ID"
  add_foreign_key "crd_rvw_cust_pers_info", "crd_rvw_cust_info", column: "crd_rvw_cust_info_id", name: "FK_CRD_RVW_CUST_PERS_INFO_CRD_RVW_CUST_INFO_ID_CRD_RVW_CUST_INFO_CRD_RVW_CUST_INFO_ID"
  add_foreign_key "crd_rvw_cust_phn_status", "crd_rvw_cust_info", column: "crd_rvw_cust_info_id", name: "FK_CRD_RVW_CUST_PHN_STATUS_CRD_RVW_CUST_INFO_ID_CRD_RVW_CUST_INFO_CRD_RVW_CUST_INFO_ID"
  add_foreign_key "crd_rvw_dealer", "crd_rvw_cust_info", column: "crd_rvw_cust_info_id", name: "FK_CRD_RVW_DEALER_CRD_RVW_CUST_INFO_ID_CRD_RVW_CUST_INFO_CRD_RVW_CUST_INFO_ID"
  add_foreign_key "crd_rvw_dealer_bucket", "crd_rvw_dealer", column: "crd_rvw_dealer_id", name: "FK_CRD_RVW_DEALER_BUCKET_CRD_RVW_DEALER_ID_CRD_RVW_DEALER_CRD_RVW_DEALER_ID"
  add_foreign_key "crd_rvw_diff_app_to_in_prc_app_cust", "crd_rvw_cust_info", column: "crd_rvw_cust_info_id", name: "FK_CRD_RVW_DIFF_APP_TO_IN_PRC_APP_CUST_CRD_RVW_CUST_INFO_ID_CRD_RVW_CUST_INFO_CRD_RVW_CUST_INFO_ID"
  add_foreign_key "crd_rvw_diff_app_to_master_cust", "crd_rvw_cust_info", column: "crd_rvw_cust_info_id", name: "FK_CRD_RVW_DIFF_APP_TO_MASTER_CUST_CRD_RVW_CUST_INFO_ID_CRD_RVW_CUST_INFO_CRD_RVW_CUST_INFO_ID"
  add_foreign_key "crd_rvw_exposure_d", "crd_rvw_exposure_h", column: "crd_rvw_exposure_h_id", name: "FK_CRD_RVW_EXPOSURE_D_CRD_RVW_EXPOSURE_H_ID_CRD_RVW_EXPOSURE_H_CRD_RVW_EXPOSURE_H_ID"
  add_foreign_key "crd_rvw_exposure_h", "crd_rvw_cust_info", column: "crd_rvw_cust_info_id", name: "FK_CRD_RVW_EXPOSURE_H_CRD_RVW_CUST_INFO_ID_CRD_RVW_CUST_INFO_CRD_RVW_CUST_INFO_ID"
  add_foreign_key "crd_rvw_ovd", "crd_rvw_cust_info", column: "crd_rvw_cust_info_id", name: "FK_CRD_RVW_OVD_CRD_RVW_CUST_INFO_ID_CRD_RVW_CUST_INFO_CRD_RVW_CUST_INFO_ID"
  add_foreign_key "cust_cnfrm", "agrmnt", column: "agrmnt_id", name: "FK_CUST_CNFRM_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "cust_cnfrm", "app", column: "app_id", name: "FK_CUST_CNFRM_APP_ID_APP_APP_ID"
  add_foreign_key "delivery_order_d", "app_asset", column: "app_asset_id", name: "FK_DELIVERY_ORDER_D_APP_ASSET_ID_APP_ASSET_APP_ASSET_ID"
  add_foreign_key "delivery_order_d", "delivery_order_h", column: "delivery_order_h_id", name: "FK_DELIVERY_ORDER_D_DELIVERY_ORDER_H_ID_DELIVERY_ORDER_H_DELIVERY_ORDER_H_ID"
  add_foreign_key "delivery_order_h", "agrmnt", column: "agrmnt_id", name: "FK_DELIVERY_ORDER_H_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "delivery_order_h", "app", column: "app_id", name: "FK_DELIVERY_ORDER_H_APP_ID_APP_APP_ID"
  add_foreign_key "disb_info", "agrmnt", column: "agrmnt_id", name: "FK_DISB_INFO_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "disb_info", "app", column: "app_id", name: "FK_DISB_INFO_APP_ID_APP_APP_ID"
  add_foreign_key "edit_app_aft_apv_trx_d", "edit_app_aft_apv_trx_h", column: "edit_app_aft_apv_trx_h_id", name: "FK_EDIT_APP_AFT_APV_TRX_D_EDIT_APP_AFT_APV_TRX_H_ID_EDIT_APP_AFT_APV_TRX_H_EDIT_APP_AFT_APV_TRX_H_ID"
  add_foreign_key "edit_app_aft_apv_trx_h", "agrmnt", column: "agrmnt_id", name: "FK_EDIT_APP_AFT_APV_TRX_H_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "edit_nap_cust", "app", column: "app_id", name: "FK_EDIT_NAP_CUST_APP_ID_APP_APP_ID"
  add_foreign_key "lead", "lead", column: "duplicate_lead_id", name: "FK_LEAD_DUPLICATE_LEAD_ID_LEAD_LEAD_ID"
  add_foreign_key "lead", "lead", column: "lead_copy_id", name: "FK_LEAD_LEAD_COPY_ID_LEAD_LEAD_ID"
  add_foreign_key "lead_app", "lead", column: "lead_id", name: "FK_LEAD_APP_LEAD_ID_LEAD_LEAD_ID"
  add_foreign_key "lead_asset", "lead", column: "lead_id", name: "FK_LEAD_ASSET_LEAD_ID_LEAD_LEAD_ID"
  add_foreign_key "lead_cust", "lead", column: "lead_id", name: "FK_LEAD_CUST_LEAD_ID_LEAD_LEAD_ID"
  add_foreign_key "lead_cust_addr", "lead_cust", column: "lead_cust_id", name: "FK_LEAD_CUST_ADDR_LEAD_CUST_ID_LEAD_CUST_LEAD_CUST_ID"
  add_foreign_key "lead_cust_bank_acc", "lead_cust", column: "lead_cust_id", name: "FK_LEAD_CUST_BANK_ACC_LEAD_CUST_ID_LEAD_CUST_LEAD_CUST_ID"
  add_foreign_key "lead_cust_bank_stmnt", "lead_cust_bank_acc", column: "lead_cust_bank_acc_id", name: "FK_LEAD_CUST_BANK_STMNT_LEAD_CUST_BANK_ACC_ID_LEAD_CUST_BANK_ACC_LEAD_CUST_BANK_ACC_ID"
  add_foreign_key "lead_cust_company", "lead_cust", column: "lead_cust_id", name: "FK_LEAD_CUST_COMPANY_LEAD_CUST_ID_LEAD_CUST_LEAD_CUST_ID"
  add_foreign_key "lead_cust_company_contact_person", "lead_cust_company", column: "lead_cust_company_id", name: "FK_LEAD_CUST_COMPANY_CONTACT_PERSON_LEAD_CUST_COMPANY_ID_LEAD_CUST_COMPANY_LEAD_CUST_COMPANY_ID"
  add_foreign_key "lead_cust_company_fin_data", "lead_cust_company", column: "lead_cust_company_id", name: "FK_LEAD_CUST_COMPANY_FIN_DATA_LEAD_CUST_COMPANY_ID_LEAD_CUST_COMPANY_LEAD_CUST_COMPANY_ID"
  add_foreign_key "lead_cust_company_legal_doc", "lead_cust_company", column: "lead_cust_company_id", name: "FK_LEAD_CUST_COMPANY_LEGAL_DOC_LEAD_CUST_COMPANY_ID_LEAD_CUST_COMPANY_LEAD_CUST_COMPANY_ID"
  add_foreign_key "lead_cust_company_mgmnt_shrholder", "lead_cust_company", column: "lead_cust_company_id", name: "FK_LEAD_CUST_COMPANY_MGMNT_SHRHOLDER_LEAD_CUST_COMPANY_ID_LEAD_CUST_COMPANY_LEAD_CUST_COMPANY_ID"
  add_foreign_key "lead_cust_personal", "lead_cust", column: "lead_cust_id", name: "FK_LEAD_CUST_PERSONAL_LEAD_CUST_ID_LEAD_CUST_LEAD_CUST_ID"
  add_foreign_key "lead_cust_personal_contact_person", "lead_cust_personal", column: "lead_cust_personal_id", name: "FK_LEAD_CUST_PERSONAL_CONTACT_PERSON_LEAD_CUST_PERSONAL_ID_LEAD_CUST_PERSONAL_LEAD_CUST_PERSONAL_ID"
  add_foreign_key "lead_cust_personal_fin_data", "lead_cust_personal", column: "lead_cust_personal_id", name: "FK_LEAD_CUST_PERSONAL_FIN_DATA_LEAD_CUST_PERSONAL_ID_LEAD_CUST_PERSONAL_LEAD_CUST_PERSONAL_ID"
  add_foreign_key "lead_cust_personal_job_data", "lead_cust_personal", column: "lead_cust_personal_id", name: "FK_LEAD_CUST_PERSONAL_JOB_DATA_LEAD_CUST_PERSONAL_ID_LEAD_CUST_PERSONAL_LEAD_CUST_PERSONAL_ID"
  add_foreign_key "lead_cust_socmed", "lead_cust", column: "lead_cust_id", name: "FK_LEAD_CUST_SOCMED_LEAD_CUST_ID_LEAD_CUST_LEAD_CUST_ID"
  add_foreign_key "lead_fraud_verf", "lead", column: "lead_id", name: "FK_LEAD_FRAUD_VERF_LEAD_ID_LEAD_LEAD_ID"
  add_foreign_key "lead_step_hist", "lead", column: "lead_id", name: "FK_LEAD_STEP_HIST_LEAD_ID_LEAD_LEAD_ID"
  add_foreign_key "lead_verf", "lead", column: "lead_id", name: "FK_LEAD_VERF_LEAD_ID_LEAD_LEAD_ID"
  add_foreign_key "ltkm_cust", "ltkm_req", column: "ltkm_req_id", name: "FK_LTKM_CUST_LTKM_REQ_ID_LTKM_REQ_LTKM_REQ_ID"
  add_foreign_key "ltkm_cust_addr", "ltkm_cust", column: "ltkm_cust_id", name: "FK_LTKM_CUST_ADDR_LTKM_CUST_ID_LTKM_CUST_LTKM_CUST_ID"
  add_foreign_key "ltkm_cust_addr_attr_content", "ltkm_cust_addr", column: "ltkm_cust_addr_id", name: "FK_LTKM_CUST_ADDR_ATTR_CONTENT_LTKM_CUST_ADDR_ID_LTKM_CUST_ADDR_LTKM_CUST_ADDR_ID"
  add_foreign_key "ltkm_cust_asset", "ltkm_cust", column: "ltkm_cust_id", name: "FK_LTKM_CUST_ASSET_LTKM_CUST_ID_LTKM_CUST_LTKM_CUST_ID"
  add_foreign_key "ltkm_cust_attr_content", "ltkm_cust", column: "ltkm_cust_id", name: "FK_LTKM_CUST_ATTR_CONTENT_LTKM_CUST_ID_LTKM_CUST_LTKM_CUST_ID"
  add_foreign_key "ltkm_cust_bank_acc", "ltkm_cust", column: "ltkm_cust_id", name: "FK_LTKM_CUST_BANK_ACC_Ltkm_CUST_ID_LTKM_CUST_LTKM_CUST_ID"
  add_foreign_key "ltkm_cust_bank_stmnt", "ltkm_cust_bank_acc", column: "ltkm_cust_bank_acc_id", name: "FK_LTKM_CUST_BANK_STMNT_LTKM_CUST_BANK_ACC_ID_LTKM_CUST_BANK_ACC_LTKM_CUST_BANK_ACC_ID"
  add_foreign_key "ltkm_cust_company", "ltkm_cust", column: "ltkm_cust_id", name: "FK_LTKM_CUST_COMPANY_LTKM_CUST_ID_LTKM_CUST_LTKM_CUST_ID"
  add_foreign_key "ltkm_cust_company_contact_person", "ltkm_cust_company", column: "ltkm_cust_company_id", name: "FK_LTKM_CUST_COMPANY_CONTACT_PERSON_LTKM_CUST_COMPANY_ID_LTKM_CUST_COMPANY_LTKM_CUST_COMPANY_ID"
  add_foreign_key "ltkm_cust_company_fin_data", "ltkm_cust_company", column: "ltkm_cust_company_id", name: "FK_LTKM_CUST_COMPANY_FIN_DATA_LTKM_CUST_COMPANY_ID_LTKM_CUST_COMPANY_LTKM_CUST_COMPANY_ID"
  add_foreign_key "ltkm_cust_company_fin_data", "ltkm_cust", column: "ltkm_cust_id", name: "FK_LTKM_CUST_COMPANY_FIN_DATA_LTKM_CUST_ID_LTKM_CUST_LTKM_CUST_ID"
  add_foreign_key "ltkm_cust_company_legal_doc", "ltkm_cust_company", column: "ltkm_cust_company_id", name: "FK_LTKM_CUST_COMPANY_LEGAL_DOC_Ltkm_CUST_COMPANY_ID_LTKM_CUST_COMPANY_LTKM_CUST_COMPANY_ID"
  add_foreign_key "ltkm_cust_company_mgmnt_shrholder", "ltkm_cust_company", column: "ltkm_cust_company_id", name: "FK_LTKM_CUST_COMPANY_MGMNT_SHRHOLDER_LTKM_CUST_COMPANY_ID_LTKM_CUST_COMPANY_LTKM_CUST_COMPANY_ID"
  add_foreign_key "ltkm_cust_company_mgmnt_shrholder", "ltkm_cust", column: "ltkm_cust_id", name: "FK_LTKM_CUST_COMPANY_MGMNT_SHRHOLDER_LTKM_CUST_ID_LTKM_CUST_LTKM_CUST_ID"
  add_foreign_key "ltkm_cust_emrgnc_cntct", "ltkm_cust", column: "ltkm_cust_id", name: "FK_LTKM_CUST_EMRGNC_CNTCT_LTKM_CUST_ID_LTKM_CUST_LTKM_CUST_ID"
  add_foreign_key "ltkm_cust_grp", "ltkm_cust", column: "ltkm_cust_id", name: "FK_LTKM_CUST_GRP_LTKM_CUST_ID_LTKM_CUST_LTKM_CUST_ID"
  add_foreign_key "ltkm_cust_other_info", "ltkm_cust", column: "ltkm_cust_id", name: "FK_LTKM_CUST_OTHER_INFO_LTKM_CUST_ID_LTKM_CUST_LTKM_CUST_ID"
  add_foreign_key "ltkm_cust_personal", "ltkm_cust", column: "ltkm_cust_id", name: "FK_LTKM_CUST_PERSONAL_LTKM_CUST_ID_LTKM_CUST_LTKM_CUST_ID"
  add_foreign_key "ltkm_cust_personal_contact_person", "ltkm_cust_personal", column: "ltkm_cust_personal_id", name: "FK_LTKM_CUST_PERSONAL_CONTACT_PERSON_LTKM_CUST_PERSONAL_ID_LTKM_CUST_PERSONAL_LTKM_CUST_PERSONAL_ID"
  add_foreign_key "ltkm_cust_personal_fin_data", "ltkm_cust_personal", column: "ltkm_cust_personal_id", name: "FK_LTKM_CUST_PERSONAL_FIN_DATA_LTKM_CUST_PERSONAL_ID_LTKM_CUST_PERSONAL_LTKM_CUST_PERSONAL_ID"
  add_foreign_key "ltkm_cust_personal_job_data", "ltkm_cust_personal", column: "ltkm_cust_personal_id", name: "FK_LTKM_CUST_PERSONAL_JOB_DATA_LTKM_CUST_PERSONAL_ID_LTKM_CUST_PERSONAL_LTKM_CUST_PERSONAL_ID"
  add_foreign_key "ltkm_cust_socmed", "ltkm_cust", column: "ltkm_cust_id", name: "FK_LTKM_CUST_SOCMED_LTKM_CUST_ID_LTKM_CUST_LTKM_CUST_ID"
  add_foreign_key "ltkm_req", "app", column: "app_id", name: "FK_LTKM_REQ_APP_ID_APP_APP_ID"
  add_foreign_key "ltkm_req_detail", "ltkm_req", column: "ltkm_req_id", name: "FK_LTKM_REQ_DETAIL_LTKM_REQ_ID_LTKM_REQ_LTKM_REQ_ID"
  add_foreign_key "mou_cust", "mou_cust", column: "topup_mou_cust_id", name: "FK_MOU_CUST_TOPUP_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_addr", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_ADDR_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_addr_attr_content", "mou_cust_addr", column: "mou_cust_addr_id", name: "FK_MOU_CUST_ADDR_ATTR_CONTENT_MOU_CUST_ADDR_ID_MOU_CUST_ADDR_MOU_CUST_ADDR_ID"
  add_foreign_key "mou_cust_asset", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_ASSET_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_attr_content", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_ATTR_CONTENT_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_bank_acc", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_BANK_ACC_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_bank_stmnt", "mou_cust_bank_acc", column: "mou_cust_bank_acc_id", name: "FK_MOU_CUST_BANK_STMNT_MOU_CUST_BANK_ACC_ID_MOU_CUST_BANK_ACC_MOU_CUST_BANK_ACC_ID"
  add_foreign_key "mou_cust_cancel", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_CANCEL_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_clause", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_CLAUSE_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_collateral", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_COLLATERAL_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_collateral_attr", "mou_cust_collateral", column: "mou_cust_collateral_id", name: "FK_MOU_CUST_COLLATERAL_ATTR_MOU_CUST_COLLATERAL_ID_MOU_CUST_COLLATERAL_MOU_CUST_COLLATERAL_ID"
  add_foreign_key "mou_cust_collateral_doc", "mou_cust_collateral", column: "mou_cust_collateral_id", name: "FK_MOU_CUST_COLLATERAL_DOC_MOU_CUST_COLLATERAL_ID_MOU_CUST_COLLATERAL_MOU_CUST_COLLATERAL_ID"
  add_foreign_key "mou_cust_collateral_registration", "mou_cust_collateral", column: "mou_cust_collateral_id", name: "FK_MOU_CUST_COLLATERAL_REGISTRATION_MOU_CUST_COLLATERAL_ID_MOU_CUST_COLLATERAL_MOU_CUST_COLLATERAL_ID"
  add_foreign_key "mou_cust_company", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_COMPANY_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_company_contact_person", "mou_cust_company", column: "mou_cust_company_id", name: "FK_MOU_CUST_COMPANY_CONTACT_PERSON_MOU_CUST_COMPANY_ID_MOU_CUST_COMPANY_MOU_CUST_COMPANY_ID"
  add_foreign_key "mou_cust_company_fin_data", "mou_cust_company", column: "mou_cust_company_id", name: "FK_MOU_CUST_COMPANY_FIN_DATA_MOU_CUST_COMPANY_ID_MOU_CUST_COMPANY_MOU_CUST_COMPANY_ID"
  add_foreign_key "mou_cust_company_legal_doc", "mou_cust_company", column: "mou_cust_company_id", name: "FK_MOU_CUST_COMPANY_LEGAL_DOC_MOU_CUST_COMPANY_ID_MOU_CUST_COMPANY_MOU_CUST_COMPANY_ID"
  add_foreign_key "mou_cust_company_mgmnt_shrholder", "mou_cust_company", column: "mou_cust_company_id", name: "FK_MOU_CUST_COMPANY_MGMNT_SHRHOLDER_MOU_CUST_COMPANY_ID_MOU_CUST_COMPANY_MOU_CUST_COMPANY_ID"
  add_foreign_key "mou_cust_dlr_fncng", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_DLR_FNCNG_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_doc", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_DOC_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_doc_print", "mou_cust_doc", column: "mou_cust_doc_id", name: "FK_MOU_CUST_DOC_PRINT_MOU_CUST_DOC_ID_MOU_CUST_DOC_MOU_CUST_DOC_ID"
  add_foreign_key "mou_cust_doc_print", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_DOC_PRINT_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_fctr", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_FCTR_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_fee", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_FEE_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_fee", "ref_fee", column: "ref_fee_id", name: "FK_MOU_CUST_FEE_REF_FEE_ID_REF_FEE_REF_FEE_ID"
  add_foreign_key "mou_cust_fin_data_attr_content", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_FIN_DATA_ATTR_CONTENT_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_grp", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_GRP_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_lgl_review", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_LGL_REVIEW_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_listed_cust_fctr", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_LISTED_CUST_FCTR_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_other_info", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_OTHER_INFO_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_personal", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_PERSONAL_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_personal_contact_person", "mou_cust_personal", column: "mou_cust_personal_id", name: "FK_MOU_CUST_PERSONAL_CONTACT_PERSON_MOU_CUST_PERSONAL_ID_MOU_CUST_PERSONAL_MOU_CUST_PERSONAL_ID"
  add_foreign_key "mou_cust_personal_fin_data", "mou_cust_personal", column: "mou_cust_personal_id", name: "FK_MOU_CUST_PERSONAL_FIN_DATA_MOU_CUST_PERSONAL_ID_MOU_CUST_PERSONAL_MOU_CUST_PERSONAL_ID"
  add_foreign_key "mou_cust_personal_job_data", "mou_cust_personal", column: "mou_cust_personal_id", name: "FK_MOU_CUST_PERSONAL_JOB_DATA_MOU_CUST_PERSONAL_ID_MOU_CUST_PERSONAL_MOU_CUST_PERSONAL_ID"
  add_foreign_key "mou_cust_rvw_d", "mou_cust_rvw_h", column: "mou_cust_rvw_h_id", name: "FK_MOU_CUST_RVW_D_MOU_CUST_RVW_H_ID_MOU_CUST_RVW_H_MOU_CUST_RVW_H_ID"
  add_foreign_key "mou_cust_rvw_h", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_RVW_H_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_score", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_SCORE_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_signer", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_SIGNER_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_socmed", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_SOCMED_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_cust_tc", "mou_cust", column: "mou_cust_id", name: "FK_MOU_CUST_TC_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_freeze_trx", "mou_cust", column: "mou_cust_id", name: "FK_MOU_FREEZE_TRX_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_guarantor", "mou_cust", column: "mou_cust_id", name: "FK_MOU_GUARANTOR_MOU_CUST_ID_MOU_CUST_MOU_CUST_ID"
  add_foreign_key "mou_guarantor_company", "mou_guarantor", column: "mou_guarantor_id", name: "FK_MOU_GUARANTOR_COMPANY_MOU_GUARANTOR_ID_MOU_GUARANTOR_MOU_GUARANTOR_ID"
  add_foreign_key "mou_guarantor_company_legal_doc", "mou_guarantor_company", column: "mou_guarantor_company_id", name: "FK_MOU_GUARANTOR_COMPANY_LEGAL_DOC_MOU_GUARANTOR_COMPANY_ID_MOU_GUARANTOR_COMPANY_MOU_GUARANTOR_COMPANY_ID"
  add_foreign_key "mou_guarantor_personal", "mou_guarantor", column: "mou_guarantor_id", name: "FK_MOU_GUARANTOR_PERSONAL_MOU_GUARANTOR_ID_MOU_GUARANTOR_MOU_GUARANTOR_ID"
  add_foreign_key "pre_go_live", "agrmnt", column: "agrmnt_id", name: "FK_PRE_GO_LIVE_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "prod", "prod_h", column: "current_prod_h_id", name: "FK_PROD_CURRENT_PROD_H_ID_PROD_H_PROD_H_ID"
  add_foreign_key "prod", "prod_h", column: "draft_prod_h_id", name: "FK_PROD_DRAFT_PROD_H_ID_PROD_H_PROD_H_ID"
  add_foreign_key "prod_branch_mbr", "prod_h", column: "prod_h_id", name: "FK_PROD_BRANCH_MBR_PROD_H_ID_PROD_H_PROD_H_ID"
  add_foreign_key "prod_d", "prod_h", column: "prod_h_id", name: "FK_PROD_D_PROD_H_ID_PROD_H_PROD_H_ID"
  add_foreign_key "prod_h", "prod", column: "prod_id", name: "FK_PROD_H_PROD_ID_PROD_PROD_ID"
  add_foreign_key "prod_offering", "prod_offering_h", column: "current_prod_offering_h_id", name: "FK_PROD_OFFERING_CURRENT_PROD_OFFERING_H_ID_PROD_OFFERING_H_PROD_OFFERING_H_ID"
  add_foreign_key "prod_offering", "prod_offering_h", column: "draft_prod_offering_h_id", name: "FK_PROD_OFFERING_DRAFT_PROD_OFFERING_H_ID_PROD_OFFERING_H_PROD_OFFERING_H_ID"
  add_foreign_key "prod_offering", "prod", column: "prod_id", name: "FK_PROD_OFFERING_PROD_ID_PROD_PROD_ID"
  add_foreign_key "prod_offering_branch_mbr", "prod_offering_h", column: "prod_offering_h_id", name: "FK_PROD_OFFERING_BRANCH_MBR_PROD_OFFERING_H_ID_PROD_OFFERING_H_PROD_OFFERING_H_ID"
  add_foreign_key "prod_offering_d", "prod_offering_h", column: "prod_offering_h_id", name: "FK_PROD_OFFERING_D_PROD_OFFERING_H_ID_PROD_OFFERING_H_PROD_OFFERING_H_ID"
  add_foreign_key "prod_offering_h", "prod_h", column: "prod_h_id", name: "FK_PROD_OFFERING_H_PROD_H_ID_PROD_H_PROD_H_ID"
  add_foreign_key "prod_offering_h", "prod_offering", column: "prod_offering_id", name: "FK_PROD_OFFERING_H_PROD_OFFERING_ID_PROD_OFFERING_PROD_OFFERING_ID"
  add_foreign_key "purchase_order_d", "purchase_order_h", column: "purchase_order_h_id", name: "FK_PURCHASE_ORDER_D_PURCHASE_ORDER_H_ID_PURCHASE_ORDER_H_PURCHASE_ORDER_H_ID"
  add_foreign_key "purchase_order_h", "agrmnt", column: "agrmnt_id", name: "FK_PURCHASE_ORDER_H_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "ref_app_src_office_mbr", "ref_app_src", column: "ref_app_src_id", name: "FK_REF_APP_SRC_OFFICE_MBR_REF_APP_SRC_ID_REF_APP_SRC_REF_APP_SRC_ID"
  add_foreign_key "ref_fin_map", "ref_prod_type", column: "ref_prod_type_id", name: "FK_REF_FIN_MAP_REF_PROD_TYPE_ID_REF_PROD_TYPE_REF_PROD_TYPE_ID"
  add_foreign_key "ref_fin_map", "ref_purpose_of_fin", column: "ref_purpose_of_fin_id", name: "FK_REF_FIN_MAP_REF_PURPOSE_OF_FIN_ID_REF_PURPOSE_OF_FIN_REF_PURPOSE_OF_FIN_ID"
  add_foreign_key "ref_fin_map", "ref_way_of_fin", column: "ref_way_of_fin_id", name: "FK_REF_FIN_MAP_REF_WAY_OF_FIN_ID_REF_WAY_OF_FIN_REF_WAY_OF_FIN_ID"
  add_foreign_key "req_apv_agrmnt_pre_golive", "agrmnt", column: "agrmnt_id", name: "FK_REQ_APV_AGRMNT_PRE_GOLIVE_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "requisition_decision_d", "app_asset", column: "app_asset_id", name: "FK_REQUISITION_DECISION_D_APP_ASSET_ID_APP_ASSET_APP_ASSET_ID"
  add_foreign_key "requisition_decision_d", "requisition_decision_h", column: "requisition_decision_h_id", name: "FK_REQUISITION_DECISION_D_REQUISITION_DECISION_H_ID_REQUISITION_DECISION_H_REQUISITION_DECISION_H_ID"
  add_foreign_key "requisition_decision_h", "app", column: "app_id", name: "FK_REQUISITION_DECISION_H_APP_ID_APP_APP_ID"
  add_foreign_key "return_handling_d", "return_handling_h", column: "return_handling_h_id", name: "FK_RETURN_HANDLING_D_RETURN_HANDLING_H_ID_RETURN_HANDLING_H_RETURN_HANDLING_H_ID"
  add_foreign_key "return_handling_h", "agrmnt", column: "agrmnt_id", name: "FK_RETURN_HANDLING_H_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "return_handling_h", "app", column: "app_id", name: "FK_RETURN_HANDLING_H_APP_ID_APP_APP_ID"
  add_foreign_key "ro_potential", "generate_ro_potential_trx", column: "generate_ro_potential_trx_id", name: "FK_RO_POTENTIAL_GENERATE_RO_POTENTIAL_TRX_ID_GENERATE_RO_POTENTIAL_TRX_GENERATE_RO_POTENTIAL_TRX_ID"
  add_foreign_key "sales_opl", "agrmnt", column: "agrmnt_id", name: "FK_SALES_OPL_AGRMNT_ID_AGRMNT_AGRMNT_ID"
  add_foreign_key "sales_opl", "app_asset", column: "app_asset_id", name: "FK_SALES_OPL_APP_ASSET_ID_APP_ASSET_APP_ASSET_ID"
  add_foreign_key "sales_opl", "app", column: "app_id", name: "FK_SALES_OPL_APP_ID_APP_APP_ID"
  add_foreign_key "third_party_dukcapil_rslt", "third_party_rslt_h", column: "third_party_rslt_h_id", name: "FK_THIRD_PARTY_DUKCAPIL_RSLT_THIRD_PARTY_RSLT_H_ID_THIRD_PARTY_RSLT_H_THIRD_PARTY_RSLT_H_ID"
  add_foreign_key "third_party_pefindo_rslt", "third_party_rslt_h", column: "third_party_rslt_h_id", name: "FK_THIRD_PARTY_PEFINDO_RSLT_THIRD_PARTY_RSLT_H_ID_THIRD_PARTY_RSLT_H_THIRD_PARTY_RSLT_H_ID"
  add_foreign_key "third_party_profind_rslt", "third_party_rslt_h", column: "third_party_rslt_h_id", name: "FK_THIRD_PARTY_PROFIND_RSLT_THIRD_PARTY_RSLT_H_ID_THIRD_PARTY_RSLT_H_THIRD_PARTY_RSLT_H_ID"
  add_foreign_key "third_party_rapindo_rslt", "third_party_rslt_h", column: "third_party_rslt_h_id", name: "FK_THIRD_PARTY_RAPINDO_RSLT_THIRD_PARTY_RSLT_H_ID_THIRD_PARTY_RSLT_H_THIRD_PARTY_RSLT_H_ID"
  add_foreign_key "third_party_slik_rslt", "third_party_rslt_h", column: "third_party_rslt_h_id", name: "FK_THIRD_PARTY_SLIK_RSLT_THIRD_PARTY_RSLT_H_ID_THIRD_PARTY_RSLT_H_THIRD_PARTY_RSLT_H_ID"
  add_foreign_key "wf_sub_inst", "wf_main_inst", column: "wf_main_inst_id", name: "FK_WF_SUB_INST_WF_MAIN_INST_ID_WF_MAIN_INST_WF_MAIN_INST_ID"
 
end
