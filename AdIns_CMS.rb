# Auto-generated from SQL Server - Database: AdInsCMS
 
ActiveRecord::Schema[8.1].define(version: 20260703_000000) do
 
  create_table "aging_agrmnt", force: :cascade do |t|
    t.bigint "aging_agrmnt_id", null: false
    t.datetime "aging_dt", null: false
    t.string "agrmnt_no", limit: 100, null: false
    t.string "cust_no", limit: 100, null: false
    t.integer "overdue_days", null: false
    t.decimal "overdue_inst_amt", precision: 18, scale: 0, null: false
    t.decimal "overdue_principal_amt", precision: 18, scale: 0, null: false
    t.decimal "overdue_interest_amt", precision: 18, scale: 0, null: false
    t.decimal "total_os_principal_amt", precision: 18, scale: 0, null: false
    t.decimal "total_os_interest_amt", precision: 18, scale: 0, null: false
    t.decimal "os_principal_undue_amt", precision: 18, scale: 0, null: false
    t.decimal "os_interest_undue_amt", precision: 18, scale: 0, null: false
    t.decimal "contract_prepaid_amt", precision: 18, scale: 0, null: false
    t.decimal "lc_inst_amt", precision: 18, scale: 0, null: false
    t.decimal "lc_inst_paid_amt", precision: 18, scale: 0, null: false
    t.decimal "lc_inst_waived_amt", precision: 18, scale: 0, null: false
    t.decimal "inst_due_amt", precision: 18, scale: 0, null: false
    t.decimal "inst_paid_amt", precision: 18, scale: 0, null: false
    t.decimal "inst_waived_amt", precision: 18, scale: 0, null: false
    t.decimal "ar_charge_rcv_amt", precision: 18, scale: 0, null: false
    t.decimal "ar_charge_rcv_paid_amt", precision: 18, scale: 0, null: false
    t.decimal "ar_charge_rcv_waived_amt", precision: 18, scale: 0, null: false
    t.decimal "fee_charge_rcv_amt", precision: 18, scale: 0, null: false
    t.decimal "fee_charge_rcv_paid_amt", precision: 18, scale: 0, null: false
    t.decimal "fee_charge_rcv_waived_amt", precision: 18, scale: 0, null: false
    t.datetime "na_dt"
    t.decimal "na_amt", precision: 18, scale: 0, null: false
    t.decimal "na_paid_amt", precision: 18, scale: 0, null: false
    t.decimal "na_waived_amt", precision: 18, scale: 0, null: false
    t.datetime "wo_dt"
    t.decimal "wo_amt", precision: 18, scale: 0, null: false
    t.decimal "wo_paid_amt", precision: 18, scale: 0, null: false
    t.decimal "wo_waived_amt", precision: 18, scale: 0, null: false
    t.integer "tenor", null: false
    t.integer "num_of_inst", null: false
    t.boolean "is_et", null: false
    t.string "clctblty_code", limit: 100
    t.string "contract_stat_code", limit: 50, null: false
    t.string "default_stat_code", limit: 50, null: false
    t.string "prepaid_hold_stat_code", limit: 50, null: false
    t.datetime "prev_overdue_dt"
    t.integer "prev_inst_no_overdue"
    t.datetime "next_inst_dt", null: false
    t.integer "next_inst_no", null: false
    t.datetime "next_inst_due_dt", null: false
    t.integer "next_inst_due_no", null: false
    t.integer "last_inst_paid_no"
    t.datetime "last_inst_paid_dt"
    t.string "coll_grp_code", limit: 50
    t.string "cg_head", limit: 50
    t.string "unit_supervisor_code", limit: 50
    t.string "supervisor_username", limit: 50
    t.string "collector_username", limit: 50
    t.string "unit_collector_code", limit: 50
    t.string "mr_persona_code", limit: 50
    t.string "coll_company_code", limit: 50
    t.string "coll_type_code", limit: 50
    t.string "coll_bucket_code", limit: 50
    t.float "coll_score", null: false
    t.string "coll_score_category_code", limit: 50
    t.string "coll_case_code", limit: 50
    t.integer "broken_promise_num", default: 0.0, null: false
    t.decimal "deal_amt", precision: 18, scale: 0, default: 0.0, null: false
    t.boolean "is_assign_to_prof_coll", default: false, null: false
    t.boolean "is_coll_block", default: false, null: false
    t.boolean "is_debt_forgive", default: false, null: false
    t.boolean "is_fpd", default: false, null: false
    t.boolean "is_inv", default: false, null: false
    t.boolean "is_ral", default: false, null: false
    t.boolean "is_repo", default: false, null: false
    t.decimal "lc_inst_adm_amt", precision: 18, scale: 0, default: 0.0, null: false
    t.decimal "lc_inst_adm_paid_amt", precision: 18, scale: 0, default: 0.0, null: false
    t.decimal "lc_inst_adm_waived_amt", precision: 18, scale: 0, default: 0.0, null: false
  end
 
  create_table "aging_agrmnt_history", force: :cascade do |t|
    t.bigint "aging_agrmnt_id", null: false
    t.datetime "aging_dt", null: false
    t.string "agrmnt_no", limit: 100, null: false
    t.string "cust_no", limit: 100, null: false
    t.integer "overdue_days", null: false
    t.decimal "overdue_inst_amt", precision: 18, scale: 0, null: false
    t.decimal "overdue_principal_amt", precision: 18, scale: 0, null: false
    t.decimal "overdue_interest_amt", precision: 18, scale: 0, null: false
    t.decimal "total_os_principal_amt", precision: 18, scale: 0, null: false
    t.decimal "total_os_interest_amt", precision: 18, scale: 0, null: false
    t.decimal "os_principal_undue_amt", precision: 18, scale: 0, null: false
    t.decimal "os_interest_undue_amt", precision: 18, scale: 0, null: false
    t.decimal "contract_prepaid_amt", precision: 18, scale: 0, null: false
    t.decimal "lc_inst_amt", precision: 18, scale: 0, null: false
    t.decimal "lc_inst_paid_amt", precision: 18, scale: 0, null: false
    t.decimal "lc_inst_waived_amt", precision: 18, scale: 0, null: false
    t.decimal "inst_due_amt", precision: 18, scale: 0, null: false
    t.decimal "inst_paid_amt", precision: 18, scale: 0, null: false
    t.decimal "inst_waived_amt", precision: 18, scale: 0, null: false
    t.decimal "ar_charge_rcv_amt", precision: 18, scale: 0, null: false
    t.decimal "ar_charge_rcv_paid_amt", precision: 18, scale: 0, null: false
    t.decimal "ar_charge_rcv_waived_amt", precision: 18, scale: 0, null: false
    t.decimal "fee_charge_rcv_amt", precision: 18, scale: 0, null: false
    t.decimal "fee_charge_rcv_paid_amt", precision: 18, scale: 0, null: false
    t.decimal "fee_charge_rcv_waived_amt", precision: 18, scale: 0, null: false
    t.datetime "na_dt", null: false
    t.decimal "na_amt", precision: 18, scale: 0, null: false
    t.decimal "na_paid_amt", precision: 18, scale: 0, null: false
    t.decimal "na_waived_amt", precision: 18, scale: 0, null: false
    t.datetime "wo_dt", null: false
    t.decimal "wo_amt", precision: 18, scale: 0, null: false
    t.decimal "wo_paid_amt", precision: 18, scale: 0, null: false
    t.decimal "wo_waived_amt", precision: 18, scale: 0, null: false
    t.integer "inst_no", null: false
    t.datetime "inst_dt", null: false
    t.integer "tenor", null: false
    t.integer "num_of_inst", null: false
    t.boolean "is_et", null: false
    t.string "asset_no", limit: 100, null: false
    t.string "clctblty_code", limit: 100
    t.string "contract_stat_code", limit: 50
    t.string "default_stat_code", limit: 50
    t.string "prepaid_hold_stat_code", limit: 50
    t.datetime "start_time", null: false
    t.datetime "end_time", null: false
    t.string "modified_user", limit: 64, null: false
  end
 
  create_table "agrmnt_mapping", force: :cascade do |t|
    t.bigint "agrmnt_mapping_id", null: false
    t.string "agrmnt_no", limit: 100, null: false
    t.string "cust_no", limit: 100, null: false
    t.string "office_code", limit: 50, null: false
    t.string "mailing_addr", limit: 1000, null: false
    t.string "mailing_area_code_1", limit: 50
    t.string "mailing_area_code_2", limit: 50
    t.string "mailing_area_code_3", limit: 50
    t.string "mailing_area_code_4", limit: 50
    t.string "mailing_city", limit: 50
    t.string "mailing_zipcode", limit: 50
    t.string "mailing_sub_zipcode", limit: 50
    t.string "mailing_phn_area_1", limit: 20
    t.string "mailing_phn_1", limit: 50
    t.string "mailing_phn_ext_1", limit: 10
    t.string "mailing_phn_area_2", limit: 20
    t.string "mailing_phn_2", limit: 50
    t.string "mailing_phn_ext_2", limit: 10
    t.string "mailing_fax_area", limit: 20
    t.string "mailing_fax", limit: 50
  end
 
  create_table "asset_category_cms", force: :cascade do |t|
    t.bigint "asset_category_id", null: false
    t.bigint "asset_type_id", null: false
    t.string "asset_category_code", limit: 50, null: false
    t.string "asset_category_name", limit: 100, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "asset_cms", force: :cascade do |t|
    t.string "asset_no", limit: 200, null: false
    t.string "full_asset_code", limit: 500, null: false
    t.string "full_asset_name", limit: 1000, null: false
    t.string "serial_no_1", limit: 100
    t.string "serial_no_2", limit: 100
    t.string "serial_no_3", limit: 100
    t.string "serial_no_4", limit: 100
    t.string "serial_no_5", limit: 100
    t.integer "manufacturing_year"
    t.string "color", limit: 50
    t.string "asset_stat_code", limit: 100, null: false
    t.string "physical_stat_code", limit: 100, null: false
  end
 
  create_table "asset_type_cms", force: :cascade do |t|
    t.bigint "asset_type_id", null: false
    t.string "asset_type_code", limit: 50, null: false
    t.string "asset_type_name", limit: 100, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "case_analysis_form_d", force: :cascade do |t|
    t.bigint "case_analysis_form_d_id", null: false
    t.bigint "case_analysis_form_h_id", null: false
    t.bigint "coll_agrmnt_collateral_id", null: false
    t.boolean "is_asset_exist", null: false
    t.boolean "is_main_doc_block", null: false
    t.boolean "is_unit_handover", null: false
    t.decimal "market_value", precision: 18, scale: 0, null: false
  end
 
  create_table "case_analysis_form_h", force: :cascade do |t|
    t.bigint "case_analysis_form_h_id", null: false
    t.bigint "coll_agrmnt_id", null: false
    t.bigint "coll_grp_id", null: false
    t.string "case_analysis_form_no", limit: 50, null: false
    t.datetime "case_analysis_form_dt", null: false
    t.string "case_analysis_stat_code", limit: 25, null: false
    t.decimal "os_overdue_amt", precision: 18, scale: 0, null: false
    t.decimal "os_principal_undue_amt", precision: 18, scale: 0, null: false
    t.decimal "accrued_interest_amt", precision: 18, scale: 0, null: false
    t.decimal "coll_expense_amt", precision: 18, scale: 0, null: false
    t.decimal "other_expense_amt", precision: 18, scale: 0, null: false
    t.decimal "prepaid_amt", precision: 18, scale: 0, null: false
    t.decimal "waived_amt", precision: 18, scale: 0, null: false
    t.decimal "asset_selling_estimation_amt", precision: 18, scale: 0, null: false
    t.decimal "total_amt_to_be_paid", precision: 18, scale: 0, null: false
    t.decimal "total_amt_to_compete", precision: 18, scale: 0, null: false
    t.decimal "gain_loss_amt", precision: 18, scale: 0, null: false
    t.decimal "loan_to_value", precision: 18, scale: 0, null: false
    t.boolean "is_debitur_exist", null: false
    t.boolean "is_cust_addr_change", null: false
    t.bigint "pic_internal_collector_id"
    t.string "coll_company_code", limit: 25
    t.string "coll_company_name", limit: 250
    t.string "pic_coll_company_emp_no", limit: 25
    t.string "pic_coll_company_emp_name", limit: 250
    t.string "action", limit: 2000
    t.string "result", limit: 2000
    t.string "analysis", limit: 2000
    t.string "notes", limit: 2000
  end
 
  create_table "change_asset_ready_for_sale_dt", force: :cascade do |t|
    t.bigint "change_asset_ready_for_sale_dt_id", null: false
    t.bigint "repo_h_id", null: false
    t.bigint "coll_grp_id", null: false
    t.string "change_asset_ready_for_sale_dt_trx_no", limit: 100, null: false
    t.string "change_asset_ready_for_sale_dt_stat_code", limit: 50
    t.datetime "old_dt", null: false
    t.datetime "new_dt", null: false
    t.datetime "req_dt", null: false
    t.string "req_by_username", limit: 50, null: false
    t.string "req_reason_code", limit: 50
    t.string "req_notes", limit: 4000
    t.datetime "exe_dt"
  end
 
  create_table "clctblty_stat_cms", force: :cascade do |t|
    t.bigint "clctblty_stat_cms_id", null: false
    t.string "clctblty_code", limit: 100, null: false
    t.string "descr", limit: 100, null: false
    t.integer "max_overdue", null: false
    t.decimal "allowance_prcnt", precision: 18, scale: 0, null: false
  end
 
  create_table "cms_schm", force: :cascade do |t|
    t.bigint "cms_schm_id", null: false
    t.string "cms_schm_code", limit: 50, null: false
    t.string "cms_schm_name", limit: 100, null: false
    t.string "cms_schm_descr", limit: 4000, null: false
    t.boolean "is_active", null: false
    t.datetime "start_time", null: false
    t.datetime "end_time", null: false
    t.string "modified_user", limit: 64, null: false
  end
 
  create_table "cms_schm_bucket", force: :cascade do |t|
    t.bigint "cms_schm_bucket_id", null: false
    t.bigint "cms_schm_id", null: false
    t.string "coll_schm_bucket_code", limit: 50, null: false
    t.string "coll_schm_bucket_name", limit: 100, null: false
    t.integer "overdue_days_from", null: false
    t.integer "overdue_days_to", null: false
    t.bigint "coll_type_id", null: false
    t.boolean "is_used", null: false
    t.datetime "start_time", null: false
    t.datetime "end_time", null: false
    t.string "modified_user", limit: 64, null: false
  end
 
  create_table "cms_schm_bucket_history", force: :cascade do |t|
    t.bigint "cms_schm_bucket_id", null: false
    t.bigint "cms_schm_id", null: false
    t.string "coll_schm_bucket_code", limit: 50, null: false
    t.string "coll_schm_bucket_name", limit: 100, null: false
    t.integer "overdue_days_from", null: false
    t.integer "overdue_days_to", null: false
    t.bigint "coll_type_id", null: false
    t.boolean "is_used", null: false
    t.datetime "start_time", null: false
    t.datetime "end_time", null: false
    t.string "modified_user", limit: 64, null: false
  end
 
  create_table "cms_schm_compnt", force: :cascade do |t|
    t.bigint "cms_schm_compnt_id", null: false
    t.bigint "cms_schm_id", null: false
    t.string "cms_schm_compnt_code", limit: 50, null: false
    t.string "compnt_value", limit: 200, null: false
    t.string "compnt_value_desc", limit: 200, null: false
    t.bigint "ref_cms_schm_compnt_grp_id", null: false
    t.datetime "start_time", null: false
    t.datetime "end_time", null: false
    t.string "modified_user", limit: 64, null: false
  end
 
  create_table "cms_schm_compnt_history", force: :cascade do |t|
    t.bigint "cms_schm_compnt_id", null: false
    t.bigint "cms_schm_id", null: false
    t.string "cms_schm_compnt_code", limit: 50, null: false
    t.string "compnt_value", limit: 200, null: false
    t.string "compnt_value_desc", limit: 200, null: false
    t.bigint "ref_cms_schm_compnt_grp_id", null: false
    t.datetime "start_time", null: false
    t.datetime "end_time", null: false
    t.string "modified_user", limit: 64, null: false
  end
 
  create_table "cms_schm_history", force: :cascade do |t|
    t.bigint "cms_schm_id", null: false
    t.string "cms_schm_code", limit: 50, null: false
    t.string "cms_schm_name", limit: 100, null: false
    t.string "cms_schm_descr", limit: 4000, null: false
    t.boolean "is_active", null: false
    t.datetime "start_time", null: false
    t.datetime "end_time", null: false
    t.string "modified_user", limit: 64, null: false
  end
 
  create_table "cms_schm_priority", force: :cascade do |t|
    t.bigint "cms_schm_priority_id", null: false
    t.bigint "cms_schm_id", null: false
    t.string "mr_criteria_code", limit: 50, null: false
    t.string "operator", limit: 50, null: false
    t.string "value", limit: 100
    t.string "value_from", limit: 100
    t.string "value_to", limit: 100
    t.integer "point", null: false
  end
 
  create_table "coll_action", force: :cascade do |t|
    t.bigint "coll_action_id", null: false
    t.string "coll_action_code", limit: 50, null: false
    t.string "coll_action_name", limit: 100, null: false
    t.bigint "coll_type_id", null: false
    t.boolean "is_active", null: false
  end
 
  create_table "coll_action_result", force: :cascade do |t|
    t.bigint "coll_action_result_id", null: false
    t.bigint "coll_action_id", null: false
    t.bigint "coll_result_id", null: false
  end
 
  create_table "coll_activity_chg_coll_grp", force: :cascade do |t|
    t.bigint "coll_activity_chg_coll_grp_id", null: false
    t.bigint "coll_activity_hist_id", null: false
    t.bigint "prev_coll_grp_id", null: false
    t.bigint "new_coll_grp_id", null: false
  end
 
  create_table "coll_activity_chg_coll_office", force: :cascade do |t|
    t.bigint "coll_activity_chg_coll_office_id", null: false
    t.bigint "coll_activity_hist_id", null: false
    t.bigint "prev_coll_office_id", null: false
    t.bigint "new_coll_office_id", null: false
    t.string "usr_crt", limit: 50, null: false
    t.string "usr_upd", limit: 50, null: false
    t.datetime "dtm_crt", null: false
    t.datetime "dtm_upd", null: false
    t.string "integrity_value", limit: 500
  end
 
  create_table "coll_activity_flow_up_down", force: :cascade do |t|
    t.bigint "coll_activity_flow_up_down_id", null: false
    t.bigint "coll_activity_hist_id", null: false
    t.bigint "prev_ref_coll_bucket_id"
    t.bigint "new_ref_coll_bucket_id"
  end
 
  create_table "coll_activity_hist", force: :cascade do |t|
    t.bigint "coll_activity_hist_id", null: false
    t.bigint "coll_agrmnt_id"
    t.string "mr_coll_event_code", limit: 50
    t.string "activity_by_username", limit: 50
    t.datetime "activity_dt"
    t.bigint "coll_action_id"
    t.bigint "coll_result_id"
    t.integer "overdue_days", null: false
    t.string "activity_notes", limit: 4000
    t.bigint "coll_task_desk_h_id"
    t.bigint "coll_task_field_h_id"
    t.datetime "ptp_date"
    t.string "address_visited", limit: 500
    t.string "phone_no_called", limit: 100
    t.boolean "is_upd_data_cust", default: false, null: false
    t.datetime "next_plan_dt"
    t.bigint "next_plan_coll_action_id"
    t.string "ref_no", limit: 100
    t.string "coll_bucket_code", limit: 50
  end
 
  create_table "coll_activity_hist_attr_content", force: :cascade do |t|
    t.bigint "coll_activity_hist_attr_content_id", null: false
    t.bigint "coll_activity_hist_id", null: false
    t.string "coll_act_attr_code", limit: 50, null: false
    t.string "coll_act_attr_name", limit: 100
    t.string "coll_act_attr_value", limit: 4000
  end
 
  create_table "coll_activity_reassign", force: :cascade do |t|
    t.bigint "coll_activity_reassign_id", null: false
    t.bigint "coll_activity_hist_id", null: false
    t.bigint "prev_coll_grp_collector_id", null: false
    t.bigint "new_coll_grp_collector_id", null: false
    t.bigint "prev_unit_collector_id", null: false
    t.bigint "new_unit_collector_id", null: false
    t.boolean "is_fix_assignment", null: false
    t.string "usr_crt", limit: 50, null: false
    t.string "usr_upd", limit: 50, null: false
    t.datetime "dtm_crt", null: false
    t.datetime "dtm_upd", null: false
    t.string "integrity_value", limit: 500
  end
 
  create_table "coll_activity_upd_coll_case", force: :cascade do |t|
    t.bigint "coll_activity_upd_coll_case_id", null: false
    t.bigint "coll_activity_hist_id", null: false
    t.string "mr_action_upd_coll_case_code", limit: 50, null: false
    t.bigint "coll_case_id", null: false
  end
 
  create_table "coll_agrmnt", force: :cascade do |t|
    t.bigint "coll_agrmnt_id", null: false
    t.string "agrmnt_no", limit: 100, null: false
    t.string "office_sales_code", limit: 50, null: false
    t.string "office_sales_name", limit: 100, null: false
    t.string "office_collection_code", limit: 50, null: false
    t.string "office_collection_name", limit: 100, null: false
    t.string "lob_code", limit: 50, null: false
    t.bigint "cms_schm_id", null: false
    t.bigint "cust_id", null: false
    t.string "mailing_prov_code", limit: 50
    t.string "mailing_district_code", limit: 50
    t.string "mailing_zipcode", limit: 50, null: false
    t.string "mailing_subzipcode", limit: 50
    t.string "mailing_city", limit: 50, null: false
    t.string "mailing_area_code_1", limit: 50, null: false
    t.string "mailing_area_code_2", limit: 50, null: false
    t.string "mailing_area_code_3", limit: 50
    t.string "mailing_area_code_4", limit: 50
    t.string "mailing_addr", limit: 1000, null: false
    t.decimal "mailing_addr_latitude", precision: 18, scale: 0
    t.decimal "mailing_addr_longitude", precision: 18, scale: 0
    t.integer "mailing_addr_accuracy"
    t.string "sales_officer_username", limit: 50
    t.string "contract_stat_code", limit: 50
    t.string "default_stat_code", limit: 50
    t.string "prepaid_hold_stat_code", limit: 50
    t.integer "tenor", null: false
    t.integer "num_of_inst", null: false
    t.integer "overdue_days", null: false
    t.bigint "coll_grp_id"
    t.bigint "coll_type_id"
    t.bigint "cms_schm_bucket_id"
    t.bigint "ref_coll_bucket_id"
    t.float "coll_score", null: false
    t.string "mr_coll_score_category_code", limit: 4000
    t.bigint "coll_case_id"
    t.datetime "start_dt"
    t.datetime "scheduled_end_dt"
    t.string "cg_head", limit: 50
    t.bigint "supervisor_id"
    t.bigint "coll_grp_collector_id"
    t.datetime "promise_to_pay_dt"
    t.integer "broken_promise_num", null: false
    t.boolean "is_spv_attention", null: false
    t.datetime "next_plan_dt"
    t.bigint "next_plan_coll_action_id"
    t.bigint "unit_collector_id"
    t.bigint "unit_supervisor_id"
    t.boolean "is_coll_block", null: false
    t.boolean "is_update_mailing", null: false
    t.boolean "is_escalate_manual", null: false
    t.datetime "agrmnt_dt", null: false
    t.boolean "is_ready_to_repo", null: false
    t.boolean "is_handled_by_profcoll", null: false
    t.bigint "clctblty_stat_cms_id"
    t.integer "score_category_num", null: false
    t.string "flag", limit: 50
    t.string "curr_code", limit: 50, null: false
    t.string "mr_assign_period_code", limit: 50
    t.string "persona", limit: 50
    t.bigint "ref_zipcode_id"
    t.string "virtual_acc_no", limit: 100
    t.string "app_no", limit: 100
    t.string "mr_inst_schm_code", limit: 50
    t.boolean "is_case_act", default: false, null: false
  end
 
  create_table "coll_agrmnt_asset_opl", force: :cascade do |t|
    t.bigint "coll_agrmnt_asset_opl_id", null: false
    t.string "asset_no", limit: 100, null: false
    t.string "mr_coll_stat_code", limit: 50, null: false
    t.datetime "prev_overdue_dt"
    t.datetime "start_dt"
    t.datetime "expired_dt"
    t.string "mr_coll_event_code", limit: 50
    t.string "notes", limit: 4000
    t.bigint "prev_collector_id"
    t.datetime "task_aging_days", null: false
    t.datetime "promise_to_pay_dt"
    t.integer "broken_promise_num", null: false
    t.datetime "last_activity_dt"
    t.datetime "next_plan_dt"
    t.bigint "current_collector_id", null: false
    t.datetime "last_assign_dt"
    t.string "last_ref_wop_code", limit: 50
    t.boolean "is_ever_repo", null: false
    t.datetime "due_dt"
    t.string "curr_code", limit: 50, null: false
    t.bigint "coll_schm_id", null: false
    t.boolean "is_ever_assign_ext_collector", null: false
    t.integer "overdue_days", null: false
    t.decimal "overdue_amt", precision: 18, scale: 0, null: false
    t.integer "rent_no_overdue", null: false
    t.integer "prev_rent_no_overdue", null: false
  end
 
  create_table "coll_agrmnt_collateral", force: :cascade do |t|
    t.bigint "coll_agrmnt_collateral_id", null: false
    t.bigint "coll_agrmnt_id", null: false
    t.string "collateral_no", limit: 100, null: false
    t.string "full_asset_code", limit: 500, null: false
    t.string "full_asset_name", limit: 1000, null: false
    t.string "mr_collateral_stat", limit: 50, null: false
    t.string "serial_no_1", limit: 50
    t.string "serial_no_2", limit: 50
    t.string "serial_no_3", limit: 50
    t.string "serial_no_4", limit: 50
    t.string "serial_no_5", limit: 50
    t.decimal "collateral_value_amt", precision: 18, scale: 0, null: false
    t.string "asset_type_code", limit: 50, null: false
    t.string "asset_category_code", limit: 50, null: false
    t.integer "manufacturing_year", null: false
    t.boolean "is_main_collateral", null: false
    t.boolean "is_ready_to_repo", null: false
    t.string "color", limit: 50
    t.datetime "collateral_selling_expected_dt"
  end
 
  create_table "coll_agrmnt_collateral_history", force: :cascade do |t|
    t.bigint "coll_agrmnt_collateral_id", null: false
    t.bigint "coll_agrmnt_id", null: false
    t.string "collateral_no", limit: 100, null: false
    t.string "full_asset_code", limit: 50, null: false
    t.string "full_asset_name", limit: 50, null: false
    t.string "mr_collateral_stat", limit: 50, null: false
    t.string "serial_no_1", limit: 50
    t.string "serial_no_2", limit: 50
    t.string "serial_no_3", limit: 50
    t.string "serial_no_4", limit: 50
    t.string "serial_no_5", limit: 50
    t.decimal "collateral_value_amt", precision: 18, scale: 0, null: false
    t.string "asset_type_code", limit: 50, null: false
    t.string "asset_category_code", limit: 50, null: false
    t.integer "manufacturing_year", null: false
    t.boolean "is_main_collateral", null: false
    t.boolean "is_ready_to_repo", null: false
    t.string "color", limit: 50
    t.datetime "collateral_selling_expected_dt"
    t.datetime "start_time", null: false
    t.datetime "end_time", null: false
    t.string "modified_user", limit: 64, null: false
  end
 
  create_table "coll_agrmnt_collateral_owner", force: :cascade do |t|
    t.bigint "coll_agrmnt_collateral_owner_id", null: false
    t.bigint "coll_agrmnt_collateral_id", null: false
    t.string "owner_name", limit: 500
    t.string "mr_id_type_code", limit: 50
    t.string "owner_id_no", limit: 50
    t.string "owner_addr", limit: 1000
    t.string "owner_area_code_1", limit: 50
    t.string "owner_area_code_2", limit: 50
    t.string "owner_area_code_3", limit: 50
    t.string "owner_area_code_4", limit: 50
    t.string "owner_city", limit: 50
    t.string "owner_zipcode", limit: 50
    t.string "owner_mobile_phn_no", limit: 50
    t.string "mr_owner_relationship_code", limit: 50
  end
 
  create_table "coll_agrmnt_fin_data", force: :cascade do |t|
    t.bigint "agrmnt_fin_data_id", null: false
    t.bigint "coll_agrmnt_id", null: false
    t.decimal "inst_amt", precision: 18, scale: 0, null: false
    t.decimal "inst_overdue_amt", precision: 18, scale: 0, null: false
    t.decimal "os_lc_inst_amt", precision: 18, scale: 0, null: false
    t.decimal "os_lc_inst_adm_fee_amt", precision: 18, scale: 0, null: false
    t.decimal "os_charge_receivable_amt", precision: 18, scale: 0, null: false
    t.decimal "os_ar", precision: 18, scale: 0, null: false
    t.decimal "wo_amt", precision: 18, scale: 0, null: false
    t.decimal "os_wo_amt", precision: 18, scale: 0, null: false
    t.decimal "rem_deal_amt", precision: 18, scale: 0, null: false
    t.datetime "prev_overdue_dt"
    t.integer "prev_inst_no_overdue"
    t.decimal "total_os_principal_amt", precision: 18, scale: 0, null: false
    t.decimal "total_os_interest_amt", precision: 18, scale: 0, null: false
    t.integer "last_inst_paid_no"
    t.datetime "last_inst_paid_dt"
    t.string "last_wop", limit: 50
    t.datetime "next_inst_dt"
    t.integer "next_inst_no"
    t.datetime "next_inst_due_dt"
    t.integer "next_inst_due_no"
    t.decimal "prepaid_amt", precision: 18, scale: 0, null: false
  end
 
  create_table "coll_agrmnt_fin_data_asset", force: :cascade do |t|
    t.bigint "coll_agrmnt_fin_data_asset_id", null: false
    t.bigint "coll_agrmnt_id", null: false
    t.string "collateral_no", limit: 100, null: false
    t.integer "overdue_days", null: false
    t.decimal "inst_amt", precision: 18, scale: 0, null: false
    t.decimal "inst_overdue_amt", precision: 18, scale: 0, null: false
    t.decimal "os_lc_inst_amt", precision: 18, scale: 0, null: false
    t.decimal "os_lc_inst_adm_fee_amt", precision: 18, scale: 0, null: false
    t.decimal "os_charge_receivable_amt", precision: 18, scale: 0, null: false
    t.decimal "os_ar", precision: 18, scale: 0, null: false
    t.decimal "wo_amt", precision: 18, scale: 0, null: false
    t.decimal "os_wo_amt", precision: 18, scale: 0, null: false
    t.decimal "rem_deal_amt", precision: 18, scale: 0, null: false
    t.datetime "prev_overdue_dt"
    t.integer "prev_inst_no_overdue"
    t.decimal "total_os_principal_amt", precision: 18, scale: 0, null: false
    t.decimal "total_os_interest_amt", precision: 18, scale: 0, null: false
    t.integer "last_inst_paid_no"
    t.datetime "last_inst_paid_dt"
    t.string "last_wop", limit: 50
    t.datetime "next_inst_dt"
    t.integer "next_inst_no"
    t.integer "next_inst_due_no"
    t.datetime "next_inst_due_dt"
  end
 
  create_table "coll_agrmnt_fin_data_history", force: :cascade do |t|
    t.bigint "agrmnt_fin_data_id", null: false
    t.bigint "coll_agrmnt_id", null: false
    t.decimal "inst_amt", precision: 18, scale: 0, null: false
    t.decimal "inst_overdue_amt", precision: 18, scale: 0, null: false
    t.decimal "os_lc_inst_amt", precision: 18, scale: 0, null: false
    t.decimal "os_lc_inst_adm_fee_amt", precision: 18, scale: 0, null: false
    t.decimal "os_charge_receivable_amt", precision: 18, scale: 0, null: false
    t.decimal "os_ar", precision: 18, scale: 0, null: false
    t.decimal "wo_amt", precision: 18, scale: 0, null: false
    t.decimal "os_wo_amt", precision: 18, scale: 0, null: false
    t.decimal "rem_deal_amt", precision: 18, scale: 0, null: false
    t.datetime "prev_overdue_dt"
    t.integer "prev_inst_no_overdue"
    t.decimal "total_os_principal_amt", precision: 18, scale: 0, null: false
    t.decimal "total_os_interest_amt", precision: 18, scale: 0, null: false
    t.integer "last_inst_paid_no"
    t.datetime "last_inst_paid_dt"
    t.string "last_wop", limit: 50
    t.integer "next_inst_due_no"
    t.datetime "next_inst_due_dt"
    t.decimal "prepaid_amt", precision: 18, scale: 0, null: false
    t.datetime "start_time", null: false
    t.datetime "end_time", null: false
    t.string "modified_user", limit: 64, null: false
    t.datetime "next_inst_dt"
    t.integer "next_inst_no"
  end
 
  create_table "coll_agrmnt_guarantor", force: :cascade do |t|
    t.bigint "coll_agrmnt_guarantor_id", null: false
    t.bigint "coll_agrmnt_id", null: false
    t.bigint "cust_guarantor_id", null: false
    t.string "mr_cust_relation_code", limit: 50, null: false
  end
 
  create_table "coll_agrmnt_hist", force: :cascade do |t|
    t.bigint "coll_agrmnt_hist_id", null: false
    t.bigint "coll_agrmnt_id", null: false
    t.string "agrmnt_no", limit: 100, null: false
    t.string "office_sales_code", limit: 50, null: false
    t.string "office_sales_name", limit: 100, null: false
    t.string "office_collection_code", limit: 50, null: false
    t.string "office_collection_name", limit: 100, null: false
    t.string "lob_code", limit: 50, null: false
    t.bigint "cms_schm_id", null: false
    t.bigint "cust_id", null: false
    t.string "mailing_prov_code", limit: 50
    t.string "mailing_district_code", limit: 50
    t.string "mailing_zipcode", limit: 50, null: false
    t.string "mailing_subzipcode", limit: 50
    t.string "mailing_city", limit: 50, null: false
    t.string "mailing_area_code_1", limit: 50, null: false
    t.string "mailing_area_code_2", limit: 50, null: false
    t.string "mailing_area_code_3", limit: 50
    t.string "mailing_area_code_4", limit: 50
    t.string "mailing_addr", limit: 1000, null: false
    t.decimal "mailing_addr_latitude", precision: 18, scale: 0
    t.decimal "mailing_addr_longitude", precision: 18, scale: 0
    t.integer "mailing_addr_accuracy"
    t.string "sales_officer_username", limit: 50
    t.string "contract_stat_code", limit: 50
    t.string "default_stat_code", limit: 50
    t.integer "tenor", null: false
    t.integer "num_of_inst", null: false
    t.integer "overdue_days", null: false
    t.bigint "coll_grp_id"
    t.bigint "coll_type_id"
    t.bigint "ref_coll_bucket_id"
    t.float "coll_score", null: false
    t.string "mr_coll_score_category_code", limit: 4000
    t.bigint "coll_case_id"
    t.datetime "start_dt"
    t.datetime "scheduled_end_dt"
    t.datetime "end_dt"
    t.string "cg_head", limit: 50
    t.bigint "supervisor_id"
    t.bigint "coll_grp_collector_id"
    t.datetime "promise_to_pay_dt"
    t.integer "broken_promise_num", null: false
    t.boolean "is_spv_attention", null: false
    t.datetime "next_plan_dt"
    t.bigint "next_plan_coll_action_id"
  end
 
  create_table "coll_agrmnt_history", force: :cascade do |t|
    t.bigint "coll_agrmnt_id", null: false
    t.string "agrmnt_no", limit: 100, null: false
    t.string "office_sales_code", limit: 50, null: false
    t.string "office_sales_name", limit: 100, null: false
    t.string "office_collection_code", limit: 50, null: false
    t.string "office_collection_name", limit: 100, null: false
    t.string "lob_code", limit: 50, null: false
    t.bigint "cms_schm_id", null: false
    t.bigint "cust_id", null: false
    t.string "mailing_prov_code", limit: 50
    t.string "mailing_district_code", limit: 50
    t.string "mailing_zipcode", limit: 50, null: false
    t.string "mailing_subzipcode", limit: 50
    t.string "mailing_city", limit: 50, null: false
    t.string "mailing_area_code_1", limit: 50, null: false
    t.string "mailing_area_code_2", limit: 50, null: false
    t.string "mailing_area_code_3", limit: 50
    t.string "mailing_area_code_4", limit: 50
    t.string "mailing_addr", limit: 1000, null: false
    t.decimal "mailing_addr_latitude", precision: 18, scale: 0
    t.decimal "mailing_addr_longitude", precision: 18, scale: 0
    t.integer "mailing_addr_accuracy"
    t.string "sales_officer_username", limit: 50
    t.string "contract_stat_code", limit: 50
    t.string "default_stat_code", limit: 50
    t.integer "tenor", null: false
    t.integer "num_of_inst", null: false
    t.integer "overdue_days", null: false
    t.bigint "coll_grp_id"
    t.bigint "coll_type_id"
    t.bigint "cms_schm_bucket_id"
    t.float "coll_score", null: false
    t.string "mr_coll_score_category_code", limit: 4000
    t.bigint "coll_case_id"
    t.datetime "start_dt"
    t.datetime "scheduled_end_dt"
    t.string "cg_head", limit: 50
    t.bigint "supervisor_id"
    t.bigint "coll_grp_collector_id"
    t.datetime "promise_to_pay_dt"
    t.integer "broken_promise_num", null: false
    t.boolean "is_spv_attention", null: false
    t.datetime "next_plan_dt"
    t.bigint "next_plan_coll_action_id"
    t.bigint "unit_collector_id"
    t.bigint "unit_supervisor_id"
    t.boolean "is_coll_block", null: false
    t.boolean "is_update_mailing", null: false
    t.boolean "is_escalate_manual", null: false
    t.datetime "agrmnt_dt", null: false
    t.boolean "is_ready_to_repo", null: false
    t.boolean "is_handled_by_profcoll", null: false
    t.bigint "clctblty_stat_cms_id"
    t.string "flag", limit: 50
    t.integer "score_category_num", null: false
    t.string "prepaid_hold_stat_code", limit: 50
    t.string "curr_code", limit: 50, null: false
    t.datetime "start_time", null: false
    t.datetime "end_time", null: false
    t.string "modified_user", limit: 64, null: false
    t.string "persona", limit: 50
    t.string "mr_assign_period_code", limit: 50
    t.bigint "ref_coll_bucket_id"
    t.bigint "ref_zipcode_id"
  end
 
  create_table "coll_agrmnt_mailing_addr_hist", force: :cascade do |t|
    t.bigint "coll_agrmnt_mailing_addr_hist_id", null: false
    t.bigint "coll_agrmnt_id", null: false
    t.bigint "cust_id", null: false
    t.string "mailing_prov_code", limit: 50
    t.string "mailing_district_code", limit: 50
    t.string "mailing_zipcode", limit: 50, null: false
    t.string "mailing_subzipcode", limit: 50
    t.string "mailing_city", limit: 50, null: false
    t.string "mailing_area_code_1", limit: 50, null: false
    t.string "mailing_area_code_2", limit: 50, null: false
    t.string "mailing_area_code_3", limit: 50
    t.string "mailing_area_code_4", limit: 50
    t.string "mailing_addr", limit: 1000, null: false
    t.decimal "mailing_addr_latitude", precision: 18, scale: 0
    t.decimal "mailing_addr_longitude", precision: 18, scale: 0
    t.integer "mailing_addr_accuracy"
    t.datetime "agrmnt_dt", null: false
  end
 
  create_table "coll_case", force: :cascade do |t|
    t.bigint "coll_case_id", null: false
    t.string "coll_case_code", limit: 50, null: false
    t.string "descr", limit: 4000, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "coll_expense", force: :cascade do |t|
    t.bigint "coll_expense_id", null: false
    t.bigint "coll_agrmnt_id", null: false
    t.bigint "coll_grp_id", null: false
    t.string "coll_expense_no", limit: 100, null: false
    t.string "coll_expense_stat_code", limit: 50
    t.string "mr_unit_holder_code", limit: 50
    t.string "mr_unit_location_code", limit: 50
    t.string "mr_handling_by_code", limit: 50
    t.string "mr_handling_type_code", limit: 50
    t.string "mr_registration_doc_stat_code", limit: 50
    t.string "disburse_to_vendor_code", limit: 200
    t.string "disburse_to_internal_username", limit: 200
    t.string "disburse_to_name", limit: 200
    t.decimal "std_coll_expense_amt", precision: 18, scale: 0, null: false
    t.decimal "coll_expense_amt", precision: 18, scale: 0, null: false
    t.string "bank_code", limit: 50
    t.string "bank_branch", limit: 200
    t.string "acc_no", limit: 50
    t.string "acc_name", limit: 500
    t.datetime "req_dt", null: false
    t.string "req_by_username", limit: 50, null: false
    t.string "req_reason_code", limit: 50
    t.string "req_notes", limit: 4000
    t.string "mr_coll_expense_pay_type_code", limit: 50, null: false
    t.boolean "is_reversed", null: false
    t.datetime "reversed_dt"
    t.string "reversed_by_username", limit: 50
    t.string "reversed_reason_code", limit: 50
    t.string "reversed_notes", limit: 4000
    t.string "acc_payable_no", limit: 100
    t.string "coll_expense_journal_no", limit: 100
    t.string "reverse_journal_no", limit: 100
    t.bigint "coll_agrmnt_collateral_id"
    t.string "collateral_no", limit: 100
    t.string "full_asset_code", limit: 500
    t.string "full_asset_name", limit: 1000
    t.string "serial_no_1", limit: 50
    t.string "serial_no_2", limit: 50
    t.string "serial_no_3", limit: 50
    t.string "coll_expense_type_code", limit: 50
    t.string "agrmnt_charge_rcvable_no", limit: 50
    t.decimal "agrmnt_charged_amt", precision: 18, scale: 0, default: 0, null: false
  end
 
  create_table "coll_expense_alloc", force: :cascade do |t|
    t.bigint "coll_expense_alloc_id", null: false
    t.bigint "coll_expense_id", null: false
    t.string "payment_alloc_code", limit: 50, null: false
    t.string "biz_unit_code", limit: 50
    t.string "origin_office_code", limit: 50
    t.string "trx_descr", limit: 4000
    t.decimal "trx_amt", precision: 18, scale: 0, null: false
    t.string "mr_tax_calc_method_code", limit: 50, null: false
    t.boolean "is_vat", null: false
    t.string "vat_type_code", limit: 50
    t.decimal "vat_taxable_amt", precision: 18, scale: 0
    t.decimal "vat_amt", precision: 18, scale: 0
    t.boolean "is_wht", null: false
    t.string "wht_type_code", limit: 50
    t.string "mr_income_type_code", limit: 50
    t.decimal "wht_taxable_amt", precision: 18, scale: 0
    t.decimal "wht_amt", precision: 18, scale: 0
    t.decimal "amt_after_tax", precision: 18, scale: 0, null: false
    t.string "emp_no", limit: 50
    t.decimal "disburse_amt", precision: 18, scale: 0, null: false
    t.decimal "expense_amt", precision: 18, scale: 0, null: false
  end
 
  create_table "coll_expense_attr", force: :cascade do |t|
    t.bigint "coll_expense_attr_id", null: false
    t.bigint "coll_expense_alloc_id", null: false
    t.string "payment_alloc_attr_code", limit: 50, null: false
    t.string "attr_value", limit: 100, null: false
  end
 
  create_table "coll_expense_cost_master", force: :cascade do |t|
    t.bigint "coll_expense_cost_master_id", null: false
    t.bigint "coll_expense_alloc_id", null: false
    t.bigint "parent_ref_cost_master_d_id"
    t.bigint "ref_cost_master_d_id", null: false
    t.integer "level_no", default: 0, null: false
  end
 
  create_table "coll_grp", force: :cascade do |t|
    t.bigint "coll_grp_id", null: false
    t.string "coll_grp_code", limit: 50, null: false
    t.string "coll_grp_name", limit: 50, null: false
    t.string "coll_grp_head_username", limit: 50, null: false
    t.boolean "is_handle_desk_coll", null: false
    t.boolean "is_handle_field_coll", null: false
    t.boolean "is_handle_recovery", null: false
    t.boolean "is_handle_remedial", null: false
    t.boolean "is_active", null: false
    t.string "mr_assignment_period", limit: 100, null: false
    t.boolean "is_desk_coll_as_account_owner", null: false
    t.string "center_grp_code", limit: 50, null: false
    t.string "office_code", limit: 50, null: false
    t.string "office_addr", limit: 200, null: false
    t.string "addr", limit: 200, null: false
    t.string "zipcode", limit: 50, null: false
    t.string "area_code_1", limit: 50, null: false
    t.string "area_code_2", limit: 50, null: false
    t.string "area_code_3", limit: 50, null: false
    t.string "area_code_4", limit: 50, null: false
    t.string "city", limit: 50, null: false
    t.string "phn_area_1", limit: 20
    t.string "phn_1", limit: 50
    t.string "phn_ext_1", limit: 10
    t.string "phn_area_2", limit: 20
    t.string "phn_2", limit: 50
    t.string "phn_ext_2", limit: 10
    t.string "fax_area", limit: 20
    t.string "fax", limit: 50
    t.string "cntct_person_name", limit: 100, null: false
    t.string "cntct_person_job_title", limit: 100, null: false
    t.string "cntct_person_email_1", limit: 200, null: false
    t.string "cntct_person_mobile_phn_no_1", limit: 50, null: false
    t.string "cntct_person_mobile_phn_no_2", limit: 50, null: false
    t.string "mr_office_class_code", limit: 100, null: false
    t.string "holiday_schm_h_code", limit: 50, null: false
    t.string "working_hour_schm_h_code", limit: 50, null: false
    t.boolean "is_using_telephony", null: false
    t.string "mr_area_handling_type", limit: 50, null: false
  end
 
  create_table "coll_grp_collector", force: :cascade do |t|
    t.bigint "coll_grp_collector_id", null: false
    t.bigint "coll_grp_id", null: false
    t.string "username", limit: 50, null: false
    t.datetime "start_dt", null: false
    t.datetime "end_dt", null: false
    t.boolean "is_active", null: false
    t.string "mr_seniority_lvl_code", limit: 50, null: false
    t.integer "max_daily_workload", null: false
    t.decimal "max_cash_on_hand", precision: 18, scale: 0, null: false
    t.bigint "coll_type_id"
    t.string "supervisor_username", limit: 50
  end
 
  create_table "coll_grp_collector_history", force: :cascade do |t|
    t.bigint "coll_grp_collector_id", null: false
    t.bigint "coll_grp_id", null: false
    t.string "username", limit: 50, null: false
    t.datetime "start_dt", null: false
    t.datetime "end_dt", null: false
    t.boolean "is_active", null: false
    t.string "mr_seniority_lvl_code", limit: 50, null: false
    t.integer "max_daily_workload", null: false
    t.decimal "max_cash_on_hand", precision: 18, scale: 0, null: false
    t.bigint "coll_type_id"
    t.datetime "start_time", null: false
    t.datetime "end_time", null: false
    t.string "modified_user", limit: 64, null: false
  end
 
  create_table "coll_grp_draft", force: :cascade do |t|
    t.bigint "coll_grp_draft_id", null: false
    t.string "coll_grp_code", limit: 50, null: false
    t.string "coll_grp_name", limit: 50, null: false
    t.boolean "is_handle_desk_coll", null: false
    t.boolean "is_handle_field_coll", null: false
    t.boolean "is_handle_recovery", null: false
    t.boolean "is_handle_remedial", null: false
    t.boolean "is_active", null: false
    t.string "mr_assignment_period", limit: 100, null: false
    t.boolean "is_desk_coll_as_account_owner", null: false
    t.string "center_grp_code", limit: 50, null: false
    t.string "holiday_schm_h_code", limit: 50, null: false
    t.string "working_hour_schm_h_code", limit: 50, null: false
    t.boolean "is_using_telephony", null: false
  end
 
  create_table "coll_grp_history", force: :cascade do |t|
    t.bigint "coll_grp_id", null: false
    t.string "coll_grp_code", limit: 50, null: false
    t.string "coll_grp_name", limit: 50, null: false
    t.string "coll_grp_head_username", limit: 50, null: false
    t.boolean "is_handle_desk_coll", null: false
    t.boolean "is_handle_field_coll", null: false
    t.boolean "is_handle_recovery", null: false
    t.boolean "is_handle_remedial", null: false
    t.boolean "is_active", null: false
    t.string "mr_assignment_period", limit: 100, null: false
    t.boolean "is_desk_coll_as_account_owner", null: false
    t.string "center_grp_code", limit: 50, null: false
    t.string "office_code", limit: 50, null: false
    t.string "office_addr", limit: 200, null: false
    t.string "addr", limit: 200, null: false
    t.string "zipcode", limit: 50, null: false
    t.string "area_code_1", limit: 50, null: false
    t.string "area_code_2", limit: 50, null: false
    t.string "area_code_3", limit: 50, null: false
    t.string "area_code_4", limit: 50, null: false
    t.string "city", limit: 50, null: false
    t.string "phn_area_1", limit: 20
    t.string "phn_1", limit: 50
    t.string "phn_ext_1", limit: 10
    t.string "phn_area_2", limit: 20
    t.string "phn_2", limit: 50
    t.string "phn_ext_2", limit: 10
    t.string "fax_area", limit: 20
    t.string "fax", limit: 50
    t.string "cntct_person_name", limit: 100, null: false
    t.string "cntct_person_job_title", limit: 100, null: false
    t.string "cntct_person_email_1", limit: 200, null: false
    t.string "cntct_person_mobile_phn_no_1", limit: 50, null: false
    t.string "cntct_person_mobile_phn_no_2", limit: 50, null: false
    t.string "mr_office_class_code", limit: 100, null: false
    t.string "holiday_schm_h_code", limit: 50, null: false
    t.string "working_hour_schm_h_code", limit: 50, null: false
    t.boolean "is_using_telephony", null: false
    t.string "mr_area_handling_type", limit: 50, null: false
    t.datetime "start_time", null: false
    t.datetime "end_time", null: false
    t.string "modified_user", limit: 64, null: false
  end
 
  create_table "coll_grp_lob", force: :cascade do |t|
    t.bigint "coll_grp_lob_id", null: false
    t.bigint "coll_grp_id", null: false
    t.string "lob_code", limit: 50, null: false
  end
 
  create_table "coll_grp_lob_draft", force: :cascade do |t|
    t.bigint "coll_grp_lob_draft_id", null: false
    t.bigint "coll_grp_draft_id", null: false
    t.string "lob_code", limit: 50, null: false
  end
 
  create_table "coll_grp_office_member", force: :cascade do |t|
    t.bigint "coll_grp_office_member_id", null: false
    t.bigint "coll_grp_id", null: false
    t.string "office_code", limit: 50, null: false
    t.string "office_name", limit: 50, null: false
  end
 
  create_table "coll_grp_office_member_draft", force: :cascade do |t|
    t.bigint "coll_grp_office_member_draft_id", null: false
    t.bigint "coll_grp_draft_id", null: false
    t.string "office_code", limit: 50, null: false
    t.string "office_name", limit: 50, null: false
  end
 
  create_table "coll_grp_org_member", force: :cascade do |t|
    t.bigint "coll_grp_org_member_id", null: false
    t.bigint "coll_grp_id", null: false
    t.string "username", limit: 50, null: false
    t.boolean "is_active", null: false
    t.bigint "coll_type_id"
    t.string "mr_unit_coll_grp_org_type_code", limit: 50, null: false
  end
 
  create_table "coll_grp_zipcode_member", force: :cascade do |t|
    t.bigint "coll_grp_zipcode_member_id", null: false
    t.bigint "coll_grp_id", null: false
    t.bigint "ref_zipcode_id", null: false
  end
 
  create_table "coll_grp_zipcode_member_draft", force: :cascade do |t|
    t.bigint "coll_grp_zipcode_member_draft_id", null: false
    t.bigint "coll_grp_draft_id", null: false
    t.bigint "ref_zipcode_id", null: false
  end
 
  create_table "coll_result", force: :cascade do |t|
    t.bigint "coll_result_id", null: false
    t.string "result_code", limit: 50, null: false
    t.string "result_name", limit: 100, null: false
    t.string "mr_result_category", limit: 50, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "coll_risk_category", force: :cascade do |t|
    t.bigint "coll_risk_category_id", null: false
    t.string "coll_risk_category_code", limit: 50, null: false
    t.string "descr", limit: 4000, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "coll_task_desk_d", force: :cascade do |t|
    t.bigint "coll_task_desk_h_id", null: false
    t.string "question_code", limit: 50, null: false
    t.string "answer_value", limit: 4000
    t.string "answer_value_desc", limit: 4000
    t.datetime "working_dt"
    t.integer "seq_no", null: false
    t.bigint "coll_activity_hist_id"
  end
 
  create_table "coll_task_desk_h", force: :cascade do |t|
    t.bigint "coll_task_desk_h_id"
    t.bigint "coll_agrmnt_id"
    t.string "task_no", limit: 100
    t.bigint "coll_grp_id", null: false
    t.bigint "unit_collector_id", null: false
    t.bigint "collector_id", null: false
    t.integer "priority_score", null: false
    t.integer "coll_task_seq_no", null: false
    t.datetime "coll_task_start_dt"
    t.datetime "coll_task_end_dt", null: false
    t.string "mr_desk_coll_task_type_code", limit: 50
    t.string "coll_task_req_by_username", limit: 50, null: false
    t.string "input_by_username", limit: 50, null: false
    t.datetime "input_dt", null: false
    t.bigint "last_coll_action_id", null: false
    t.bigint "last_coll_result_id", null: false
    t.datetime "working_dt", null: false
    t.string "coll_task_stat_code", limit: 50, null: false
    t.string "mr_task_adhoc_target_code", limit: 50, null: false
    t.datetime "last_activity_dt", null: false
    t.boolean "auto_regenerate"
    t.string "coll_bucket_code", limit: 50, null: false
  end
 
  create_table "coll_task_field_d", force: :cascade do |t|
    t.bigint "coll_task_field_d_id"
    t.bigint "coll_task_field_h_id"
    t.string "question_code", limit: 50
    t.string "question_name", limit: 100
    t.string "answer_value", limit: 4000, null: false
    t.string "answer_value_desc", limit: 4000, null: false
    t.bigint "coll_activity_hist_id", null: false
  end
 
  create_table "coll_task_field_h", force: :cascade do |t|
    t.bigint "coll_task_field_h_id"
    t.bigint "coll_agrmnt_id"
    t.string "task_no", limit: 100
    t.bigint "coll_grp_id", null: false
    t.integer "priority_score", null: false
    t.integer "coll_task_seq_no", null: false
    t.datetime "coll_task_start_dt"
    t.datetime "coll_task_end_dt"
    t.string "mr_field_coll_task_type_code", limit: 50
    t.bigint "collector_id", null: false
    t.string "vendor_code", limit: 50, null: false
    t.bigint "unit_collector_id", null: false
    t.string "coll_task_req_by_username", limit: 50
    t.string "input_by_username", limit: 50
    t.datetime "input_dt"
    t.bigint "last_coll_action_id", null: false
    t.bigint "last_coll_result_id", null: false
    t.datetime "working_dt", null: false
    t.string "coll_task_stat_code", limit: 50
    t.string "mr_task_adhoc_target_code", limit: 50, null: false
    t.boolean "is_included_in_daily_task_plan"
    t.string "included_in_daily_task_plan_by", limit: 50
    t.boolean "is_sent_to_mobile"
    t.bigint "mobile_coll_task_id", null: false
    t.string "coll_bucket_code", limit: 50, null: false
  end
 
  create_table "coll_type", force: :cascade do |t|
    t.bigint "coll_type_id"
    t.string "coll_type_code", limit: 50
    t.string "coll_type_name", limit: 100
    t.string "module_code", limit: 50
    t.boolean "has_bucket"
    t.boolean "is_auto_assign_coll"
  end
 
  create_table "coll_warn_ltr", force: :cascade do |t|
    t.bigint "coll_warn_ltr_id"
    t.bigint "coll_agrmnt_id"
    t.string "mr_warn_ltr_type", limit: 50
    t.string "warn_ltr_no", limit: 100
    t.datetime "warn_ltr_issue_dt"
    t.integer "overdue_days"
    t.datetime "due_dt", null: false
    t.decimal "inst_overdue_amt", precision: 18, scale: 0
    t.decimal "os_lc_inst_amt", precision: 18, scale: 0
    t.decimal "os_lc_inst_adm_fee_amt", precision: 18, scale: 0
    t.decimal "os_charge_receivable_amt", precision: 18, scale: 0
    t.decimal "os_ar", precision: 18, scale: 0
    t.string "mr_coll_warn_ltr_stat", limit: 50
    t.boolean "is_printed"
    t.datetime "print_dt", null: false
    t.string "username", limit: 50
    t.boolean "is_return"
    t.datetime "return_dt", null: false
    t.string "return_by", limit: 100, null: false
    t.string "return_notes", limit: 4000, null: false
    t.boolean "is_delivered"
    t.datetime "delivery_dt", null: false
    t.string "delivered_by", limit: 100, null: false
    t.string "delivered_notes", limit: 4000, null: false
    t.boolean "is_dms"
  end
 
  create_table "coll_warn_ltr_print_hist", force: :cascade do |t|
    t.bigint "coll_warn_ltr_print_hist_id"
    t.bigint "coll_warn_ltr_id"
    t.datetime "print_dt"
    t.string "print_by_username", limit: 50
  end
 
  create_table "collateral_check_list", force: :cascade do |t|
    t.bigint "collateral_check_list_id"
    t.string "asset_type_code", limit: 50
    t.string "asset_category_code", limit: 50
    t.string "mr_collateral_check_list_grp_code", limit: 50
    t.string "collateral_check_list_code", limit: 50
    t.string "descr", limit: 200
    t.string "mr_collateral_check_list_question_type_code", limit: 50
    t.boolean "is_active"
  end
 
  create_table "collector", force: :cascade do |t|
    t.bigint "collector_id"
    t.string "emp_name", limit: 500, null: false
    t.string "emp_no", limit: 100, null: false
    t.bigint "supervisor_id", null: false
    t.boolean "is_active"
    t.integer "max_workload_amt"
    t.string "module_code", limit: 50, null: false
    t.integer "workload_amt"
    t.string "notes", limit: 4000, null: false
    t.bigint "coll_type_id"
    t.string "tax_payer_no", limit: 100, null: false
    t.string "tax_payer_name", limit: 500, null: false
    t.boolean "is_pkp"
    t.string "tax_calculation_method", limit: 50, null: false
    t.string "tax_kind", limit: 1
  end
 
  create_table "collector_assistant", force: :cascade do |t|
    t.bigint "collector_assistant_id"
    t.boolean "is_active"
    t.bigint "assistant_id"
    t.bigint "collector_id"
  end
 
  create_table "collector_bank_acc", force: :cascade do |t|
    t.bigint "collector_bank_acc_id"
    t.bigint "collector_id"
    t.string "bank_code", limit: 50
    t.string "bank_branch", limit: 50
    t.string "bank_account_no", limit: 50
    t.string "bank_account_name", limit: 500
  end
 
  create_table "continue_credit", force: :cascade do |t|
    t.bigint "continue_credit_id"
    t.bigint "coll_agrmnt_id"
    t.bigint "coll_grp_id"
    t.string "continue_credit_no", limit: 50
    t.string "continue_credit_stat_code", limit: 25
    t.datetime "req_dt"
    t.string "req_by_username", limit: 25
    t.string "req_reason_code", limit: 25, null: false
    t.string "req_notes", limit: 2000, null: false
    t.datetime "exe_dt", null: false
    t.boolean "is_reversed"
    t.datetime "reversed_dt", null: false
    t.string "reversed_by_username", limit: 25, null: false
    t.string "reversed_reason_code", limit: 25, null: false
    t.string "reversed_notes", limit: 2000, null: false
  end
 
  create_table "cost_allocation_schm", force: :cascade do |t|
    t.bigint "cost_allocation_schm_id"
    t.bigint "parent_cost_allocation_schm_id", null: false
    t.bigint "ref_cost_master_d_id"
    t.boolean "is_final_level"
    t.string "payment_alloc_code", limit: 50, null: false
    t.boolean "is_active"
  end
 
  create_table "cust", force: :cascade do |t|
    t.bigint "cust_id"
    t.string "cust_no", limit: 100
    t.string "cust_name", limit: 500
    t.string "mr_cust_type_code", limit: 50
    t.boolean "is_vip"
    t.string "vip_notes", limit: 4000, null: false
    t.string "mr_gender_code", limit: 50, null: false
    t.string "mr_religion_code", limit: 50, null: false
    t.string "mr_education_code", limit: 50, null: false
    t.string "mr_nationality_code", limit: 50, null: false
    t.string "nationality_country_code", limit: 50, null: false
    t.string "email_1", limit: 100, null: false
    t.string "email_2", limit: 100, null: false
    t.string "emergncy_cntct_name", limit: 100, null: false
    t.string "emergncy_cntct_mobile_phn_no_1", limit: 100, null: false
    t.string "emergncy_cntct_mobile_phn_no_2", limit: 100, null: false
    t.string "emergncy_cntct_email", limit: 100, null: false
    t.string "emergncy_cntct_addr", limit: 4000, null: false
    t.string "emergncy_cntct_area_code_1", limit: 100, null: false
    t.string "emergncy_cntct_area_code_2", limit: 100, null: false
    t.string "emergncy_cntct_area_code_3", limit: 100, null: false
    t.string "emergncy_cntct_area_code_4", limit: 100, null: false
    t.string "emergncy_cntct_city", limit: 100, null: false
    t.string "emergncy_cntct_zipcode", limit: 20, null: false
    t.string "emergncy_cntct_phn_area", limit: 20, null: false
    t.string "emergncy_cntct_phn", limit: 50, null: false
    t.string "emergncy_cntct_phn_ext", limit: 10, null: false
    t.string "mr_company_type_code", limit: 50
    t.string "industry_type_code", limit: 50
    t.string "cntct_person_name", limit: 200, null: false
    t.string "cntct_person_job_position_code", limit: 50, null: false
    t.string "cntct_person_job_title_name", limit: 50, null: false
    t.string "cntct_person_mobile_phn_no", limit: 50, null: false
    t.string "cntct_person_email", limit: 100, null: false
    t.string "cntct_person_phn_area_1", limit: 20, null: false
    t.string "cntct_person_phn_1", limit: 50, null: false
    t.string "cntct_person_phn_ext_1", limit: 10, null: false
    t.boolean "is_upd_data_cust"
    t.bigint "clctblty_stat_cms_id", null: false
  end
 
  create_table "cust_addr_hist", force: :cascade do |t|
    t.bigint "cust_addr_hist_id"
    t.datetime "cust_addr_hist_dt"
    t.bigint "cust_id"
    t.string "mr_cust_addr_type_code", limit: 50
    t.string "mr_house_ownership_code", limit: 50, null: false
    t.string "addr", limit: 1000
    t.string "area_code_1", limit: 50, null: false
    t.string "area_code_2", limit: 50, null: false
    t.string "area_code_3", limit: 50, null: false
    t.string "area_code_4", limit: 50, null: false
    t.string "city", limit: 50, null: false
    t.string "zipcode", limit: 50, null: false
    t.string "subzipcode", limit: 50, null: false
    t.string "phn_area_1", limit: 20, null: false
    t.string "phn_1", limit: 50, null: false
    t.string "phn_ext_1", limit: 10, null: false
    t.string "phn_area_2", limit: 20, null: false
    t.string "phn_2", limit: 50, null: false
    t.string "phn_ext_2", limit: 10, null: false
    t.string "fax_area", limit: 20, null: false
    t.string "fax", limit: 20, null: false
    t.integer "stay_length_months", null: false
    t.boolean "is_sent_to_master_cust"
  end
 
  create_table "cust_mobile_phn", force: :cascade do |t|
    t.bigint "cust_mobile_phn_id"
    t.bigint "cust_id"
    t.string "mobile_phn_no", limit: 50
    t.string "mr_mobile_phn_stat", limit: 50, null: false
    t.boolean "is_alternate_phone"
    t.string "mr_alternate_source_code", limit: 50, null: false
    t.string "mr_alternate_source_context_code", limit: 50, null: false
  end
 
  create_table "cust_mobile_phn_hist", force: :cascade do |t|
    t.bigint "cust_mobile_phn_hist_id"
    t.datetime "cust_mobile_phn_hist_dt"
    t.bigint "cust_id"
    t.string "mobile_phn_no", limit: 50
    t.string "mr_mobile_phn_stat", limit: 50
    t.boolean "is_alternate_phone"
    t.string "mr_alternate_source_code", limit: 50, null: false
    t.string "mr_alternate_source_context_code", limit: 50, null: false
    t.boolean "is_able_to_contact", null: false
    t.datetime "last_call_date", null: false
    t.boolean "is_sent_to_master_cust"
  end
 
  create_table "cust_personal_job_data_cms", force: :cascade do |t|
    t.bigint "cust_personal_job_data_id"
    t.bigint "cust_id"
    t.string "coy_name", limit: 500, null: false
    t.string "mr_coy_scale_code", limit: 50, null: false
    t.string "industry_type_name", limit: 100, null: false
    t.string "profession_name", limit: 100, null: false
    t.string "job_title_name", limit: 100, null: false
    t.string "mr_job_position_code", limit: 50, null: false
    t.string "mr_job_stat_code", limit: 50, null: false
    t.datetime "employment_establishment_dt", null: false
    t.bigint "job_addr_id", null: false
  end
 
  create_table "cust_personal_relation", force: :cascade do |t|
    t.bigint "cust_personal_relation_id"
    t.bigint "cust_id"
    t.bigint "cust_relation_id"
    t.string "mr_cust_relationship_code", limit: 50
  end
 
  create_table "draft", force: :cascade do |t|
    t.bigint "draft_id"
    t.string "draft_code", limit: 50
    t.string "draft_type", limit: 50
    t.string "draft_stat_code", limit: 50, null: false
    t.string "error_message", limit: 100, null: false
    t.bigint "draft_master_id", null: false
  end
 
  create_table "draft_master", force: :cascade do |t|
    t.bigint "draft_master_id"
    t.string "draft_master_type", limit: 50
    t.string "draft_master_note", limit: 2000
    t.datetime "effective_date", null: false
    t.bigint "coll_type_id", null: false
    t.bigint "coll_grp_id", null: false
    t.bigint "unit_supervisor_id", null: false
    t.bigint "unit_coll_grp_org_id", null: false
  end
 
  create_table "escalate_request_hist", force: :cascade do |t|
    t.bigint "escalate_request_hist_id"
    t.string "escalate_trx_no", limit: 100
    t.bigint "coll_agrmnt_id"
    t.bigint "prev_ref_coll_bucket_id"
    t.bigint "new_ref_coll_bucket_id"
    t.bigint "prev_coll_type_id"
    t.bigint "new_coll_type_id"
    t.bigint "coll_activity_hist_id", null: false
    t.string "escalate_status", limit: 50
    t.string "notes", limit: 4000, null: false
    t.string "request_by", limit: 50
    t.string "verified_by", limit: 50
    t.datetime "request_dt"
    t.bigint "new_unit_collector_id"
  end
 
  create_table "field_coll_plan", force: :cascade do |t|
    t.bigint "field_coll_plan_id"
    t.datetime "field_coll_plan_dt"
    t.string "collector_username", limit: 50
    t.integer "num_of_task"
    t.string "review_field_coll_plan_stat", limit: 50
    t.datetime "last_review_dt", null: false
    t.string "review_by_username", limit: 50, null: false
  end
 
  create_table "fou_ref_zipcode", force: :cascade do |t|
    t.bigint "ref_zipcode_id", null: false
    t.string "area_code_1", limit: 50, null: false
    t.string "area_code_2", limit: 50, null: false
    t.string "city", limit: 50, null: false
    t.string "zipcode", limit: 50, null: false
    t.bigint "ref_prov_district_id", null: false
    t.string "sub_zipcode", limit: 50, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "general_setting_cms", force: :cascade do |t|
    t.bigint "general_setting_cms_id"
    t.string "gs_code", limit: 50
    t.string "gs_name", limit: 100
    t.string "gs_value", limit: 3000
    t.string "module_code", limit: 50, null: false
  end
 
  create_table "holiday_schm_d_cms", force: :cascade do |t|
    t.bigint "holiday_schm_d_id"
    t.bigint "holiday_schm_h_id"
    t.datetime "holiday_dt"
    t.string "descr", limit: 100
    t.boolean "is_public_holiday"
  end
 
  create_table "holiday_schm_h_cms", force: :cascade do |t|
    t.bigint "holiday_schm_h_id"
    t.string "holiday_schm_code", limit: 50
    t.string "holiday_schm_name", limit: 100
    t.boolean "is_active"
  end
 
  create_table "integration_log", force: :cascade do |t|
    t.string "status", limit: 50, null: false
    t.string "trx_no", limit: 50, null: false
    t.string "integration_mapping_code", limit: 50, null: false
    t.string "system_from", limit: 100
    t.bigint "integration_log_id", null: false
    t.text "error_message"
    t.text "payload", null: false
  end
 
  create_table "integration_mapping", force: :cascade do |t|
    t.string "api_url", limit: 50, null: false
    t.bigint "integration_mapping_id", null: false
    t.string "integration_mapping_code", limit: 50, null: false
  end
 
  create_table "integration_status", force: :cascade do |t|
    t.text "error_msg"
    t.string "integration_status_name", limit: 50, null: false
    t.string "integration_status_code", limit: 25, null: false
    t.bigint "integration_status_id", null: false
    t.boolean "is_done"
    t.integer "batch_count"
  end
 
  create_table "lob_area_handling_type", force: :cascade do |t|
    t.bigint "coll_type_id", null: false
    t.boolean "lob_area_handling_type_id", null: false
    t.bigint "mr_area_handling_type", null: false
    t.bigint "lob_code", null: false
  end
 
  create_table "lob_coll_type_handling_days", force: :cascade do |t|
    t.integer "repo_handling_days", null: false
    t.integer "remedial_handling_days", null: false
    t.string "lob_code", limit: 25, null: false
    t.integer "field_coll_handling_days", null: false
    t.integer "desk_coll_handling_days", null: false
    t.integer "lob_coll_type_handling_days", null: false
  end
 
  create_table "lob_office_member", force: :cascade do |t|
    t.string "lob_code", limit: 25, null: false
    t.bigint "lob_office_member_id", null: false
    t.string "office_code", limit: 25, null: false
  end
 
  create_table "message_template", force: :cascade do |t|
    t.bigint "message_id", null: false
    t.string "header", limit: 50
    t.string "text_message", limit: 2000, null: false
    t.string "message_type", limit: 50, null: false
  end
 
  create_table "mirror_hist", force: :cascade do |t|
    t.datetime "exec_dt"
    t.boolean "is_success", null: false
    t.string "is_exec", limit: 250, null: false
    t.bigint "mirror_hist_id", null: false
    t.text "error_message"
    t.string "status", limit: 25, null: false
    t.string "sp_name", limit: 50
    t.string "table_name", limit: 50
    t.text "payload", null: false
    t.string "mirror_from", limit: 50
  end
 
  create_table "office_coll_grp", force: :cascade do |t|
    t.string "office_code", limit: 25, null: false
    t.bigint "remedial_coll_grp_id"
    t.bigint "repo_coll_grp_id"
    t.bigint "field_coll_grp_id"
    t.bigint "desk_coll_grp_id"
    t.bigint "office_coll_grp_id", null: false
    t.bigint "lob_code", null: false
  end
 
  create_table "profcoll_assignment", force: :cascade do |t|
    t.string "vendor_emp_no", limit: 25
    t.string "mr_profcoll_assignment_result_code", limit: 25, null: false
    t.string "assignment_stat_code", limit: 25, null: false
    t.string "coll_company_code", limit: 25, null: false
    t.string "coll_company_name", limit: 25, null: false
    t.string "task_no", limit: 50, null: false
    t.string "mr_profcoll_assignment_purpose_code", limit: 25, null: false
    t.datetime "assigned_dt", null: false
    t.bigint "coll_agrmnt_id", null: false
    t.bigint "profcoll_assignment_id", null: false
  end
 
  create_table "ral", force: :cascade do |t|
    t.string "req_by_username", limit: 12, null: false
    t.string "mr_ral_type_code", limit: 50, null: false
    t.string "vendor_code", limit: 25
    t.string "vendor_emp_no", limit: 25
    t.string "ral_stat_code", limit: 25, null: false
    t.string "ral_printed_by_username", limit: 25
    t.string "bast_printed_by_username", limit: 25
    t.string "return_by_username", limit: 25
    t.string "return_reason_code", limit: 25
    t.string "return_notes", limit: 2000
    t.string "collateral_no", limit: 50
    t.string "full_asset_code", limit: 250
    t.string "full_asset_name", limit: 500
    t.string "serial_no_1", limit: 25
    t.string "serial_no_2", limit: 25
    t.integer "new_period", null: false
    t.string "serial_no_3", limit: 25
    t.string "ral_no", limit: 50, null: false
    t.string "req_notes", limit: 1000
    t.string "req_reason_code", limit: 12
    t.string "apv_stat", limit: 12, null: false
    t.string "apv_by_username", limit: 12
    t.datetime "first_printed_dt"
    t.string "apv_notes", limit: 1000
    t.integer "total_printed", null: false
    t.datetime "apv_dt"
    t.boolean "is_dms", null: false
    t.bigint "coll_grp_id", null: false
    t.bigint "coll_agrmnt_collateral_id"
    t.bigint "coll_agrmnt_id", null: false
    t.bigint "ral_id", null: false
    t.datetime "req_dt"
    t.datetime "return_dt"
    t.boolean "is_return", null: false
    t.integer "num_of_extention", null: false
    t.integer "coll_grp_collector_id", null: false
    t.datetime "start_dt", null: false
    t.datetime "end_dt", null: false
    t.boolean "is_ral_printed", null: false
    t.datetime "last_ral_printed_dt"
    t.boolean "is_bast_printed", null: false
    t.datetime "last_bast_printed_dt"
    t.integer "old_period", null: false
  end
 
  create_table "ral_extend_hist", force: :cascade do |t|
    t.bigint "ral_extend_hist_id", null: false
    t.bigint "ral_id", null: false
    t.bigint "coll_agrmnt_id", null: false
    t.bigint "coll_agrmnt_collateral_id", null: false
    t.bigint "coll_grp_id"
    t.string "extend_by_username", limit: 25, null: false
    t.datetime "ral_extend_dt", null: false
    t.datetime "old_end_dt", null: false
    t.datetime "max_new_end_dt", null: false
    t.datetime "new_end_dt", null: false
    t.string "ral_extend_notes", limit: 2000
  end
 
  create_table "ral_print_hist", force: :cascade do |t|
    t.bigint "ral_print_hist_id", null: false
    t.bigint "ral_id", null: false
    t.datetime "print_dt", null: false
    t.string "print_by_username", limit: 25, null: false
  end
 
  create_table "ref_cms_schm_compnt", force: :cascade do |t|
    t.bigint "ref_cms_schm_compnt_id", null: false
    t.string "cms_schm_compnt_code", limit: 25, null: false
    t.string "cms_schm_compnt_name", limit: 50, null: false
    t.integer "seq_no", null: false
    t.string "ref_cms_schm_compnt_grp_code", limit: 25, null: false
    t.boolean "is_active", null: false
    t.string "cms_schm_compnt_type", limit: 25, null: false
    t.string "behaviour_type", limit: 25, null: false
    t.string "cms_schm_compnt_value", limit: 2000
    t.string "cms_schm_compnt_dta_src", limit: 100
    t.string "cms_schm_compnt_dta_value", limit: 100
    t.string "cms_schm_compnt_dta_src_api", limit: 100
    t.string "user_role", limit: 500
    t.boolean "is_editable", null: false
    t.string "biz_tmplt_code_list", limit: 2000, null: false
  end
 
  create_table "ref_cms_schm_compnt_grp", force: :cascade do |t|
    t.bigint "ref_cms_schm_compnt_grp_id", null: false
    t.string "cms_schm_compnt_grp_code", limit: 25, null: false
    t.string "cms_schm_compnt_grp_name", limit: 50, null: false
    t.integer "seq_no", null: false
  end
 
  create_table "ref_coll_bucket", force: :cascade do |t|
    t.bigint "ref_coll_bucket_id", null: false
    t.string "ref_coll_bucket_code", limit: 25, null: false
    t.string "ref_coll_bucket_name", limit: 25, null: false
    t.bigint "coll_type_id", null: false
    t.boolean "is_active", null: false
    t.integer "seq_no", null: false
    t.string "mr_assign_period_code", limit: 25, null: false
  end
 
  create_table "ref_coll_org", force: :cascade do |t|
    t.bigint "ref_coll_org_id", null: false
    t.string "ref_coll_org_name", limit: 50, null: false
    t.integer "hierarchy_no", null: false
    t.string "mr_unit_coll_grp_org_type_code", limit: 25, null: false
  end
 
  create_table "ref_cost_master_d", force: :cascade do |t|
    t.bigint "ref_cost_master_d_id", null: false
    t.bigint "ref_cost_master_h_id", null: false
    t.string "cost_master_name", limit: 250, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "ref_cost_master_h", force: :cascade do |t|
    t.bigint "ref_cost_master_h_id", null: false
    t.integer "level_no", null: false
    t.string "cost_master_lvl_name", limit: 250, null: false
  end
 
  create_table "ref_emp_cms", force: :cascade do |t|
    t.bigint "ref_emp_cms_id", null: false
    t.string "emp_no", limit: 25, null: false
    t.string "emp_name", limit: 250, null: false
    t.boolean "is_ext", null: false
    t.string "addr", limit: 500, null: false
    t.string "phn_area_1", limit: 10
    t.string "phn_1", limit: 25
    t.string "phn_ext_1", limit: 5
    t.decimal "mobile_phn_no_1", precision: 18, scale: 0
    t.boolean "is_active", null: false
    t.string "email_1", limit: 100
  end
 
  create_table "ref_job_title_cms", force: :cascade do |t|
    t.bigint "ref_job_title_cms_id", null: false
    t.string "job_title_code", limit: 25, null: false
    t.string "job_title_name", limit: 50, null: false
    t.string "desc", limit: 2000
    t.boolean "is_active", null: false
  end
 
  create_table "ref_lob_cms", force: :cascade do |t|
    t.bigint "ref_lob_cms_id", null: false
    t.string "ref_lob_code", limit: 50, null: false
    t.string "ref_lob_name", limit: 100, null: false
  end
 
  create_table "ref_master_cms", force: :cascade do |t|
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
    t.string "mapping_code", limit: 25
    t.boolean "is_default_value", null: false
    t.string "default_value", limit: 25
  end
 
  create_table "ref_master_type_cms", force: :cascade do |t|
    t.string "ref_master_type_code", limit: 25, null: false
    t.string "descr", limit: 50, null: false
    t.string "module_code", limit: 25, null: false
    t.string "role_code", limit: 250
    t.boolean "is_active", null: false
    t.boolean "is_system", null: false
  end
 
  create_table "ref_office_cms", force: :cascade do |t|
    t.bigint "ref_office_cms_id", null: false
    t.string "office_code", limit: 25, null: false
    t.string "office_name", limit: 50, null: false
    t.string "mr_office_type_code", limit: 50
    t.boolean "is_active", null: false
    t.string "office_addr", limit: 100, null: false
    t.string "zipcode", limit: 25, null: false
    t.string "area_code_1", limit: 25, null: false
    t.string "area_code_2", limit: 25, null: false
    t.string "area_code_3", limit: 25, null: false
    t.string "area_code_4", limit: 25, null: false
  end
 
  create_table "ref_prov_district_cms", force: :cascade do |t|
    t.bigint "ref_prov_district_id", null: false
    t.string "prov_district_code", limit: 25, null: false
    t.string "prov_district_name", limit: 50, null: false
    t.string "district_reg_rpt_code", limit: 25
    t.string "type", limit: 5, null: false
    t.bigint "parent_id"
    t.boolean "is_active", null: false
    t.string "phn_area", limit: 10
    t.string "timezone", limit: 25
  end
 
  create_table "ref_question", force: :cascade do |t|
    t.bigint "ref_question_id", null: false
    t.string "ref_question_code", limit: 25, null: false
    t.string "ref_question_name", limit: 50, null: false
    t.integer "seq_no", null: false
    t.string "ref_question_grp_code", limit: 25, null: false
    t.boolean "is_active", null: false
    t.boolean "is_system", null: false
    t.string "ref_question_type_code", limit: 25, null: false
    t.string "ref_question_data_src", limit: 50
    t.string "ref_question_data_value", limit: 50
    t.string "ref_question_dat_src_api", limit: 100
    t.boolean "is_visible", null: false
  end
 
  create_table "ref_question_group", force: :cascade do |t|
    t.bigint "ref_question_group_id", null: false
    t.string "ref_question_group_code", limit: 25, null: false
    t.string "ref_question_group_name", limit: 50, null: false
    t.integer "group_seq_no", null: false
  end
 
  create_table "ref_question_schm_d", force: :cascade do |t|
    t.bigint "ref_question_schm_d_id", null: false
    t.bigint "ref_question_schm_h_id", null: false
    t.string "ref_question_code", limit: 25, null: false
  end
 
  create_table "ref_question_schm_h", force: :cascade do |t|
    t.bigint "ref_question_schm_h_id", null: false
    t.string "ref_question_schm_code", limit: 25, null: false
    t.string "ref_question_schm_name", limit: 50, null: false
    t.bigint "coll_type_id", null: false
    t.boolean "is_active", null: false
  end
 
  create_table "ref_status_cms", force: :cascade do |t|
    t.bigint "ref_status_id", null: false
    t.string "ref_status_code", limit: 25, null: false
    t.string "descr", limit: 50, null: false
    t.string "ref_trx_type_code", limit: 25, null: false
    t.string "module_code", limit: 25, null: false
    t.string "status_grp_code", limit: 25
    t.boolean "is_active", null: false
  end
 
  create_table "ref_user_cms", force: :cascade do |t|
    t.bigint "ref_user_cms_id", null: false
    t.string "emp_no", limit: 25, null: false
    t.string "username", limit: 25, null: false
    t.boolean "is_active", null: false
  end
 
  create_table "ref_user_role_cms", force: :cascade do |t|
    t.bigint "ref_user_role_id", null: false
    t.bigint "ref_job_title_cms_id", null: false
    t.bigint "ref_user_cms_id", null: false
    t.boolean "is_active", null: false
    t.bigint "ref_office_cms_id"
  end
 
  create_table "ref_zipcode_cms", force: :cascade do |t|
    t.bigint "ref_zipcode_id", null: false
    t.string "area_code_1", limit: 25, null: false
    t.string "area_code_2", limit: 25, null: false
    t.string "city", limit: 25, null: false
    t.string "zipcode", limit: 25, null: false
    t.bigint "ref_prov_district_id", null: false
    t.string "sub_zipcode", limit: 25, null: false
    t.boolean "is_active", null: false
    t.bigint "ref_zipcode_id_fou"
  end
 
  create_table "reminder", force: :cascade do |t|
    t.bigint "reminder_id", null: false
    t.bigint "coll_agrmnt_id", null: false
    t.string "reminder_code", limit: 50, null: false
    t.datetime "reminder_dt"
    t.string "send_to", limit: 250, null: false
    t.integer "hierarchy_no", null: false
    t.boolean "is_sent", null: false
    t.boolean "is_delivered", null: false
    t.string "send_type_code", limit: 25, null: false
    t.string "mr_subj_type_code", limit: 25, null: false
    t.boolean "is_read", null: false
    t.integer "seq_no", null: false
    t.datetime "send_dt"
    t.datetime "deliver_dt"
    t.datetime "read_dt"
    t.string "mr_reminder_stat", limit: 25
  end
 
  create_table "repo", force: :cascade do |t|
    t.bigint "repo_id", null: false
    t.string "module_code", limit: 25, null: false
    t.bigint "coll_agrmnt_asset_opl_id", null: false
    t.bigint "collector_id", null: false
    t.string "repo_no", limit: 50, null: false
    t.datetime "repo_dt", null: false
    t.string "repo_rcv_from", limit: 250, null: false
    t.string "repo_notes", limit: 2000
    t.string "checker_name", limit: 250, null: false
    t.string "checker_job_title", limit: 50, null: false
    t.datetime "check_dt", null: false
    t.string "asset_no", limit: 50, null: false
    t.string "asset_location", limit: 100, null: false
    t.string "repo_asset_notes", limit: 2000
    t.string "serial_no_1", limit: 25
    t.string "serial_no_2", limit: 25
    t.string "serial_no_3", limit: 25
    t.string "serial_no_4", limit: 25
    t.string "serial_no_5", limit: 25
    t.string "color", limit: 25
    t.integer "manufacturing_year"
    t.decimal "mileage", precision: 18, scale: 0, null: false
    t.datetime "asset_tax_dt"
    t.string "verf_result_no", limit: 50, null: false
    t.string "last_release_verf_no", limit: 50
  end
 
  create_table "repo_asset_agrmnt", force: :cascade do |t|
    t.bigint "repo_asset_agrmnt_id", null: false
    t.bigint "repo_id", null: false
    t.string "agrmnt_no", limit: 50, null: false
  end
 
  create_table "repo_d", force: :cascade do |t|
    t.bigint "repo_d_id", null: false
    t.bigint "repo_h_id", null: false
    t.bigint "collateral_check_list_id", null: false
    t.string "question", limit: 50, null: false
    t.string "answer", limit: 50
    t.string "notes", limit: 2000
  end
 
  create_table "repo_h", force: :cascade do |t|
    t.bigint "repo_h_id", null: false
    t.bigint "ral_id"
    t.bigint "coll_agrmnt_id", null: false
    t.bigint "coll_agrmnt_collateral_id", null: false
    t.bigint "coll_grp_id", null: false
    t.string "repo_no", limit: 50, null: false
    t.bigint "coll_grp_collector_id"
    t.string "vendor_code", limit: 25
    t.string "vendor_emp_no", limit: 25
    t.datetime "repo_dt", null: false
    t.string "collateral_location", limit: 50
    t.string "mr_collateral_condition_code", limit: 25
    t.string "mileage", limit: 50
    t.string "mr_repo_difficulty_level", limit: 25
    t.string "color", limit: 25
    t.string "license_plate_no", limit: 25
    t.string "license_owner_name", limit: 100
    t.datetime "license_expired_dt"
    t.string "checker_name", limit: 100
    t.string "checker_job_title", limit: 25
    t.datetime "checking_dt"
    t.string "repo_stat_code", limit: 25, null: false
    t.string "repo_notes", limit: 2000
    t.string "collateral_no", limit: 50
    t.string "full_asset_code", limit: 250
    t.string "full_asset_name", limit: 10
    t.string "serial_no_1", limit: 25
    t.string "serial_no_2", limit: 25
    t.string "serial_no_3", limit: 25
    t.boolean "is_dms", null: false
    t.boolean "is_print_prepay_ltr", null: false
  end
 
  create_table "settlement_print_hist", force: :cascade do |t|
    t.bigint "settlement_print_hist_id", null: false
    t.bigint "repo_h_id", null: false
    t.datetime "print_dt", null: false
    t.string "print_by_username", limit: 25, null: false
  end
 
  create_table "spv_attention", force: :cascade do |t|
    t.bigint "spv_attention_id", null: false
    t.bigint "coll_agrmnt_id", null: false
    t.bigint "req_by_collector_id", null: false
    t.bigint "supervisor_id", null: false
    t.datetime "req_dt", null: false
    t.datetime "working_dt"
    t.string "spv_attention_stat_code", limit: 25, null: false
    t.string "spv_attention_notes", limit: 2000
    t.string "sla_code", limit: 25
    t.string "mr_spv_action_code", limit: 25
  end
 
  create_table "subzipcode_coordinate", force: :cascade do |t|
    t.bigint "subzipcode_coordinate_id", null: false
    t.bigint "unit_collector_zipcode_area_id", null: false
    t.integer "sequence", null: false
    t.decimal "latitude", precision: 18, scale: 0, null: false
    t.decimal "longitude", precision: 18, scale: 0, null: false
  end
 
  create_table "supervisor", force: :cascade do |t|
    t.bigint "supervisor_id", null: false
    t.bigint "coll_grp_id", null: false
    t.string "username", limit: 25, null: false
    t.datetime "start_dt", null: false
    t.datetime "end_dt", null: false
    t.boolean "is_active", null: false
    t.bigint "coll_type_id"
  end
 
  create_table "sys_ctrl_coy", force: :cascade do |t|
    t.bigint "sys_ctrl_coy_id", null: false
    t.string "sys_key", limit: 25, null: false
    t.string "sys_value", limit: 50, null: false
  end
 
  create_table "unit_coll_grp_org", force: :cascade do |t|
    t.bigint "unit_coll_grp_org_id", null: false
    t.string "unit_coll_grp_org_code", limit: 25, null: false
    t.string "unit_coll_grp_org_name", limit: 50, null: false
    t.bigint "coll_grp_id", null: false
    t.bigint "parent_id"
    t.bigint "coll_grp_org_member_id", null: false
    t.boolean "is_active", null: false
    t.bigint "coll_type_id", null: false
    t.bigint "ref_coll_org_id", null: false
    t.string "mr_unit_coll_grp_org_type_code", limit: 25, null: false
  end
 
  create_table "unit_coll_grp_org_agrmnt", force: :cascade do |t|
    t.bigint "unit_coll_grp_org_agrmnt_id", null: false
    t.bigint "unit_coll_grp_org_id", null: false
    t.bigint "coll_agrmnt_id", null: false
  end
 
  create_table "unit_coll_grp_org_draft", force: :cascade do |t|
    t.bigint "unit_coll_grp_org_draft_id", null: false
    t.string "unit_coll_grp_org_code", limit: 25, null: false
    t.string "unit_coll_grp_org_name", limit: 50, null: false
    t.bigint "coll_grp_id", null: false
    t.bigint "parent_id"
    t.boolean "is_active", null: false
    t.bigint "coll_type_id", null: false
    t.bigint "ref_coll_org_id", null: false
    t.bigint "coll_grp_org_member_id", null: false
    t.string "mr_unit_coll_grp_org_type_code", limit: 25, null: false
  end
 
  create_table "unit_coll_grp_org_lob", force: :cascade do |t|
    t.bigint "unit_coll_grp_org_lob_id", null: false
    t.bigint "unit_coll_grp_org_id", null: false
    t.string "lob_code", limit: 25, null: false
  end
 
  create_table "unit_coll_grp_org_lob_draft", force: :cascade do |t|
    t.bigint "unit_coll_grp_org_lob_draft_id", null: false
    t.bigint "unit_coll_grp_org_draft_id", null: false
    t.string "lob_code", limit: 25, null: false
  end
 
  create_table "unit_coll_grp_org_office", force: :cascade do |t|
    t.bigint "unit_coll_grp_org_office_id", null: false
    t.bigint "unit_coll_grp_org_id", null: false
    t.string "office_code", limit: 25, null: false
  end
 
  create_table "unit_coll_grp_org_office_draft", force: :cascade do |t|
    t.bigint "unit_coll_grp_org_office_draft_id", null: false
    t.bigint "unit_coll_grp_org_draft_id", null: false
    t.string "office_code", limit: 25, null: false
    t.string "lob_code", limit: 25, null: false
  end
 
  create_table "unit_coll_grp_org_zipcode_area", force: :cascade do |t|
    t.bigint "unit_coll_grp_org_zipcode_area_id", null: false
    t.bigint "unit_coll_grp_org_id", null: false
    t.bigint "ref_zipcode_id", null: false
  end
 
  create_table "unit_coll_grp_org_zipcode_area_draft", force: :cascade do |t|
    t.bigint "unit_coll_grp_org_zipcode_area_draft_id", null: false
    t.bigint "unit_coll_grp_org_draft_id", null: false
    t.bigint "ref_zipcode_id", null: false
  end
 
  create_table "unit_collector", force: :cascade do |t|
    t.bigint "unit_collector_id", null: false
    t.string "unit_collector_code", limit: 25, null: false
    t.string "unit_collector_name", limit: 50, null: false
    t.bigint "coll_grp_id", null: false
    t.boolean "is_active", null: false
    t.bigint "coll_type_id", null: false
    t.string "mr_unit_field_coll_member_type_code", limit: 25
    t.string "mr_working_area_code", limit: 25, null: false
    t.bigint "unit_supervisor_id"
    t.bigint "supervisor_id", null: false
  end
 
  create_table "unit_collector_bucket", force: :cascade do |t|
    t.bigint "unit_collector_bucket_id", null: false
    t.bigint "unit_collector_id", null: false
    t.bigint "ref_coll_bucket_id", null: false
  end
 
  create_table "unit_collector_bucket_draft", force: :cascade do |t|
    t.bigint "unit_collector_bucket_draft_id", null: false
    t.bigint "unit_collector_draft_id", null: false
    t.bigint "ref_coll_bucket_id", null: false
  end
 
  create_table "unit_collector_draft", force: :cascade do |t|
    t.bigint "unit_collector_draft_id", null: false
    t.string "unit_collector_code", limit: 25, null: false
    t.string "unit_collector_name", limit: 50, null: false
    t.bigint "coll_grp_id", null: false
    t.boolean "is_active", null: false
    t.bigint "coll_type_id", null: false
    t.string "mr_unit_field_coll_member_type_code", limit: 25
    t.string "mr_working_area_code", limit: 25, null: false
    t.bigint "unit_supervisor_id"
    t.bigint "supervisor_id"
  end
 
  create_table "unit_collector_lob", force: :cascade do |t|
    t.bigint "unit_collector_lob_id", null: false
    t.bigint "unit_collector_id", null: false
    t.string "lob_code", limit: 25, null: false
  end
 
  create_table "unit_collector_lob_draft", force: :cascade do |t|
    t.bigint "unit_collector_lob_draft_id", null: false
    t.bigint "unit_collector_draft_id", null: false
    t.string "lob_code", limit: 25, null: false
  end
 
  create_table "unit_collector_member", force: :cascade do |t|
    t.bigint "unit_collector_member_id", null: false
    t.bigint "unit_collector_id", null: false
    t.bigint "coll_grp_collector_id", null: false
    t.boolean "is_active", null: false
  end
 
  create_table "unit_collector_member_draft", force: :cascade do |t|
    t.bigint "unit_collector_member_draft_id", null: false
    t.bigint "unit_collector_draft_id", null: false
    t.bigint "coll_grp_collector_id", null: false
    t.boolean "is_active", null: false
  end
 
  create_table "unit_collector_office", force: :cascade do |t|
    t.bigint "unit_collector_office_id"
    t.bigint "unit_collector_id"
    t.string "office_code", limit: 50
  end
 
  create_table "unit_collector_office_draft", force: :cascade do |t|
    t.bigint "unit_collector_office_draft_id"
    t.bigint "unit_collector_draft_id"
    t.string "office_code", limit: 50
  end
 
  create_table "unit_collector_zipcode_area", force: :cascade do |t|
    t.bigint "unit_collector_zipcode_area_id"
    t.bigint "unit_collector_id"
    t.boolean "is_has_coordinate"
    t.bigint "ref_zipcode_id"
  end
 
  create_table "unit_collector_zipcode_area_draft", force: :cascade do |t|
    t.bigint "unit_collector_zipcode_area_draft_id"
    t.bigint "unit_collector_draft_id"
    t.boolean "is_has_coordinate"
    t.bigint "ref_zipcode_id"
  end
 
  create_table "unit_field_coll_daily_priority", force: :cascade do |t|
    t.bigint "unit_field_coll_daily_priority_id"
    t.bigint "unit_collector_id"
    t.string "mr_criteria_code", limit: 50
    t.string "operator", limit: 50
    t.string "value", limit: 100, null: false
    t.string "value_from", limit: 100, null: false
    t.string "value_to", limit: 100, null: false
    t.integer "point"
  end
 
  create_table "unit_field_coll_daily_priority_draft", force: :cascade do |t|
    t.bigint "unit_field_coll_daily_priority_draft_id"
    t.bigint "unit_collector_draft_id"
    t.string "mr_criteria_code", limit: 50
    t.string "operator", limit: 50
    t.string "value", limit: 100, null: false
    t.string "value_from", limit: 100, null: false
    t.string "value_to", limit: 100, null: false
    t.integer "point"
  end
 
  create_table "unit_field_coll_setting_day", force: :cascade do |t|
    t.bigint "unit_field_coll_setting_day_id"
    t.bigint "unit_collector_id"
    t.string "day", limit: 50
  end
 
  create_table "unit_field_coll_setting_day_area", force: :cascade do |t|
    t.bigint "unit_field_coll_setting_day_area_id"
    t.bigint "unit_field_coll_setting_day_id"
    t.bigint "ref_zipcode_id"
  end
 
  create_table "unit_field_coll_setting_day_area_draft", force: :cascade do |t|
    t.bigint "unit_field_coll_setting_day_area_draft_id"
    t.bigint "unit_field_coll_setting_day_draft_id"
    t.bigint "ref_zipcode_id"
  end
 
  create_table "unit_field_coll_setting_day_draft", force: :cascade do |t|
    t.bigint "unit_field_coll_setting_day_draft_id"
    t.bigint "unit_collector_draft_id"
    t.string "day", limit: 50
  end
 
  create_table "unit_supervisor", force: :cascade do |t|
    t.bigint "unit_supervisor_id"
    t.string "unit_supervisor_code", limit: 50
    t.string "unit_supervisor_name", limit: 100
    t.bigint "coll_grp_id"
    t.bigint "unit_coll_grp_org_id", null: false
    t.bigint "supervisor_id"
    t.bigint "coll_type_id"
    t.boolean "is_active"
  end
 
  create_table "unit_supervisor_bucket", force: :cascade do |t|
    t.bigint "unit_supervisor_bucket_id"
    t.bigint "unit_supervisor_id"
    t.bigint "ref_coll_bucket_id"
  end
 
  create_table "unit_supervisor_bucket_draft", force: :cascade do |t|
    t.bigint "unit_supervisor_bucket_draft_id"
    t.bigint "unit_supervisor_draft_id"
    t.bigint "ref_coll_bucket_id"
  end
 
  create_table "unit_supervisor_draft", force: :cascade do |t|
    t.bigint "unit_supervisor_draft_id"
    t.string "unit_supervisor_code", limit: 50
    t.string "unit_supervisor_name", limit: 100
    t.bigint "coll_grp_id"
    t.bigint "unit_coll_grp_org_id", null: false
    t.bigint "supervisor_id"
    t.bigint "coll_type_id"
    t.boolean "is_active"
  end
 
  create_table "unit_supervisor_lob", force: :cascade do |t|
    t.bigint "unit_supervisor_lob_id"
    t.bigint "unit_supervisor_id"
    t.string "lob_code", limit: 50
  end
 
  create_table "unit_supervisor_lob_draft", force: :cascade do |t|
    t.bigint "unit_supervisor_lob_draft_id"
    t.bigint "unit_supervisor_draft_id"
    t.string "lob_code", limit: 50
  end
 
  create_table "unit_supervisor_zipcode_area", force: :cascade do |t|
    t.bigint "unit_supervisor_zipcode_area_id"
    t.bigint "unit_supervisor_id"
    t.bigint "ref_zipcode_id"
  end
 
  create_table "unit_supervisor_zipcode_area_draft", force: :cascade do |t|
    t.bigint "unit_supervisor_zipcode_area_draft_id"
    t.bigint "unit_supervisor_draft_id"
    t.bigint "ref_zipcode_id"
  end
 
  create_table "vendor_cms", force: :cascade do |t|
    t.bigint "vendor_cms_id"
    t.string "vendor_parent_code", limit: 50, null: false
    t.string "vendor_code", limit: 50
    t.string "vendor_name", limit: 500
    t.string "mr_vendor_category_code", limit: 50
  end
 
  create_table "vendor_emp_cms", force: :cascade do |t|
    t.string "vendor_emp_no", limit: 50
    t.string "vendor_emp_name", limit: 500
    t.string "vendor_code", limit: 100
    t.string "mr_vendor_emp_position_code", limit: 100, null: false
    t.boolean "is_active"
  end
 
  create_table "vendor_office_mbr_cms", force: :cascade do |t|
    t.bigint "vendor_office_mbr_id"
    t.string "vendor_code", limit: 50, null: false
    t.string "office_code", limit: 50, null: false
    t.boolean "is_active"
  end
 
  create_table "working_hour_schm_d_cms", force: :cascade do |t|
    t.bigint "working_hour_schm_d_id"
    t.bigint "working_hour_schm_h_id"
    t.string "working_hour_schm_day", limit: 20
    t.string "working_hour_from_1", limit: 20, null: false
    t.string "working_hour_to_1", limit: 20, null: false
    t.string "working_hour_from_2", limit: 20, null: false
    t.string "working_hour_to_2", limit: 20, null: false
  end
 
  create_table "working_hour_schm_h_cms", force: :cascade do |t|
    t.bigint "working_hour_schm_h_id"
    t.string "working_hour_schm_code", limit: 50
    t.string "working_hour_schm_name", limit: 100
    t.boolean "is_active"
  end
 
 
end
