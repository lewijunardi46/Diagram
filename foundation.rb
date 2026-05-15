# Auto-generated from SQL Server
# Schema: dbo | Database: Foundation

ActiveRecord::Schema[8.1].define(version: 20260515_000000) do


  create_table "ASSET_ACCESSORY", force: :cascade do |t|
    t.bigint "ASSET_ACCESSORY_ID", null: false
    t.bigint "ASSET_TYPE_ID", null: false
    t.string "ASSET_ACCESSORY_CODE", limit: 25
    t.string "ASSET_ACCESSORY_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "ASSET_ATTR", force: :cascade do |t|
    t.bigint "ASSET_ATTR_ID", null: false
    t.bigint "ASSET_TYPE_ID", null: false
    t.bigint "REF_ATTR_ID", null: false
    t.boolean "IS_EDITABLE_AFTER_GO_LIVE", null: false
  end


  create_table "ASSET_CATEGORY", force: :cascade do |t|
    t.bigint "ASSET_CATEGORY_ID", null: false
    t.bigint "ASSET_TYPE_ID", null: false
    t.string "ASSET_CATEGORY_CODE", limit: 25, null: false
    t.string "ASSET_CATEGORY_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "ASSET_DOC_LIST", force: :cascade do |t|
    t.bigint "ASSET_DOC_LIST_ID", null: false
    t.bigint "ASSET_TYPE_ID", null: false
    t.bigint "REF_ASSET_DOC_ID", null: false
    t.boolean "IS_MAIN_DOC", null: false
    t.boolean "IS_VALUE_NEEDED", null: false
    t.boolean "IS_PLEDGE", null: false
    t.boolean "IS_BORROW", null: false
    t.boolean "IS_MANDATORY_NEW", null: false
    t.boolean "IS_MANDATORY_USED", null: false
    t.boolean "IS_ACTIVE", null: false
    t.boolean "IS_EXP_DT_MANDATORY", default: false, null: false
  end


  create_table "ASSET_MASTER", force: :cascade do |t|
    t.bigint "ASSET_MASTER_ID", null: false
    t.bigint "ASSET_CATEGORY_ID"
    t.bigint "ASSET_TYPE_ID", null: false
    t.string "ASSET_CODE", limit: 25, null: false
    t.string "ASSET_NAME", limit: 50, null: false
    t.integer "HIERARCHY_LVL", null: false
    t.string "FULL_ASSET_CODE", limit: 250, null: false
    t.string "FULL_ASSET_NAME", limit: 500, null: false
    t.bigint "PARENT_ID"
    t.boolean "IS_FINAL", null: false
    t.boolean "IS_ACTIVE", null: false
    t.string "RESERVE_FIELD_1", limit: 2000
    t.string "RESERVE_FIELD_2", limit: 2000
    t.string "RESERVE_FIELD_3", limit: 2000
    t.string "RESERVE_FIELD_4", limit: 2000
    t.string "RESERVE_FIELD_5", limit: 2000
  end


  create_table "ASSET_MASTER_ATTR_CONTENT", force: :cascade do |t|
    t.bigint "ASSET_MASTER_ATTR_CONTENT_ID", null: false
    t.bigint "ASSET_MASTER_ID", null: false
    t.bigint "ASSET_ATTR_ID", null: false
    t.string "ATTR_CONTENT", limit: 50, null: false
  end


  create_table "ASSET_NEGATIVE", force: :cascade do |t|
    t.bigint "ASSET_NEGATIVE_ID", null: false
    t.bigint "ASSET_MASTER_ID", null: false
    t.string "SERIAL_NO_1", limit: 25
    t.string "SERIAL_NO_2", limit: 25
    t.string "SERIAL_NO_3", limit: 25
    t.string "SERIAL_NO_4", limit: 25
    t.string "SERIAL_NO_5", limit: 25
    t.string "MR_NEG_ASSET_SOURCE_CODE", limit: 25, null: false
    t.string "NOTES", limit: 2000
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "ASSET_NEGATIVE_HIST", force: :cascade do |t|
    t.bigint "ASSET_NEGATIVE_HIST_ID", null: false
    t.bigint "ASSET_NEGATIVE_ID", null: false
    t.string "MR_NEG_ASSET_SOURCE_CODE", limit: 25, null: false
    t.string "NOTES", limit: 2000
    t.boolean "IS_ACTIVE", null: false
    t.integer "VERSION", null: false
  end


  create_table "ASSET_SCHM_D", force: :cascade do |t|
    t.bigint "ASSET_SCHM_D_ID", null: false
    t.bigint "ASSET_SCHM_H_ID", null: false
    t.bigint "ASSET_MASTER_ID", null: false
  end


  create_table "ASSET_SCHM_H", force: :cascade do |t|
    t.bigint "ASSET_SCHM_H_ID", null: false
    t.bigint "ASSET_TYPE_ID", null: false
    t.string "ASSET_SCHM_CODE", limit: 25, null: false
    t.string "ASSET_SCHM_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
    t.boolean "IS_SYSTEM", default: false, null: false
  end


  create_table "ASSET_TYPE", force: :cascade do |t|
    t.bigint "ASSET_TYPE_ID", null: false
    t.string "ASSET_TYPE_CODE", limit: 25, null: false
    t.string "ASSET_TYPE_NAME", limit: 50, null: false
    t.integer "MAX_HIERARCHY_LEVEL", null: false
    t.string "HIERARCHY_LABEL_LEVEL_1", limit: 50
    t.string "HIERARCHY_LABEL_LEVEL_2", limit: 50
    t.string "HIERARCHY_LABEL_LEVEL_3", limit: 50
    t.string "HIERARCHY_LABEL_LEVEL_4", limit: 50
    t.string "HIERARCHY_LABEL_LEVEL_5", limit: 50
    t.string "SERIAL_NO_1_LABEL", limit: 50
    t.string "SERIAL_NO_2_LABEL", limit: 50
    t.string "SERIAL_NO_3_LABEL", limit: 50
    t.string "SERIAL_NO_4_LABEL", limit: 50
    t.string "SERIAL_NO_5_LABEL", limit: 50
    t.boolean "IS_MNDTRY_SERIAL_NO_1"
    t.boolean "IS_MNDTRY_SERIAL_NO_2"
    t.boolean "IS_MNDTRY_SERIAL_NO_3"
    t.boolean "IS_MNDTRY_SERIAL_NO_4"
    t.boolean "IS_MNDTRY_SERIAL_NO_5"
    t.boolean "IS_LOAN_OBJ", null: false
    t.boolean "IS_ACTIVE", null: false
    t.integer "TOTAL_SERIAL_NO_LABEL", default: 0, null: false
  end


  create_table "AUTH_API", force: :cascade do |t|
    t.bigint "AUTH_API_ID", null: false
    t.bigint "REF_API_ID", null: false
    t.bigint "REF_FORM_ID", null: false
  end


  create_table "AUTH_FORM", force: :cascade do |t|
    t.bigint "AUTH_FORM_ID", null: false
    t.bigint "REF_FORM_ID", null: false
    t.bigint "REF_ROLE_ID", null: false
    t.string "FORM_FEATURE", limit: 2000
  end


  create_table "CENTER_GRP", force: :cascade do |t|
    t.bigint "CENTER_GRP_ID", null: false
    t.string "CENTER_GRP_CODE", limit: 25, null: false
    t.string "CENTER_GRP_NAME", limit: 50, null: false
    t.string "MR_CENTER_GRP_TYPE_CODE", limit: 25, null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "CENTER_GRP_OFFICE_MBR", force: :cascade do |t|
    t.bigint "CENTER_GRP_OFFICE_MBR_ID", null: false
    t.bigint "CENTER_GRP_ID", null: false
    t.bigint "REF_OFFICE_ID", null: false
    t.boolean "IS_COORDINATOR", null: false
  end


  create_table "COA_SCHM", force: :cascade do |t|
    t.bigint "COA_SCHM_ID", null: false
    t.string "SCHM_CODE", limit: 25, null: false
    t.string "SCHM_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "CUST", force: :cascade do |t|
    t.bigint "CUST_ID", null: false
    t.string "CUST_NO", limit: 50
    t.string "CUST_NAME", limit: 250, null: false
    t.string "MR_CUST_TYPE_CODE", limit: 25, null: false
    t.string "MR_CUST_MODEL_CODE", limit: 25
    t.string "MR_ID_TYPE_CODE", limit: 25
    t.string "ID_NO", limit: 25
    t.datetime "ID_EXPIRED_DT"
    t.string "TAX_ID_NO", limit: 25
    t.boolean "IS_VIP", null: false
    t.string "ORIGINAL_OFFICE_CODE", limit: 25
    t.boolean "IS_AFFILIATE_WITH_MF", null: false
    t.string "VIP_NOTES", limit: 2000
    t.boolean "IS_CUSTOMER", default: false, null: false
    t.boolean "IS_FAMILY", default: false, null: false
    t.boolean "IS_GUARANTOR", default: false, null: false
    t.boolean "IS_SHAREHOLDER", default: false, null: false
    t.string "THIRD_PARTY_TRX_NO", limit: 50
    t.datetime "ValidFrom", default: "getdate", null: false
    t.datetime "ValidTill", default: "9999-12-31 23:59:59", null: false
    t.string "ModifiedUser", limit: 64
    t.string "THIRD_PARTY_RSLT_H_GROUP_NO", limit: 25
    t.boolean "IS_CUST_GRP", default: false, null: false
  end


  create_table "CUST_ADDR", force: :cascade do |t|
    t.bigint "CUST_ADDR_ID", null: false
    t.bigint "CUST_ID", null: false
    t.string "MR_CUST_ADDR_TYPE_CODE", limit: 25, null: false
    t.string "ADDR", limit: 500
    t.string "AREA_CODE_1", limit: 25
    t.string "AREA_CODE_2", limit: 25
    t.string "AREA_CODE_3", limit: 25
    t.string "AREA_CODE_4", limit: 25
    t.string "CITY", limit: 25
    t.string "ZIPCODE", limit: 25
    t.string "MR_BUILDING_OWNERSHIP_CODE", limit: 25
    t.string "PHN_AREA_1", limit: 10
    t.string "PHN_1", limit: 25
    t.string "PHN_EXT_1", limit: 5
    t.string "PHN_AREA_2", limit: 10
    t.string "PHN_2", limit: 25
    t.string "PHN_EXT_2", limit: 5
    t.string "PHN_AREA_3", limit: 10
    t.string "PHN_3", limit: 25
    t.string "PHN_EXT_3", limit: 5
    t.string "FAX_AREA", limit: 10
    t.string "FAX", limit: 25
    t.string "NOTES", limit: 2000
    t.string "SUB_ZIPCODE", limit: 25
    t.decimal "STAY_LENGTH", precision: 17, scale: 2
    t.datetime "STAY_SINCE"
  end


  create_table "CUST_ADDR_ATTR_CONTENT", force: :cascade do |t|
    t.bigint "CUST_ADDR_ATTR_CONTENT_ID", null: false
    t.bigint "CUST_ADDR_ID", null: false
    t.string "ATTR_VALUE", limit: 500, null: false
    t.bigint "REF_ATTR_ID", default: 0, null: false
  end


  create_table "CUST_ADDR_ATTR_CONTENT_HIST", force: :cascade do |t|
    t.bigint "CUST_ADDR_ATTR_CONTENT_HIST_ID", null: false
    t.bigint "CUST_ADDR_ID", null: false
    t.string "ATTR_VALUE", limit: 500, null: false
    t.bigint "REF_ATTR_ID", default: 0, null: false
  end


  create_table "CUST_ADDR_HIST", force: :cascade do |t|
    t.bigint "CUST_ADDR_HIST_ID", null: false
    t.bigint "CUST_ID", null: false
    t.bigint "CUST_ADDR_ID", null: false
    t.string "MR_CUST_ADDR_TYPE_CODE", limit: 25, null: false
    t.string "ADDR", limit: 500
    t.string "AREA_CODE_1", limit: 25
    t.string "AREA_CODE_2", limit: 25
    t.string "AREA_CODE_3", limit: 25
    t.string "AREA_CODE_4", limit: 25
    t.string "CITY", limit: 25
    t.string "ZIPCODE", limit: 25
    t.string "SUB_ZIPCODE", limit: 25
    t.string "PHN_AREA_1", limit: 10
    t.string "PHN_1", limit: 25
    t.string "PHN_EXT_1", limit: 5
    t.string "PHN_AREA_2", limit: 10
    t.string "PHN_2", limit: 25
    t.string "PHN_EXT_2", limit: 5
    t.string "PHN_AREA_3", limit: 10
    t.string "PHN_3", limit: 25
    t.string "PHN_EXT_3", limit: 5
    t.string "FAX_AREA", limit: 10
    t.string "FAX", limit: 25
    t.string "MR_BUILDING_OWNERSHIP_CODE", limit: 25
    t.string "NOTES", limit: 2000
    t.decimal "STAY_LENGTH", precision: 17, scale: 2
    t.datetime "STAY_SINCE"
  end


  create_table "CUST_ASSET", force: :cascade do |t|
    t.bigint "CUST_ASSET_ID", null: false
    t.bigint "CUST_ID", null: false
    t.string "MR_CUST_ASSET_TYPE_CODE", limit: 100, null: false
    t.string "ASSET_DESCR", limit: 127
    t.decimal "ASSET_VALUE", precision: 17, scale: 2
    t.integer "ASSET_QTY"
    t.decimal "ASSET_TOTAL_VALUE", precision: 17, scale: 2
  end


  create_table "CUST_ATTR_CONTENT", force: :cascade do |t|
    t.bigint "CUST_ATTR_CONTENT_ID", null: false
    t.bigint "CUST_ID", null: false
    t.string "ATTR_VALUE", limit: 500, null: false
    t.bigint "REF_ATTR_ID", default: 0, null: false
  end


  create_table "CUST_ATTR_CONTENT_HIST", force: :cascade do |t|
    t.bigint "CUST_ATTR_CONTENT_HIST_ID", null: false
    t.bigint "CUST_ID", null: false
    t.string "ATTR_VALUE", limit: 500, null: false
    t.bigint "REF_ATTR_ID", default: 0, null: false
    t.integer "SEQ_NO", default: 0, null: false
  end


  create_table "CUST_BANK_ACC", force: :cascade do |t|
    t.bigint "CUST_BANK_ACC_ID", null: false
    t.bigint "CUST_ID", null: false
    t.bigint "REF_BANK_ID", null: false
    t.string "BANK_BRANCH", limit: 25, null: false
    t.string "BANK_ACC_NO", limit: 250, null: false
    t.string "BANK_ACC_NAME", limit: 250, null: false
    t.boolean "IS_BANK_STMNT", null: false
    t.string "BANK_BRANCH_REG_RPT_CODE", limit: 25
    t.decimal "BALANCE_AMT", precision: 17, scale: 2, null: false
    t.boolean "IS_DEFAULT", null: false
    t.boolean "IS_ACTIVE", null: false
    t.string "END_PERIOD", limit: 25
    t.string "START_PERIOD", limit: 25
    t.decimal "BEG_BALANCE_AMT", precision: 17, scale: 2, default: "00:00:00", null: false
  end


  create_table "CUST_BANK_STMNT", force: :cascade do |t|
    t.bigint "CUST_BANK_STMNT_ID", null: false
    t.bigint "CUST_BANK_ACC_ID", null: false
    t.string "MONTH", limit: 25, null: false
    t.string "YEAR", limit: 25, null: false
    t.integer "DEBIT_TRX_COUNT"
    t.decimal "DEBIT_AMT", precision: 17, scale: 2, null: false
    t.integer "CREDIT_TRX_COUNT"
    t.decimal "CREDIT_AMT", precision: 17, scale: 2, null: false
    t.decimal "BALANCE_AMT", precision: 17, scale: 2, null: false
  end


  create_table "CUST_BANK_STMNT_D", force: :cascade do |t|
    t.bigint "CUST_BANK_STMNT_D_ID", null: false
    t.bigint "CUST_BANK_STMNT_H_ID", null: false
    t.string "MONTH", limit: 25, null: false
    t.string "YEAR", limit: 25, null: false
    t.decimal "DEBIT_AMT", precision: 17, scale: 2, null: false
    t.decimal "CREDIT_AMT", precision: 17, scale: 2, null: false
    t.decimal "BALANCE_AMT", precision: 17, scale: 2, null: false
    t.integer "DEBIT_TRX_COUNT"
    t.integer "CREDIT_TRX_COUNT"
  end


  create_table "CUST_COMPANY", force: :cascade do |t|
    t.bigint "CUST_COMPANY_ID", null: false
    t.bigint "CUST_ID", null: false
    t.string "MR_COMPANY_TYPE_CODE", limit: 25
    t.bigint "REF_INDUSTRY_TYPE_ID"
    t.string "REGISTRATION_NO", limit: 50
    t.string "LICENSE_NO", limit: 50
    t.integer "NUM_OF_EMP"
    t.string "MR_INVESTMENT_TYPE_CODE", limit: 25
    t.datetime "ESTABLISHMENT_DT"
    t.boolean "IS_AFFILIATED", null: false
    t.string "WEBSITE", limit: 50
    t.string "PHN_AREA_1", limit: 10
    t.string "PHN_1", limit: 25
    t.string "PHN_EXT_1", limit: 5
    t.string "PHN_AREA_2", limit: 10
    t.string "PHN_2", limit: 25
    t.string "PHN_EXT_2", limit: 5
    t.string "EMAIL_1", limit: 25
    t.string "EMAIL_2", limit: 25
    t.boolean "IS_TAXABLE", default: false, null: false
    t.bigint "REF_SECTOR_ECONOMY_SLIK_ID"
    t.string "ModifiedUser", limit: 64
    t.string "ESTABLISHMENT_CITY", limit: 50
  end


  create_table "CUST_COMPANY_CONTACT_PERSON", force: :cascade do |t|
    t.bigint "CUST_COMPANY_CONTACT_PERSON_ID", null: false
    t.bigint "CUST_COMPANY_ID", null: false
    t.string "CONTACT_PERSON_NAME", limit: 250
    t.string "MR_JOB_POSITION_CODE", limit: 25
    t.string "JOB_TITLE_NAME", limit: 50
    t.string "MOBILE_PHN_NO_1", limit: 25
    t.string "MOBILE_PHN_NO_2", limit: 25
    t.string "EMAIL_1", limit: 25
    t.string "EMAIL_2", limit: 25
    t.string "PHN_AREA_1", limit: 10
    t.string "PHN_1", limit: 25
    t.string "PHN_EXT_1", limit: 5
    t.string "PHN_AREA_2", limit: 10
    t.string "PHN_2", limit: 25
    t.string "PHN_EXT_2", limit: 5
    t.string "MR_GENDER_CODE", limit: 25, null: false
    t.datetime "BIRTH_DT"
    t.string "BIRTH_PLACE", limit: 100
    t.string "ID_NO", limit: 25
    t.string "MR_CUST_RELATIONSHIP_CODE", limit: 25
    t.string "MR_ID_TYPE_CODE", limit: 25
    t.datetime "ID_EXPIRED_DT"
    t.string "MOBILE_PHN_NO_3", limit: 25
  end


  create_table "CUST_COMPANY_FIN_DATA", force: :cascade do |t|
    t.bigint "CUST_COMPANY_FIN_DATA_ID", null: false
    t.bigint "CUST_COMPANY_ID", null: false
    t.decimal "GROSS_MONTHLY_INCOME_AMT", precision: 17, scale: 2, null: false
    t.decimal "GROSS_PROFIT_AMT", precision: 17, scale: 2, null: false
    t.decimal "RETURN_OF_INVESTMENT_PRCNT", precision: 9, scale: 6, null: false
    t.decimal "RETURN_OF_EQUITY_PRCNT", precision: 9, scale: 6, null: false
    t.decimal "RETURN_OF_ASSET_PRCNT", precision: 9, scale: 6, null: false
    t.decimal "PROFIT_MARGIN_PRCNT", precision: 9, scale: 6, null: false
    t.decimal "CURRENT_RATIO_PRCNT", precision: 9, scale: 6, null: false
    t.decimal "DEBT_EQUITY_RATIO_PRCNT", precision: 9, scale: 6, null: false
    t.decimal "INV_TURN_OVER_PRCNT", precision: 9, scale: 6, null: false
    t.decimal "AR_TURN_OVER_PRCNT", precision: 9, scale: 6, null: false
    t.decimal "GROWTH_PRCNT", precision: 9, scale: 6, null: false
    t.decimal "WORKING_CAPITAL_AMT", precision: 17, scale: 2, null: false
    t.decimal "OTH_MONTHLY_INST_AMT", precision: 17, scale: 2, null: false
    t.datetime "DATE_AS_OF"
    t.decimal "REVENUE", precision: 17, scale: 2, null: false
    t.decimal "OPR_COST", precision: 17, scale: 2, null: false
    t.decimal "PROFIT_BEFORE_TAX", precision: 17, scale: 2, null: false
    t.decimal "CURR_ASSET", precision: 17, scale: 2, null: false
    t.decimal "NET_FIXED_ASSET", precision: 17, scale: 2, null: false
    t.decimal "TOTAL_ASSET", precision: 17, scale: 2, null: false
    t.decimal "CURR_LIABLTS", precision: 17, scale: 2, null: false
    t.decimal "LONG_TEMR_LIABLTS", precision: 17, scale: 2, null: false
    t.decimal "SHAREHOLDER_EQUITY", precision: 17, scale: 2, null: false
    t.decimal "CURR_RATIO", precision: 17, scale: 2, null: false
  end


  create_table "CUST_COMPANY_HIST", force: :cascade do |t|
    t.bigint "CUST_COMPANY_HIST_ID", null: false
    t.bigint "CUST_COMPANY_ID", null: false
    t.bigint "CUST_ID", null: false
    t.string "MR_COMPANY_TYPE_CODE", limit: 25
    t.bigint "REF_INDUSTRY_TYPE_ID"
    t.string "REGISTRATION_NO", limit: 50
    t.string "LICENSE_NO", limit: 50
    t.integer "NUM_OF_EMP"
    t.string "MR_INVESTMENT_TYPE_CODE", limit: 25
    t.datetime "ESTABLISHMENT_DT"
    t.boolean "IS_AFFILIATED", null: false
    t.string "WEBSITE", limit: 50
    t.string "PHN_AREA_1", limit: 10
    t.string "PHN_1", limit: 25
    t.string "PHN_EXT_1", limit: 5
    t.string "PHN_AREA_2", limit: 10
    t.string "PHN_2", limit: 25
    t.string "PHN_EXT_2", limit: 5
    t.string "EMAIL_1", limit: 25
    t.string "EMAIL_2", limit: 25
  end


  create_table "CUST_COMPANY_LEGAL_DOC", force: :cascade do |t|
    t.bigint "CUST_COMPANY_LEGAL_DOC_ID", null: false
    t.bigint "CUST_COMPANY_ID", null: false
    t.string "MR_LEGAL_DOC_TYPE_CODE", limit: 25
    t.string "DOC_NO", limit: 25
    t.datetime "DOC_DT"
    t.datetime "DOC_EXPIRED_DT"
    t.string "DOC_NOTES", limit: 2000
    t.string "NOTARY_NAME", limit: 250
    t.string "NOTARY_LOCATION", limit: 2000
    t.boolean "IS_EXP_DT_MANDATORY", default: false, null: false
    t.string "DOC_NAME", limit: 100
    t.boolean "NEED_LEGAL_OPINION", default: false, null: false
    t.bigint "DOC_DMS_ID"
    t.string "DOC_UPLOAD_NAME", limit: 100
  end


  create_table "CUST_COMPANY_MGMNT_SHRHOLDER", force: :cascade do |t|
    t.bigint "CUST_COMPANY_MGMNT_SHRHOLDER_ID", null: false
    t.bigint "CUST_ID"
    t.bigint "SHAREHOLDER_ID"
    t.decimal "SHARE_PRCNT", precision: 9, scale: 6
    t.string "MR_JOB_POSITION_CODE", limit: 25
    t.boolean "IS_ACTIVE", null: false
    t.boolean "IS_OWNER", null: false
    t.boolean "IS_SIGNER", null: false
    t.datetime "ESTABLISHMENT_DT"
    t.string "MR_POSITION_SLIK_CODE", limit: 50
    t.string "MR_PUBLIC_TYPE_CODE", limit: 50
    t.string "MR_SHRHOLDER_TYPE_CODE", limit: 50
    t.string "PUBLIC_ADDR", limit: 1000
    t.string "PUBLIC_AREA_CODE_1", limit: 50
    t.string "PUBLIC_AREA_CODE_2", limit: 50
    t.string "PUBLIC_AREA_CODE_3", limit: 50
    t.string "PUBLIC_AREA_CODE_4", limit: 50
    t.string "PUBLIC_CITY", limit: 50
    t.string "PUBLIC_IDENTITY_NO", limit: 100
    t.string "PUBLIC_NAME", limit: 500
    t.string "PUBLIC_ZIPCODE", limit: 50
    t.datetime "BUSINESS_START_DT"
    t.datetime "SIGNER_END_DT"
    t.string "SPOUSE_CHECK_FLAG", limit: 25
  end


  create_table "CUST_EXPSR_APP_AGR_HIST", force: :cascade do |t|
    t.bigint "CUST_EXPSR_APP_AGR_HIST_ID", null: false
    t.bigint "CUST_EXPSR_H_ID", null: false
    t.string "APP_NO", limit: 100, null: false
    t.string "AGRMNT_NO", limit: 100
    t.datetime "GO_LIVE_DT"
    t.string "OFFERING_NAME", limit: 100
    t.string "APP_STAT", limit: 50
    t.string "APP_STEP", limit: 50
    t.string "CONTRACT_STAT", limit: 50
    t.decimal "OS_PRINCIPAL", precision: 17, scale: 2, null: false
    t.string "FPD", limit: 25
    t.string "CUST_NAME", limit: 500
    t.string "ROLE_CUST", limit: 50
    t.decimal "OVERDUE_AMT", precision: 17, scale: 2
    t.integer "OVERDUE_DAYS"
  end


  create_table "CUST_EXPSR_BUCKET", force: :cascade do |t|
    t.bigint "CUST_EXPSR_BUCKET_ID", null: false
    t.bigint "CUST_EXPSR_D_ID", null: false
    t.bigint "ORDER_NO", null: false
    t.string "BUCKET_RANGE", limit: 50
    t.decimal "VALUE", precision: 17, scale: 2, null: false
  end


  create_table "CUST_EXPSR_D", force: :cascade do |t|
    t.bigint "CUST_EXPSR_D_ID", null: false
    t.bigint "CUST_EXPSR_H_ID", null: false
    t.string "EXPOSURE_TYPE", limit: 25
    t.decimal "OS_PRINCIPAL_AMT", precision: 17, scale: 2, null: false
    t.decimal "OS_INTEREST_AMT", precision: 17, scale: 2, null: false
    t.decimal "OS_AR_BALANCE", precision: 17, scale: 2, null: false
    t.decimal "MAX_AR", precision: 17, scale: 2, null: false
    t.decimal "MAX_INSTALLMENT_AMT", precision: 17, scale: 2, null: false
    t.integer "TOTAL_AGRMNT_OVERDUE", null: false
    t.integer "MAX_OVERDUE_DAYS", null: false
    t.decimal "MAX_OVERDUE_AMT", precision: 17, scale: 2, null: false
    t.integer "SPAN_OF_MONTH", null: false
    t.integer "ACTIVE_AGRMNT", null: false
    t.integer "AGRMNT_IN_PROCESS", null: false
    t.integer "AGRMNT_REJECTED", null: false
    t.integer "AGRMNT_CANCELLED", null: false
    t.integer "AGRMNT_REPOSSESS", null: false
    t.integer "AGRMNT_PAID_OFF", null: false
    t.integer "AGRMNT_WRITTEN_OFF", null: false
    t.integer "AGRMNT_NON_ACRUAL", null: false
    t.integer "AGRMNT_FPD", null: false
    t.string "FPD_INDICATOR", limit: 50
    t.string "FPD_INDICATOR_DESCR", limit: 500
    t.integer "BOUNCE_CHEQUE", null: false
    t.integer "ASSET_IN_FINANCING", null: false
    t.integer "ASSET_REPOSSESSED", null: false
    t.integer "ASSET_INVENTORIED", null: false
    t.string "OVERDUE_INDICATOR", limit: 50
    t.string "OVERDUE_INDICATOR_DESCR", limit: 500
  end


  create_table "CUST_EXPSR_H", force: :cascade do |t|
    t.bigint "CUST_EXPSR_H_ID", null: false
    t.bigint "CUST_EXPSR_INFO_ID", null: false
    t.string "CUST_NO", limit: 50
    t.string "CUST_NAME", limit: 500
    t.string "CUST_INDICATOR", limit: 50
    t.string "CUST_INDICATOR_DESCR", limit: 500
    t.string "ID_TYPE", limit: 50
    t.string "ID_NO", limit: 50
    t.string "RELATION_WITH_CUST", limit: 50
    t.string "RELATION_TYPE", limit: 25
  end


  create_table "CUST_EXPSR_INFO", force: :cascade do |t|
    t.bigint "CUST_EXPSR_INFO_ID", null: false
    t.bigint "CUST_ID", null: false
    t.string "CUST_NO", limit: 50
    t.string "CUST_NAME", limit: 500
    t.string "CUST_INDICATOR", limit: 50
    t.string "CUST_INDICATOR_DESCR", limit: 500
    t.integer "CUST_EXPSR_VERSION", null: false
    t.datetime "AS_OF_DATE", null: false
    t.string "CAPTURE_STAT", limit: 25
  end


  create_table "CUST_FIN_DATA_ATTR_CONTENT", force: :cascade do |t|
    t.bigint "CUST_FIN_DATA_ATTR_CONTENT_ID", null: false
    t.bigint "CUST_ID", null: false
    t.bigint "REF_ATTR_ID", null: false
    t.string "ATTR_VALUE", limit: 500, null: false
    t.string "ATTR_GROUP", limit: 25
  end


  create_table "CUST_GRP", force: :cascade do |t|
    t.bigint "CUST_GRP_ID", null: false
    t.bigint "CUST_ID", null: false
    t.bigint "MEMBER_CUST_ID", null: false
    t.string "MR_CUST_RELATIONSHIP_CODE", limit: 25
    t.string "CUST_GRP_NOTES", limit: 2000
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "CUST_HIST", force: :cascade do |t|
    t.bigint "CUST_HIST_ID", null: false
    t.bigint "CUST_ID", null: false
    t.string "CUST_NO", limit: 50
    t.string "CUST_NAME", limit: 250, null: false
    t.string "MR_CUST_TYPE_CODE", limit: 25, null: false
    t.string "MR_CUST_MODEL_CODE", limit: 25
    t.string "MR_ID_TYPE_CODE", limit: 25
    t.string "ID_NO", limit: 25
    t.datetime "ID_EXPIRED_DT"
    t.string "TAX_ID_NO", limit: 25
    t.boolean "IS_VIP", null: false
    t.string "ORIGINAL_OFFICE_CODE", limit: 25
    t.boolean "IS_AFFILIATE_WITH_MF", null: false
    t.string "VIP_NOTES", limit: 2000
  end


  create_table "CUST_ID_TYPE_HIST", force: :cascade do |t|
    t.bigint "CUST_ID_TYPE_HIST_ID", null: false
    t.bigint "CUST_ID", null: false
    t.string "MR_ID_TYPE_CODE", limit: 25, null: false
    t.string "ID_NO", limit: 25, null: false
  end


  create_table "CUST_OTHER_INFO", force: :cascade do |t|
    t.bigint "CUST_OTHER_INFO_ID", null: false
    t.bigint "CUST_ID", null: false
    t.bigint "LBPPMS_CNTRPRT_ID", null: false
    t.bigint "LBPPMS_BIZ_SUSTAIN_ID", null: false
    t.bigint "LBPPMS_BIZ_SCL_ID", default: 0, null: false
    t.bigint "LBPPMS_DEBT_GRP_ID", default: 0, null: false
    t.string "LBPPMS_BIZ_SCL_CODE", limit: 25
    t.string "LBPPMS_BIZ_SUSTAIN_CODE", limit: 25
    t.string "LBPPMS_CNTRPRT_CODE", limit: 25
    t.string "LBPPMS_DEBT_GRP_CODE", limit: 25
  end


  create_table "CUST_PERSONAL", force: :cascade do |t|
    t.bigint "CUST_PERSONAL_ID", null: false
    t.bigint "CUST_ID", null: false
    t.string "CUST_FULL_NAME", limit: 250
    t.string "CUST_PREFIX_NAME", limit: 100
    t.string "CUST_SUFFIX_NAME", limit: 100
    t.string "NICK_NAME", limit: 50
    t.string "BIRTH_PLACE", limit: 25
    t.datetime "BIRTH_DT"
    t.string "MOTHER_MAIDEN_NAME", limit: 250
    t.string "MR_GENDER_CODE", limit: 25
    t.string "MR_RELIGION_CODE", limit: 25
    t.string "MR_EDUCATION_CODE", limit: 25
    t.string "MR_NATIONALITY_CODE", limit: 25
    t.string "WNA_COUNTRY_CODE", limit: 25
    t.string "MR_MARITAL_STAT_CODE", limit: 25
    t.string "MOBILE_PHN_NO_1", limit: 25
    t.string "MOBILE_PHN_NO_2", limit: 25
    t.string "EMAIL_1", limit: 25
    t.string "EMAIL_2", limit: 25
    t.string "FAMILY_CARD_NO", limit: 25
    t.integer "NO_OF_DEPENDENTS"
    t.integer "NO_OF_RESIDENCE"
    t.boolean "IS_REST_IN_PEACE", null: false
    t.string "MR_SALUTATION_CODE", limit: 25
    t.string "EMAIL_3", limit: 25
    t.string "MOBILE_PHN_NO_3", limit: 25
    t.string "ModifiedUser", limit: 64
    t.boolean "IS_WA_MOBILE_PHN_NO_1", default: false, null: false
    t.boolean "IS_WA_MOBILE_PHN_NO_2", default: false, null: false
    t.boolean "IS_WA_MOBILE_PHN_NO_3", default: false, null: false
  end


  create_table "CUST_PERSONAL_EMERGENCY_CONTACT", force: :cascade do |t|
    t.bigint "CUST_PERSONAL_EMERGENCY_CONTACT_ID", null: false
    t.bigint "CUST_ID", null: false
    t.string "CONTACT_PERSON_NAME", limit: 250
    t.string "MR_ID_TYPE_CODE", limit: 25
    t.string "ID_NO", limit: 25
    t.string "BIRTH_PLACE", limit: 100
    t.datetime "BIRTH_DT"
    t.string "MOTHER_MAIDEN_NAME", limit: 250
    t.string "MR_GENDER_CODE", limit: 25
    t.string "MR_RELIGION_CODE", limit: 25
    t.string "MR_EDUCATION_CODE", limit: 25
    t.string "MR_JOB_PROFESSION_CODE", limit: 25
    t.string "MR_MARITAL_STAT_CODE", limit: 25
    t.string "MR_NATIONALITY_CODE", limit: 25
    t.string "NATIONALITY_COUNTRY_CODE", limit: 25
    t.string "MR_CUST_RELATIONSHIP_CODE", limit: 25
    t.string "MOBILE_PHN_NO_1", limit: 25
    t.string "MOBILE_PHN_NO_2", limit: 25
    t.string "EMAIL", limit: 50
    t.string "ADDR", limit: 500
    t.string "AREA_CODE_1", limit: 25
    t.string "AREA_CODE_2", limit: 25
    t.string "AREA_CODE_3", limit: 25
    t.string "AREA_CODE_4", limit: 25
    t.string "CITY", limit: 25
    t.string "ZIPCODE", limit: 25
    t.string "SUB_ZIPCODE", limit: 25
    t.string "CONTACT_PERSON_CUST_NO", limit: 50
    t.datetime "ID_EXPIRED_DT"
    t.string "TAX_ID_NO", limit: 25
    t.string "PHN_1", limit: 25
    t.string "PHN_2", limit: 25
    t.string "PHN_3", limit: 25
    t.string "PHN_AREA_1", limit: 10
    t.string "PHN_AREA_2", limit: 10
    t.string "PHN_AREA_3", limit: 10
    t.string "PHN_EXT_1", limit: 5
    t.string "PHN_EXT_2", limit: 5
    t.string "PHN_EXT_3", limit: 5
    t.boolean "IS_WA_MOBILE_PHN_NO_1", default: false, null: false
    t.boolean "IS_WA_MOBILE_PHN_NO_2", default: false, null: false
    t.boolean "IS_WA_MOBILE_PHN_NO_3", default: false, null: false
    t.string "MOBILE_PHN_NO_3", limit: 25
  end


  create_table "CUST_PERSONAL_FAMILY", force: :cascade do |t|
    t.bigint "CUST_PERSONAL_FAMILY_ID", null: false
    t.bigint "CUST_ID"
    t.bigint "FAMILY_ID"
    t.string "MR_CUST_RELATIONSHIP", limit: 50, null: false
  end


  create_table "CUST_PERSONAL_FIN_DATA", force: :cascade do |t|
    t.bigint "CUST_PERSONAL_FIN_DATA_ID", null: false
    t.bigint "CUST_PERSONAL_ID", null: false
    t.decimal "MONTHLY_INCOME_AMT", precision: 17, scale: 2, null: false
    t.decimal "MONTHLY_EXPENSE_AMT", precision: 17, scale: 2, null: false
    t.decimal "MONTHLY_INSTALLMENT_AMT", precision: 17, scale: 2, null: false
    t.string "MR_SOURCE_OF_INCOME_CODE", limit: 25
    t.decimal "SPOUSE_MONTHLY_INCOME_AMT", precision: 17, scale: 2, null: false
    t.boolean "IS_JOIN_INCOME", null: false
    t.decimal "NETT_INCOME_AMT", precision: 17, scale: 2, default: "00:00:00", null: false
    t.decimal "NETT_PROFIT_MONTHLY_AMT", precision: 17, scale: 2, default: "00:00:00", null: false
    t.decimal "OTHER_INCOME_AMT", precision: 17, scale: 2, default: "00:00:00", null: false
    t.decimal "OTHER_MONTHLY_INSTALLMENT_AMT", precision: 17, scale: 2, default: "00:00:00", null: false
    t.decimal "TOTAL_INCOME_AMT", precision: 17, scale: 2, default: "00:00:00", null: false
    t.datetime "DATE_AS_OF"
  end


  create_table "CUST_PERSONAL_HIST", force: :cascade do |t|
    t.bigint "CUST_PERSONAL_HIST_ID", null: false
    t.bigint "CUST_PERSONAL_ID", null: false
    t.bigint "CUST_ID", null: false
    t.string "CUST_FULL_NAME", limit: 250
    t.string "CUST_PREFIX_NAME", limit: 100
    t.string "CUST_SUFFIX_NAME", limit: 100
    t.string "NICK_NAME", limit: 50
    t.string "BIRTH_PLACE", limit: 25
    t.datetime "BIRTH_DT"
    t.string "MOTHER_MAIDEN_NAME", limit: 250
    t.string "MR_GENDER_CODE", limit: 25
    t.string "MR_RELIGION_CODE", limit: 25
    t.string "MR_EDUCATION_CODE", limit: 25
    t.string "MR_NATIONALITY_CODE", limit: 25
    t.string "WNA_COUNTRY_CODE", limit: 25
    t.string "MR_MARITAL_STAT_CODE", limit: 25
    t.string "MOBILE_PHN_NO_1", limit: 25
    t.string "MOBILE_PHN_NO_2", limit: 25
    t.string "EMAIL_1", limit: 25
    t.string "EMAIL_2", limit: 25
    t.string "FAMILY_CARD_NO", limit: 25
    t.integer "NO_OF_DEPENDENTS"
    t.integer "NO_OF_RESIDENCE"
    t.boolean "IS_REST_IN_PEACE", null: false
    t.string "MR_SALUTATION_CODE", limit: 25
    t.string "EMAIL_3", limit: 25
    t.string "MOBILE_PHN_NO_3", limit: 25
    t.boolean "IS_WA_MOBILE_PHN_NO_1", default: false, null: false
    t.boolean "IS_WA_MOBILE_PHN_NO_2", default: false, null: false
    t.boolean "IS_WA_MOBILE_PHN_NO_3", default: false, null: false
  end


  create_table "CUST_PERSONAL_JOB_DATA", force: :cascade do |t|
    t.bigint "CUST_PERSONAL_JOB_DATA_ID", null: false
    t.bigint "CUST_ID"
    t.bigint "REF_PROFESSION_ID"
    t.string "COY_NAME", limit: 250
    t.string "MR_JOB_POSITION_CODE", limit: 25
    t.bigint "REF_INDUSTRY_TYPE_ID"
    t.string "MR_JOB_STAT_CODE", limit: 25
    t.string "PROFESSIONAL_NO", limit: 50
    t.string "JOB_TITLE_NAME", limit: 50
    t.datetime "EMPLOYMENT_ESTABLISHMENT_DT"
    t.boolean "IS_MF_EMP", null: false
    t.string "MR_COY_SCALE_CODE", limit: 25
    t.integer "NO_OF_EMPLOY"
    t.string "MR_INVESTMENT_TYPE_CODE", limit: 25
    t.bigint "JOB_ADDR_ID"
    t.string "PREV_COY_NAME", limit: 50
    t.datetime "PREV_EMPLOYMENT_DT"
    t.bigint "PREV_JOB_ADDR_ID"
    t.string "EMP_NO", limit: 25
    t.string "OTH_BIZ_NAME", limit: 50
    t.string "OTH_BIZ_TYPE", limit: 25
    t.string "OTH_BIZ_INDUSTRY_TYPE_CODE", limit: 25
    t.string "OTH_BIZ_JOB_POSITION", limit: 25
    t.datetime "OTH_BIZ_ESTABLISHMENT_DT"
    t.bigint "OTH_BIZ_ADDR_ID"
    t.boolean "IS_WELLKNOWN_COY"
    t.string "MR_WELLKNOWN_COY_CODE", limit: 25
  end


  create_table "EMP_BANK_ACC", force: :cascade do |t|
    t.bigint "EMP_BANK_ACC_ID", null: false
    t.bigint "REF_EMP_ID", null: false
    t.bigint "REF_BANK_ID", null: false
    t.string "BANK_BRANCH", limit: 50
    t.string "BANK_BRANCH_REG_CODE", limit: 25
    t.string "BANK_ACC_NO", limit: 250, null: false
    t.string "BANK_ACC_NAME", limit: 250, null: false
  end


  create_table "EXCHANGE_RATE", force: :cascade do |t|
    t.bigint "EXCHANGE_RATE_ID", null: false
    t.bigint "REF_CURR_ID", null: false
    t.datetime "CURR_DT", null: false
    t.decimal "EXCHANGE_RATE_AMT", precision: 17, scale: 2, null: false
    t.datetime "POSTING_DT", default: "01-01-0001 00:00:00", null: false
    t.datetime "VALUE_DT", default: "01-01-0001 00:00:00", null: false
  end


  create_table "GENERAL_SETTING", force: :cascade do |t|
    t.bigint "GENERAL_SETTING_ID", null: false
    t.string "GS_CODE", limit: 25, null: false
    t.string "GS_NAME", limit: 50, null: false
    t.string "GS_VALUE", limit: 1500, null: false
    t.string "GS_DESCR", limit: 2000
    t.string "MODULE_CODE", limit: 25, null: false
    t.string "ROLE_CODE", limit: 250
    t.boolean "IS_UPDATABLE", default: false, null: false
  end


  create_table "HOLIDAY_SCHM_D", force: :cascade do |t|
    t.bigint "HOLIDAY_SCHM_D_ID", null: false
    t.bigint "HOLIDAY_SCHM_H_ID", null: false
    t.datetime "HOLIDAY_DT", null: false
    t.string "DESCR", limit: 50, null: false
    t.boolean "IS_PUBLIC_HOLIDAY", null: false
  end


  create_table "HOLIDAY_SCHM_H", force: :cascade do |t|
    t.bigint "HOLIDAY_SCHM_H_ID", null: false
    t.string "HOLIDAY_SCHM_CODE", limit: 25, null: false
    t.string "HOLIDAY_SCHM_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "JOURNAL_LOG", force: :cascade do |t|
    t.bigint "JOURNAL_LOG_ID", null: false
    t.string "SYSTEM_FROM", limit: 50
    t.string "PAYLOAD", limit: 127, null: false
    t.string "STATUS", limit: 25, null: false
    t.boolean "IS_EXEC", null: false
    t.boolean "IS_SUCCESS", null: false
    t.datetime "EXEC_DT"
    t.string "SP_NAME", limit: 50
    t.string "ERROR_MESSAGE", limit: 127
  end


  create_table "JOURNAL_LOG_FAILED_D", force: :cascade do |t|
    t.bigint "JOURNAL_LOG_FAILED_D_ID", null: false
    t.bigint "JOURNAL_LOG_FAILED_H_ID", null: false
    t.string "SCHEME_CODE", limit: 25, null: false
    t.string "LINE_DESCRIPTION", limit: 100, null: false
    t.string "DC", limit: 0, null: false
    t.string "ORIGIN_CURR_CODE", limit: 25, null: false
    t.decimal "ORIGIN_AMT", precision: 17, scale: 2, null: false
    t.decimal "CURR_RATE", precision: 17, scale: 2, null: false
    t.decimal "AMOUNT", precision: 17, scale: 2, null: false
    t.string "PAY_ALLOC_CODE", limit: 25
    t.string "COA_BRANCH", limit: 25
    t.string "COA", limit: 25
    t.string "PAY_ALLOC_CODE_X", limit: 25
    t.string "COA_BRANCH_X", limit: 25
    t.string "COA_X", limit: 25
    t.string "PRODUCT_ID", limit: 25
    t.string "DEPARTMENT_ID", limit: 25
    t.string "ANALYSIS_TRACK_MNT_1_ID", limit: 25
    t.string "ANALYSIS_TRACK_MNT_2_ID", limit: 25
  end


  create_table "JOURNAL_LOG_FAILED_H", force: :cascade do |t|
    t.bigint "JOURNAL_LOG_FAILED_H_ID", null: false
    t.string "OFFICE_CODE", limit: 25, null: false
    t.string "JR_NO", limit: 50, null: false
    t.string "TXN_CODE", limit: 25, null: false
    t.datetime "POSTING_DT", null: false
    t.datetime "VALUE_DT", null: false
    t.string "REF_NO", limit: 50, null: false
    t.string "STATUS", limit: 1, null: false
    t.string "ERR_MSG", limit: 2000, null: false
    t.boolean "IS_RERUN", null: false
    t.bigint "JOURNAL_LOG_ID", null: false
  end


  create_table "JR_M_ENTITY", force: :cascade do |t|
    t.bigint "JR_M_ENTITY_ID", null: false
    t.bigint "JR_M_HEADER_ID", null: false
    t.string "ENTITY_TYPE", limit: 100, null: false
  end


  create_table "JR_M_GROUP", force: :cascade do |t|
    t.bigint "JR_M_GROUP_ID", null: false
    t.bigint "JR_M_HEADER_ID", null: false
    t.string "GROUP_NAME", limit: 100, null: false
  end


  create_table "JR_M_GROUP_D_FACT", force: :cascade do |t|
    t.bigint "JR_M_GROUP_D_FACT_ID", null: false
    t.bigint "JR_M_GROUP_ID", null: false
    t.string "D_FACT_ALIAS", limit: 100, null: false
    t.string "D_FACT_PROPERTY", limit: 100, null: false
    t.string "D_FACT_TYPE", limit: 50, null: false
  end


  create_table "JR_M_GROUP_D_R", force: :cascade do |t|
    t.bigint "JR_M_GROUP_D_R_ID", null: false
    t.bigint "JR_M_HEADER_R_ID", null: false
    t.string "GROUP_NAME", limit: 50, null: false
    t.integer "D_SEQ_NO", null: false
  end


  create_table "JR_M_GROUP_FACT_R", force: :cascade do |t|
    t.bigint "JR_M_GROUP_FACT_R_ID", null: false
    t.bigint "JR_M_GROUP_D_R_ID", null: false
    t.string "D_FACT_ALIAS", limit: 100, null: false
    t.string "D_FACT_VALUE", limit: 50, null: false
    t.string "D_FACT_TYPE", limit: 25, null: false
    t.string "D_FACT_PROPERTY_R", limit: 110, null: false
  end


  create_table "JR_M_HEADER", force: :cascade do |t|
    t.bigint "JR_M_HEADER_ID", null: false
    t.string "SUB_SYSTEM", limit: 100, null: false
    t.string "TRX_TYPE_CODE", limit: 50, null: false
    t.string "TRX_DESC", limit: 250, null: false
  end


  create_table "JR_M_HEADER_FACT", force: :cascade do |t|
    t.bigint "JR_M_HEADER_FACT_ID", null: false
    t.bigint "JR_M_HEADER_ID", null: false
    t.string "H_FACT_ALIAS", limit: 100, null: false
    t.string "H_FACT_PROPERTY", limit: 100, null: false
    t.string "H_FACT_TYPE", limit: 50, null: false
  end


  create_table "JR_M_HEADER_FACT_R", force: :cascade do |t|
    t.bigint "JR_M_HEADER_FACT_R_ID", null: false
    t.bigint "JR_M_HEADER_R_ID", null: false
    t.string "H_FACT_ALIAS", limit: 100, null: false
    t.string "H_FACT_VALUES", limit: 50, null: false
    t.string "H_FACT_TYPE", limit: 25, null: false
    t.string "H_FACT_PROPERTY_R", limit: 110, null: false
  end


  create_table "JR_M_HEADER_R", force: :cascade do |t|
    t.bigint "JR_M_HEADER_R_ID", null: false
    t.string "TRX_SUB_SYSTEM", limit: 25, null: false
    t.string "TRX_EVENT_CODE", limit: 25, null: false
    t.string "TRX_TYPE_CODE", limit: 25, null: false
    t.string "TRX_NO", limit: 50, null: false
    t.datetime "TRX_DT", null: false
    t.string "TRX_OFFICE_CODE", limit: 25, null: false
    t.string "TRX_USERNAME", limit: 50, null: false
    t.string "JR_NO", limit: 25, null: false
    t.datetime "JR_REQ_DT", null: false
    t.string "ERR_MSG", limit: 50, null: false
    t.string "HAS_BEEN_RERUN", limit: 0
  end


  create_table "JR_M_ITEM_VALUE", force: :cascade do |t|
    t.bigint "JR_M_ITEM_VALUE_ID", null: false
    t.bigint "JR_M_GROUP_ID", null: false
    t.string "IV_ALIAS", limit: 100, null: false
    t.string "IV_PROPERTY", limit: 100, null: false
  end


  create_table "JR_M_ITEM_VALUE_R", force: :cascade do |t|
    t.bigint "JR_M_ITEM_VALUE_R_ID", null: false
    t.bigint "JR_M_GROUP_D_R_ID", null: false
    t.string "IV_ALIAS", limit: 100, null: false
    t.decimal "IV_VALUE", precision: 17, scale: 2, null: false
    t.string "IV_PROPERTY_R", limit: 110, null: false
  end


  create_table "JR_SOURCE_FILE", force: :cascade do |t|
    t.bigint "JR_SOURCE_FILE_ID", null: false
    t.string "FILE_CODE", limit: 25
    t.string "FILE_NAME", limit: 100
    t.binary "DATA"
    t.integer "VERSION", null: false
    t.datetime "START_DATE", null: false
  end


  create_table "LBPPMS_BIZ_SCL", force: :cascade do |t|
    t.string "LBPPMS_BIZ_SCL_CODE", limit: 25, null: false
    t.string "DESCR", limit: 50, null: false
    t.string "BI_CODE", limit: 5, null: false
    t.string "LBPP_CODE", limit: 5, null: false
    t.bigint "LBPPMS_BIZ_SCL_ID", null: false
  end


  create_table "LBPPMS_BIZ_SUSTAIN", force: :cascade do |t|
    t.bigint "LBPPMS_BIZ_SUSTAIN_ID", null: false
    t.string "DESCR", limit: 250
    t.string "BI_CODE", limit: 5
    t.string "LBPP_CODE", limit: 5
    t.string "LBPPMS_BIZ_SUSTAIN_CODE", limit: 25, null: false
  end


  create_table "LBPPMS_CNTRPRT", force: :cascade do |t|
    t.bigint "LBPPMS_CNTRPRT_ID", null: false
    t.string "DESCR", limit: 250, null: false
    t.string "BI_CODE", limit: 5, null: false
    t.string "LBPP_CODE", limit: 5, null: false
    t.string "LBPPMS_CNTRPRT_CODE", limit: 25, null: false
  end


  create_table "LBPPMS_DEBT_GRP", force: :cascade do |t|
    t.string "LBPPMS_DEBT_GRP_CODE", limit: 25, null: false
    t.string "DESCR", limit: 50, null: false
    t.string "BI_CODE", limit: 5, null: false
    t.string "LBPP_CODE", limit: 5, null: false
    t.bigint "LBPPMS_DEBT_GRP_ID", null: false
  end


  create_table "MASTER_SEQUENCE", force: :cascade do |t|
    t.bigint "MASTER_SEQUENCE_ID", null: false
    t.bigint "REF_OFFICE_ID", null: false
    t.string "MASTER_SEQ_CODE", limit: 25, null: false
    t.string "SEQ_NAME", limit: 50, null: false
    t.integer "SEQ_NO", null: false
    t.integer "LENGTH_NO", null: false
    t.string "RESET_FLAG", limit: 0, null: false
    t.string "PREFIX", limit: 2, null: false
    t.boolean "IS_MONTH", null: false
    t.boolean "IS_YEAR", null: false
    t.boolean "IS_BRANCH", null: false
    t.string "SUFFIX", limit: 1
    t.string "DELIMITER", limit: 0
    t.boolean "IS_USE_CHECK_DIGIT", null: false
    t.string "MODULE_CODE", limit: 25, null: false
    t.string "APP_CODE", limit: 25
  end


  create_table "NEGATIVE_CUST", force: :cascade do |t|
    t.bigint "NEGATIVE_CUST_ID", null: false
    t.bigint "CUST_ID"
    t.string "MR_CUST_TYPE_CODE", limit: 25, null: false
    t.string "CUST_NO", limit: 50
    t.string "CUST_NAME", limit: 250, null: false
    t.string "MR_ID_TYPE_CODE", limit: 25
    t.string "ID_NO", limit: 25
    t.datetime "ID_EXPIRED_DT"
    t.string "TAX_ID_NO", limit: 25
    t.string "BIRTH_PLACE", limit: 50
    t.datetime "BIRTH_DT"
    t.string "MR_GENDER_CODE", limit: 25
    t.string "MOTHER_MAIDEN_NAME", limit: 250
    t.string "LEGAL_ADDR", limit: 100
    t.string "AREA_CODE_1", limit: 25
    t.string "AREA_CODE_2", limit: 25
    t.string "AREA_CODE_3", limit: 25
    t.string "AREA_CODE_4", limit: 25
    t.string "ZIPCODE", limit: 25
    t.string "CITY", limit: 25
    t.string "PHN_AREA_1", limit: 10
    t.string "PHN_1", limit: 25
    t.string "PHN_EXT_1", limit: 5
    t.string "PHN_AREA_2", limit: 10
    t.string "PHN_2", limit: 25
    t.string "PHN_EXT_2", limit: 5
    t.string "PHN_AREA_3", limit: 10
    t.string "PHN_3", limit: 25
    t.string "PHN_EXT_3", limit: 5
    t.string "FAX_AREA", limit: 10
    t.string "FAX", limit: 25
    t.string "MOBILE_PHN", limit: 25
    t.string "MR_NEG_CUST_TYPE_CODE", limit: 25, null: false
    t.string "MR_NEG_CUST_SOURCE_CODE", limit: 25, null: false
    t.string "NOTES", limit: 2000
    t.boolean "IS_ACTIVE", null: false
    t.string "NEG_CUST_CAUSE", limit: 100
    t.string "NEGATIVE_CUST_NO", limit: 50
    t.boolean "IS_WA_MOBILE_PHN_NO_1", default: false, null: false
    t.boolean "IS_WA_MOBILE_PHN_NO_2", default: false, null: false
    t.boolean "IS_WA_MOBILE_PHN_NO_3", default: false, null: false
    t.string "MOBILE_PHN_NO_2", limit: 25
    t.string "MOBILE_PHN_NO_3", limit: 25
  end


  create_table "NEGATIVE_CUST_CHANGE_TRX", force: :cascade do |t|
    t.bigint "NEGATIVE_CUST_CHANGE_TRX_ID", null: false
    t.bigint "NEGATIVE_CUST_ID", null: false
    t.string "TRX_NO", limit: 50, null: false
    t.string "MR_TRX_STAT_CODE", limit: 25, null: false
    t.string "MR_NEG_CUST_TYPE_CODE", limit: 25, null: false
    t.string "MR_NEG_CUST_SOURCE_CODE", limit: 25, null: false
    t.string "NOTES", limit: 2000
    t.string "RFA_NO", limit: 50
    t.datetime "REQ_DT"
    t.datetime "APV_DT"
    t.datetime "EXE_DT"
    t.string "NEG_CUST_CAUSE", limit: 100
    t.boolean "IS_ACTIVE"
  end


  create_table "NEGATIVE_CUST_HIST", force: :cascade do |t|
    t.bigint "NEGATIVE_CUST_HIST_ID", null: false
    t.bigint "NEGATIVE_CUST_ID", null: false
    t.string "MR_CUST_TYPE_CODE", limit: 50, null: false
    t.string "CUST_NO", limit: 100
    t.string "CUST_NAME", limit: 250, null: false
    t.string "MR_ID_TYPE_CODE", limit: 50
    t.string "ID_NO", limit: 50
    t.datetime "ID_EXPIRED_DT"
    t.string "TAX_ID_NO", limit: 50
    t.string "BIRTH_PLACE", limit: 100
    t.datetime "BIRTH_DT"
    t.string "MR_GENDER_CODE", limit: 50
    t.string "MOTHER_MAIDEN_NAME", limit: 250
    t.string "LEGAL_ADDR", limit: 200
    t.string "AREA_CODE_1", limit: 50
    t.string "AREA_CODE_2", limit: 50
    t.string "AREA_CODE_3", limit: 50
    t.string "AREA_CODE_4", limit: 50
    t.string "ZIPCODE", limit: 50
    t.string "CITY", limit: 50
    t.string "PHN_AREA_1", limit: 20
    t.string "PHN_1", limit: 50
    t.string "PHN_EXT_1", limit: 10
    t.string "PHN_AREA_2", limit: 20
    t.string "PHN_2", limit: 50
    t.string "PHN_EXT_2", limit: 10
    t.string "PHN_AREA_3", limit: 20
    t.string "PHN_3", limit: 50
    t.string "PHN_EXT_3", limit: 10
    t.string "FAX_AREA", limit: 20
    t.string "FAX", limit: 50
    t.string "MOBILE_PHN", limit: 50
    t.string "MR_NEG_CUST_TYPE_CODE", limit: 50, null: false
    t.string "MR_NEG_CUST_SOURCE_CODE", limit: 50, null: false
    t.string "NOTES", limit: 127
    t.boolean "IS_ACTIVE", null: false
    t.string "NEG_CUST_CAUSE", limit: 200
    t.string "NEGATIVE_CUST_NO", limit: 100
    t.boolean "IS_WA_MOBILE_PHN_NO_1", default: false, null: false
    t.boolean "IS_WA_MOBILE_PHN_NO_2", default: false, null: false
    t.boolean "IS_WA_MOBILE_PHN_NO_3", default: false, null: false
    t.string "MOBILE_PHN_NO_2", limit: 25
    t.string "MOBILE_PHN_NO_3", limit: 25
  end


  create_table "Netwrix_audit_errors", force: :cascade do |t|
    t.string "ErrorID", default: "newid", null: false
    t.datetime "ErrorTime", default: "getutcdate", null: false
    t.string "Workstation", default: "host_name", null: false
    t.string "Application", default: "app_name", null: false
    t.string "DataBaseName", limit: 64, default: "db_name", null: false
    t.string "TableName", limit: 64, null: false
    t.integer "MessageID", null: false
    t.string "Message", null: false
    t.index ["ErrorTime"], name: "NetwrixErrorTimeClustered"
    t.index ["MessageID"], name: "NetwrixMessageIDNonClustered"
  end


  create_table "OFFICE_BANK_ACC", force: :cascade do |t|
    t.bigint "OFFICE_BANK_ACC_ID", null: false
    t.string "OFFICE_BANK_ACC_CODE", limit: 25, null: false
    t.string "OFFICE_BANK_ACC_BRANCH", limit: 50
    t.string "OFFICE_BANK_ACC_NAME", limit: 250, null: false
    t.string "OFFICE_BANK_ACC_NO", limit: 250, null: false
    t.bigint "REF_OFFICE_ID", null: false
    t.bigint "REF_BANK_ID", null: false
    t.bigint "REF_CURR_ID", null: false
    t.boolean "IS_LEGAL_DOC"
    t.string "MR_BANK_ACC_PURPOSE_CODE", limit: 25, null: false
    t.string "BANK_ACC_TYPE", limit: 25
    t.string "BASE_COA", limit: 25
    t.string "BANK_BRANCH_REG_RPT_CODE", limit: 25
    t.string "BANK_ADDR", limit: 2000
    t.string "BANK_CITY", limit: 25
    t.string "BANK_AREA_CODE_1", limit: 25
    t.string "BANK_AREA_CODE_2", limit: 25
    t.string "BANK_AREA_CODE_3", limit: 25
    t.string "BANK_AREA_CODE_4", limit: 25
    t.string "BANK_ZIPCODE", limit: 25
    t.string "BANK_PHN_AREA_1", limit: 5
    t.string "BANK_PHN_1", limit: 25
    t.string "BANK_PHN_EXT_1", limit: 10
    t.string "BANK_PHN_AREA_2", limit: 5
    t.string "BANK_PHN_2", limit: 25
    t.string "BANK_PHN_EXT_2", limit: 10
    t.string "BANK_PHN_AREA_3", limit: 5
    t.string "BANK_PHN_3", limit: 25
    t.string "BANK_PHN_EXT_3", limit: 10
    t.string "BANK_FAX_AREA", limit: 5
    t.string "BANK_FAX", limit: 25
    t.string "CNTCT_PERSON_JOB_TITLE", limit: 25
    t.string "CNTCT_PERSON_NAME", limit: 250
    t.boolean "IS_ACTIVE", null: false
    t.decimal "END_BAL_AMT", precision: 17, scale: 2, default: "00:00:00", null: false
    t.string "MR_KONVEN_SYARIAH_CODE", limit: 25
  end


  create_table "REF_API", force: :cascade do |t|
    t.bigint "REF_API_ID", null: false
    t.bigint "REF_MODULE_ID", null: false
    t.string "REF_API_URL", limit: 500, null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "REF_APP_SRC", force: :cascade do |t|
    t.bigint "REF_APP_SRC_ID", null: false
    t.string "APP_SRC_CODE", limit: 25
    t.string "APP_SRC_NAME", limit: 50
    t.string "DESCR", limit: 2000
    t.boolean "IS_ACTIVE", null: false
    t.string "MR_APP_SRC_TYPE_CODE", limit: 50
    t.datetime "PERIOD_FROM", null: false
    t.datetime "PERIOD_TO", null: false
    t.datetime "MAX_APV_DT", null: false
  end


  create_table "REF_APP_SRC_OFFICE_MBR", force: :cascade do |t|
    t.bigint "REF_APP_SRC_OFFICE_MBR_ID", null: false
    t.bigint "REF_APP_SRC_ID", null: false
    t.bigint "REF_OFFICE_ID", null: false
  end


  create_table "REF_ASSET_DOC", force: :cascade do |t|
    t.bigint "REF_ASSET_DOC_ID", null: false
    t.string "ASSET_DOC_CODE", limit: 25, null: false
    t.string "ASSET_DOC_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "REF_ATTR", force: :cascade do |t|
    t.bigint "REF_ATTR_ID", null: false
    t.string "ATTR_CODE", limit: 25, null: false
    t.string "ATTR_NAME", limit: 50, null: false
    t.integer "ATTR_LENGTH"
    t.string "ATTR_TYPE_CODE", limit: 25, null: false
    t.string "ATTR_INPUT_TYPE", limit: 25, null: false
    t.string "ATTR_VALUE", limit: 500
    t.string "ATTR_GROUP", limit: 25
    t.string "PATTERN_CODE", limit: 25
    t.string "PATTERN_VALUE", limit: 2000
    t.boolean "IS_SYSTEM", null: false
    t.boolean "IS_ACTIVE", null: false
    t.string "RSV_FIELD_1", limit: 250
    t.string "RSV_FIELD_2", limit: 250
    t.string "RSV_FIELD_3", limit: 250
    t.string "RSV_FIELD_4", limit: 250
    t.string "RSV_FIELD_5", limit: 250
    t.string "DEFAULT_VALUE", limit: 25
    t.boolean "IS_MANDATORY", default: false, null: false
  end


  create_table "REF_ATTR_TYPE", force: :cascade do |t|
    t.bigint "REF_ATTR_TYPE_ID", null: false
    t.string "ATTR_TYPE_CODE", limit: 25, null: false
    t.string "ATTR_TYPE_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
    t.boolean "IS_SYSTEM", null: false
    t.string "RSV_FIELD_1_DESC", limit: 250
    t.string "RSV_FIELD_2_DESC", limit: 250
    t.string "RSV_FIELD_3_DESC", limit: 250
    t.string "RSV_FIELD_4_DESC", limit: 250
    t.string "RSV_FIELD_5_DESC", limit: 250
  end


  create_table "REF_BANK", force: :cascade do |t|
    t.bigint "REF_BANK_ID", null: false
    t.string "BANK_CODE", limit: 25, null: false
    t.string "BANK_NAME", limit: 50, null: false
    t.string "REG_RPT_CODE", limit: 25
    t.boolean "IS_ACTIVE", null: false
    t.string "RTGS_CODE", limit: 25
    t.string "BANK_COUNTRY_CODE", limit: 25
  end


  create_table "REF_BIZ_UNIT", force: :cascade do |t|
    t.bigint "REF_BIZ_UNIT_ID", null: false
    t.string "BIZ_UNIT_CODE", limit: 25, null: false
    t.string "BIZ_UNIT_NAME", limit: 50, null: false
    t.string "DESCR", limit: 2000
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "REF_COA", force: :cascade do |t|
    t.bigint "REF_COA_ID", null: false
    t.bigint "REF_ACCT_BOOK_ID", null: false
    t.bigint "COA_SCHM_ID"
    t.string "MR_ENTITY_TYPE", limit: 25, null: false
    t.string "MR_ENTITY_CODE", limit: 25, null: false
    t.string "PAYMENT_ALLOC_CODE", limit: 25, null: false
    t.string "CURR_CODE", limit: 25, null: false
    t.string "COA", limit: 25, null: false
  end


  create_table "REF_COUNTRY", force: :cascade do |t|
    t.bigint "REF_COUNTRY_ID", null: false
    t.string "COUNTRY_CODE", limit: 25, null: false
    t.string "COUNTRY_NAME", limit: 50, null: false
  end


  create_table "REF_COY", force: :cascade do |t|
    t.bigint "REF_COY_ID", null: false
    t.string "COY_CODE", limit: 25, null: false
    t.string "FULL_NAME", limit: 250, null: false
    t.string "SHORT_NAME", limit: 50
    t.string "INITIAL_NAME", limit: 25
    t.string "TAX_ID_NO", limit: 25
    t.string "REGISTRATION_NO", limit: 25
    t.string "LICENSE_NO", limit: 25
    t.string "REG_RPT_CODE", limit: 25
    t.string "ADDR", limit: 500
    t.string "ZIPCODE", limit: 25
    t.string "AREA_CODE_1", limit: 25
    t.string "AREA_CODE_2", limit: 25
    t.string "AREA_CODE_3", limit: 25
    t.string "AREA_CODE_4", limit: 25
    t.string "PHN_AREA_1", limit: 10
    t.string "PHN_1", limit: 25
    t.string "PHN_EXT_1", limit: 5
    t.string "PHN_AREA_2", limit: 10
    t.string "PHN_2", limit: 25
    t.string "PHN_EXT_2", limit: 5
    t.string "PHN_AREA_3", limit: 10
    t.string "PHN_3", limit: 25
    t.string "PHN_EXT_3", limit: 5
    t.string "FAX_AREA", limit: 10
    t.string "FAX", limit: 25
    t.string "CNTCT_PERSON_NAME", limit: 250
    t.string "CNTCT_PERSON_JOB_TITLE", limit: 50
    t.string "CNTCT_PERSON_EMAIL", limit: 100
    t.string "CNTCT_PERSON_MOBILE_PHN_NO_1", limit: 25
    t.string "CNTCT_PERSON_MOBILE_PHN_NO_2", limit: 25
    t.string "CITY", limit: 25
  end


  create_table "REF_CURR", force: :cascade do |t|
    t.bigint "REF_CURR_ID", null: false
    t.string "CURR_CODE", limit: 25, null: false
    t.string "CURR_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
    t.decimal "MIN_REFUND_AMT", precision: 17, scale: 2, null: false
    t.bigint "COF_ID"
    t.string "REG_RPT_CODE", limit: 25
    t.integer "ROUNDED_AMT", default: 0, null: false
  end


  create_table "REF_ECONOMIC_SECTOR", force: :cascade do |t|
    t.bigint "REF_ECONOMIC_SECTOR_ID", null: false
    t.string "ECONOMIC_SECTOR_CODE", limit: 25, null: false
    t.string "ECONOMIC_SECTOR_NAME", limit: 100, null: false
    t.string "REG_RPT_CODE", limit: 25
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "REF_EMP", force: :cascade do |t|
    t.bigint "REF_EMP_ID", null: false
    t.string "EMP_NO", limit: 25, null: false
    t.string "EMP_NAME", limit: 50, null: false
    t.datetime "JOIN_DT", null: false
    t.string "ADDR", limit: 500, null: false
    t.string "ZIPCODE", limit: 25
    t.string "AREA_CODE_1", limit: 25
    t.string "AREA_CODE_2", limit: 25
    t.string "AREA_CODE_3", limit: 25
    t.string "AREA_CODE_4", limit: 25
    t.string "PHN_AREA_1", limit: 10
    t.string "PHN_1", limit: 25
    t.string "PHN_EXT_1", limit: 5
    t.string "PHN_AREA_2", limit: 10
    t.string "PHN_2", limit: 25
    t.string "PHN_EXT_2", limit: 5
    t.string "PHN_AREA_3", limit: 10
    t.string "PHN_3", limit: 25
    t.string "PHN_EXT_3", limit: 5
    t.string "FAX_AREA", limit: 10
    t.string "FAX", limit: 25
    t.string "MOBILE_PHN_NO_1", limit: 25
    t.string "MOBILE_PHN_NO_2", limit: 25
    t.string "EMAIL_1", limit: 100
    t.string "EMAIL_2", limit: 100
    t.boolean "IS_EXT", null: false
    t.string "TAX_ID_NO", limit: 25
    t.string "MR_ID_TYPE_CODE", limit: 25
    t.string "ID_NO", limit: 25
    t.string "IMAGE_LOCATION", limit: 100
    t.string "LOGINSOFTPHONE", limit: 10
    t.boolean "IS_LEAVE", null: false
    t.boolean "IS_ACTIVE", null: false
    t.string "CITY", limit: 25, null: false
    t.string "MR_EMP_GRADE_LVL_TYPE_CODE", limit: 127
    t.datetime "EXPECTED_END_DT"
  end


  create_table "REF_EMP_LEAVE_MNGMNT", force: :cascade do |t|
    t.bigint "REF_EMP_LEAVE_MNGMNT_ID", null: false
    t.bigint "REF_EMP_ID", null: false
    t.datetime "START_DT", null: false
    t.datetime "END_DT", null: false
    t.boolean "IS_PASSED", null: false
  end


  create_table "REF_FIN_INFO", force: :cascade do |t|
    t.bigint "REF_FIN_INFO_ID", null: false
    t.string "REF_FIN_INFO_CODE", limit: 25
    t.string "REF_FIN_INFO_NAME", limit: 50
    t.bigint "REF_FIN_INFO_GROUP_ID", null: false
    t.string "REF_FIN_INFO_GROUP_CODE", limit: 25
    t.string "REF_FIN_INFO_TYPE", limit: 25
    t.string "REF_CUST_TYPE", limit: 25
    t.string "REF_CUST_MODEL", limit: 25
  end


  create_table "REF_FORM", force: :cascade do |t|
    t.bigint "REF_FORM_ID", null: false
    t.string "FORM_CODE", limit: 25, null: false
    t.string "TITLE", limit: 50, null: false
    t.string "PATH", limit: 500, null: false
    t.string "ICON", limit: 50
    t.string "CLASS", limit: 50
    t.string "BADGE_CLASS", limit: 50
    t.string "FORM_CONFIGURATION", limit: 2000
    t.bigint "PARENT_ID"
    t.integer "ORDER_NO", null: false
    t.integer "HIERARCHY_NO", null: false
    t.boolean "IS_HIDDEN", null: false
    t.boolean "IS_EXTERNAL_LINK", null: false
    t.bigint "REF_MODULE_ID", null: false
    t.string "PARAMS", limit: 2000
    t.boolean "IS_MFE", default: false, null: false
  end


  create_table "REF_INDUSTRY_TYPE", force: :cascade do |t|
    t.bigint "REF_INDUSTRY_TYPE_ID", null: false
    t.string "INDUSTRY_TYPE_CODE", limit: 25, null: false
    t.string "INDUSTRY_TYPE_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
    t.bigint "REF_INDUSTRY_TYPE_CATEGORY_ID"
  end


  create_table "REF_INDUSTRY_TYPE_CATEGORY", force: :cascade do |t|
    t.bigint "REF_INDUSTRY_TYPE_CATEGORY_ID", null: false
    t.string "REF_INDUSTRY_TYPE_CATEGORY_CODE", limit: 50, null: false
    t.string "REF_INDUSTRY_TYPE_CATEGORY_NAME", limit: 100, null: false
    t.bigint "REF_ECONOMIC_SECTOR_ID", null: false
    t.string "REG_RPT_CODE", limit: 50
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "REF_INS_CLAIM_DOC", force: :cascade do |t|
    t.bigint "REF_INS_CLAIM_DOC_ID", null: false
    t.string "REF_INS_CLAIM_DOC_CODE", limit: 25, null: false
    t.string "REF_INS_CLAIM_DOC_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "REF_JOB_TITLE", force: :cascade do |t|
    t.bigint "REF_JOB_TITLE_ID", null: false
    t.string "JOB_TITLE_CODE", limit: 25, null: false
    t.string "JOB_TITLE_NAME", limit: 50, null: false
    t.string "DESCR", limit: 2000
    t.boolean "IS_ACTIVE", default: true, null: false
  end


  create_table "REF_LOB", force: :cascade do |t|
    t.bigint "REF_LOB_ID", null: false
    t.string "LOB_CODE", limit: 25, null: false
    t.string "LOB_NAME", limit: 50, null: false
    t.string "REG_RPT_CODE", limit: 25
    t.string "BIZ_TMPLT_CODE", limit: 25, null: false
    t.string "mr_konven_syariah_code", limit: 25
  end


  create_table "REF_MASTER", force: :cascade do |t|
    t.bigint "REF_MASTER_ID", null: false
    t.string "MASTER_CODE", limit: 25, null: false
    t.string "DESCR", limit: 2000, null: false
    t.string "REF_MASTER_TYPE_CODE", limit: 25, null: false
    t.integer "SEQ_NO", null: false
    t.string "RESERVE_FIELD_1", limit: 2000
    t.string "RESERVE_FIELD_2", limit: 2000
    t.string "RESERVE_FIELD_3", limit: 2000
    t.string "RESERVE_FIELD_4", limit: 2000
    t.string "RESERVE_FIELD_5", limit: 2000
    t.boolean "IS_DELETABLE", null: false
    t.boolean "IS_SYSTEM", null: false
    t.boolean "IS_ACTIVE", null: false
    t.boolean "IS_DEFAULT_VALUE", default: false, null: false
    t.string "DEFAULT_VALUE", limit: 25
    t.string "MAPPING_CODE", limit: 25
  end


  create_table "REF_MASTER_TYPE", force: :cascade do |t|
    t.string "REF_MASTER_TYPE_CODE", limit: 25, null: false
    t.string "DESCR", limit: 50, null: false
    t.string "MODULE_CODE", limit: 25, null: false
    t.string "ROLE_CODE", limit: 250
    t.boolean "IS_ACTIVE", null: false
    t.boolean "IS_SYSTEM", null: false
  end


  create_table "REF_MODULE", force: :cascade do |t|
    t.bigint "REF_MODULE_ID", null: false
    t.string "MODULE_CODE", limit: 25, null: false
    t.string "MODULE_NAME", limit: 50, null: false
  end


  create_table "REF_OFFICE", force: :cascade do |t|
    t.bigint "REF_OFFICE_ID", null: false
    t.string "OFFICE_CODE", limit: 25, null: false
    t.string "OFFICE_NAME", limit: 50, null: false
    t.string "MR_KONVEN_SYARIAH_CODE", limit: 25
    t.string "OFFICE_ADDR", limit: 100, null: false
    t.string "ZIPCODE", limit: 25, null: false
    t.string "AREA_CODE_1", limit: 25, null: false
    t.string "AREA_CODE_2", limit: 25, null: false
    t.string "AREA_CODE_3", limit: 25, null: false
    t.string "AREA_CODE_4", limit: 25, null: false
    t.string "PHN_AREA_1", limit: 10
    t.string "PHN_1", limit: 25
    t.string "PHN_EXT_1", limit: 5
    t.string "PHN_AREA_2", limit: 10
    t.string "PHN_2", limit: 25
    t.string "PHN_EXT_2", limit: 5
    t.string "PHN_AREA_3", limit: 10
    t.string "PHN_3", limit: 25
    t.string "PHN_EXT_3", limit: 5
    t.string "FAX_AREA", limit: 10
    t.string "FAX", limit: 25
    t.string "CNTCT_PERSON_NAME", limit: 250, null: false
    t.string "CNTCT_PERSON_JOB_TITLE", limit: 50, null: false
    t.string "CNTCT_PERSON_EMAIL_1", limit: 100, null: false
    t.string "CNTCT_PERSON_EMAIL_2", limit: 100
    t.string "MR_OFFICE_CLASS_CODE", limit: 25, null: false
    t.bigint "REF_OFFICE_AREA_ID"
    t.boolean "IS_ACTIVE", null: false
    t.bigint "PARENT_ID"
    t.boolean "IS_OFFICE_CLOSE", null: false
    t.datetime "OFFICE_OPENING_DT"
    t.boolean "IS_ALLOW_APP_CREATED", null: false
    t.bigint "HOLIDAY_SCHM_H_ID", null: false
    t.bigint "WORKING_HOUR_SCHM_H_ID", null: false
    t.boolean "IS_VIRTUAL_OFFICE", null: false
    t.string "MR_OFFICE_TYPE_CODE", limit: 25
    t.string "CNTCT_PERSON_MOBILE_PHN_NO_1", limit: 25, null: false
    t.string "CNTCT_PERSON_MOBILE_PHN_NO_2", limit: 25
    t.string "CITY", limit: 25, null: false
    t.boolean "IS_NPWP", default: false, null: false
    t.string "TAX_ID_NO", limit: 25
    t.string "TAX_PAYER_NO", limit: 25
    t.boolean "IS_HAVE_CASHIER", default: false, null: false
    t.integer "HIERARCHY_LVL", default: 0, null: false
    t.bigint "REF_TAX_OFFICE_ID"
    t.string "MR_OFFICE_BUSINESS_UNIT_TYPE_CODE", limit: 25
  end


  create_table "REF_OFFICE_AREA", force: :cascade do |t|
    t.bigint "REF_OFFICE_AREA_ID", null: false
    t.string "AREA_CODE", limit: 25, null: false
    t.string "AREA_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "REF_PAY_FREQ", force: :cascade do |t|
    t.bigint "REF_PAY_FREQ_ID", null: false
    t.string "PAY_FREQ_CODE", limit: 25, null: false
    t.string "DESCR", limit: 50, null: false
    t.string "MR_PAY_FREQ_TYPE_CODE", limit: 25, null: false
    t.boolean "IS_FLOATING_USED", null: false
    t.integer "PAY_FREQ_VAL"
    t.integer "TIME_OF_YEAR"
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "REF_PAYMENT_ALLOC", force: :cascade do |t|
    t.bigint "REF_PAYMENT_ALLOC_ID", null: false
    t.string "PAYMENT_ALLOC_CODE", limit: 25, null: false
    t.string "PAYMENT_ALLOC_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
    t.boolean "IS_SYSTEM", null: false
    t.boolean "IS_HEADER", null: false
    t.string "GROUP_COA", limit: 25, null: false
    t.string "MR_PAY_ALLOC_BASE_TYPE", limit: 25, null: false
    t.string "SYSTEM_LIST", limit: 25, null: false
  end


  create_table "REF_PAYMENT_ALLOC_ATTR", force: :cascade do |t|
    t.bigint "REF_PAYMENT_ALLOC_ATTR_ID", null: false
    t.bigint "REF_PAYMENT_ALLOC_ID", null: false
    t.string "PAYMENT_ALLOC_ATTR_CODE", limit: 25, null: false
    t.string "PAYMENT_ALLOC_ATTR_NAME", limit: 50, null: false
    t.integer "ATTR_LENGTH"
    t.string "ATTR_VALUE", limit: 25
    t.string "PATTERN_CODE", limit: 25
    t.string "PATTERN_VALUE", limit: 50
    t.string "DEFAULT_VALUE", limit: 50
    t.boolean "IS_MANDATORY", null: false
    t.boolean "IS_ACTIVE", null: false
    t.string "ATTR_INPUT_TYPE", limit: 25, null: false
  end


  create_table "REF_PAYMENT_ALLOC_GRP_D", force: :cascade do |t|
    t.bigint "REF_PAYMENT_ALLOC_GRP_D_ID", null: false
    t.bigint "REF_PAYMENT_ALLOC_GRP_H_ID", null: false
    t.bigint "REF_PAYMENT_ALLOC_ID", null: false
  end


  create_table "REF_PAYMENT_ALLOC_GRP_H", force: :cascade do |t|
    t.bigint "REF_PAYMENT_ALLOC_GRP_H_ID", null: false
    t.string "PAY_ALLOC_GRP_CODE", limit: 25, null: false
    t.string "PAY_ALLOC_GRP_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
    t.boolean "IS_SYSTEM", null: false
    t.string "DESCR", limit: 500
    t.string "MR_PAY_ALLOC_GRP_PURPOSE", limit: 25
  end


  create_table "REF_PROFESSION", force: :cascade do |t|
    t.bigint "REF_PROFESSION_ID", null: false
    t.string "PROFESSION_CODE", limit: 25, null: false
    t.string "PROFESSION_NAME", limit: 50, null: false
    t.string "MR_CUST_MODEL_CODE", limit: 25, null: false
    t.string "REG_RPT_CODE", limit: 25
  end


  create_table "REF_PROV_DISTRICT", force: :cascade do |t|
    t.bigint "REF_PROV_DISTRICT_ID", null: false
    t.string "PROV_DISTRICT_CODE", limit: 25, null: false
    t.string "PROV_DISTRICT_NAME", limit: 50, null: false
    t.string "DISTRICT_REG_RPT_CODE", limit: 25
    t.string "TYPE", limit: 5, null: false
    t.bigint "PARENT_ID"
    t.boolean "IS_ACTIVE", null: false
    t.string "PHN_AREA", limit: 10
  end


  create_table "REF_REASON", force: :cascade do |t|
    t.bigint "REF_REASON_ID", null: false
    t.string "REASON_CODE", limit: 25, null: false
    t.string "REASON_DESCR", limit: 50, null: false
    t.boolean "IS_SYSTEM", null: false
    t.string "REF_REASON_TYPE_CODE", limit: 25, null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "REF_REASON_TYPE", force: :cascade do |t|
    t.string "REF_REASON_TYPE_CODE", limit: 25, null: false
    t.string "REASON_TYPE_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
    t.string "MODULE_CODE", limit: 25, null: false
  end


  create_table "REF_ROLE", force: :cascade do |t|
    t.bigint "REF_ROLE_ID", null: false
    t.string "ROLE_CODE", limit: 25, null: false
    t.string "ROLE_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "REF_STATUS", force: :cascade do |t|
    t.bigint "REF_STATUS_ID", null: false
    t.string "REF_STATUS_CODE", limit: 25, null: false
    t.string "DESCR", limit: 50, null: false
    t.bigint "REF_TRX_TYPE_ID", null: false
    t.string "MODULE_CODE", limit: 25, null: false
    t.boolean "IS_ACTIVE", null: false
    t.string "STATUS_GRP_CODE", limit: 25
  end


  create_table "REF_TAX_OFFICE", force: :cascade do |t|
    t.bigint "REF_TAX_OFFICE_ID", null: false
    t.string "TAX_OFFICE_CODE", limit: 25, null: false
    t.string "TAX_OFFICE_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
    t.bigint "REF_BANK_ID", null: false
    t.string "BACK_ACC_NO", limit: 12, null: false
    t.string "BACK_ACC_NAME", limit: 250, null: false
    t.string "BANK_BRANCH_BI_CODE", limit: 5, null: false
  end


  create_table "REF_TC", force: :cascade do |t|
    t.bigint "REF_TC_ID", null: false
    t.string "TC_CODE", limit: 25, null: false
    t.string "TC_NAME", limit: 50, null: false
    t.string "TC_DATA_TYPE", limit: 25, null: false
    t.integer "TC_LENGTH"
    t.string "TC_VALUE", limit: 500
    t.boolean "IS_MANDATORY", null: false
    t.boolean "IS_ACTIVE", null: false
    t.integer "SEQ_NO", null: false
    t.bigint "REF_TRX_TYPE_ID", null: false
    t.string "TC_TYPE", limit: 25
  end


  create_table "REF_TRX_TYPE", force: :cascade do |t|
    t.bigint "REF_TRX_TYPE_ID", null: false
    t.string "TRX_TYPE_CODE", limit: 25, null: false
    t.string "TRX_TYPE_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "REF_USER", force: :cascade do |t|
    t.bigint "REF_USER_ID", null: false
    t.string "USERNAME", limit: 25, null: false
    t.string "PASSWORD", limit: 50, null: false
    t.bigint "REF_EMP_ID", null: false
    t.integer "FAIL_PWD_COUNT", null: false
    t.boolean "IS_LOCKED_OUT", null: false
    t.boolean "IS_ACTIVE", null: false
    t.boolean "IS_LOGGED_IN", null: false
    t.string "LAST_IP_ADDRESS", limit: 25
    t.datetime "LAST_LOGGED_IN"
    t.datetime "LAST_LOGGED_OUT"
    t.string "LOGGED_IN_METHOD", limit: 100, null: false
    t.datetime "EXPIRED_DT"
    t.string "KEY", limit: 2000
    t.string "TOKEN", limit: 500
    t.string "LOCKED_OUT_REASON", limit: 25
    t.datetime "LOCKED_UNTIL"
    t.boolean "IS_NEED_UPDATE_PASSWORD", default: false, null: false
    t.datetime "PASSWORD_EXPIRATION_DT"
    t.string "RESET_CODE", null: false
  end


  create_table "REF_USER_HIST", force: :cascade do |t|
    t.bigint "REF_USER_HIST_ID", null: false
    t.bigint "REF_USER_ID", null: false
    t.string "PASSWORD", limit: 50, null: false
    t.datetime "CHANGE_DT", null: false
    t.integer "SEQ_NO", null: false
  end


  create_table "REF_USER_LOG", force: :cascade do |t|
    t.bigint "REF_USER_LOG_ID", null: false
    t.bigint "REF_USER_ID", null: false
    t.string "LAST_IP_ADDRESS", limit: 25
    t.datetime "LAST_LOGGED_IN"
    t.datetime "LAST_LOGGED_OUT"
    t.boolean "IS_ACTIVE", null: false
    t.string "DEVICE", limit: 25
    t.boolean "IS_VALID", default: false, null: false
    t.string "LOCATION", limit: 100
    t.string "SOFTWARE_NAME", limit: 25
    t.string "USER_AGENT_FULL", limit: 100
  end


  create_table "REF_USER_ROLE", force: :cascade do |t|
    t.bigint "REF_USER_ROLE_ID", null: false
    t.bigint "REF_BIZ_UNIT_ID", null: false
    t.bigint "REF_JOB_TITLE_ID", null: false
    t.bigint "REF_USER_ID", null: false
    t.bigint "SPV_ID"
    t.bigint "REF_ROLE_ID", null: false
    t.bigint "REF_OFFICE_ID", null: false
    t.boolean "IS_ACTIVE", null: false
    t.datetime "EFFECTIVE_END_DT"
    t.datetime "EFFECTIVE_START_DT"
    t.boolean "IS_DEFAULT", default: false, null: false
  end


  create_table "REF_VERF_ANSWER_TYPE", force: :cascade do |t|
    t.bigint "REF_VERF_ANSWER_TYPE_ID", null: false
    t.string "VERF_ANSWER_TYPE_CODE", limit: 25, null: false
    t.string "VERF_ANSWER_TYPE_DESCR", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "REF_ZIPCODE", force: :cascade do |t|
    t.bigint "REF_ZIPCODE_ID", null: false
    t.string "AREA_CODE_1", limit: 25, null: false
    t.string "AREA_CODE_2", limit: 25, null: false
    t.string "CITY", limit: 25, null: false
    t.string "ZIPCODE", limit: 25, null: false
    t.bigint "REF_PROV_DISTRICT_ID", null: false
    t.string "SUB_ZIPCODE", limit: 25, null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "RFA_LOG", force: :cascade do |t|
    t.bigint "RFA_LOG_ID", null: false
    t.string "APV_CATEGORY", limit: 25, null: false
    t.string "TRX_NO", limit: 50, null: false
    t.string "REASON_CODE", limit: 50, null: false
    t.string "NOTES", limit: 2000, null: false
    t.bigint "RFA_NO"
    t.string "APV_STAT", limit: 25, null: false
    t.string "APV_SCHEME_CODE", limit: 25, null: false
    t.decimal "APV_VALUE", precision: 17, scale: 2, null: false
    t.string "REQUEST_BY", limit: 25, null: false
    t.datetime "REQ_DT", null: false
    t.string "FINAL_APPROVE_BY", limit: 25
    t.datetime "FINAL_APV_DT"
  end


  create_table "RPT_LIST", force: :cascade do |t|
    t.string "RPT_TMPLT_CODE", limit: 25, null: false
    t.string "RPT_TMPLT_NAME", limit: 50, null: false
    t.string "RPT_TMPLT_PATH", limit: 100, null: false
    t.string "SYNCHRONOUS_TYPE", limit: 1, null: false
    t.string "MODULE_CODE", limit: 25
  end


  create_table "SCORING_RESULT_D", force: :cascade do |t|
    t.bigint "SCORING_RESULT_D_ID", null: false
    t.bigint "SCORING_RESULT_H_ID", null: false
    t.bigint "SEQ_NO", null: false
    t.string "SCORING_QUESTION", limit: 2000, null: false
    t.string "SCORING_ANSWER", limit: 2000, null: false
    t.decimal "SCORING_VALUE", precision: 17, scale: 2, null: false
    t.decimal "WEIGHT_PRCNT", precision: 9, scale: 6
    t.string "MR_SCORING_STAT_CODE", limit: 25
  end


  create_table "SCORING_RESULT_H", force: :cascade do |t|
    t.bigint "SCORING_RESULT_H_ID", null: false
    t.string "SCORING_TRX_NO", limit: 50, null: false
    t.string "TRX_SOURCE_NO", limit: 50, null: false
    t.string "TRX_SOURCE_TYPE", limit: 50, null: false
    t.string "MR_SCORING_METHOD_CODE", limit: 25, null: false
    t.decimal "SCORING_VALUE", precision: 17, scale: 2, null: false
    t.string "SCORING_ALIAS", limit: 25, null: false
    t.string "OFFICE_CODE", limit: 25, null: false
    t.datetime "REQ_DATE", null: false
    t.string "REQ_BY", limit: 25, null: false
    t.string "SCORING_CATEGORY", limit: 50
    t.string "CUST_NO", limit: 25
  end


  create_table "SYS_CTRL_COY", force: :cascade do |t|
    t.bigint "SYS_CTRL_COY_ID", null: false
    t.string "SYS_KEY", limit: 25, null: false
    t.string "SYS_VALUE", limit: 50, null: false
  end


  create_table "TASK_UPD_CUST_DATA", force: :cascade do |t|
    t.bigint "CUST_DATA_TRX_ID", null: false
    t.bigint "REF_OFFICE_ID", null: false
    t.string "APPLICANT_NO", limit: 25
    t.string "REF_NO", limit: 25
    t.string "CUST_NO", limit: 25
    t.string "CUST_TYPE", limit: 50
    t.string "MR_CUST_DATA_TRX_TYPE", limit: 25
    t.datetime "TASK_DT"
    t.string "USER_ASSIGNED", limit: 25
    t.datetime "SUBMIT_DT"
    t.string "MR_SUBJECT_TYPE", limit: 25
    t.string "PROD_OFFERING_CODE", limit: 25, null: false
    t.string "PROD_OFFERING_NAME", limit: 50, null: false
    t.string "PROD_OFFERING_VERSION", limit: 10, null: false
    t.string "AGRMNT_NO", limit: 50
  end


  create_table "THINGS_TO_DO_MAPPER", force: :cascade do |t|
    t.bigint "THINGS_TO_DO_MAPPER_ID", null: false
    t.string "THINGS_TO_DO_TYPE", limit: 50
    t.string "ROLES", limit: 100
    t.string "THINGS_TO_DO_QUERY", limit: 2000
    t.string "THINGS_TO_DO_URL", limit: 2000
    t.string "MODULE_CODE", limit: 50
    t.string "THINGS_TO_DO_NAME", limit: 250
    t.boolean "IS_EXTERNAL", default: false, null: false
  end


  create_table "TRX_TYPE_REF_PAYMENT_ALLOC", force: :cascade do |t|
    t.bigint "TRX_TYPE_REF_PAYMENT_ALLOC_ID", null: false
    t.bigint "REF_PAYMENT_ALLOC_ID", null: false
    t.string "TRX_TYPE_CODE", limit: 25, null: false
    t.string "TRX_PAYMENT_ALLOC_CODE", limit: 25, null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "UPDATE_CUST_ADDRESS", force: :cascade do |t|
    t.bigint "UPDATE_CUST_ADDRESS_ID", null: false
    t.bigint "CUST_DATA_TRX_ID", null: false
    t.string "MR_CUST_ADDR_TYPE_CODE", limit: 25, null: false
    t.string "ADDR", limit: 500
    t.string "AREA_CODE_1", limit: 25
    t.string "AREA_CODE_2", limit: 25
    t.string "AREA_CODE_3", limit: 25
    t.string "AREA_CODE_4", limit: 25
    t.string "CITY", limit: 25
    t.string "ZIPCODE", limit: 25
    t.string "MR_BUILDING_OWNERSHIP_CODE", limit: 25
    t.string "PHN_AREA_1", limit: 10
    t.string "PHN_1", limit: 25
    t.string "PHN_EXT_1", limit: 5
    t.string "PHN_AREA_2", limit: 10
    t.string "PHN_2", limit: 25
    t.string "PHN_EXT_2", limit: 5
    t.string "PHN_AREA_3", limit: 10
    t.string "PHN_3", limit: 25
    t.string "PHN_EXT_3", limit: 5
    t.string "FAX_AREA", limit: 10
    t.string "FAX", limit: 25
    t.decimal "STAY_LENGTH", precision: 17, scale: 2
  end


  create_table "UPDATE_CUST_BANK_ACC", force: :cascade do |t|
    t.bigint "UPDATE_CUST_BANK_ACC_ID", null: false
    t.bigint "CUST_DATA_TRX_ID", null: false
    t.bigint "REF_BANK_ID", null: false
    t.string "BANK_BRANCH", limit: 25, null: false
    t.string "BANK_ACC_NO", limit: 250, null: false
    t.string "BANK_ACC_NAME", limit: 250, null: false
    t.boolean "IS_DEFAULT", null: false
  end


  create_table "UPDATE_CUST_BANK_STATEMENT", force: :cascade do |t|
    t.bigint "UPDATE_CUST_BANK_STATEMENT_ID", null: false
    t.bigint "CUST_DATA_TRX_ID"
    t.bigint "UPDATE_CUST_BANK_ACC_ID"
    t.string "MONTH", limit: 25, null: false
    t.string "YEAR", limit: 25, null: false
    t.decimal "DEBIT_AMT", precision: 17, scale: 2, null: false
    t.decimal "CREDIT_AMT", precision: 17, scale: 2, null: false
    t.decimal "BALANCE_AMT", precision: 17, scale: 2, null: false
  end


  create_table "UPDATE_CUST_COMPANY_CONTACT_PERSON", force: :cascade do |t|
    t.bigint "UPDATE_CUST_COMPANY_CONTACT_PERSON_ID", null: false
    t.bigint "UPDATE_CUST_COMPANY_DATA_ID", null: false
    t.string "CONTACT_PERSON_NAME", limit: 250
    t.string "MR_JOB_POSITION_CODE", limit: 25
    t.string "JOB_TITLE_NAME", limit: 50
    t.string "MOBILE_PHN_NO_1", limit: 25
    t.string "MOBILE_PHN_NO_2", limit: 25
    t.string "EMAIL_1", limit: 25
    t.string "EMAIL_2", limit: 25
    t.string "PHN_AREA_1", limit: 10
    t.string "PHN_1", limit: 25
    t.string "PHN_EXT_1", limit: 5
    t.string "PHN_AREA_2", limit: 10
    t.string "PHN_2", limit: 25
    t.string "PHN_EXT_2", limit: 5
    t.string "MR_GENDER_CODE", limit: 25
    t.string "MR_CUST_RELATIONSHIP_CODE", limit: 25
    t.string "MR_ID_TYPE_CODE", limit: 25
    t.string "ID_NO", limit: 25
    t.datetime "ID_EXPIRED_DT"
    t.string "BIRTH_PLACE", limit: 100
    t.datetime "BIRTH_DT"
  end


  create_table "UPDATE_CUST_COMPANY_DATA", force: :cascade do |t|
    t.bigint "UPDATE_CUST_COMPANY_DATA_ID", null: false
    t.bigint "CUST_DATA_TRX_ID", null: false
    t.bigint "REF_INDUSTRY_TYPE_ID"
    t.integer "NUM_OF_EMP", null: false
    t.datetime "ESTABLISHMENT_DT"
  end


  create_table "UPDATE_CUST_COMPANY_FIN_DATA", force: :cascade do |t|
    t.bigint "UPDATE_CUST_COMPANY_FIN_DATA_ID", null: false
    t.bigint "CUST_DATA_TRX_ID", null: false
    t.decimal "GROSS_MONTHLY_INCOME_AMT", precision: 17, scale: 2, null: false
    t.decimal "GROSS_PROFIT_AMT", precision: 17, scale: 2, null: false
    t.decimal "RETURN_OF_INVESTMENT_PRCNT", precision: 9, scale: 6, null: false
    t.decimal "RETURN_OF_EQUITY_PRCNT", precision: 9, scale: 6, null: false
    t.decimal "RETURN_OF_ASSET_PRCNT", precision: 9, scale: 6, null: false
    t.decimal "PROFIT_MARGIN_PRCNT", precision: 9, scale: 6, null: false
    t.decimal "CURRENT_RATIO_PRCNT", precision: 9, scale: 6, null: false
    t.decimal "DEBT_EQUITY_RATIO_PRCNT", precision: 9, scale: 6, null: false
    t.decimal "INV_TURN_OVER_PRCNT", precision: 9, scale: 6, null: false
    t.decimal "AR_TURN_OVER_PRCNT", precision: 9, scale: 6, null: false
    t.decimal "GROWTH_PRCNT", precision: 9, scale: 6, null: false
    t.decimal "WORKING_CAPITAL_AMT", precision: 17, scale: 2, null: false
    t.decimal "OTH_MONTHLY_INST_AMT", precision: 17, scale: 2, null: false
    t.datetime "DATE_AS_OF"
    t.decimal "REVENUE", precision: 17, scale: 2, null: false
    t.decimal "OPR_COST", precision: 17, scale: 2, null: false
    t.decimal "PROFIT_BEFORE_TAX", precision: 17, scale: 2, null: false
    t.decimal "CURR_ASSET", precision: 17, scale: 2, null: false
    t.decimal "NET_FIXED_ASSET", precision: 17, scale: 2, null: false
    t.decimal "TOTAL_ASSET", precision: 17, scale: 2, null: false
    t.decimal "CURR_LIABLTS", precision: 17, scale: 2, null: false
    t.decimal "LONG_TEMR_LIABLTS", precision: 17, scale: 2, null: false
    t.decimal "SHAREHOLDER_EQUITY", precision: 17, scale: 2, null: false
    t.decimal "CURR_RATIO", precision: 17, scale: 2, null: false
  end


  create_table "UPDATE_CUST_COMPANY_LEGAL_DOC", force: :cascade do |t|
    t.bigint "UPDATE_CUST_COMPANY_LEGAL_DOC_ID", null: false
    t.bigint "CUST_DATA_TRX_ID", null: false
    t.string "MR_LEGAL_DOC_TYPE_CODE", limit: 25
    t.string "DOC_NO", limit: 25
    t.datetime "DOC_DT"
    t.datetime "DOC_EXPIRED_DT"
    t.string "DOC_NOTES", limit: 2000
    t.string "NOTARY_NAME", limit: 250
    t.string "NOTARY_LOCATION", limit: 2000
    t.string "DOC_NAME", limit: 100
    t.boolean "NEED_LEGAL_OPINION", default: false, null: false
  end


  create_table "UPDATE_CUST_COMPANY_MGMNT_SHAREHOLDER", force: :cascade do |t|
    t.bigint "UPDATE_CUST_COMPANY_MGMNT_SHAREHOLDER_ID", null: false
    t.bigint "CUST_DATA_TRX_ID", null: false
    t.decimal "SHARE_PRCNT", precision: 9, scale: 6
    t.string "MR_JOB_POSITION_CODE", limit: 25
    t.boolean "IS_ACTIVE", null: false
    t.boolean "IS_OWNER", null: false
    t.boolean "IS_SIGNER", null: false
    t.datetime "ESTABLISHMENT_DT"
    t.string "SHAREHOLDER_CUST_NO", limit: 25
    t.datetime "BUSINESS_START_DT"
  end


  create_table "UPDATE_CUST_EMERGENCY", force: :cascade do |t|
    t.bigint "UPDATE_CUST_EMERGENCY_ID", null: false
    t.bigint "CUST_DATA_TRX_ID", null: false
    t.string "MR_CUST_RELATIONSHIP", limit: 25
    t.string "MR_ID_TYPE_CODE", limit: 25
    t.string "ID_NO", limit: 25
    t.string "BIRTH_PLACE", limit: 100
    t.datetime "BIRTH_DT"
    t.string "MR_GENDER_CODE", limit: 25
    t.string "MR_JOB_PROFESSION_CODE", limit: 25
    t.string "EMAIL", limit: 50
    t.string "MOBILE_PHN_NO_1", limit: 25
    t.string "MOBILE_PHN_NO_2", limit: 25
    t.string "ADDR", limit: 500
    t.string "AREA_CODE_1", limit: 25
    t.string "AREA_CODE_2", limit: 25
    t.string "AREA_CODE_3", limit: 25
    t.string "AREA_CODE_4", limit: 25
    t.string "CITY", limit: 25
    t.string "ZIPCODE", limit: 25
    t.datetime "ID_EXPIRED_DT"
  end


  create_table "UPDATE_CUST_FAMILY", force: :cascade do |t|
    t.bigint "UPDATE_CUST_FAMILY_ID", null: false
    t.bigint "CUST_DATA_TRX_ID", null: false
    t.string "FAMILY_CUST_NO", limit: 25
    t.string "MR_CUST_RELATIONSHIP", limit: 25
  end


  create_table "UPDATE_CUST_JOB_DATA", force: :cascade do |t|
    t.bigint "UPDATE_CUST_JOB_DATA_ID", null: false
    t.bigint "CUST_DATA_TRX_ID", null: false
    t.string "MR_CUST_MODEL_CODE", limit: 25
    t.bigint "REF_PROFESSION_ID"
    t.boolean "IS_MF_EMP", null: false
    t.string "MR_JOB_POSITION_CODE", limit: 25
    t.string "JOB_TITLE_NAME", limit: 50
    t.string "MR_JOB_STAT_CODE", limit: 25
    t.datetime "EMPLOYMENT_ESTABLISHMENT_DT"
    t.string "COY_NAME", limit: 250
    t.bigint "REF_INDUSTRY_TYPE_ID"
    t.string "MR_COY_SCALE_CODE", limit: 25
    t.integer "NO_OF_EMPLOY"
  end


  create_table "UPDATE_CUST_PERSONAL_DATA", force: :cascade do |t|
    t.bigint "CUST_PERSONAL_DATA_ID", null: false
    t.bigint "CUST_DATA_TRX_ID", null: false
    t.bigint "CUSTOMER_GROUP"
    t.string "CUST_FULL_NAME", limit: 500
    t.string "MARITAL_STAT", limit: 50
    t.string "MR_NATIONALITY_CODE", limit: 50
    t.string "MR_COUNTRY_CODE", limit: 50
    t.string "MR_EDUCATION_CODE", limit: 50
    t.string "MR_RELIGION_CODE", limit: 50
    t.string "FAMILY_CARD_NO", limit: 50
    t.integer "NO_OF_RESIDENCE", null: false
    t.integer "NO_OF_DEPENDENCE", null: false
    t.boolean "AFFILIATE_WITH_MF", null: false
    t.boolean "VIP", null: false
    t.string "VIP_NOTES", limit: 2000
    t.string "MOBILE_PHN_NO_1", limit: 25
    t.string "MOBILE_PHN_NO_2", limit: 25
    t.string "EMAIL_1", limit: 25
    t.string "EMAIL_2", limit: 25
  end


  create_table "UPDATE_CUST_PERSONAL_FIN_DATA", force: :cascade do |t|
    t.bigint "UPDATE_CUST_PERSONAL_FIN_DATA_ID", null: false
    t.bigint "CUST_DATA_TRX_ID", null: false
    t.decimal "MONTHLY_INCOME_AMT", precision: 17, scale: 2, null: false
    t.string "MR_SOURCE_OF_INCOME_CODE", limit: 25
    t.boolean "IS_JOIN_INCOME", null: false
    t.decimal "SPOUSE_MONTHLY_INCOME_AMT", precision: 17, scale: 2, null: false
    t.decimal "TOTAL_INCOME_AMT", precision: 17, scale: 2, null: false
    t.decimal "MONTHLY_EXPENSE_AMT", precision: 17, scale: 2, null: false
    t.decimal "MONTHLY_INSTALLMENT_AMT", precision: 17, scale: 2, null: false
    t.decimal "NETT_INCOME_AMT", precision: 17, scale: 2, null: false
  end


  create_table "UPLOAD_ASSET_MASTER", force: :cascade do |t|
    t.bigint "UPLOAD_ASSET_MASTER_ID", null: false
    t.string "UPLOAD_MONITORING_NO", limit: 50, null: false
    t.string "ASSET_TYPE_CODE", limit: 25
    t.string "ASSET_CATEGORY_CODE", limit: 25
    t.string "ASSET_CODE", limit: 25
    t.string "ASSET_NAME", limit: 50
    t.boolean "IS_ACTIVE", null: false
    t.bigint "PARENT_ASSET_MASTER_ID"
    t.bigint "ASSET_CATEGORY_ID"
    t.bigint "ASSET_MASTER_ID"
    t.string "ERROR_MESSAGE", limit: 2000
    t.bigint "ASSET_TYPE_ID"
    t.string "PARENT_FULL_ASSET_CODE", limit: 250
    t.string "UPLOAD_STATUS", limit: 25
  end


  create_table "UPLOAD_ASSET_NEGATIVE", force: :cascade do |t|
    t.bigint "UPLOAD_ASSET_NEGATIVE_ID", null: false
    t.string "UPLOAD_MONITORING_NO", limit: 50, null: false
    t.string "FULL_ASSET_CODE", limit: 250
    t.string "SERIAL_NO_1", limit: 25
    t.string "SERIAL_NO_2", limit: 25
    t.string "SERIAL_NO_3", limit: 25
    t.string "SERIAL_NO_4", limit: 25
    t.string "SERIAL_NO_5", limit: 25
    t.string "NOTES", limit: 2000
    t.bigint "ASSET_MASTER_ID"
    t.bigint "ASSET_NEGATIVE_ID"
    t.string "ERROR_MESSAGE", limit: 2000
    t.string "UPLOAD_STATUS", limit: 25, null: false
    t.string "MR_NEG_ASSET_SOURCE_CODE", limit: 25, null: false
  end


  create_table "UPLOAD_MONITORING_H", force: :cascade do |t|
    t.bigint "UPLOAD_MONITORING_H_ID", null: false
    t.string "UPLOAD_MONITORING_NO", limit: 50, null: false
    t.string "OFFICE_CODE", limit: 25, null: false
    t.datetime "UPLOAD_DT", null: false
    t.bigint "UPLOAD_TYPE_ID", null: false
    t.string "FILE_NAME", limit: 250, null: false
    t.bigint "TOTAL_RECORD", null: false
    t.bigint "TOTAL_RECORD_PROCESSED", null: false
    t.bigint "TOTAL_RECORD_ERROR", null: false
    t.boolean "IS_EXECUTED", null: false
    t.string "ERROR_MESSAGE", limit: 2000, null: false
    t.string "UPLOAD_BY_EMP_NO", limit: 25, null: false
    t.string "UPLOAD_STATUS", limit: 25, null: false
  end


  create_table "UPLOAD_NEGATIVE_CUST", force: :cascade do |t|
    t.bigint "UPLOAD_NEGATIVE_CUST_ID", null: false
    t.string "UPLOAD_MONITORING_NO", limit: 50, null: false
    t.string "MR_CUST_TYPE_CODE", limit: 25, null: false
    t.string "CUST_NO", limit: 50
    t.string "CUST_NAME", limit: 250, null: false
    t.string "MR_ID_TYPE_CODE", limit: 25
    t.string "ID_NO", limit: 25
    t.datetime "ID_EXPIRED_DT"
    t.string "TAX_ID_NO", limit: 25
    t.string "BIRTH_PLACE", limit: 50
    t.datetime "BIRTH_DT"
    t.string "MR_GENDER_CODE", limit: 25
    t.string "MOTHER_MAIDEN_NAME", limit: 250
    t.string "LEGAL_ADDR", limit: 100
    t.string "MOBILE_PHN", limit: 25
    t.string "MR_NEG_CUST_TYPE_CODE", limit: 25, null: false
    t.string "MR_NEG_CUST_SOURCE_CODE", limit: 25, null: false
    t.string "NEG_CUST_CAUSE", limit: 100
    t.string "NOTES", limit: 2000
    t.boolean "IS_ACTIVE", null: false
    t.string "ERROR_MESSAGE", limit: 2000
    t.bigint "NEGATIVE_CUST_ID"
    t.string "UPLOAD_STATUS", limit: 25
    t.bigint "CUST_ID"
    t.boolean "IS_WA_MOBILE_PHN_NO_1", default: false, null: false
    t.boolean "IS_WA_MOBILE_PHN_NO_2", default: false, null: false
    t.boolean "IS_WA_MOBILE_PHN_NO_3", default: false, null: false
    t.string "MOBILE_PHN_NO_2", limit: 25
    t.string "MOBILE_PHN_NO_3", limit: 25
  end


  create_table "UPLOAD_SETTING_D", force: :cascade do |t|
    t.bigint "UPLOAD_SETTING_D_ID", null: false
    t.bigint "UPLOAD_SETTING_H_ID", null: false
    t.bigint "REF_ROLE_ID", null: false
  end


  create_table "UPLOAD_SETTING_H", force: :cascade do |t|
    t.bigint "UPLOAD_SETTING_H_ID", null: false
    t.bigint "UPLOAD_TYPE_ID", null: false
    t.string "TRX_CODE_WF", limit: 25
    t.string "DELIMITER", limit: 0
  end


  create_table "UPLOAD_TYPE", force: :cascade do |t|
    t.bigint "UPLOAD_TYPE_ID", null: false
    t.string "UPLOAD_TYPE_CODE", limit: 25, null: false
    t.string "UPLOAD_TYPE_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "USER_SESSION_LOG", force: :cascade do |t|
    t.bigint "USER_SESSION_LOG_ID", null: false
    t.string "USERNAME", limit: 25
    t.string "OFFICE_CODE", limit: 25
    t.string "OFFICE_NAME", limit: 50
    t.string "ROLE_CODE", limit: 25
    t.string "ROLE_NAME", limit: 50
    t.string "JOB_TITLE_CODE", limit: 25
    t.string "JOB_TITLE_NAME", limit: 50
    t.datetime "LOGIN_DATETIME"
    t.datetime "EXPIRATION_DATETIME"
    t.datetime "LOGOUT_DATETIME"
    t.string "IP_ADDRESS", limit: 25
  end


  create_table "VENDOR", force: :cascade do |t|
    t.bigint "VENDOR_ID", null: false
    t.bigint "VENDOR_PARENT_ID"
    t.string "VENDOR_CODE", limit: 500
    t.string "VENDOR_NAME", limit: 500
    t.string "MR_VENDOR_CATEGORY_CODE", limit: 25, null: false
    t.string "MOBILE_PHN_NO_1", limit: 25
    t.string "MOBILE_PHN_NO_2", limit: 25
    t.string "EMAIL", limit: 50
    t.decimal "VENDOR_RATING", precision: 17, scale: 2
    t.string "MR_VENDOR_TYPE_CODE", limit: 25
    t.string "MR_ID_TYPE_CODE", limit: 25
    t.string "ID_NO", limit: 25
    t.boolean "IS_ACTIVE", null: false
    t.string "TAX_ID_NO", limit: 25
    t.datetime "PARTNERSHIP_DT"
    t.datetime "ESTABLISHMENT_DT"
    t.string "TAXPAYER_NAME", limit: 250
    t.string "TAXPAYER_NO", limit: 50
    t.string "MR_TAX_CALC_METHOD_CODE", limit: 25
    t.boolean "IS_VAT", null: false
    t.string "LICENSE_NO", limit: 25
    t.string "REGISTRATION_NO", limit: 25
    t.string "VENDOR_RATING_ALIAS", limit: 50
    t.string "RESERVED_FIELD_1", limit: 2000
    t.string "RESERVED_FIELD_2", limit: 2000
    t.string "RESERVED_FIELD_3", limit: 2000
    t.string "RESERVED_FIELD_4", limit: 2000
    t.string "RESERVED_FIELD_5", limit: 2000
    t.string "RESERVED_FIELD_6", limit: 2000
    t.string "RESERVED_FIELD_7", limit: 2000
    t.string "RESERVED_FIELD_8", limit: 2000
    t.string "RESERVED_FIELD_9", limit: 2000
    t.string "RESERVED_FIELD_10", limit: 2000
    t.datetime "ACTIVE_DT"
    t.string "MR_DUPLICATE_STATUS_CODE", limit: 25
    t.string "MR_NATIONALTIY_CODE", limit: 25
    t.boolean "IS_NPWP_EXIST", null: false
    t.string "MR_TAX_PGRSV_SCHEME_CODE", limit: 25
    t.string "MR_TAX_PGRSV_SCHEME_NAME", limit: 250
    t.string "MR_VENDOR_CLASS", limit: 25
    t.string "VENDOR_ATPM_CODE", limit: 25
    t.boolean "IS_ONE_AFFILIATE", null: false
    t.string "TAX_SCHM_CODE", limit: 50
    t.string "mr_konven_syariah_code", limit: 25
    t.string "cmo_emp_no", limit: 25
  end


  create_table "VENDOR_ADDR", force: :cascade do |t|
    t.bigint "VENDOR_ADDR_ID", null: false
    t.bigint "VENDOR_ID"
    t.bigint "VENDOR_EMP_ID"
    t.bigint "VENDOR_GRP_ID"
    t.string "MR_ADDR_TYPE_CODE", limit: 25, null: false
    t.string "ADDR", limit: 500
    t.string "ZIPCODE", limit: 25
    t.string "SUB_ZIPCODE", limit: 25
    t.string "PHN_AREA_1", limit: 10
    t.string "PHN_1", limit: 25
    t.string "PHN_EXT_1", limit: 5
    t.string "PHN_AREA_2", limit: 10
    t.string "PHN_2", limit: 25
    t.string "PHN_EXT_2", limit: 5
    t.string "AREA_CODE_1", limit: 50
    t.string "AREA_CODE_2", limit: 50
    t.string "AREA_CODE_3", limit: 50
    t.string "AREA_CODE_4", limit: 50
    t.string "CITY", limit: 50
    t.string "PROVINCE", limit: 50
    t.string "LATITUDE", limit: 250
    t.string "LONGITUDE", limit: 250
  end


  create_table "VENDOR_ADDR_HIST", force: :cascade do |t|
    t.bigint "VENDOR_ADDR_HIST_ID", null: false
    t.bigint "VENDOR_ADDR_ID", null: false
    t.bigint "VENDOR_ID"
    t.bigint "VENDOR_EMP_ID"
    t.bigint "VENDOR_GRP_ID"
    t.string "MR_ADDR_TYPE_CODE", limit: 25, null: false
    t.string "ADDR", limit: 500, null: false
    t.string "ZIPCODE", limit: 25, null: false
    t.string "SUB_ZIPCODE", limit: 25
    t.string "PHN_AREA_1", limit: 10, null: false
    t.string "PHN_1", limit: 25, null: false
    t.string "PHN_EXT_1", limit: 5
    t.string "PHN_AREA_2", limit: 10
    t.string "PHN_2", limit: 25
    t.string "PHN_EXT_2", limit: 5
    t.string "AREA_CODE_1", limit: 50
    t.string "AREA_CODE_2", limit: 50
    t.string "AREA_CODE_3", limit: 50
    t.string "AREA_CODE_4", limit: 50
    t.string "CITY", limit: 50, null: false
    t.string "PROVINCE", limit: 50, null: false
    t.string "LATITUDE", limit: 250
    t.string "LONGITUDE", limit: 250
  end


  create_table "VENDOR_AREA", force: :cascade do |t|
    t.bigint "VENDOR_AREA_ID", null: false
    t.string "VENDOR_AREA_NAME", limit: 25, null: false
    t.string "DESCR", limit: 250
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "VENDOR_AREA_MBR", force: :cascade do |t|
    t.bigint "VENDOR_AREA_MBR_ID", null: false
    t.bigint "VENDOR_AREA_ID", null: false
    t.bigint "VENDOR_ID", null: false
  end


  create_table "VENDOR_ATPM_MAPPING", force: :cascade do |t|
    t.bigint "VENDOR_ATPM_MAPPING_ID", null: false
    t.bigint "VENDOR_ID", null: false
  end


  create_table "VENDOR_ATTR", force: :cascade do |t|
    t.bigint "VENDOR_ATTR_ID", null: false
    t.string "MR_VENDOR_CATEGORY_CODE", limit: 25
    t.string "VENDOR_ATTR_CODE", limit: 25
    t.string "VENDOR_ATTR_NAME", limit: 500
    t.string "VENDOR_ATTR_TYPE", limit: 50
    t.string "VENDOR_ATTR_PATTERN", limit: 500
    t.string "VENDOR_ATTR_TYPE_VALUE", limit: 2000
    t.boolean "IS_ACTIVE", null: false
    t.integer "SEQ_NO", null: false
  end


  create_table "VENDOR_ATTR_CONTENT", force: :cascade do |t|
    t.bigint "VENDOR_ATTR_CONTENT_ID", null: false
    t.bigint "VENDOR_ID", null: false
    t.string "ATTR_CONTENT", limit: 500
    t.string "ATTR_CODE", limit: 50
  end


  create_table "VENDOR_BANK_ACC", force: :cascade do |t|
    t.bigint "VENDOR_BANK_ACC_ID", null: false
    t.bigint "VENDOR_ID"
    t.bigint "VENDOR_EMP_ID"
    t.bigint "REF_BANK_ID", null: false
    t.string "BANK_ACCOUNT_NO", limit: 250, null: false
    t.string "BANK_ACCOUNT_NAME", limit: 250, null: false
    t.boolean "IS_DEFAULT", null: false
    t.string "BANK_BRANCH", limit: 250
    t.string "NOTES", limit: 250
    t.boolean "IS_ACTIVE", default: false, null: false
  end


  create_table "VENDOR_CONTACT_PERSON", force: :cascade do |t|
    t.bigint "VENDOR_CONTACT_PERSON_ID", null: false
    t.bigint "VENDOR_ID"
    t.string "NAME", limit: 250, null: false
    t.string "MR_EMPLOYEE_POSITION", limit: 25, null: false
    t.string "PHONE_1", limit: 25, null: false
    t.string "PHONE_2", limit: 25
    t.string "EMAIL", limit: 50, null: false
    t.datetime "JOIN_DATE", null: false
    t.boolean "IS_OWNER", null: false
    t.string "ADDR", limit: 500
    t.string "ZIPCODE", limit: 25
    t.string "SUB_ZIPCODE", limit: 25
    t.string "PHN_AREA_1", limit: 10
    t.string "PHN_1", limit: 25
    t.string "PHN_EXT_1", limit: 5
    t.string "PHN_AREA_2", limit: 10
    t.string "PHN_2", limit: 25
    t.string "PHN_EXT_2", limit: 5
    t.string "AREA_CODE_1", limit: 50
    t.string "AREA_CODE_2", limit: 50
    t.string "AREA_CODE_3", limit: 50
    t.string "AREA_CODE_4", limit: 50
    t.string "CITY", limit: 50
    t.string "PROVINCE", limit: 50
  end


  create_table "VENDOR_EMP", force: :cascade do |t|
    t.bigint "VENDOR_EMP_ID", null: false
    t.string "VENDOR_EMP_NO", limit: 25
    t.string "VENDOR_EMP_NAME", limit: 250
    t.bigint "VENDOR_ID", null: false
    t.bigint "SUPERVISOR_ID"
    t.string "MOBILE_PHN_NO_1", limit: 25
    t.string "MOBILE_PHN_NO_2", limit: 25
    t.string "EMAIL", limit: 50
    t.string "MR_ID_TYPE_CODE", limit: 25
    t.string "ID_NO", limit: 25
    t.string "BIRTH_PLACE", limit: 50
    t.datetime "BIRTH_DATE"
    t.boolean "IS_ACTIVE", null: false
    t.datetime "JOIN_DT"
    t.string "TAX_ID_NO", limit: 25
    t.string "TAXPAYER_NO", limit: 50
    t.string "MR_VENDOR_EMP_POSITION_CODE", limit: 25
    t.boolean "IS_CONTACT_PERSON", null: false
    t.decimal "VENDOR_EMP_RATING", precision: 17, scale: 2
    t.boolean "IS_OWNER", null: false
    t.string "TAX_PAYER_NAME", limit: 250
    t.string "MR_TAX_CALC_METHOD_CODE", limit: 25
    t.string "MR_TAX_PGRSV_SCHENME_CODE", limit: 25
    t.string "MR_TAX_PGRSV_SCHEME_NAME", limit: 250
    t.boolean "IS_NPWP_EXIST", default: false, null: false
    t.boolean "IS_INTERNAL_EMPLOYEE"
  end


  create_table "VENDOR_GRADING_HIST", force: :cascade do |t|
    t.bigint "VENDOR_GRADING_HIST_ID", null: false
    t.string "VENDOR_GRADING_HIST_NO", limit: 50, null: false
    t.string "VENDOR_CODE", limit: 25, null: false
    t.bigint "VENDOR_ID", null: false
    t.bigint "VENDOR_PARENT_ID"
    t.decimal "PREV_RATING", precision: 17, scale: 2, null: false
    t.decimal "NEW_RATING", precision: 17, scale: 2, null: false
    t.string "PREV_GRADE", limit: 127
    t.string "NEW_GRADE", limit: 127, null: false
    t.datetime "REQ_DT", null: false
    t.string "REQ_BY_REF_USER_ID", limit: 50
    t.bigint "REF_REASON_ID"
    t.datetime "EXE_DT"
    t.datetime "APV_DT"
    t.string "STATUS", limit: 50, null: false
    t.string "NOTES", limit: 2000
    t.bigint "RFA_NO"
  end


  create_table "VENDOR_GRP", force: :cascade do |t|
    t.bigint "VENDOR_GRP_ID", null: false
    t.string "VENDOR_GRP_CODE", limit: 25
    t.string "VENDOR_GRP_NAME", limit: 250
    t.string "VENDOR_GRP_DESC", limit: 500
    t.string "MR_VENDOR_CATEGORY_CODE", limit: 25
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "VENDOR_GRP_MBR", force: :cascade do |t|
    t.bigint "VENDOR_GRP_MBR_ID", null: false
    t.bigint "VENDOR_GRP_ID", null: false
    t.bigint "VENDOR_ID", null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "VENDOR_OFFICE_MBR", force: :cascade do |t|
    t.bigint "VENDOR_OFFICE_MBR_ID", null: false
    t.bigint "VENDOR_ID", null: false
    t.bigint "REF_OFFICE_ID", null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "VENDOR_SCHM", force: :cascade do |t|
    t.bigint "VENDOR_SCHM_ID", null: false
    t.string "VENDOR_SCHM_CODE", limit: 25
    t.string "VENDOR_SCHM_NAME", limit: 250
    t.string "VENDOR_SCHM_DESC", limit: 500
    t.string "MR_VENDOR_CATEGORY_CODE", limit: 25
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "VENDOR_SCHM_MBR", force: :cascade do |t|
    t.bigint "VENDOR_SCHM_MBR_ID", null: false
    t.bigint "VENDOR_SCHM_ID", null: false
    t.bigint "VENDOR_ID", null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "VERF_QUESTION_ANSWER", force: :cascade do |t|
    t.bigint "VERF_QUESTION_ANSWER_ID", null: false
    t.bigint "REF_VERF_ANSWER_TYPE_ID", null: false
    t.string "VERF_QUESTION_CODE", limit: 25, null: false
    t.string "VERF_QUESTION_TEXT", limit: 500, null: false
    t.string "VERF_ANSWER", limit: 1000
    t.boolean "IS_ACTIVE", null: false
    t.boolean "IS_MANDATORY", default: false, null: false
  end


  create_table "VERF_QUESTION_GRP_D", force: :cascade do |t|
    t.bigint "VERF_QUESTION_GRP_D_ID", null: false
    t.bigint "VERF_QUESTION_GRP_H_ID", null: false
    t.bigint "VERF_QUESTION_ANSWER_ID", null: false
    t.integer "SEQ_NO", null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "VERF_QUESTION_GRP_H", force: :cascade do |t|
    t.bigint "VERF_QUESTION_GRP_H_ID", null: false
    t.string "VERF_QUESTION_GRP_CODE", limit: 25, null: false
    t.string "VERF_QUESTION_GRP_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "VERF_RESULT", force: :cascade do |t|
    t.bigint "VERF_RESULT_ID", null: false
    t.string "VERF_RESULT_NO", limit: 50, null: false
    t.string "TRX_REF_NO", limit: 50, null: false
    t.datetime "VERF_DT"
    t.string "EMP_NO", limit: 25, null: false
    t.string "MR_VERF_RESULT_STAT_CODE", limit: 25, null: false
    t.string "MR_VERF_TRX_TYPE_CODE", limit: 25, null: false
    t.string "LOB_CODE", limit: 25
    t.string "LOB_NAME", limit: 50
    t.string "NOTES", limit: 2000, null: false
  end


  create_table "VERF_RESULT_D", force: :cascade do |t|
    t.bigint "VERF_RESULT_D_ID", null: false
    t.bigint "VERF_RESULT_H_ID", null: false
    t.bigint "VERF_QUESTION_ANSWER_ID", null: false
    t.string "VERF_QUESTION_TEXT", limit: 500, null: false
    t.string "ANSWER", limit: 500, null: false
    t.string "NOTES", limit: 2000
    t.integer "SEQ_NO", null: false
    t.integer "SCORE", default: 0, null: false
    t.string "VERF_QUESTION_GROUP_CODE", limit: 500
  end


  create_table "VERF_RESULT_H", force: :cascade do |t|
    t.bigint "VERF_RESULT_H_ID", null: false
    t.bigint "VERF_RESULT_ID", null: false
    t.bigint "VERF_SCHEME_H_ID", null: false
    t.string "MR_VERF_OBJECT_CODE", limit: 25, null: false
    t.string "MR_VERF_SUBJECT_RELATION_CODE", limit: 25, null: false
    t.datetime "VERF_DT"
    t.string "MR_VERF_RESULT_H_STAT_CODE", limit: 25, null: false
    t.string "PHN", limit: 25, null: false
    t.string "PHN_TYPE", limit: 50, null: false
    t.string "NOTES", limit: 2000
    t.integer "VERSION", default: 0, null: false
    t.integer "SCORE", default: 0, null: false
    t.string "ADDR", limit: 500
    t.string "MR_ADDR_TYPE_CODE", limit: 25
    t.string "TRX_REF_NO", limit: 50
  end


  create_table "VERF_SCHEME_D", force: :cascade do |t|
    t.bigint "VERF_SCHEME_D_ID", null: false
    t.bigint "VERF_SCHEME_H_ID", null: false
    t.bigint "VERF_QUESTION_GRP_H_ID", null: false
    t.integer "SEQ_NO", null: false
  end


  create_table "VERF_SCHEME_H", force: :cascade do |t|
    t.bigint "VERF_SCHEME_H_ID", null: false
    t.string "VERF_SCHEME_CODE", limit: 25, null: false
    t.string "VERF_SCHEME_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
  end


  create_table "WORKING_HOUR_SCHM_D", force: :cascade do |t|
    t.bigint "WORKING_HOUR_SCHM_D_ID", null: false
    t.bigint "WORKING_HOUR_SCHM_H_ID", null: false
    t.string "WORKING_HOUR_SCHM_DAY", limit: 10, null: false
    t.string "WORKING_HOUR_FROM_1", limit: 10
    t.string "WORKING_HOUR_TO_1", limit: 10
    t.string "WORKING_HOUR_FROM_2", limit: 10
    t.string "WORKING_HOUR_TO_2", limit: 10
  end


  create_table "WORKING_HOUR_SCHM_H", force: :cascade do |t|
    t.bigint "WORKING_HOUR_SCHM_H_ID", null: false
    t.string "WORKING_HOUR_SCHM_CODE", limit: 25, null: false
    t.string "WORKING_HOUR_SCHM_NAME", limit: 50, null: false
    t.boolean "IS_ACTIVE", null: false
  end


  add_foreign_key "ASSET_ACCESSORY", "ASSET_TYPE", column: "ASSET_TYPE_ID", name: "FK_ASSET_ACCESSORY_ASSET_TYPE_ID_ASSET_TYPE"
  add_foreign_key "ASSET_ATTR", "ASSET_TYPE", column: "ASSET_TYPE_ID", name: "FK_ASSET_ATTR_ASSET_TYPE_ID_ASSET_TYPE"
  add_foreign_key "ASSET_ATTR", "REF_ATTR", column: "REF_ATTR_ID", name: "FK_ASSET_ATTR_REF_ATTR_ID_REF_ATTR"
  add_foreign_key "ASSET_CATEGORY", "ASSET_TYPE", column: "ASSET_TYPE_ID", name: "FK_ASSET_CATEGORY_ASSET_TYPE_ID_ASSET_TYPE"
  add_foreign_key "ASSET_DOC_LIST", "ASSET_TYPE", column: "ASSET_TYPE_ID", name: "FK_ASSET_DOC_LIST_ASSET_TYPE_ID_ASSET_TYPE"
  add_foreign_key "ASSET_DOC_LIST", "REF_ASSET_DOC", column: "REF_ASSET_DOC_ID", name: "FK_ASSET_DOC_LIST_REF_ASSET_DOC_ID_REF_ASSET_DOC"
  add_foreign_key "ASSET_MASTER", "ASSET_CATEGORY", column: "ASSET_CATEGORY_ID", name: "FK_ASSET_MASTER_ASSET_CATEGORY_ID_ASSET_CATEGORY"
  add_foreign_key "ASSET_MASTER", "ASSET_TYPE", column: "ASSET_TYPE_ID", name: "FK_ASSET_MASTER_ASSET_TYPE_ID_ASSET_TYPE"
  add_foreign_key "ASSET_MASTER", "ASSET_MASTER", column: "PARENT_ID", name: "FK_ASSET_MASTER_PARENT_ID_ASSET_MASTER"
  add_foreign_key "ASSET_MASTER_ATTR_CONTENT", "ASSET_ATTR", column: "ASSET_ATTR_ID", name: "FK_ASSET_MASTER_ATTR_CONTENT_ASSET_ATTR_ID_ASSET_ATTR"
  add_foreign_key "ASSET_MASTER_ATTR_CONTENT", "ASSET_MASTER", column: "ASSET_MASTER_ID", name: "FK_ASSET_MASTER_ATTR_CONTENT_ASSET_MASTER_ID_ASSET_MASTER"
  add_foreign_key "ASSET_NEGATIVE", "ASSET_MASTER", column: "ASSET_MASTER_ID", name: "FK_ASSET_NEGATIVE_ASSET_MASTER_ID_ASSET_MASTER"
  add_foreign_key "ASSET_NEGATIVE_HIST", "ASSET_NEGATIVE", column: "ASSET_NEGATIVE_ID", name: "FK_ASSET_NEGATIVE_HIST_ASSET_NEGATIVE_ID_ASSET_NEGATIVE"
  add_foreign_key "ASSET_SCHM_D", "ASSET_MASTER", column: "ASSET_MASTER_ID", name: "FK_ASSET_SCHM_D_ASSET_MASTER_ID_ASSET_MASTER"
  add_foreign_key "ASSET_SCHM_D", "ASSET_SCHM_H", column: "ASSET_SCHM_H_ID", name: "FK_ASSET_SCHM_D_ASSET_SCHM_H_ID_ASSET_SCHM_H"
  add_foreign_key "ASSET_SCHM_H", "ASSET_TYPE", column: "ASSET_TYPE_ID", name: "FK_ASSET_SCHM_H_ASSET_TYPE_ID_ASSET_TYPE"
  add_foreign_key "AUTH_API", "REF_API", column: "REF_API_ID", name: "FK_AUTH_API_REF_API_ID_REF_API"
  add_foreign_key "AUTH_API", "REF_FORM", column: "REF_FORM_ID", name: "FK_AUTH_API_REF_FORM_ID_REF_FORM"
  add_foreign_key "AUTH_FORM", "REF_FORM", column: "REF_FORM_ID", name: "FK_AUTH_FORM_REF_FORM_ID_REF_FORM"
  add_foreign_key "AUTH_FORM", "REF_ROLE", column: "REF_ROLE_ID", name: "FK_AUTH_FORM_REF_ROLE_ID_REF_ROLE"
  add_foreign_key "CENTER_GRP_OFFICE_MBR", "CENTER_GRP", column: "CENTER_GRP_ID", name: "FK_CENTER_GRP_OFFICE_MBR_CENTER_GRP_ID_CENTER_GRP"
  add_foreign_key "CENTER_GRP_OFFICE_MBR", "REF_OFFICE", column: "REF_OFFICE_ID", name: "FK_CENTER_GRP_OFFICE_MBR_REF_OFFICE_ID_REF_OFFICE"
  add_foreign_key "CUST_ADDR", "CUST", column: "CUST_ID", name: "FK_CUST_ADDR_CUST_ID_CUST"
  add_foreign_key "CUST_ADDR_ATTR_CONTENT", "CUST_ADDR", column: "CUST_ADDR_ID", name: "FK_CUST_ADDR_ATTR_CONTENT_CUST_ADDR_ID_CUST_ADDR"
  add_foreign_key "CUST_ADDR_ATTR_CONTENT", "REF_ATTR", column: "REF_ATTR_ID", name: "FK_CUST_ADDR_ATTR_CONTENT_REF_ATTR_ID_REF_ATTR"
  add_foreign_key "CUST_ADDR_ATTR_CONTENT_HIST", "CUST_ADDR", column: "CUST_ADDR_ID", name: "FK_CUST_ADDR_ATTR_CONTENT_HIST_CUST_ADDR_ID_CUST_ADDR"
  add_foreign_key "CUST_ADDR_ATTR_CONTENT_HIST", "REF_ATTR", column: "REF_ATTR_ID", name: "FK_CUST_ADDR_ATTR_CONTENT_HIST_REF_ATTR_ID_REF_ATTR"
  add_foreign_key "CUST_ADDR_HIST", "CUST_ADDR", column: "CUST_ADDR_ID", name: "FK_CUST_ADDR_HIST_CUST_ADDR_ID_CUST_ADDR"
  add_foreign_key "CUST_ADDR_HIST", "CUST", column: "CUST_ID", name: "FK_CUST_ADDR_HIST_CUST_ID_CUST"
  add_foreign_key "CUST_ASSET", "CUST
