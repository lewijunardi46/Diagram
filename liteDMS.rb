# Auto-generated from SQL Server - Database: LiteDMS
 
ActiveRecord::Schema[8.1].define(version: 20260615_000000) do
 
  create_table "batch_input_pembayaran", force: :cascade do |t|
    t.string "filepath", limit: 255
    t.integer "creator_id"
    t.string "status", limit: 100
    t.datetime "created_date"
    t.string "email", limit: 100
  end
 
  create_table "batch_input_pembayaran_dtl", force: :cascade do |t|
    t.integer "batch_id"
    t.integer "document_id"
    t.integer "invoice_gabung"
    t.string "invoice_number", limit: 200
    t.string "tanggal_pembayaran", limit: 200
    t.string "status", limit: 100
    t.string "message", limit: 300
    t.datetime "created_date"
  end
 
  create_table "confins_appno", force: :cascade do |t|
    t.string "appno", limit: 100
    t.string "surveyid", limit: 100
    t.datetime "created_date"
    t.string "status", limit: 1
  end
 
  create_table "dms_application_menu", force: :cascade do |t|
    t.integer "app_id", null: false
    t.integer "parent_id"
    t.string "menu_name", limit: 300
    t.string "asp_name", limit: 300
    t.string "role_name", limit: 300
  end
 
  create_table "dms_approval", force: :cascade do |t|
    t.string "template_name", limit: 100
    t.string "status", limit: 5
    t.string "assign", limit: 100
    t.string "type_assign", limit: 50
    t.integer "duration"
    t.string "type_uploader", limit: 5
    t.datetime "created_date"
    t.integer "creator_id"
    t.datetime "lastmodified_date"
    t.integer "lastmodified_user"
    t.string "type_workflow", limit: 5
  end
 
  create_table "dms_approval_history", force: :cascade do |t|
    t.integer "parent_id"
    t.integer "user_id"
    t.string "activity", limit: 5
    t.string "description_reject", limit: 150
    t.datetime "created_date"
  end
 
  create_table "dms_custom_report", force: :cascade do |t|
    t.string "template_name", limit: 500
    t.string "description", limit: 8000
    t.integer "creator_id"
    t.string "shared_to_group", limit: 8000
    t.string "shared_to_user", limit: 8000
    t.datetime "created_date"
    t.datetime "modified_date"
  end
 
  create_table "dms_custom_report_detail", force: :cascade do |t|
    t.integer "report_id"
    t.integer "field_id"
    t.string "condition", limit: 200
    t.string "filter_value", limit: 8000
    t.datetime "created_date"
    t.datetime "modified_date"
  end
 
  create_table "dms_custom_report_detail_output", force: :cascade do |t|
    t.integer "report_id"
    t.integer "field_id"
    t.integer "position"
    t.datetime "created_date"
    t.datetime "modified_date"
  end
 
  create_table "dms_detail_user_license_monitoring", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "username", limit: 50, null: false
    t.integer "header_id", null: false
  end
 
  create_table "dms_doc_details", force: :cascade do |t|
    t.string "file_path", limit: 1500
    t.integer "document_id"
    t.integer "doc_vault_id"
  end
 
  create_table "dms_doc_object_record", force: :cascade do |t|
    t.integer "object_id"
    t.string "record_value", limit: 300
    t.integer "doc_type_id"
    t.integer "field_id"
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
    t.integer "position"
    t.string "search_field", limit: 320
    t.index ["object_id", "doc_type_id", "field_id", "record_value"], name: "IX_DMS_DOC_OBJECT_RECORD_DOC_TYPE_ID_FIELD_ID_RECORD_VALUE_INC_OBJECT_ID"
    t.index ["object_id", "field_id", "record_value"], name: "IX_DMS_DOC_OBJECT_RECORD_FIELD_ID_RECORD_VALUE"
    t.index ["object_id", "doc_type_id", "field_id"], name: "IX_DMS_DOC_OBJECT_RECORD_OBJECT_ID_DOC_TYPE_ID_FIELD_ID"
  end
 
  create_table "dms_doc_path_details", force: :cascade do |t|
    t.string "doc_path", limit: 1500
    t.integer "document_id"
    t.integer "doc_vault_id"
    t.integer "page"
  end
 
  create_table "dms_doc_record", force: :cascade do |t|
    t.integer "folder_id"
    t.string "filename", limit: 300
    t.bigint "size"
    t.integer "doc_type_id"
    t.string "file_type", limit: 5
    t.string "group_access_role", limit: 1500
    t.datetime "expired_field_value"
    t.datetime "retention_field_value"
    t.string "status", limit: 1
    t.integer "client_id"
    t.datetime "modified_date"
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
    t.integer "doc_ref_id"
    t.integer "status_backup"
    t.binary "thumbimage"
    t.integer "version_number"
    t.integer "parent_id"
    t.string "temppath"
    t.string "status_split", limit: 15
    t.string "version_type", limit: 2
    t.date "promise_date"
    t.string "alert", limit: 20
    t.string "status_upload", limit: 100
    t.string "status_document", limit: 100
    t.string "type_assign", limit: 5
    t.integer "save_as_draft"
    t.integer "invoice_gabung"
    t.string "send_email_created_date", limit: 100
    t.index ["document_id", "created_date"], name: "IX_DMS_DOC_RECORD_CREATED_DATE_INC_DOCUMENT_ID"
    t.index ["document_id", "doc_type_id", "status"], name: "IX_DMS_DOC_RECORD_DOC_TYPE_ID_STATUS_INC_DOCUMENT_ID"
  end
 
  create_table "dms_doc_type", force: :cascade do |t|
    t.string "type_name", limit: 40
    t.string "object_type", limit: 3
    t.integer "folder_level"
    t.string "status", limit: 1
    t.string "assign_to_group", limit: 1000
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
    t.string "group_access_role", limit: 1500
  end
 
  create_table "dms_doc_type_fields", force: :cascade do |t|
    t.integer "doc_type_id"
    t.integer "field_id"
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
    t.string "position", limit: 50
  end
 
  create_table "dms_doc_type_history", force: :cascade do |t|
    t.integer "doc_type_id"
    t.integer "updater_id"
    t.string "updater_ip_address", limit: 20
    t.string "updater_activity", limit: 5
    t.datetime "update_date"
    t.string "description", limit: 300
  end
 
  create_table "dms_doc_vault", force: :cascade do |t|
    t.string "doc_vault_path", limit: 1000
    t.boolean "doc_vault_status"
    t.integer "creator_id"
    t.datetime "create_date"
    t.string "creator_ip_address", limit: 20
  end
 
  create_table "dms_email_group", force: :cascade do |t|
    t.string "group_name", limit: 255
    t.string "group_description", limit: 511
    t.string "created_by", limit: 255
    t.string "modified_by", limit: 255
    t.datetime "created_date"
    t.datetime "modified_date"
    t.string "status", limit: 25
    t.string "group_type", limit: 25
  end
 
  create_table "dms_email_history", force: :cascade do |t|
    t.string "document_id", limit: 100
    t.string "rule_id", limit: 50
    t.datetime "trigger_date"
    t.string "status", limit: 10
    t.datetime "email_date"
    t.string "description"
    t.integer "try"
  end
 
  create_table "dms_email_member", force: :cascade do |t|
    t.integer "group_id"
    t.string "email", limit: 255
    t.string "created_by", limit: 255
    t.string "modified_by", limit: 255
    t.datetime "created_date"
    t.datetime "modified_date"
    t.string "status", limit: 25
  end
 
  create_table "dms_email_task", force: :cascade do |t|
    t.integer "jumlah_doc"
    t.integer "receiver_group_id"
    t.string "prospect_id", limit: 255
    t.string "creator_name", limit: 255
    t.datetime "created_date"
    t.string "status_send", limit: 25
    t.string "email_to_send"
    t.string "appid", limit: 255
    t.string "creator_group_name", limit: 255
    t.string "customer_name", limit: 500
  end
 
  create_table "dms_export_jobs_detail", force: :cascade do |t|
    t.integer "export_jobs_h_id"
    t.string "agreement_no", limit: 255
  end
 
  create_table "dms_export_jobs_header", force: :cascade do |t|
    t.string "job_name", limit: 255
    t.integer "doc_type_id"
    t.string "path_txt", limit: 500
    t.string "email_recipient", limit: 255
    t.string "path_zip", limit: 500
    t.string "status", limit: 50
  end
 
  create_table "dms_export_jobs_log", force: :cascade do |t|
    t.integer "export_jobs_h_id"
    t.integer "export_jobs_d_id"
    t.string "message", limit: 255
    t.datetime "dtm_crt"
  end
 
  create_table "dms_export_jobs_report", force: :cascade do |t|
    t.integer "export_jobs_h_id", null: false
    t.integer "export_jobs_d_id", null: false
    t.string "agreement_no", limit: 100
    t.string "document_id", limit: 50
    t.string "filename", limit: 500
    t.string "description", limit: 1000
    t.datetime "dtm_crt", default: "getdate"
  end
 
  create_table "dms_field", force: :cascade do |t|
    t.string "field_label", limit: 40
    t.string "data_type", limit: 20
    t.boolean "is_mandatory"
    t.boolean "is_searchable"
    t.string "description", limit: 300
    t.string "status", limit: 1
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
    t.integer "is_confins_lookup", null: false
  end
 
  create_table "dms_field_lookup", force: :cascade do |t|
    t.integer "field_id"
    t.string "lookup_label", limit: 100
    t.string "status", limit: 1
    t.integer "creator_id"
    t.datetime "creator_date"
    t.string "creator_ip_address", limit: 20
    t.string "code", limit: 20
    t.string "type", limit: 20
    t.string "doc_category", limit: 20
    t.integer "order_position", default: 1
  end
 
  create_table "dms_folder_record", force: :cascade do |t|
    t.string "folder_name", limit: 50
    t.integer "folder_parent_id"
    t.integer "doc_type_id"
    t.string "group_access_role", limit: 1500
    t.string "status", limit: 1
    t.integer "client_id"
    t.datetime "modified_date"
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
    t.string "email_notif", limit: 1500
    t.string "approval_id", limit: 50
  end
 
  create_table "dms_fst", force: :cascade do |t|
    t.string "fst_code", limit: 50, null: false
    t.integer "root_folder_id", null: false
    t.text "description"
    t.string "status", limit: 50, default: "0", null: false
    t.integer "creator_id"
    t.string "creator_ip_add", limit: 1000
    t.datetime "created_date"
    t.integer "modifier_id"
    t.datetime "modified_date"
  end
 
  create_table "dms_fst_details", force: :cascade do |t|
    t.integer "fst_id", null: false
    t.string "fstd_code", limit: 50, null: false
    t.integer "parent_id"
    t.integer "doc_type_id", null: false
    t.string "fstd_name"
    t.string "search"
    t.integer "default_exp_date"
    t.integer "creator_id"
    t.datetime "created_date"
    t.integer "modifier_id"
    t.datetime "modified_date"
    t.string "link_viewer"
    t.index ["fstd_code"], name: "UQ_DMS_FST_DETAILS_FSTD_CODE", unique: true
  end
 
  create_table "dms_fst_doc", force: :cascade do |t|
    t.integer "fstd_id"
    t.integer "doc_type_id"
    t.string "exp_date", limit: 300
    t.string "naming_file", limit: 300
    t.string "search_other_doc_type", limit: 300
    t.integer "creator_id"
    t.datetime "created_date"
    t.integer "modifier_id"
    t.datetime "modified_date"
  end
 
  create_table "dms_fstd_field", force: :cascade do |t|
    t.integer "fstd_id"
    t.integer "field_id"
    t.integer "creator_id"
    t.datetime "created_date"
    t.integer "modifier_id"
    t.datetime "modified_date"
  end
 
  create_table "dms_fulltext", force: :cascade do |t|
    t.text "object_text"
    t.integer "document_id"
  end
 
  create_table "dms_general_setting", force: :cascade do |t|
    t.string "gs_code", limit: 1000, null: false
    t.string "gs_name", limit: 1000, null: false
    t.string "gs_value", limit: 5000, null: false
    t.string "gs_desc", limit: 8000
  end
 
  create_table "dms_general_update_field", force: :cascade do |t|
    t.integer "field_id"
    t.string "record_value_change"
    t.string "record_value_on_change"
    t.string "view_code"
    t.string "status", limit: 10
    t.string "description"
    t.string "status_doc", limit: 10
    t.string "description_doc"
    t.datetime "created_date"
    t.datetime "modified_date"
  end
 
  create_table "dms_header_user_license_monitoring", force: :cascade do |t|
    t.date "monitoring_date", null: false
    t.integer "count", null: false
  end
 
  create_table "dms_housekeeping", force: :cascade do |t|
    t.string "delete_document", limit: 200
    t.string "delete_document_hkstype", limit: 5
    t.integer "delete_document_period"
    t.string "old_document", limit: 200
    t.string "old_document_hkstype", limit: 5
    t.integer "old_document_period"
    t.datetime "created_date"
    t.integer "creator_id"
    t.datetime "lastmodified_date"
    t.integer "lastmodified_user"
    t.string "path_folder", limit: 300
  end
 
  create_table "dms_integration_level", force: :cascade do |t|
    t.string "integration_name"
    t.string "integration_level"
    t.string "integration_fol_doc_type_id"
    t.string "integration_key_field_id"
    t.string "integration_lookup_field_id"
    t.string "integration_lookup_label"
    t.string "integration_permission", limit: 255
    t.string "integration_code", limit: 255
    t.string "view_code", limit: 255
  end
 
  create_table "dms_invoice", force: :cascade do |t|
    t.integer "invoice_gabung", null: false
    t.datetime "created_date"
    t.string "status", limit: 50
  end
 
  create_table "dms_migrasi_temp", force: :cascade do |t|
    t.integer "document_id_after"
    t.integer "document_id_before"
  end
 
  create_table "dms_number", force: :cascade do |t|
    t.string "number", limit: 255, null: false
    t.integer "document_id"
    t.integer "doc_type_id"
    t.datetime "create_date"
    t.string "status", limit: 50
  end
 
  create_table "dms_object_notes", force: :cascade do |t|
    t.integer "object_id"
    t.string "object_type", limit: 3
    t.datetime "note_date"
    t.string "note", limit: 5000
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
  end
 
  create_table "dms_object_record", force: :cascade do |t|
    t.integer "object_id"
    t.integer "position"
    t.string "record_value", limit: 300
    t.integer "doc_type_id"
    t.integer "field_id"
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
    t.string "search_field", limit: 320
  end
 
  create_table "dms_staging", force: :cascade do |t|
    t.string "docid", limit: 10
    t.string "docname", limit: 100
  end
 
  create_table "dms_sys", force: :cascade do |t|
    t.string "sys_val_a", limit: 300
    t.string "sys_val_l", limit: 300
  end
 
  create_table "dms_sys_data", force: :cascade do |t|
    t.integer "sys_reg_id"
    t.string "server_data", limit: 1000
    t.string "server_value", limit: 500
  end
 
  create_table "dms_sys_log", force: :cascade do |t|
    t.integer "sys_reg_id"
    t.datetime "access_date"
    t.string "access_condition", limit: 3
    t.integer "creator_id"
  end
 
  create_table "dms_sys_reg", force: :cascade do |t|
    t.string "reg_name", limit: 300
    t.string "reg_ip_address", limit: 300
    t.datetime "created_date"
  end
 
  create_table "dms_task_criteria", force: :cascade do |t|
    t.integer "task_template_id"
    t.integer "field_id"
    t.string "criteria_set", limit: 350
    t.string "criteria_result", limit: 500
    t.integer "created_by"
    t.datetime "created_date"
  end
 
  create_table "dms_task_scheduler", force: :cascade do |t|
    t.string "description", limit: 350
    t.string "action", limit: 50
    t.integer "doc_type_id"
    t.string "template_email"
    t.integer "folder_id"
    t.string "status", limit: 10
    t.integer "creator_id"
    t.datetime "created_date"
    t.integer "modified_id"
    t.datetime "modified_date"
    t.string "task_name", limit: 350
    t.string "when_id", limit: 10
    t.string "group_email", limit: 150
    t.string "condition", limit: 10
    t.integer "attachment"
  end
 
  create_table "dms_transaction_history", force: :cascade do |t|
    t.integer "object_id"
    t.string "object_name", limit: 60
    t.string "object_type", limit: 3
    t.integer "doc_type_id"
    t.datetime "transaction_date"
    t.string "transaction_type", limit: 5
    t.string "description", limit: 300
    t.integer "user_id"
    t.string "user_ip_address", limit: 20
    t.string "user_confins", limit: 300
    t.string "origination", limit: 20
  end
 
  create_table "dms_type_approval", force: :cascade do |t|
    t.integer "document_id"
    t.string "approval_user_id", limit: 100
    t.string "status_approval", limit: 100
    t.string "description"
    t.datetime "created_task"
    t.integer "send_email"
    t.integer "notification"
    t.integer "duedate"
    t.datetime "created_approval"
    t.integer "creator_id"
    t.integer "lastmodified_user"
  end
 
  create_table "dms_vault", force: :cascade do |t|
    t.string "root_folder", limit: 200
    t.string "last_folder", limit: 200
    t.integer "count_folder"
    t.integer "count_document"
    t.integer "doc_vault_id"
  end
 
  create_table "dms_vault_monitoring", force: :cascade do |t|
    t.integer "total_folder"
    t.integer "total_file"
    t.integer "total_file_size"
    t.date "monitoring_date"
    t.datetime "created_date"
  end
 
  create_table "dms_version_exclude_field", force: :cascade do |t|
    t.integer "field_id"
    t.integer "creator_id"
    t.string "creator_ip_add", limit: 1000
    t.datetime "created_date"
    t.integer "modifier_id"
    t.datetime "modified_date"
  end
 
  create_table "dms_viewcode_record", force: :cascade do |t|
    t.integer "folder_id"
    t.integer "document_id"
    t.string "view_code"
    t.datetime "created_date"
    t.datetime "modified_date"
    t.integer "creator_id"
    t.integer "modified_id"
  end
 
  create_table "doc_check_completness", force: :cascade do |t|
    t.string "template_name", limit: 100
    t.string "folder_checked", limit: 100
    t.string "doctype_checked", limit: 100
    t.datetime "created_date"
    t.integer "creator"
    t.datetime "lastmodifieddate"
    t.integer "lastmodifieduser"
    t.string "notif_to_user", limit: 200
    t.string "status", limit: 2
    t.string "send_alert", limit: 20
    t.string "notif_to_group", limit: 200
  end
 
  create_table "doc_check_completness_detail", force: :cascade do |t|
    t.integer "doc_check_id"
    t.string "document_checked", limit: 200
    t.datetime "createddate"
  end
 
  create_table "doctype_security", force: :cascade do |t|
    t.integer "doc_type_id"
    t.string "type_name", limit: 100
    t.string "group_access_role", limit: 1500
    t.string "group_access_role_doc", limit: 1500
    t.string "status", limit: 1
    t.datetime "modified_date"
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
  end
 
  create_table "erroremail", force: :cascade do |t|
    t.integer "errornumber"
    t.integer "errorseverity"
    t.integer "errorstate"
    t.string "errorprocedure", limit: 64
    t.integer "errorline"
    t.string "errormessage", limit: 2000
  end
 
  create_table "exportjobs", force: :cascade do |t|
    t.string "exportjobsname", limit: 500
    t.string "inputfolder", limit: 2000
    t.string "sourceid", limit: 100
    t.string "jenisdoc", limit: 1500
    t.string "scheduletime", limit: 2000
    t.string "emailalert", limit: 5000
    t.string "outputfolder", limit: 2000
    t.string "status", limit: 2
    t.integer "creator"
    t.datetime "createddate"
    t.integer "lastmodifieduser"
    t.datetime "lastmodifieddate"
    t.string "logfolder", limit: 2000
    t.string "tozip", limit: 6
  end
 
  create_table "exportjobsdetail", force: :cascade do |t|
    t.integer "exportjobsid"
    t.string "jenisdoc", limit: 1500
    t.integer "creator"
    t.datetime "createddate"
  end
 
  create_table "exportjobslog", force: :cascade do |t|
    t.string "textfilename", limit: 2000
    t.integer "totalid"
    t.datetime "starttime"
    t.datetime "endtime"
    t.integer "exportjobsid"
  end
 
  create_table "group_history", force: :cascade do |t|
    t.integer "group_id"
    t.integer "updater_id"
    t.string "updater_ip_address", limit: 20
    t.datetime "update_date"
    t.string "update_activity", limit: 5
    t.string "description", limit: 300
  end
 
  create_table "group_record", force: :cascade do |t|
    t.string "group_name", limit: 100
    t.string "group_email", limit: 2000
    t.string "status", limit: 1
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
  end
 
  create_table "hks_doc_details", force: :cascade do |t|
    t.integer "doc_detail_id", null: false
    t.string "file_path", limit: 1500
    t.integer "document_id"
    t.integer "doc_vault_id"
  end
 
  create_table "hks_doc_object_record", force: :cascade do |t|
    t.integer "object_doc_record_id", null: false
    t.integer "object_id"
    t.string "record_value", limit: 300
    t.integer "doc_type_id"
    t.integer "field_id"
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
    t.integer "position"
    t.string "search_field", limit: 320
  end
 
  create_table "hks_doc_record", force: :cascade do |t|
    t.integer "document_id", null: false
    t.integer "folder_id"
    t.string "filename", limit: 100
    t.integer "size"
    t.integer "doc_type_id"
    t.string "file_type", limit: 5
    t.string "group_access_role", limit: 1500
    t.datetime "expired_field_value"
    t.datetime "retention_field_value"
    t.string "status", limit: 1
    t.integer "client_id"
    t.datetime "modified_date"
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
    t.integer "doc_ref_id"
    t.integer "status_backup"
    t.binary "thumbimage"
    t.integer "version_number"
    t.integer "parent_id"
    t.string "temppath"
    t.string "status_split", limit: 15
    t.string "version_type", limit: 2
    t.date "promise_date"
    t.string "alert", limit: 20
    t.string "status_upload", limit: 100
    t.string "parentfolder", limit: 200
  end
 
  create_table "hks_folder_record", force: :cascade do |t|
    t.integer "folder_id", null: false
    t.string "folder_name", limit: 50
    t.integer "folder_parent_id"
    t.integer "doc_type_id"
    t.string "group_access_role", limit: 1500
    t.string "status", limit: 1
    t.integer "client_id"
    t.datetime "modified_date"
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
    t.string "email_notif", limit: 1500
  end
 
  create_table "hks_object_record", force: :cascade do |t|
    t.integer "object_record_id", null: false
    t.integer "object_id"
    t.integer "position"
    t.string "record_value", limit: 300
    t.integer "doc_type_id"
    t.integer "field_id"
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
    t.string "search_field", limit: 320
  end
 
  create_table "inheritance_field", force: :cascade do |t|
    t.integer "folder_id"
    t.string "folder_name", limit: 100
    t.integer "doc_type_id"
    t.string "status", limit: 1
    t.datetime "modified_date"
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
  end
 
  create_table "inheritance_security", force: :cascade do |t|
    t.integer "folder_id"
    t.string "folder_name", limit: 50
    t.integer "doc_type_id"
    t.string "group_access_role", limit: 1500
    t.string "group_access_role_doc", limit: 1500
    t.string "status", limit: 100
    t.datetime "modified_date"
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
  end
 
  create_table "integration_api_error", force: :cascade do |t|
    t.string "integration_api_error_id", default: "newid", null: false
    t.string "request_method", limit: 100
    t.string "request_url", limit: 100
    t.datetime "datetime_created"
    t.string "message", null: false
  end
 
  create_table "integration_api_log", force: :cascade do |t|
    t.string "host", limit: 50
    t.string "headers"
    t.string "status_code", limit: 25
    t.datetime "datetime_created"
    t.string "request_body"
    t.string "request_method"
    t.string "user_host_address", limit: 50
    t.string "user_agent", limit: 50
    t.string "absolute_uri", limit: 50
    t.string "request_type", limit: 50
  end
 
  create_table "integration_app", force: :cascade do |t|
    t.integer "integration_app_id", null: false
    t.string "integration_app_code", default: "newid"
    t.string "integration_app_name", limit: 5000
    t.string "integration_key", limit: 5000
    t.string "integration_iv", limit: 5000
    t.integer "default_group_id"
    t.integer "default_role_id"
    t.text "additional"
  end
 
  create_table "integration_app_log", force: :cascade do |t|
    t.integer "integration_app_id", null: false
    t.string "request_url"
    t.string "request_param"
    t.string "requestor_ip"
    t.datetime "created_date", null: false
  end
 
  create_table "integration_app_server", force: :cascade do |t|
    t.integer "integration_app_id"
    t.string "integration_app_server_name"
    t.string "integration_app_server_address"
  end
 
  create_table "integration_doctype_role", force: :cascade do |t|
    t.integer "integration_role_id"
    t.string "integration_view_code", limit: 500
    t.integer "doc_type_id"
    t.boolean "document_add"
    t.boolean "document_view"
    t.boolean "document_delete"
    t.integer "creator_id"
    t.datetime "creator_date"
    t.string "creator_ip_address", limit: 20
    t.boolean "document_download"
  end
 
  create_table "integration_role_history", force: :cascade do |t|
    t.integer "integration_role_id"
    t.integer "updater_id"
    t.string "updater_ip_address", limit: 20
    t.datetime "updater_date"
    t.string "updater_activity", limit: 5
    t.string "description", limit: 300
  end
 
  create_table "integration_role_record", force: :cascade do |t|
    t.string "integration_role_name", limit: 50
    t.string "integration_role_description", limit: 300
    t.string "status", limit: 1
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
  end
 
  create_table "migrasijenisdocument", force: :cascade do |t|
    t.string "lookup_label", limit: 127
    t.string "code", limit: 127
    t.string "type", limit: 127
    t.string "viewcode", limit: 127
  end
 
  create_table "migrasirole$", force: :cascade do |t|
    t.float "ref_role_id"
    t.string "role_code", limit: 127
    t.string "role_name", limit: 127
    t.float "is_active"
    t.string "usr_upd", limit: 127
    t.datetime "dtm_upd"
    t.string "usr_crt", limit: 127
    t.datetime "dtm_crt"
  end
 
  create_table "migrasiuser$", force: :cascade do |t|
    t.float "ref_user_id"
    t.string "username", limit: 127
    t.string "password", limit: 127
    t.float "ref_emp_id"
    t.float "fail_pwd_count"
    t.float "is_locked_out"
    t.float "is_active"
    t.string "usr_upd", limit: 127
    t.datetime "dtm_upd"
    t.string "usr_crt", limit: 127
    t.datetime "dtm_crt"
  end
 
  create_table "mobile_tc_doc", force: :cascade do |t|
    t.integer "documentid"
    t.string "orderno", limit: 100
    t.string "tccode", limit: 100
    t.string "userconfins", limit: 100
  end
 
  create_table "role_history", force: :cascade do |t|
    t.integer "role_id"
    t.integer "updater_id"
    t.string "updater_ip_address", limit: 20
    t.datetime "update_date"
    t.string "update_activity", limit: 5
    t.string "description", limit: 300
  end
 
  create_table "role_record", force: :cascade do |t|
    t.string "role_name", limit: 40
    t.boolean "folder_add"
    t.boolean "folder_edit"
    t.boolean "folder_delete"
    t.boolean "document_add"
    t.boolean "document_edit"
    t.boolean "document_delete"
    t.boolean "document_view_image"
    t.boolean "document_download"
    t.boolean "view_metadata"
    t.boolean "insert_note"
    t.boolean "create_root_folder"
    t.boolean "edit_root_folder"
    t.boolean "delete_root_folder"
    t.boolean "view_object_report"
    t.boolean "view_retention_report"
    t.boolean "view_expired_report"
    t.boolean "view_user_report"
    t.boolean "sec_admin"
    t.boolean "sys_admin"
    t.string "status", limit: 1
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
    t.boolean "document_move", default: true
    t.boolean "view_exportjobs_report", default: true
    t.boolean "list_export"
    t.boolean "input_invoice"
    t.boolean "input_tanda_terima"
    t.boolean "active_document"
    t.boolean "input_pembayaran"
    t.boolean "save_as_draft"
    t.boolean "doc_kontrak_expired"
    t.boolean "report_sla"
    t.boolean "aging_pembayaran"
    t.boolean "aging_tagihan"
  end
 
  create_table "sysdiagrams", force: :cascade do |t|
    t.string "name", limit: 64, null: false
    t.integer "principal_id", null: false
    t.integer "version"
    t.binary "definition"
    t.index ["principal_id", "name"], name: "UK_principal_name", unique: true
  end
 
  create_table "user_app_menu", force: :cascade do |t|
    t.integer "app_id"
    t.integer "user_id"
  end
 
  create_table "user_groups", force: :cascade do |t|
    t.integer "group_id"
    t.integer "user_id"
    t.boolean "default_group"
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
  end
 
  create_table "user_history", force: :cascade do |t|
    t.integer "user_id"
    t.integer "updater_id"
    t.string "updater_ip_address", limit: 20
    t.datetime "updater_date"
    t.string "updater_activity", limit: 5
    t.string "description", limit: 300
  end
 
  create_table "user_record", force: :cascade do |t|
    t.string "login_name", limit: 30, null: false
    t.string "full_name", limit: 50, null: false
    t.string "login_pwd", limit: 800, null: false
    t.integer "role_id", null: false
    t.string "occupation", limit: 50
    t.string "status", limit: 1
    t.boolean "is_login"
    t.integer "creator_id"
    t.datetime "created_date"
    t.string "creator_ip_address", limit: 20
    t.string "user_session_id", limit: 50
    t.string "email", limit: 200
    t.integer "integration_app_id"
    t.boolean "is_locked"
    t.datetime "modified_date"
    t.integer "fail_pwd_count", default: 0
  end
 
  create_table "version_history", force: :cascade do |t|
    t.string "document_id", limit: 100
    t.string "field_name", limit: 300
    t.string "prev_record_value", limit: 400
    t.string "curr_record_value", limit: 400
    t.string "prev_document_id", limit: 100
    t.string "change_type", limit: 100
  end
 
  create_table "wf_task", force: :cascade do |t|
    t.string "wf_task_name", limit: 50
    t.string "wf_task_desc", limit: 50
  end
 
  create_table "wf_task_api", force: :cascade do |t|
    t.string "wf_task_api_url", limit: 1000, null: false
    t.string "wf_task_api_method", limit: 1000
    t.string "wf_task_api_method_type", limit: 1000
    t.string "wf_task_api_uri_params", limit: 8000
    t.string "wf_task_api_header_parmas", limit: 8000
    t.string "wf_task_api_body_parmas", limit: 8000
  end
 
  create_table "wf_task_detail", force: :cascade do |t|
    t.bigint "wf_task_id", null: false
    t.bigint "wf_task_detail_seq"
    t.string "wf_task_detail_name", limit: 8000
    t.bigint "wf_task_api_id"
    t.bigint "wf_task_sp_id"
  end
 
  create_table "wf_task_list", force: :cascade do |t|
    t.bigint "wf_task_id", null: false
    t.bigint "wf_task_input_params_id"
    t.string "wf_task_status", limit: 8000
    t.datetime "created_date"
    t.datetime "modified_date"
    t.bigint "creator_id"
  end
 
  create_table "wf_task_list_detail", force: :cascade do |t|
    t.bigint "wf_task_list_id", null: false
    t.bigint "wf_task_detail_id", null: false
    t.bigint "wf_task_list_details_input_params_id"
    t.string "wf_task_list_details_status", limit: 5, null: false
    t.datetime "created_date"
    t.datetime "start_working"
    t.datetime "end_working"
    t.string "output", limit: 8000
  end
 
  create_table "wf_task_list_params", force: :cascade do |t|
    t.string "wf_task_sp_params", limit: 8000, null: false
    t.string "wf_task_api_header_params", limit: 8000
    t.string "wf_task_api_body_params", limit: 8000
    t.string "wf_task_api_uri_params", limit: 8000
  end
 
  create_table "wf_task_sp", force: :cascade do |t|
    t.string "wf_task_sp_name", limit: 100, null: false
    t.string "wf_task_sp_params", limit: 1000
  end
 
  add_foreign_key "dms_export_jobs_detail", "dms_export_jobs_header", column: "export_jobs_h_id", name: "dms_export_jobs_detail_export_jobs_h_id_fkey", primary_key: "export_jobs_h_id"
  add_foreign_key "dms_export_jobs_report", "dms_export_jobs_detail", column: "export_jobs_d_id", name: "FK_DMS_EXPORT_JOBS_REPORT_D_ID", primary_key: "export_jobs_d_id"
  add_foreign_key "dms_export_jobs_report", "dms_export_jobs_header", column: "export_jobs_h_id", name: "FK_DMS_EXPORT_JOBS_REPORT_H_ID", primary_key: "export_jobs_h_id"
  add_foreign_key "dms_fst_details", "dms_fst", column: "fst_id", name: "FK_DMS_FST_DETAILS_DMS_FST", primary_key: "fst_id"
  add_foreign_key "dms_version_exclude_field", "dms_field", column: "field_id", name: "FK_DMS_VERSION_EXCLUDE_FIELD_DMS_FIELD", primary_key: "field_id"
  add_foreign_key "exportjobsdetail", "exportjobs", column: "exportjobsid", name: "FK_ExportJobsDetail_ExportJobs", primary_key: "exportjobsid"
  add_foreign_key "exportjobslog", "exportjobs", column: "exportjobsid", name: "FK_ExportJobsLog_ExportJobs", primary_key: "exportjobsid"
  add_foreign_key "integration_app", "group_record", column: "default_group_id", name: "FK_INTEGRATION_APP_GROUP_RECORD", primary_key: "group_id"
  add_foreign_key "integration_app", "role_record", column: "default_role_id", name: "FK_INTEGRATION_APP_ROLE_RECORD", primary_key: "role_id"
  add_foreign_key "integration_app_log", "integration_app", column: "integration_app_id", name: "FK_INTEGRATION_APP_LOG_INTEGRATION_APP_LOG"
  add_foreign_key "integration_app_server", "integration_app_server", column: "integration_app_server_id", name: "FK_INTEGRATION_APP_SERVER_INTEGRATION_APP_SERVER"
  add_foreign_key "user_record", "integration_app", column: "integration_app_id", name: "FK_USER_RECORD_INTEGRATION_APP"
  add_foreign_key "wf_task_detail", "wf_task_api", column: "wf_task_api_id", name: "FK_WF_TASK_DETAIL_WF_TASK_API"
  add_foreign_key "wf_task_detail", "wf_task", column: "wf_task_id", name: "FK_WF_TASK_DETAIL_WF_TASK_DETAIL"
  add_foreign_key "wf_task_detail", "wf_task_sp", column: "wf_task_sp_id", name: "FK_WF_TASK_DETAIL_WF_TASK_SP"
  add_foreign_key "wf_task_list", "wf_task", column: "wf_task_id", name: "FK_WF_TASK_LIST_WF_TASK"
  add_foreign_key "wf_task_list", "wf_task_list_params", column: "wf_task_input_params_id", name: "FK_WF_TASK_LIST_WF_TASK_LIST_PARAMS"
  add_foreign_key "wf_task_list_detail", "wf_task_detail", column: "wf_task_detail_id", name: "FK_WF_TASK_LIST_DETAIL_WF_TASK_DETAIL"
  add_foreign_key "wf_task_list_detail", "wf_task_list", column: "wf_task_list_id", name: "FK_WF_TASK_LIST_DETAIL_WF_TASK_LIST"
  add_foreign_key "wf_task_list_detail", "wf_task_list_params", column: "wf_task_list_details_input_params_id", name: "FK_WF_TASK_LIST_DETAIL_WF_TASK_LIST_PARAMS"
 
end
