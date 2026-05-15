# Auto-generated from SQL Server - Database: Data00Dev_Beta7
 
ActiveRecord::Schema[8.1].define(version: 20260515_000000) do
 
  create_table "_versiondb", force: :cascade do |t|
    t.date "daterestored", null: false
    t.time "timerestored"
  end
 
  create_table "a_temp", force: :cascade do |t|
    t.float "contract", null: false
    t.string "nama", limit: 127
    t.float "angsuran"
    t.string "f4", limit: 127
    t.datetime "f5"
  end
 
  create_table "abakaupload", force: :cascade do |t|
    t.string "uploaddata", limit: 8000
    t.string "createby", limit: 100
    t.datetime "createdate"
    t.string "json_receipt"
  end
 
  create_table "acarespond", force: :cascade do |t|
    t.string "idupload", limit: 11, null: false
    t.string "policyno", limit: 40
    t.string "policyurl", limit: 100
    t.string "agreementno", limit: 9
    t.string "voucherno", limit: 50
    t.string "httpcode", limit: 5
    t.string "returncode", limit: 50
    t.string "returnmsg", limit: 250
    t.string "packetvalue", limit: 5000
    t.datetime "createdate"
  end
 
  create_table "acaucmd", force: :cascade do |t|
    t.string "trcode", limit: 1, null: false
    t.string "coacode", limit: 5, null: false
    t.string "command", limit: 150
  end
 
  create_table "acaucoa", force: :cascade do |t|
    t.string "trcode", limit: 1, null: false
    t.string "coacode", limit: 5, null: false
    t.string "dbcr", limit: 0, null: false
    t.string "othercode", limit: 3
    t.index ["coacode", "dbcr", "trcode", "othercode"], name: "ACAUCOA_NC2"
    t.index ["id_coa", "trcode", "coacode", "othercode"], name: "IX_ACAUCOA_NC1"
  end
 
  create_table "acaupload", force: :cascade do |t|
    t.string "idupload", limit: 11, null: false
    t.string "lease_no", limit: 9
    t.string "createby", limit: 4, null: false
    t.datetime "createdate"
    t.string "packetvalue", limit: 8000
  end
 
  create_table "acautr", force: :cascade do |t|
    t.string "scode", limit: 1, null: false
    t.string "trcode", limit: 1, null: false
    t.string "trdesc", limit: 50
  end
 
  create_table "acbankcf", force: :cascade do |t|
    t.string "cf_code", limit: 1, null: false
    t.string "cf_desc", limit: 200
  end
 
  create_table "acbentr", force: :cascade do |t|
    t.string "trcode", limit: 1, null: false
    t.string "voucher", limit: 5, null: false
    t.string "sd_no", limit: 15
    t.string "paidby", limit: 4
    t.string "beneficiary", limit: 100
    t.string "curr_code", limit: 1
    t.decimal "remitamt"
    t.string "bg_no", limit: 10
    t.string "ben_acc", limit: 30
    t.string "ben_bank", limit: 7
    t.string "branch", limit: 50
    t.string "remarks", limit: 50
    t.string "message", limit: 37
    t.string "item_cat", limit: 1
    t.string "code", limit: 1
    t.string "mlcibank", limit: 1
    t.string "bdv", limit: 5
    t.datetime "cleardate"
    t.decimal "famount"
    t.integer "flag"
    t.boolean "rtgs"
    t.integer "beneficiary_type"
    t.integer "resident_status"
    t.index ["trcode", "voucher", "sd_no"], name: "IX_ACBENTR"
    t.index ["trcode", "voucher", "remitamt", "bdv", "cleardate", "paidby"], name: "IX_ACBENTR_BDV_Cleardate_PAIDBY"
  end
 
  create_table "acdetail", force: :cascade do |t|
    t.string "trcode", limit: 1, null: false
    t.string "voucher", limit: 5, null: false
    t.string "coacode", limit: 5, null: false
    t.decimal "amount"
    t.string "remark", limit: 300
    t.string "lease_no", limit: 9
    t.string "branch_cd", limit: 1
    t.index ["trcode", "voucher", "lease_no", "coacode", "amount"], name: "ACDETAIL_IXNC_3"
    t.index ["voucher"], name: "ACDETAIL_VOUCHER"
    t.index ["trcode", "voucher", "coacode", "lease_no", "amount"], name: "IX_ACDETAIL_AMOUNT"
    t.index ["coacode", "amount", "trcode", "voucher"], name: "IX_ACDETAIL_TRCODE"
  end
 
  create_table "acinsdtl", force: :cascade do |t|
    t.string "lease_no", limit: 4
    t.string "trcode", limit: 1, null: false
    t.string "voucher", limit: 5, null: false
    t.decimal "nominal"
    t.integer "period"
    t.string "status", limit: 0
    t.string "rej_reason", limit: 2
    t.decimal "rental"
    t.decimal "penalty"
    t.decimal "advance"
    t.decimal "other_income"
    t.string "girono", limit: 6
    t.datetime "girodt"
    t.string "mlcibank", limit: 5
    t.string "bank", limit: 10
    t.string "reject_code", limit: 5
    t.string "girotype", limit: 1
    t.decimal "adv_over"
    t.datetime "recv_date_ap"
    t.string "flagdel", limit: 1
    t.string "channel_type", limit: 20
    t.date "trans_date"
    t.index ["trcode", "voucher", "lease_no", "period", "girono"], name: "IX_ACINSDTL"
  end
 
  create_table "acmetrans", force: :cascade do |t|
    t.string "trans_cd", limit: 3, null: false
    t.string "trans_nm", limit: 100
  end
 
  create_table "acmkwtype", force: :cascade do |t|
    t.string "kwitansi_type", limit: 2, null: false
    t.string "kwitansi_desc", limit: 50
  end
 
  create_table "acml_tax", force: :cascade do |t|
    t.string "pph_id", limit: 10, null: false
    t.string "coacode", limit: 5, null: false
  end
 
  create_table "acmlbank", force: :cascade do |t|
    t.string "mlcibank", limit: 1, null: false
    t.string "branch_cd", limit: 1
    t.string "bank_code", limit: 7, null: false
    t.string "curr_code", limit: 1, null: false
    t.string "coacode", limit: 5
    t.string "rek_no", limit: 50
    t.string "bank_branch", limit: 50
  end
 
  create_table "acmlbank_va", force: :cascade do |t|
    t.string "bank_name", limit: 50
    t.string "branch_cd", limit: 1
    t.string "bank_code", limit: 7
    t.string "curr_code", limit: 1
    t.string "acc_no", limit: 50
    t.string "acc_name", limit: 50
  end
 
  create_table "acmoffac", force: :cascade do |t|
    t.string "item_cat", limit: 1, null: false
    t.string "code", limit: 1, null: false
    t.string "branch_cd", limit: 1, null: false
    t.string "type", limit: 1, null: false
    t.string "pno", limit: 15, null: false
    t.string "user", limit: 15, null: false
    t.string "fiscal", limit: 0, null: false
    t.string "remark", limit: 255
    t.boolean "userbranch"
    t.string "brand", limit: 50
    t.string "desc", limit: 50
    t.datetime "stnk_valid"
    t.decimal "budget"
    t.index ["item_cat", "code", "type", "branch_cd"], name: "IX_ACMOFFAC"
  end
 
  create_table "acmprepaid", force: :cascade do |t|
    t.string "branch_cd", limit: 1, null: false
    t.string "item_cat", limit: 1, null: false
    t.string "code", limit: 4, null: false
    t.string "desc", limit: 200
    t.datetime "paydate"
    t.datetime "begdate"
    t.datetime "enddate"
    t.integer "term"
    t.decimal "initpay"
    t.string "flgdel", limit: 0
    t.decimal "amorexp"
    t.decimal "amoracc"
    t.decimal "cval"
    t.datetime "wdate"
    t.string "period", limit: 3
    t.string "voucher", limit: 5
    t.string "name", limit: 50
    t.string "amorstart", limit: 6
  end
 
  create_table "acmrdetail", force: :cascade do |t|
    t.string "rtypecd", limit: 1, null: false
    t.string "rdetailcd", limit: 2, null: false
    t.string "rdetaildesc", limit: 100, null: false
    t.integer "rform"
  end
 
  create_table "acmrsubdtl", force: :cascade do |t|
    t.string "rtypecd", limit: 1, null: false
    t.string "rdetailcd", limit: 2, null: false
    t.string "coacode", limit: 10
    t.string "rsubdtlcd", limit: 2
    t.string "rsubdtldesc", limit: 50
    t.string "ritemcat", limit: 1
  end
 
  create_table "acmrtaxlist", force: :cascade do |t|
    t.string "taxcd", limit: 5, null: false
    t.string "taxsubject", limit: 100, null: false
    t.float "taxrate"
    t.string "coacode", limit: 4
    t.string "honorer_id", limit: 2
    t.string "ebukpot_cd", limit: 10
  end
 
  create_table "acmrtype", force: :cascade do |t|
    t.string "rtypecd", limit: 1, null: false
    t.string "rtypedesc", limit: 50, null: false
  end
 
  create_table "acpreamor_new", force: :cascade do |t|
    t.string "acc", limit: 1, null: false
    t.datetime "period", null: false
    t.string "lease_no", limit: 9
    t.string "sales_no", limit: 7
    t.decimal "begbal"
    t.decimal "additional"
    t.decimal "accrual1"
    t.decimal "accrual2"
    t.decimal "amortitation"
    t.decimal "et_fc"
    t.decimal "endbal"
    t.string "branch_cd", limit: 1
    t.string "sd_type", limit: 1
    t.index ["period", "sales_no", "begbal", "additional", "accrual1", "accrual2", "et_fc", "endbal", "branch_cd", "sd_type", "acc", "lease_no"], name: "idx_test"
    t.index ["no", "acc", "period", "sales_no", "begbal", "additional", "accrual1", "accrual2", "amortitation", "et_fc", "endbal", "lease_no"], name: "IX_ACPREAMOR_NEW_Lease_no_NC2"
  end
 
  create_table "acpreamor_psak", force: :cascade do |t|
    t.string "acc", limit: 1
    t.datetime "period"
    t.string "lease_no", limit: 9
    t.string "sales_no", limit: 25
    t.decimal "begbal"
    t.decimal "additional"
    t.decimal "accrual1"
    t.decimal "accrual2"
    t.decimal "amortitation"
    t.decimal "et_fc"
    t.decimal "endbal"
    t.string "branch_cd", limit: 1
    t.string "sd_type", limit: 10
    t.index ["begbal", "additional", "amortitation", "et_fc", "lease_no", "period"], name: "Acpreamor_PSAK_IX1"
    t.index ["no", "period", "lease_no", "acc"], name: "ACPREAMOR_PSAK_NC7"
    t.index ["lease_no", "begbal", "additional", "amortitation", "et_fc", "branch_cd", "period"], name: "IX_ACPREAMOR_PSAK_NC2"
    t.index ["lease_no", "begbal", "additional", "amortitation", "et_fc", "period"], name: "IX_ACPREAMORPSAK_PERIOD"
  end
 
  create_table "acrtemp", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.datetime "period", null: false
    t.float "ending_ui"
    t.decimal "beginning_ui"
    t.decimal "rescheduling_ui"
    t.decimal "et_ui"
    t.string "branch_cd", limit: 1
    t.index ["lease_no", "ending_ui", "period"], name: "NC1_ACRTEMP"
  end
 
  create_table "actrans", force: :cascade do |t|
    t.string "trcode", limit: 1, null: false
    t.string "voucher", limit: 5, null: false
    t.string "scode", limit: 1, null: false
    t.string "lease_no", limit: 10
    t.date "voucdate", null: false
    t.string "mlcibank", limit: 1
    t.string "cons_leas", limit: 0
    t.datetime "girodt"
    t.string "voucdesc", limit: 300
    t.string "paidby", limit: 50
    t.string "branch", limit: 1
    t.boolean "upd_stat"
    t.string "cp_no", limit: 50
    t.datetime "posted_dt"
    t.string "paidby_et", limit: 20
    t.string "ettype_et", limit: 10
    t.string "crossno_et", limit: 15
    t.string "createby", limit: 4
    t.datetime "createdate"
    t.string "postedby", limit: 4
    t.string "review_by", limit: 4
    t.datetime "review_date"
    t.string "type_drawdown", limit: 10
    t.boolean "isauction"
    t.index ["trcode", "voucher", "scode", "lease_no", "mlcibank", "cons_leas", "girodt", "voucdesc", "paidby", "branch", "upd_stat", "cp_no", "posted_dt", "paidby_et", "ettype_et", "crossno_et", "voucdate"], name: "ACTRANS_NC2"
    t.index ["lease_no"], name: "ACTRANS_NC3"
    t.index ["voucher"], name: "IX_ACTRANS_VOUCHER"
    t.index ["scode", "lease_no", "mlcibank", "cons_leas", "girodt", "voucdesc", "paidby", "branch", "upd_stat", "cp_no", "paidby_et", "ettype_et", "crossno_et", "createby", "createdate", "postedby", "review_by", "review_date", "posted_dt", "voucdate"], name: "NC_ACTRANS_1"
    t.index ["trcode", "voucher", "scode", "voucdate", "voucdesc", "createby", "branch", "review_by", "createdate"], name: "NC2_ACTRANS"
  end
 
  create_table "additional_collateral", force: :cascade do |t|
    t.string "coll_id", limit: 10, null: false
    t.string "type_cd", limit: 2
    t.string "brand", limit: 3
    t.string "type", limit: 5
    t.string "model", limit: 2
    t.string "tahun", limit: 4
    t.string "chasis", limit: 25
    t.string "engine", limit: 25
    t.string "colour", limit: 50
    t.string "condition", limit: 5
    t.string "policeno", limit: 100
    t.string "bpkb_no", limit: 20
    t.string "bpkb_an_tp", limit: 2
    t.string "bpkb_an", limit: 200
    t.string "bpkb_addr", limit: 250
    t.string "city_bpkb", limit: 50
    t.datetime "receive"
    t.datetime "issued"
    t.string "forma", limit: 60
    t.decimal "priceotr"
    t.string "ins_pol", limit: 50
    t.string "park_loc", limit: 250
    t.string "city_park", limit: 50
    t.string "bpkb_an_fam", limit: 11
    t.string "karoseri", limit: 2
    t.string "bpkb_area_cd", limit: 4
    t.boolean "off_road"
    t.string "faktur_no", limit: 100
    t.string "sertifikat_no", limit: 100
    t.string "surety_bond", limit: 100
    t.date "stnk_dt"
    t.string "create_by", limit: 4
    t.datetime "create_dt"
    t.datetime "receive_ca"
    t.datetime "receive_ca2"
    t.string "notes", limit: 250
    t.datetime "expired_dt"
    t.datetime "dateblokir"
    t.datetime "datecheck"
  end
 
  create_table "app_acclvl", force: :cascade do |t|
    t.string "recstatus", limit: 1, null: false
    t.string "accesslevel", limit: 20, null: false
    t.integer "accessrank", null: false
    t.string "accessname", limit: 25, null: false
    t.string "description", limit: 100
    t.datetime "modified", null: false
    t.string "modifier", limit: 50, null: false
    t.string "created", null: false
  end
 
  create_table "app_cammnacc", force: :cascade do |t|
    t.string "accesscam", limit: 20, null: false
    t.string "menu_id", limit: 25
    t.string "userright", limit: 1
    t.index ["accesscam"], name: "NC_APP_CAMMNACC"
  end
 
  create_table "app_cammnlst", force: :cascade do |t|
    t.string "menu_id", limit: 25, null: false
    t.string "menu_desc", limit: 100
    t.string "menu_parent", limit: 25
    t.string "url", limit: 100
    t.integer "seq"
    t.index ["menu_parent"], name: "NC_APP_CAMMNLST"
  end
 
  create_table "app_camtabacc", force: :cascade do |t|
    t.string "accesscam", limit: 20, null: false
  end
 
  create_table "app_colmnacc", force: :cascade do |t|
    t.string "accesscol", limit: 20
    t.string "nomenu", limit: 50
    t.string "userright", limit: 1
  end
 
  create_table "app_colmnlst", force: :cascade do |t|
    t.string "nomenu", limit: 50, null: false
    t.string "parentmenu", limit: 50, null: false
    t.string "menuname", limit: 100, null: false
    t.integer "menulevel", null: false
    t.string "url", limit: 50, null: false
    t.datetime "create_dt", null: false
    t.string "created_by", limit: 50, null: false
  end
 
  create_table "app_colmnlvl", force: :cascade do |t|
    t.string "employee_id", limit: 15, null: false
    t.boolean "addedd"
    t.boolean "edit"
    t.boolean "deleted"
    t.boolean "approve"
    t.boolean "ojk_maker"
  end
 
  create_table "app_lgnlog", force: :cascade do |t|
    t.datetime "logtime", null: false
    t.string "username", limit: 50, null: false
    t.string "wsname", limit: 50
    t.string "wsbranch", limit: 50
    t.string "logtype", limit: 20
    t.string "description", limit: 500
    t.string "branchcode", limit: 1
    t.index ["logtime", "username", "branchcode"], name: "IX_APP_LGNLOG"
    t.index ["line", "logtime", "logtype", "username"], name: "IX_APP_LGNLOG_NC1"
  end
 
  create_table "app_mnacc", force: :cascade do |t|
    t.string "recstatus", limit: 1, null: false
    t.string "accesslevel", limit: 20, null: false
    t.string "menucode", limit: 15, null: false
    t.string "menugroupcode", limit: 10
    t.integer "userright", null: false
    t.datetime "modified", null: false
    t.string "modifier", limit: 50, null: false
    t.string "created", null: false
    t.index ["accesslevel", "menucode", "menugroupcode"], name: "IX_APP_MNACC_ACCESSLEVEL"
  end
 
  create_table "app_mnaccfunding", force: :cascade do |t|
    t.string "menucode", limit: 10, null: false
    t.string "menuadd", limit: 1
    t.string "menuedit", limit: 1
    t.string "menudelete", limit: 1
    t.string "menuprint", limit: 1
    t.string "groupid", limit: 20, null: false
  end
 
  create_table "app_mngrp", force: :cascade do |t|
    t.string "recstatus", limit: 1, null: false
    t.string "groupcode", limit: 10, null: false
    t.string "groupname", limit: 100, null: false
    t.integer "groupsequence", null: false
    t.integer "actiontype", null: false
    t.string "action", limit: 100
    t.string "iconpath", limit: 100
    t.integer "tabposition", null: false
    t.string "description", limit: 100
    t.datetime "modified", null: false
    t.string "modifier", limit: 50, null: false
    t.string "created", null: false
  end
 
  create_table "app_mnlst", force: :cascade do |t|
    t.string "recstatus", limit: 1, null: false
    t.string "menucode", limit: 15, null: false
    t.string "menugroupcode", limit: 10, null: false
    t.string "parentmenucode", limit: 15
    t.integer "menulevel", null: false
    t.string "menuname", limit: 150, null: false
    t.integer "menusequence", null: false
    t.integer "actiontype", null: false
    t.string "action", limit: 100
    t.string "module", limit: 100
    t.string "description", limit: 100
    t.datetime "modified", null: false
    t.string "modifier", limit: 10, null: false
    t.string "created", null: false
  end
 
  create_table "app_mnlstfunding", force: :cascade do |t|
    t.string "menucode", limit: 10, null: false
    t.string "menuparent", limit: 10, null: false
    t.string "menuname", limit: 50, null: false
    t.string "menuaction", limit: 30
    t.integer "lvl", null: false
  end
 
  create_table "app_usrmst", force: :cascade do |t|
    t.string "recstatus", limit: 1, null: false
    t.string "username", limit: 50, null: false
    t.string "employee_id", limit: 15
    t.string "accesslevel", limit: 20, null: false
    t.string "branchcode", limit: 1, null: false
    t.string "fullname", limit: 100
    t.datetime "lastlogin"
    t.datetime "lastlogout"
    t.datetime "created"
    t.datetime "modified"
    t.string "modifier", limit: 50
    t.string "passworduser", limit: 150
    t.string "groupuser", limit: 30
    t.datetime "expired_date"
    t.string "accesscam", limit: 20
    t.string "superior", limit: 15
    t.string "et_code", limit: 1
    t.boolean "isdeleted", default: false, null: false
    t.string "lastloginip", limit: 50
    t.string "accesscol", limit: 20
    t.datetime "resign_date"
    t.index ["fullname", "employee_id", "branchcode"], name: "IX_APP_USRMST_EMPLOYEE_ID_BRANCHCODE"
    t.index ["username", "accesscam"], name: "IX_APP_USRMST_NC1"
    t.index ["username", "employee_id"], name: "NCI_APP_USRMST_1"
  end
 
  create_table "app_usrmstfunding", force: :cascade do |t|
    t.string "employee_id", limit: 15, null: false
    t.string "groupid", limit: 20
  end
 
  create_table "app_voipacc", force: :cascade do |t|
    t.string "employee_id", limit: 15, null: false
    t.string "username", limit: 50
    t.string "accesslevel", limit: 20
    t.string "branchcode", limit: 1
  end
 
  create_table "appointmentclaiminsudtl", force: :cascade do |t|
    t.integer "id_claim", null: false
    t.string "lease_no", limit: 9, null: false
    t.datetime "create_date", null: false
    t.string "create_by", limit: 4, null: false
  end
 
  create_table "appointmentclaiminsurance", force: :cascade do |t|
    t.integer "id_claim", null: false
    t.integer "seq_id_claim"
    t.date "claim_date", null: false
    t.string "lessee_no", limit: 6, null: false
    t.string "pic_name", limit: 100
    t.string "phone_no", limit: 30
    t.string "relation", limit: 100
    t.datetime "lastupd_date"
    t.string "lastupd_by", limit: 4
    t.datetime "create_date", null: false
    t.string "create_by", limit: 4, null: false
  end
 
  create_table "ar_et", force: :cascade do |t|
    t.string "memo_no", limit: 13, null: false
    t.datetime "et_date"
    t.decimal "book_value"
    t.decimal "et_amount"
    t.decimal "et_payment"
    t.decimal "excess_or_less"
    t.decimal "installment"
    t.decimal "ui_interest"
    t.decimal "current_interest"
    t.decimal "termination_amount"
    t.string "paid_by", limit: 1
    t.string "notes", limit: 2000
    t.bigint "loan_id"
    t.string "employee_id", limit: 4
    t.integer "et_term"
  end
 
  create_table "arc_archivelog", force: :cascade do |t|
    t.string "dbname", limit: 20
    t.string "tablename", limit: 50
    t.string "description", limit: 1000
    t.datetime "operationdate"
  end
 
  create_table "arc_leasenoapplno", force: :cascade do |t|
    t.string "appl_no", limit: 11
    t.string "lease_no", limit: 9
    t.string "apless", limit: 6
    t.string "lessee_no", limit: 6
    t.date "etfinish_date", null: false
    t.integer "yeararchieve"
  end
 
  create_table "arc_processlog", force: :cascade do |t|
    t.string "dbname", limit: 20
    t.string "tablename", limit: 50
    t.string "description", limit: 1000
    t.datetime "operationdate"
    t.integer "yeararchieve"
  end
 
  create_table "aremployee", force: :cascade do |t|
    t.string "employee_id", limit: 15, null: false
    t.string "loan_type", limit: 2
    t.integer "term"
    t.float "int_rate"
    t.decimal "installment"
    t.decimal "net_finance"
    t.datetime "start_pay"
    t.string "desc", limit: 250
    t.datetime "disb_date"
    t.float "npv_rate"
    t.datetime "et_date"
    t.string "routine_cd", limit: 14
  end
 
  create_table "arpay", force: :cascade do |t|
    t.integer "loan_id", null: false
    t.integer "period", null: false
    t.string "employee_id", limit: 15
    t.string "loan_type", limit: 2
    t.datetime "date"
    t.decimal "installment"
    t.decimal "int_income"
    t.decimal "outs_rec"
    t.decimal "outs_int"
    t.decimal "out_princ"
    t.decimal "fair_value"
    t.integer "remain_term"
    t.decimal "irr", precision: 8, scale: 4
    t.decimal "accrual1"
    t.decimal "accrual2"
    t.decimal "recovery"
  end
 
  create_table "articletaxcode", force: :cascade do |t|
    t.string "article_id", limit: 20
    t.string "descriptionarticle", limit: 1000
    t.string "coa_code", limit: 10
    t.string "pph_id", limit: 1
    t.string "notes", limit: 200
  end
 
  create_table "articletaxdetail", force: :cascade do |t|
    t.string "article_id", limit: 20
    t.string "coa_code", limit: 20
    t.decimal "taxbase"
    t.decimal "taxcarge"
    t.string "create_by", limit: 4
    t.datetime "createdate"
    t.string "update_by", limit: 4
    t.datetime "updatedate"
    t.string "pph_id", limit: 1
    t.date "taxperiod"
    t.date "taxdate"
    t.string "taxcity", limit: 20
    t.string "taxnote", limit: 5000
    t.decimal "compensationbase"
    t.decimal "compensationcharge"
    t.string "descriptionarticle", limit: 200
    t.string "memoid", limit: 11
  end
 
  create_table "assessment_appr", force: :cascade do |t|
    t.string "assessment_sts", limit: 4
    t.string "lease_no", limit: 9
    t.string "employee_id", limit: 5
    t.string "assessment_no", limit: 100
    t.string "appr_sts", limit: 2
    t.string "appr_name", limit: 50
    t.string "next_appr", limit: 50
    t.datetime "appr_date"
    t.string "remark", limit: 300
  end
 
  create_table "assessment_data", force: :cascade do |t|
    t.string "assessment_no", limit: 50, null: false
    t.string "assessment_step", limit: 2
    t.string "lease_no", limit: 9
    t.string "lessee_no", limit: 6
    t.string "branch_cd", limit: 1
    t.string "lessee_nm", limit: 100
    t.datetime "create_dt"
    t.string "cmo", limit: 15
    t.string "notes1", limit: 1000
    t.string "notes2", limit: 1000
    t.string "notes3", limit: 1000
    t.string "notes4", limit: 1000
    t.string "notes5", limit: 1000
    t.string "notes6", limit: 1000
    t.string "notes7", limit: 1000
    t.string "notes8", limit: 1000
    t.string "notes9", limit: 1000
    t.string "notes10", limit: 1000
  end
 
  create_table "auction", force: :cascade do |t|
    t.string "auctionno", limit: 8, null: false
    t.date "auctiondate", null: false
    t.string "auctionname", limit: 7, null: false
    t.string "createby", limit: 4, null: false
    t.datetime "create_date", default: "getdate", null: false
  end
 
  create_table "auction_detail", force: :cascade do |t|
    t.string "auctionno", limit: 8, null: false
    t.string "worksheetno", limit: 11, null: false
    t.string "branchcd", limit: 2, null: false
    t.string "auctiontype", limit: 2, null: false
    t.string "policeno", limit: 50, null: false
    t.string "leasefix_no", limit: 9, null: false
    t.decimal "dealprice"
    t.decimal "auctionfee"
    t.decimal "vatauctionfee"
    t.decimal "totalinvoice"
    t.decimal "mobexp"
    t.decimal "vatmobexp"
    t.decimal "totalmobexp"
    t.decimal "totalfee"
    t.decimal "pph23"
    t.decimal "bealelang"
    t.decimal "auctionpaid"
    t.decimal "vatselling"
    t.decimal "recoverymlci"
    t.string "createby", limit: 4, null: false
    t.datetime "create_date", default: "getdate", null: false
    t.string "buyername", limit: 100
    t.string "coaothers", limit: 10
    t.decimal "otherreceive"
    t.string "voucher_br", limit: 11
    t.string "trcode_br", limit: 3
    t.float "persentasefeeauction"
    t.float "persentase_ppn_selling"
  end
 
  create_table "balancesheet", force: :cascade do |t|
    t.string "coacode", limit: 10, null: false
    t.string "coadesc", limit: 100, null: false
    t.string "period", limit: 7, null: false
    t.decimal "amount"
  end
 
  create_table "balancesheetdetail", force: :cascade do |t|
    t.string "coacode", limit: 10, null: false
    t.string "period", limit: 7, null: false
    t.integer "year", null: false
    t.decimal "amount"
  end
 
  create_table "balancesheetincome", force: :cascade do |t|
    t.string "coacode", limit: 10, null: false
    t.string "period", limit: 7, null: false
    t.decimal "amount"
  end
 
  create_table "balancesheetschdl", force: :cascade do |t|
    t.string "coacode", limit: 10, null: false
    t.string "period", limit: 7, null: false
    t.string "cont_year", limit: 4, null: false
    t.string "branch_cd", limit: 1
    t.decimal "amount"
    t.index ["coacode", "period", "branch_cd"], name: "IX_BalanceSheetSchdl"
  end
 
  create_table "bbank_adequate", force: :cascade do |t|
    t.string "mlci_bank", limit: 1
    t.date "bankdate"
    t.decimal "reservefund"
    t.decimal "returnfund"
    t.decimal "incoming_nye"
    t.decimal "incoming_oct"
    t.decimal "adddisburse"
    t.decimal "bankcharge"
    t.decimal "adequatebankbalance"
  end
 
  create_table "bbbank", force: :cascade do |t|
    t.string "cd_voucher", limit: 5, null: false
    t.string "trcode", limit: 1, null: false
    t.string "mlcibank", limit: 1, null: false
    t.datetime "transc_date", null: false
    t.decimal "bank_amount"
    t.string "remark", limit: 225
    t.index ["cd_voucher", "trcode", "mlcibank"], name: "IX_BBBANK"
    t.index ["cd_voucher", "trcode", "bank_amount", "remark", "mlcibank", "transc_date"], name: "NC1_BBBANK"
  end
 
  create_table "bbbank_balance", force: :cascade do |t|
    t.string "mlcibank", limit: 1, null: false
    t.datetime "bank_date", null: false
    t.decimal "balance_amt", null: false
  end
 
  create_table "bbbank_statement", force: :cascade do |t|
    t.string "mlcibank", limit: 1, null: false
    t.datetime "bank_date", null: false
    t.decimal "balance"
    t.decimal "outstanding_bg"
    t.decimal "giro_effective"
    t.decimal "giro_clearing"
    t.decimal "giro_rejected"
    t.decimal "amount"
    t.decimal "other"
  end
 
  create_table "bbn", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "bbnvia", limit: 100
    t.string "paidby", limit: 50
    t.string "serviceagencynm", limit: 100
    t.decimal "bbnloan"
    t.decimal "bbn_fee"
    t.decimal "serviceagencyfee"
    t.decimal "nettserviceagencyfee"
  end
 
  create_table "bbnletter", force: :cascade do |t|
    t.string "sk_no", limit: 30, null: false
    t.string "sk_code", limit: 10
    t.string "purpose", limit: 35
    t.string "lease_no", limit: 9
    t.string "branch_cd", limit: 1, null: false
    t.datetime "date"
    t.string "checklistdoc", limit: 15
  end
 
  create_table "bca_auto_collect", force: :cascade do |t|
    t.integer "bca_id", null: false
    t.string "lease_no", limit: 9
    t.string "acc_no", limit: 20
    t.string "acc_name", limit: 100
    t.string "bank_branch", limit: 100
    t.integer "beneficiarytype"
    t.integer "residentstatus"
    t.boolean "changepayment", default: false
    t.string "create_by", limit: 4
    t.datetime "create_dt"
    t.string "review_by", limit: 4
    t.datetime "review_dt"
    t.boolean "iscustomer", default: false, null: false
    t.string "au_phone", limit: 20
    t.string "bank_type", limit: 2
    t.boolean "isonline"
    t.boolean "isactive_skpr"
    t.string "fa_modified_by", limit: 4
    t.datetime "fa_modified_dt"
    t.integer "memo_no"
    t.boolean "isused", default: false, null: false
    t.string "mlci_corporate_cd", limit: 8
  end
 
  create_table "bca_auto_collect_doc", force: :cascade do |t|
    t.integer "bca_id"
    t.string "filename", limit: 200
    t.string "file_ext", limit: 10
    t.string "updated_by", limit: 4
    t.datetime "updated_dt"
    t.string "created_by", limit: 4
    t.datetime "created_dt"
  end
 
  create_table "bca_auto_collect_reg", force: :cascade do |t|
    t.integer "bca_id"
    t.datetime "upload_dt", null: false
    t.string "reg_type", limit: 10, null: false
    t.boolean "issuccess", null: false
    t.string "errordescription", limit: 250
    t.datetime "created_dt", default: "getdate"
    t.string "created_by", limit: 4, null: false
    t.string "request_id", limit: 100
    t.string "respond", limit: 100
  end
 
  create_table "bca_autocollect_draft", force: :cascade do |t|
    t.integer "totaldata"
    t.date "duedate"
    t.datetime "createddate", null: false
  end
 
  create_table "bca_autocollect_log", force: :cascade do |t|
    t.string "transactionid", limit: 50
    t.string "jsonrequest", limit: 8000
    t.string "jsonrespond", limit: 8000
    t.datetime "createddate", null: false
  end
 
  create_table "bca_autocollect_request", force: :cascade do |t|
    t.string "transactionid", limit: 50
    t.string "jsonrequest", limit: 8000
    t.string "lease_no", limit: 9, null: false
    t.date "duedate", null: false
    t.datetime "createddate", null: false
    t.integer "batch", null: false
  end
 
  create_table "bca_autocollect_respond", force: :cascade do |t|
    t.string "transactionid", limit: 50
    t.string "jsonrespond", limit: 8000
    t.string "lease_no", limit: 9, null: false
    t.datetime "createddate", null: false
    t.integer "batch", null: false
  end
 
  create_table "bca_autocollect_result", force: :cascade do |t|
    t.string "transactionid", limit: 50, null: false
    t.string "referenceid", limit: 50
    t.string "leaseno", limit: 9
    t.decimal "nominal", precision: 15, scale: 0
    t.string "debitedaccount", limit: 50
    t.string "creditedaccount", limit: 50
    t.string "status", limit: 25
    t.string "errorcode", limit: 15
    t.string "errormessage", limit: 150
    t.date "duedate"
    t.datetime "createddate", null: false
  end
 
  create_table "bca_autodebitbranch", force: :cascade do |t|
    t.string "branch_cd", limit: 1, null: false
    t.string "no_rek_va", limit: 10, null: false
    t.string "mlci_corporate_cd", limit: 8, null: false
    t.boolean "isactive"
    t.datetime "create_date", default: "getdate"
  end
 
  create_table "bca_skpr_credential", force: :cascade do |t|
    t.string "branch_cd", limit: 2, null: false
    t.string "company_code", limit: 100, null: false
  end
 
  create_table "bca_skpr_revoke_json", force: :cascade do |t|
    t.string "customernumber", limit: 9, null: false
    t.string "accountnumber", limit: 50, null: false
    t.string "requestmlci", limit: 1000
    t.string "responbca", limit: 1000
    t.string "statusrespon", limit: 100
    t.datetime "created_dt", default: "getdate"
  end
 
  create_table "bca_skpr_status", force: :cascade do |t|
    t.string "requestid", limit: 100, null: false
    t.string "lease_no", limit: 9, null: false
    t.boolean "issuccess", null: false
    t.string "db_account_no", limit: 100, null: false
    t.datetime "created_dt", default: "getdate"
    t.string "typereg", limit: 3
  end
 
  create_table "bca_skpr_status_json", force: :cascade do |t|
    t.string "requestid", limit: 100, null: false
    t.string "lease_no", limit: 9, null: false
    t.string "requestbca", limit: 1000
    t.string "responmlci", limit: 1000
    t.datetime "created_dt", default: "getdate"
  end
 
  create_table "bca_skpr_web_view", force: :cascade do |t|
    t.integer "bca_id", null: false
    t.string "json_request", limit: 500, null: false
    t.string "json_respond", limit: 500
    t.string "request_id", limit: 100
    t.datetime "requested_dt", default: "getdate", null: false
    t.string "requested_by", limit: 4, null: false
    t.boolean "isokclick_success"
    t.datetime "okclick_dt"
    t.string "okclick_by", limit: 4
  end
 
  create_table "bca_subcompany", force: :cascade do |t|
    t.string "subcompany", limit: 5, null: false
    t.string "accnumber", limit: 50, null: false
    t.string "branchcd", limit: 1, null: false
    t.boolean "isactive", default: true, null: false
  end
 
  create_table "bca_token", force: :cascade do |t|
    t.string "token", limit: 500, null: false
    t.datetime "expireddate", null: false
    t.datetime "createddate", null: false
    t.string "hastoken", limit: 10
  end
 
  create_table "bca_vasnap_manualva", force: :cascade do |t|
    t.string "pesanbca", limit: 50, null: false
    t.string "messagebca", limit: 50, null: false
    t.string "leaseno", limit: 9, null: false
    t.decimal "nominal", precision: 15, scale: 0, null: false
    t.string "reason", limit: 250, null: false
    t.date "startfrom", null: false
    t.date "endfrom", null: false
    t.integer "isactive", null: false
    t.datetime "createddate", null: false
  end
 
  create_table "bca_vasnap_requestflagpaymentfrombca", force: :cascade do |t|
    t.string "va", limit: 50, null: false
    t.string "lease_no", limit: 50, null: false
    t.string "requestid", limit: 250, null: false
    t.string "json_request", limit: 8000, null: false
    t.string "externalid", limit: 50
    t.datetime "createddate", null: false
    t.string "totalpayment", limit: 2000
    t.index ["externalid"], name: "IX_BCA_VASNAP_RequestFlagPaymentFromBCA_externalId"
  end
 
  create_table "bca_vasnap_requestinqbillsfrombca", force: :cascade do |t|
    t.string "va", limit: 50, null: false
    t.string "lease_no", limit: 9, null: false
    t.string "requestid", limit: 250, null: false
    t.string "json_request", limit: 8000, null: false
    t.string "externalid", limit: 50
    t.datetime "createddate", null: false
    t.index ["externalid"], name: "IX_BCA_VASNAP_RequestInqBillsFromBCA_externalId"
  end
 
  create_table "bca_vasnap_requestinqstatusbillsfrommlci", force: :cascade do |t|
    t.string "va", limit: 15, null: false
    t.string "lease_no", limit: 9, null: false
    t.string "requestid", limit: 250, null: false
    t.string "externalid", limit: 50, null: false
    t.string "json_request", limit: 8000, null: false
    t.datetime "createddate", null: false
  end
 
  create_table "bca_vasnap_respondflagpaymentfrommlci", force: :cascade do |t|
    t.string "va", limit: 50
    t.string "lease_no", limit: 9
    t.string "requestid", limit: 250
    t.string "json_respond", limit: 8000
    t.datetime "createddate", null: false
    t.string "responsecode", limit: 2000
    t.string "paymentflagstatus", limit: 2000
    t.decimal "paidamount", precision: 25, scale: 0
  end
 
  create_table "bca_vasnap_respondinqbillsfrommlci", force: :cascade do |t|
    t.string "va", limit: 50, null: false
    t.string "lease_no", limit: 9, null: false
    t.string "requestid", limit: 250, null: false
    t.string "json_respond", limit: 8000, null: false
    t.string "externalid", limit: 50
    t.datetime "createddate", null: false
    t.string "inquirystatus", limit: 2000
    t.string "totalamount", limit: 2000
  end
 
  create_table "bca_vasnap_respondinqstatusbillsfrombca", force: :cascade do |t|
    t.string "va", limit: 15, null: false
    t.string "lease_no", limit: 9, null: false
    t.string "requestid", limit: 250, null: false
    t.string "json_respond", limit: 8000, null: false
    t.string "paymentflagstatus", limit: 4
    t.decimal "totalpayment", precision: 15, scale: 0
    t.datetime "createddate", null: false
  end
 
  create_table "bcavamanual", force: :cascade do |t|
    t.string "lease_no", limit: 50, null: false
    t.string "lessee_nm", limit: 250
    t.decimal "amount", null: false
    t.string "branch_cd", limit: 3
    t.string "nickname", limit: 10
    t.datetime "createdate"
    t.integer "version"
  end
 
  create_table "beneficiary_link", force: :cascade do |t|
    t.string "appl_no", limit: 11
    t.string "bo_id", limit: 13
    t.string "bo_type", limit: 2
    t.index ["bo_id", "appl_no"], name: "IX_BENEFICIARY_LINK_APPL_NO"
  end
 
  create_table "beneficiary_owner", force: :cascade do |t|
    t.string "bo_id", limit: 13, null: false
    t.string "bo_name", limit: 50
    t.string "alias", limit: 50
    t.string "bo_tp", limit: 2
    t.string "bo_cat", limit: 2
    t.string "mobile", limit: 100
    t.string "email", limit: 100
    t.string "idcard", limit: 30
    t.string "placebirth", limit: 50
    t.datetime "datebirth"
    t.string "gender", limit: 5
    t.string "marital", limit: 5
    t.string "citizenship", limit: 20
    t.string "nationality", limit: 30
    t.decimal "averageincome"
    t.string "sourcefund", limit: 2
    t.string "sourcefundother", limit: 100
    t.string "companyname", limit: 100
    t.string "npwp", limit: 30
    t.string "siupno", limit: 50
    t.string "lob", limit: 250
    t.string "contactname", limit: 50
    t.string "contactposition", limit: 50
    t.string "business_type", limit: 10
    t.string "apless", limit: 6
    t.string "updateby", limit: 50
    t.datetime "lastupdate"
  end
 
  create_table "beneficiary_owner_address", force: :cascade do |t|
    t.string "bo_id", limit: 13, null: false
    t.string "address_type", limit: 15, null: false
    t.string "address", limit: 200
    t.string "area_cd", limit: 4
    t.string "city", limit: 50
    t.string "kecamatan", limit: 100
    t.string "kelurahan", limit: 100
    t.string "rt", limit: 5
    t.string "rw", limit: 5
    t.string "zipcode", limit: 10
    t.string "fax", limit: 20
    t.string "phone", limit: 60
  end
 
  create_table "beneficiaryaccount", force: :cascade do |t|
    t.string "category", limit: 25, null: false
    t.string "beneficiaryid", limit: 8, null: false
    t.string "acc_no", limit: 30, null: false
    t.string "acc_name", limit: 100
    t.string "acc_bank", limit: 7
    t.string "acc_bankbranch", limit: 40
    t.integer "beneficiarytype"
    t.integer "residentstatus"
    t.boolean "default"
    t.string "accounttype", limit: 1, null: false
    t.string "updateby", limit: 50
    t.datetime "updatedate"
    t.string "branch_cd", limit: 2
  end
 
  create_table "beneficiaryaccount_req", force: :cascade do |t|
    t.string "category", limit: 25, null: false
    t.string "beneficiaryid", limit: 8, null: false
    t.string "acc_no", limit: 20, null: false
    t.string "acc_name", limit: 50
    t.string "acc_bank", limit: 7
    t.string "acc_bankbranch", limit: 40
    t.integer "beneficiarytype"
    t.integer "residentstatus"
    t.boolean "default"
    t.string "accounttype", limit: 1, null: false
    t.string "updateby", limit: 50
    t.datetime "updatedate"
  end
 
  create_table "beneficiarytax", force: :cascade do |t|
    t.string "category", limit: 25, null: false
    t.string "beneficiaryid", limit: 8, null: false
    t.datetime "tffrom"
    t.datetime "tfto"
    t.boolean "ppn"
    t.datetime "datestart"
    t.integer "taxtype"
    t.float "taxrate"
    t.integer "dpp"
    t.string "npwp_no", limit: 30
    t.string "npwp_name", limit: 200
    t.string "npwp_address", limit: 250
    t.string "npwp_city", limit: 70
    t.string "npwp_prov", limit: 100
    t.string "npwp_type", limit: 2
    t.integer "npwp_start"
    t.string "updateby", limit: 50
    t.datetime "updatedate"
    t.string "npwp_detail", limit: 25
    t.string "namabuktipotong", limit: 50
    t.datetime "dateto"
    t.string "taxtype_dtl", limit: 5
    t.decimal "skbrate", precision: 6, scale: 2, default: 0, null: false
    t.string "correspondenceaddress", limit: 250
    t.string "npwp16", limit: 16
    t.string "skb_nonskb", limit: 1
    t.string "skb_type", limit: 100
    t.string "skb_no", limit: 50
    t.index ["beneficiaryid"], name: "NC_BeneficiaryTax"
  end
 
  create_table "bghistory", force: :cascade do |t|
    t.string "cd_history_bgiro", limit: 13, null: false
    t.string "lease_no", limit: 9, null: false
    t.integer "period"
    t.string "bank", limit: 10
    t.string "giro_no", limit: 15
    t.datetime "giro_dt"
    t.decimal "nominal"
    t.string "status", limit: 1
    t.string "rej_code", limit: 2
    t.datetime "payment_dt"
    t.string "replace_by", limit: 20
    t.string "cd_level", limit: 20
    t.string "voucher", limit: 11
    t.string "trcode", limit: 1
    t.string "depobank", limit: 7
    t.datetime "depodt"
    t.integer "penalty"
    t.string "branch_cd", limit: 1
    t.string "channel_type", limit: 20
    t.index ["nominal", "lease_no", "giro_dt", "status", "payment_dt"], name: "BGHISTORY_NC1"
    t.index ["nominal", "status", "payment_dt", "lease_no", "bank"], name: "BGHISTORY_NC2"
    t.index ["cd_history_bgiro", "lease_no", "period", "payment_dt", "status"], name: "BGHISTORY_NC5"
    t.index ["nominal", "lease_no", "period", "status"], name: "IX_BGHISTORY"
    t.index ["lease_no", "period", "nominal", "giro_dt", "status", "payment_dt"], name: "IX_BGHISTORY_NC2"
  end
 
  create_table "bghistory_wo", force: :cascade do |t|
    t.string "cd_history_bgiro", limit: 13, null: false
    t.string "lease_no", limit: 9, null: false
    t.integer "period"
    t.string "bank", limit: 10
    t.string "giro_no", limit: 15
    t.datetime "giro_dt"
    t.decimal "nominal"
    t.string "status", limit: 1
    t.string "rej_code", limit: 2
    t.datetime "payment_dt"
    t.string "replace_by", limit: 20
    t.string "cd_level", limit: 20
    t.string "voucher", limit: 11
    t.string "trcode", limit: 1
    t.string "depobank", limit: 7
    t.datetime "depodt"
    t.integer "penalty"
    t.string "branch_cd", limit: 1
  end
 
  create_table "bgiro", force: :cascade do |t|
    t.string "tr_code", limit: 1
    t.string "lease_no", limit: 9, null: false
    t.string "lessee_no", limit: 6
    t.string "girono", limit: 6, null: false
    t.datetime "girodt"
    t.string "bank", limit: 3, null: false
    t.decimal "nominal"
    t.datetime "depodt"
    t.string "depobank", limit: 3
    t.string "status", limit: 0
    t.datetime "payment"
    t.integer "penalty"
    t.boolean "flgdel"
    t.integer "period", null: false
    t.string "oldleaseno", limit: 30
    t.integer "bgflag"
    t.string "branch_cd", limit: 1
    t.decimal "shortage"
    t.string "inkaso", limit: 0
    t.datetime "receivedt"
    t.string "notes", limit: 4000
    t.index ["lease_no", "payment", "period", "status"], name: "BGIRO_NC9"
    t.index ["lease_no", "status", "penalty", "girono", "nominal", "period", "payment", "girodt", "bank"], name: "BGIRO_NX2"
    t.index ["girodt", "nominal", "bank", "payment"], name: "idx_test2"
    t.index ["girodt", "nominal", "status", "lease_no", "payment"], name: "IX_BGIRO_NC4"
    t.index ["lease_no", "nominal", "period", "girono", "bank"], name: "NC_BGIRO"
  end
 
  create_table "bgiro_special", force: :cascade do |t|
    t.string "lease_no", limit: 4
    t.string "girono", limit: 6
    t.datetime "girodt"
    t.string "bank", limit: 3
    t.decimal "nominal"
    t.datetime "rentaldt"
    t.decimal "rentalamt"
    t.string "desc", limit: 200
    t.datetime "cleardt"
    t.string "flgdel", limit: 0
    t.datetime "receivedt"
    t.index ["lease_no", "girodt", "rentaldt"], name: "IX_BGIRO_SPECIAL"
  end
 
  create_table "bgiro_wo", force: :cascade do |t|
    t.string "tr_code", limit: 1
    t.string "lease_no", limit: 9, null: false
    t.string "lessee_no", limit: 6
    t.string "girono", limit: 6, null: false
    t.datetime "girodt"
    t.string "bank", limit: 3, null: false
    t.decimal "nominal"
    t.datetime "depodt"
    t.string "depobank", limit: 3
    t.string "status", limit: 0
    t.datetime "payment"
    t.integer "penalty"
    t.boolean "flgdel"
    t.integer "period", null: false
    t.string "oldleaseno", limit: 30
    t.integer "bgflag"
    t.string "branch_cd", limit: 1
    t.decimal "shortage"
    t.string "inkaso", limit: 0
    t.datetime "receivedt"
    t.string "notes", limit: 4000
  end
 
  create_table "blacklist_dttot", force: :cascade do |t|
    t.datetime "cam_date"
    t.string "apless", limit: 6
    t.string "id_blacklist", limit: 6
  end
 
  create_table "bpkb_fee", force: :cascade do |t|
    t.string "cd", limit: 0, null: false
    t.string "lease_no", limit: 4, null: false
    t.string "lessee_nm", limit: 100
    t.datetime "bpkb_dt"
    t.decimal "bpkb_fee"
    t.string "bpkb_no", limit: 20
    t.string "cmo", limit: 15
    t.string "remark", limit: 250
    t.string "agency_nm", limit: 50
    t.string "police_no", limit: 12
  end
 
  create_table "bpkb_reconcile", force: :cascade do |t|
    t.string "branch_cd", limit: 1, null: false
    t.datetime "asof", null: false
    t.string "cons_leas", limit: 1, null: false
    t.integer "begining"
    t.integer "received"
    t.integer "released"
    t.integer "writeoff"
    t.integer "expired"
    t.integer "undisbursed"
    t.integer "unreceived"
    t.integer "borrowing"
    t.integer "returned"
    t.integer "received_add"
    t.integer "issued_add"
  end
 
  create_table "briva_data", force: :cascade do |t|
    t.integer "id", null: false
    t.string "lease_no", limit: 9, null: false
    t.string "branch_cd", limit: 2, null: false
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.string "trans_type", limit: 50, null: false
    t.string "json_submit", limit: 2000, null: false
    t.string "json_response", limit: 2000
    t.string "created_by", limit: 4, null: false
    t.datetime "created_date", null: false
    t.datetime "expired_date"
    t.index ["lease_no"], name: "IX_BRIVA_Data_Lease"
  end
 
  create_table "briva_param", force: :cascade do |t|
    t.string "uploadlink", limit: 200, null: false
    t.string "infolink", limit: 70, null: false
    t.string "consumerkey", limit: 100, null: false
    t.string "consumersecret", limit: 100, null: false
    t.string "institutioncode", limit: 50, null: false
    t.string "brivano", limit: 50, null: false
    t.string "updateby", limit: 4, null: false
    t.datetime "updatedate", null: false
  end
 
  create_table "briva_token", force: :cascade do |t|
    t.string "token", limit: 250, null: false
    t.datetime "expired", null: false
    t.datetime "created_date", null: false
  end
 
  create_table "budgettravelvoucher", force: :cascade do |t|
    t.date "po_fromdate", null: false
    t.date "po_todate", null: false
    t.date "disb_fromdate", null: false
    t.date "disb_todate", null: false
    t.decimal "budgetamount", precision: 20, scale: 0, null: false
    t.string "createby", limit: 15, null: false
    t.datetime "createdate", null: false
    t.string "updateby", limit: 15
    t.datetime "updatedate"
    t.string "thirdparty", limit: 2, null: false
  end
 
  create_table "cacustrenew", force: :cascade do |t|
    t.datetime "print_dt", null: false
    t.string "branch_cd", limit: 1, null: false
    t.string "lessee_no", limit: 12, null: false
    t.datetime "return_dt"
    t.datetime "expired_dt"
    t.boolean "datachanges"
    t.string "formupload", limit: 100
    t.string "updated_by", limit: 50
    t.datetime "update_dt"
  end
 
  create_table "cafbankstm", force: :cascade do |t|
    t.string "appl_no", limit: 11
    t.string "apless", limit: 6
    t.string "period", limit: 6
    t.decimal "begbal"
    t.decimal "debet"
    t.decimal "credit"
    t.decimal "endbal"
    t.string "bank", limit: 100
    t.string "acc_no", limit: 50
    t.string "curr_code", limit: 3
    t.string "notes", limit: 4000
    t.string "acc_nm", limit: 200
    t.string "notes_rek", limit: 4000
    t.string "bank_branch", limit: 50
    t.index ["appl_no", "apless", "bank", "acc_no", "curr_code", "acc_nm"], name: "IX_CAFBANKSTM_NC2"
    t.index ["apless", "bank", "acc_no", "curr_code", "acc_nm"], name: "NC_1_CAFBANKSTM_APLESS"
  end
 
  create_table "cafchecklist", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.integer "cafequip_id", null: false
    t.string "list_cat", limit: 1, null: false
    t.string "list_desc", limit: 60, null: false
    t.boolean "list_value", null: false
    t.string "remark", limit: 50
    t.index ["appl_no", "cafequip_id", "list_cat"], name: "IX_CAFCHECKLIST_NC1"
  end
 
  create_table "cafcont", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "apless", limit: 6, null: false
    t.string "curr_code", limit: 3, default: "NIDR", null: false
    t.decimal "l_amount", default: 0
    t.decimal "security", default: 0
    t.decimal "residual", default: 0
    t.float "declrate", default: 0
    t.float "flatrate", default: 0
    t.float "overate", default: 0.2
    t.float "rebate", default: 5
    t.string "col_type", limit: 2, default: "TR"
    t.string "adv_arr", limit: 0, default: "V"
    t.integer "l_type", default: 0
    t.string "fix_float", limit: 0, default: "X"
    t.integer "float_cyc", default: 0
    t.string "dl_slb", limit: 0, default: "D"
    t.integer "tenor", default: 0
    t.integer "pay_cycle", default: 1
    t.decimal "rental", default: 0
    t.float "mlcidecl", default: 0
    t.float "mlciflat", default: 0
    t.decimal "mlcirent", default: 0
    t.float "mlcitax", default: 0
    t.decimal "notaryfee", default: 0
    t.decimal "otherfee", default: 0
    t.integer "g_term", default: 0
    t.integer "g_period", default: 0
    t.float "g_int_rate", default: 0
    t.decimal "g_int_amt", default: 0
    t.string "corp_ret", limit: 0
    t.string "cons_leas", limit: 0, null: false
    t.string "cmo", limit: 15
    t.string "contsts", limit: 1
    t.bigint "outstanding", default: 1
    t.decimal "out_amount", default: 0
    t.string "col_type_supp", limit: 1, default: "NTR"
    t.decimal "refund_supp", default: 0
    t.string "remark", limit: 275
    t.datetime "datetrans"
    t.integer "nbr_contract", default: 1
    t.float "disc_cust", default: 0
    t.float "disc_mlci", default: 0
    t.decimal "admfee", default: 0
    t.string "purpoffinc", limit: 7
    t.string "branch_cd", limit: 1
    t.decimal "otherloan"
    t.bigint "outstanding_l"
    t.decimal "out_amount_l"
    t.datetime "outprocessdate"
    t.float "declrate1000"
    t.float "flatrate1000"
    t.integer "tenor1000"
    t.string "notary_no", limit: 3
    t.decimal "notary"
    t.decimal "fiduciary"
    t.decimal "gross"
    t.boolean "has_guarantor"
    t.string "disb_type", limit: 1
    t.string "cont_type", limit: 3, null: false
    t.decimal "subsidy"
    t.string "flagcom", limit: 1
    t.datetime "create_date"
    t.string "notes"
    t.string "pending_notes", limit: 2000
    t.string "cam_notes", limit: 2000
    t.string "credit_recomendation"
    t.decimal "provision"
    t.decimal "comm_provision"
    t.string "incentive", limit: 1, default: "0"
    t.decimal "businesstrip_fee"
    t.decimal "subsidy_supp"
    t.decimal "max_fee"
    t.decimal "baseadmfee"
    t.decimal "baseinterestfee"
    t.decimal "interestincome"
    t.string "ibor", limit: 4
    t.float "ibor_percentage"
    t.decimal "bpkb_checkfee"
    t.boolean "iscp", default: false, null: false
    t.boolean "isskp", default: false, null: false
    t.string "created_by", limit: 6
    t.decimal "baseinsincome"
    t.decimal "baseprovfee"
    t.index ["apless", "create_date"], name: "CAFCONT_IX2"
    t.index ["appl_no", "cmo"], name: "IX_CAFCONT_CMO"
    t.index ["l_amount", "security", "otherloan", "appl_no"], name: "IX_CAFCONT_FLGDEL"
    t.index ["appl_no", "datetrans", "cmo"], name: "IX_CAFCONT_index1"
  end
 
  create_table "cafcont_copy", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "appl_no_copy", limit: 11
    t.string "user_id", limit: 15
    t.datetime "input_dt"
  end
 
  create_table "cafcont_customerversion", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.integer "customerversion"
  end
 
  create_table "cafcont_detail", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "sales_point", limit: 4
  end
 
  create_table "cafcont_irr", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.float "irr_actual", null: false
  end
 
  create_table "cafcont_joint_finance", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "joint_company", limit: 100
    t.decimal "joint_amount", precision: 25, scale: 2
    t.boolean "isactive"
  end
 
  create_table "cafcont_restucturing", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "restucturing_change", limit: 30
  end
 
  create_table "cafcont_totouts", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.decimal "outstanding"
  end
 
  create_table "cafcontsubsidydetail", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "subsidytype", limit: 2, null: false
    t.string "amounttype", limit: 20, null: false
    t.decimal "amount"
  end
 
  create_table "cafcrosscoll", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "lease_no", limit: 9, null: false
    t.string "cross_coll", limit: 1
    t.string "remark", limit: 10
    t.datetime "delete_date"
    t.string "delete_by", limit: 35
    t.string "installment", limit: 3
    t.string "upload_nm", limit: 35
    t.datetime "upload_date"
    t.string "memonumber", limit: 50
    t.string "application", limit: 4
    t.string "createby", limit: 50
    t.index ["appl_no", "lease_no", "cross_coll", "delete_date"], name: "IX_CAFCROSSCOLL_CROSS_COLL_DELETE_DATE"
    t.index ["lease_no", "delete_date"], name: "IX_CAFCROSSCOLL_NC1"
  end
 
  create_table "cafcust_outs", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.date "asof", null: false
    t.string "cons_leas", limit: 1, null: false
    t.integer "type"
    t.decimal "outs", precision: 25, scale: 5
    t.decimal "outs_usd", precision: 25, scale: 5
    t.decimal "outs_jpy", precision: 25, scale: 5
    t.decimal "outs_sgd", precision: 25, scale: 5
    t.decimal "outs_aud", precision: 25, scale: 5
    t.decimal "outs_hkd", precision: 25, scale: 5
    t.decimal "outs_euro", precision: 25, scale: 5
    t.decimal "outs_rm", precision: 25, scale: 5
    t.decimal "outs_equivalent", precision: 25, scale: 5
    t.integer "unit"
    t.string "outs_notes"
    t.string "ceiling_notes", limit: 1000
    t.decimal "creditlimit"
    t.index ["appl_no"], name: "IX_CAFCUST_OUTS_NC1"
  end
 
  create_table "cafdev", force: :cascade do |t|
    t.string "appl_no", limit: 11
    t.string "deviation_cd", limit: 4
    t.string "reason"
    t.string "deviation_desc"
    t.string "standard_desc"
    t.datetime "input_dt"
    t.index ["appl_no", "deviation_cd"], name: "IX_Cafdev_2"
  end
 
  create_table "cafdev_history", force: :cascade do |t|
    t.string "appl_no", limit: 11
    t.string "deviation_cd", limit: 4
    t.datetime "create_date"
    t.string "reason", limit: 5000
    t.string "deviation_desc", limit: 5000
    t.string "standard_desc", limit: 5000
  end
 
  create_table "cafdisb", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.decimal "gross_prem"
    t.decimal "net_com"
    t.decimal "disb_insc"
    t.decimal "admfee"
    t.decimal "first_inst"
    t.decimal "dp"
    t.decimal "prov"
    t.string "split", limit: 11, null: false
    t.decimal "l_amount"
    t.string "split_others", limit: 20
    t.decimal "service_agency_fee"
    t.decimal "bbn_fee"
    t.decimal "notary_fee"
    t.decimal "businesstrip_fee"
    t.decimal "agency_fee"
    t.decimal "surveyfeegross_cigna"
    t.string "supp", limit: 7, null: false
    t.decimal "net_prem"
    t.decimal "notary_fee_gross"
    t.integer "advance_grace_month"
    t.decimal "advance_grace_amount"
  end
 
  create_table "cafdisbacc", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "bank", limit: 7
    t.string "acc_no", limit: 30
    t.string "acc_nm", limit: 100
    t.decimal "amount"
    t.string "bank_branch", limit: 40
    t.string "split", limit: 11
    t.string "supp", limit: 7
    t.index ["appl_no", "split"], name: "NC_1_CAFDISBACC"
  end
 
  create_table "cafdisbacc_revised", force: :cascade do |t|
    t.string "appl_no", limit: 11
    t.string "bank", limit: 7
    t.string "acc_no", limit: 30
    t.string "acc_nm", limit: 100
    t.decimal "amount"
    t.string "bank_branch", limit: 40
    t.string "split", limit: 11
    t.string "curr_code", limit: 3
    t.decimal "amount_transfer"
    t.string "voucher", limit: 22
  end
 
  create_table "cafequip", force: :cascade do |t|
    t.decimal "cafequip_id", precision: 18, scale: 0, null: false
    t.string "appl_no", limit: 11, null: false
    t.string "type_cd", limit: 2, default: "07"
    t.string "brand", limit: 3
    t.string "type", limit: 10
    t.string "model", limit: 3
    t.string "tahun", limit: 4
    t.string "supp", limit: 7
    t.string "chasis", limit: 50
    t.string "engine", limit: 50
    t.string "colour", limit: 50
    t.string "condition", limit: 5, default: "NEW"
    t.string "policeno", limit: 100
    t.string "bpkb_no", limit: 150
    t.string "bpkb_an_tp", limit: 2
    t.string "bpkb_an", limit: 100
    t.string "bpkb_addr", limit: 250
    t.string "city_bpkb", limit: 50
    t.string "forma", limit: 60
    t.decimal "priceotr"
    t.string "remark", limit: 60
    t.string "userusage", limit: 100
    t.string "purpose", limit: 2
    t.string "park_loc", limit: 250
    t.string "city_park", limit: 50
    t.decimal "down_pay"
    t.string "lease_no", limit: 9
    t.string "bpkb_an_fam", limit: 11
    t.integer "km"
    t.datetime "km_date"
    t.string "km_time", limit: 10
    t.datetime "bpkb_name_dateofbirth"
    t.string "deviasi_umur", limit: 100
    t.string "relation", limit: 100
    t.string "fdc_area", limit: 2
    t.string "bpkb_an_sts", limit: 2
    t.string "karoseri", limit: 2
    t.datetime "stnk_validdt"
    t.string "karoseri_supp", limit: 7
    t.string "tax_free", limit: 1
    t.decimal "wheels", precision: 18, scale: 0
    t.string "insurance_area", limit: 1
    t.boolean "cancel_order", default: false
    t.string "accessories_supp", limit: 7
    t.string "other_supp", limit: 7
    t.string "bpkb_area_cd", limit: 4
    t.string "bpkb_placebirth", limit: 30
    t.date "bpkb_tglbirth"
    t.boolean "add_collateral"
    t.string "attachment", limit: 2000
    t.string "serial_no", limit: 50
    t.string "fund_purpose", limit: 1000
    t.string "park_zipcode", limit: 5
    t.index ["brand", "model", "supp", "condition", "appl_no"], name: "IX_CAFEQUIP_5"
    t.index ["appl_no", "supp", "condition"], name: "IX_CAFEQUIP_NC1"
  end
 
  create_table "cafequip_bpkbstatus", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.integer "id", null: false
    t.string "bpkb_marital_status", limit: 1
    t.string "bpkb_spouse_name", limit: 100
    t.string "bpkb_spouse_address", limit: 250
    t.string "poa_name", limit: 100
    t.string "poa_occupation", limit: 100
    t.string "poa_address", limit: 250
    t.string "bpkb_spouse_status", limit: 1
  end
 
  create_table "cafequip_detail", force: :cascade do |t|
    t.decimal "cafequip_id", precision: 18, scale: 0, null: false
    t.string "appl_no", limit: 11
    t.string "fin_purpose", limit: 2
    t.string "ojk_fin_goods", limit: 1
    t.string "ojk_fin_goods_detail", limit: 3
    t.string "ojk_coll_goods", limit: 1
    t.string "ojk_coll_goods_detail", limit: 3
    t.string "coll_type", limit: 1
    t.string "remark_released", limit: 1
    t.string "notes_fa", limit: 1
    t.index ["ojk_fin_goods", "ojk_fin_goods_detail", "ojk_coll_goods", "ojk_coll_goods_detail", "appl_no"], name: "IX_Cafequip_Detail_Appl_No_All"
  end
 
  create_table "caffs", force: :cascade do |t|
    t.string "fs_code", limit: 1
    t.string "period", limit: 6
    t.string "item_code", limit: 6
    t.decimal "amount"
    t.string "apless", limit: 6
    t.datetime "input_dt"
    t.index ["id_caffs", "fs_code", "period", "item_code", "apless"], name: "IX_CAFFS"
    t.index ["id_caffs", "period", "item_code", "apless"], name: "IX_CAFFS_ITEM_CODE_APLESS_A07D2"
    t.index ["apless"], name: "NC_CAFFS_20210715"
    t.index ["fs_code", "apless"], name: "NC2_CAFFS"
  end
 
  create_table "cafguarn", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "apless", limit: 6, null: false
    t.string "grnid", limit: 14, null: false
    t.string "lessee_no", limit: 6
    t.string "grnname", limit: 100, null: false
    t.string "grnadd", limit: 250
    t.string "grntp", limit: 2
    t.string "grnspouse", limit: 50
    t.string "grnstatus", limit: 7
    t.string "grnakte", limit: 50
    t.string "grncontact", limit: 40
    t.string "grnoccupation", limit: 40
    t.decimal "grnttl"
    t.string "grncat", limit: 1
    t.datetime "grndob"
    t.string "grncity", limit: 100
    t.string "grnzipcode", limit: 6
    t.string "grnfax", limit: 20
    t.string "grnphone", limit: 60
    t.string "grnrelation", limit: 100
    t.string "grnidcard", limit: 30
    t.string "grnidfile", limit: 50
    t.datetime "grnidval"
    t.string "grnlob", limit: 250
    t.string "noofbank", limit: 5
    t.string "con_signpos", limit: 100
    t.string "grnspouseadd", limit: 250
    t.string "grnspousecity", limit: 50
    t.string "grnspousecode", limit: 6
    t.string "grnname_without_title", limit: 100
    t.string "grnpassportno", limit: 30
    t.string "grncitizen", limit: 25
    t.string "grnnationality", limit: 50
    t.string "grnnpwp", limit: 30
    t.string "grn_bitype", limit: 4
    t.string "grnname_npwp", limit: 100
    t.string "grnadd_npwp", limit: 250
    t.string "grncity_npwp", limit: 100
    t.string "grnzipcode_npwp", limit: 6
    t.string "gender", limit: 1
    t.string "marital", limit: 1
    t.string "grnspouseidcard", limit: 30
    t.string "npwp16", limit: 16
  end
 
  create_table "cafguarnbank", force: :cascade do |t|
    t.string "grnid", limit: 14, null: false
    t.string "bank", limit: 100, null: false
    t.string "acc_no", limit: 30
    t.string "acc_nm", limit: 50
    t.string "curr_code", limit: 3
    t.string "period", limit: 6
    t.decimal "begbal"
    t.decimal "debet"
    t.decimal "credit"
    t.decimal "endbal"
    t.string "notes", limit: 4000
    t.index ["grnid", "bank", "acc_no", "acc_nm", "curr_code"], name: "IX_CAFGUARNBANK_GRNID_BANK_ACC_NO_ACC_NM_CURR_CODE"
  end
 
  create_table "cafinsu", force: :cascade do |t|
    t.string "ins_pol", limit: 20, null: false
    t.string "appl_no", limit: 11
    t.string "ins_cd", limit: 3
    t.integer "pay_method"
    t.decimal "creditamt", default: 0
    t.string "remark", limit: 25
    t.decimal "commadmfee", default: 0
    t.string "police_no", limit: 50
    t.string "model", limit: 2
    t.string "condition", limit: 5
    t.integer "total_seat"
    t.string "usage", limit: 1
    t.string "ins_cd_area", limit: 3
    t.decimal "specialrate", precision: 5, scale: 2
    t.index ["creditamt", "appl_no"], name: "IX_CAFINSU_APPL_NO_UNIQUE", unique: true
  end
 
  create_table "cafinsu_corfin", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.integer "year_no", null: false
    t.date "ins_dt1"
    t.date "ins_dt2"
    t.string "ins_name", limit: 250
    t.string "ins_desc", limit: 1000
    t.decimal "ins_amt"
    t.string "ins_pol", limit: 50
  end
 
  create_table "cafinsud", force: :cascade do |t|
    t.string "ins_pol", limit: 20, null: false
    t.decimal "ins_amt", default: 0, null: false
    t.integer "year_no", null: false
    t.integer "tpl_amt"
    t.integer "tlo_ar"
    t.integer "clause"
    t.decimal "prer_amt", default: 0
    t.decimal "prep_amt", default: 0
    t.integer "pa_amount"
    t.integer "seat"
    t.decimal "seat_amount"
    t.decimal "specialrate", precision: 5, scale: 2
    t.decimal "rate", precision: 5, scale: 2
  end
 
  create_table "cafinsud_clause", force: :cascade do |t|
    t.string "appl_no", limit: 11
    t.string "ins_pol", limit: 20
    t.integer "year_no"
    t.integer "clause"
    t.index ["ins_pol", "year_no"], name: "IX_CAFINSUD_Clause_Ins_Pol_Year_No"
  end
 
  create_table "cafkomis", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "sales_no", limit: 7, null: false
    t.decimal "fee", default: 0
    t.decimal "grossamount", default: 0
    t.string "sd_type", limit: 0, null: false
    t.decimal "taxamount"
    t.decimal "ppnamount"
    t.datetime "last_update"
    t.boolean "incentive", default: false, null: false
    t.string "paidby", limit: 1, default: "I"
  end
 
  create_table "cafkomis_thirdparty", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "sd_type", limit: 1, null: false
    t.string "sales_no", limit: 7, null: false
    t.string "acc_no", limit: 20, null: false
    t.string "acc_name", limit: 100
    t.string "bank", limit: 7
    t.string "bank_branch", limit: 40
    t.decimal "amount", precision: 15, scale: 0
    t.boolean "checklist", default: false, null: false
    t.date "date_send"
    t.date "payment_date"
    t.string "update_by", limit: 4
    t.datetime "update_dt"
    t.string "tv_code", limit: 8
    t.integer "threshold"
    t.string "thirdparty", limit: 2, null: false
    t.decimal "incentivepaid"
  end
 
  create_table "cafkomis_thirdparty_doc", force: :cascade do |t|
    t.integer "period", null: false
    t.string "filename", limit: 100
    t.string "file_ext", limit: 10
    t.string "uploadby", limit: 4, null: false
    t.datetime "uploaddate", null: false
    t.string "thirdparty", limit: 2, null: false
  end
 
  create_table "cafkomis_thirdparty_voucher", force: :cascade do |t|
    t.string "tv_code", limit: 8
    t.string "appl_no", limit: 11
    t.string "sales_no", limit: 7
    t.decimal "nominal", precision: 10, scale: 0
    t.integer "totalpiece"
  end
 
  create_table "cafkomisacc", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "sales_no", limit: 7, null: false
    t.string "sd_type", limit: 1
    t.string "acc_no", limit: 20, null: false
    t.string "acc_nm", limit: 100
    t.string "acc_bank", limit: 7
    t.string "acc_bankbranch", limit: 40
    t.decimal "amount"
    t.index ["appl_no", "acc_no", "acc_nm", "acc_bank", "acc_bankbranch", "amount", "sales_no"], name: "IX_CafkomisACC_Sales_No_EC186"
  end
 
  create_table "cafla", force: :cascade do |t|
    t.string "la_code", limit: 1, null: false
    t.string "period", limit: 6, null: false
    t.string "desc", limit: 150
    t.string "notes", limit: 1000
    t.decimal "amount"
    t.string "apless", limit: 6
    t.datetime "input_dt"
    t.index ["amount", "la_code", "period", "apless"], name: "NC2_CAFLA"
    t.index ["period", "desc", "notes", "amount", "la_code", "apless"], name: "NC3_CAFLA"
  end
 
  create_table "cafless", force: :cascade do |t|
    t.string "apless", limit: 6, null: false
    t.string "lessee_nm", limit: 100
    t.string "address1", limit: 250
    t.string "city1", limit: 50
    t.string "phone1", limit: 60
    t.string "address2", limit: 250
    t.string "city2", limit: 50
    t.string "phone2", limit: 60
    t.string "address3", limit: 250
    t.string "city3", limit: 50
    t.string "phone3", limit: 60
    t.string "lessee_tp", limit: 2, null: false
    t.string "gender", limit: 1
    t.string "placebirth", limit: 30
    t.date "tglbirth"
    t.string "religion", limit: 1
    t.string "marital", limit: 1
    t.string "id_card", limit: 30
    t.string "fam_card", limit: 25
    t.string "npwp", limit: 30
    t.string "indus_code", limit: 6
    t.string "relation", limit: 1
    t.string "remark", limit: 50
    t.datetime "review"
    t.string "contact", limit: 50
    t.string "occupation", limit: 40
    t.string "zipcode1", limit: 10
    t.string "zipcode2", limit: 10
    t.string "zipcode3", limit: 10
    t.string "custprofile", limit: 2
    t.string "email1", limit: 75
    t.string "email2", limit: 75
    t.boolean "send_sms", default: true
    t.string "citizen", limit: 25
    t.string "mother", limit: 50
    t.string "spouse", limit: 100
    t.string "area_cd", limit: 4
    t.string "cust_type", limit: 4, null: false
    t.string "branch_address", limit: 250
    t.string "branch_city", limit: 50
    t.string "branch_phone", limit: 50
    t.string "bank", limit: 50
    t.string "acc_no", limit: 25
    t.string "address_status", limit: 2
    t.string "mobile_phone1", limit: 200
    t.string "mobile_phone2", limit: 20
    t.string "mobile_phone3", limit: 20
    t.string "fax1", limit: 20
    t.string "fax2", limit: 20
    t.string "fax3", limit: 20
    t.string "address4", limit: 250
    t.string "city4", limit: 30
    t.string "zipcode4", limit: 10
    t.string "phone4", limit: 20
    t.string "fax4", limit: 20
    t.string "address5", limit: 250
    t.string "city5", limit: 30
    t.string "zipcode5", limit: 10
    t.string "phone5", limit: 20
    t.string "fax5", limit: 20
    t.string "grpcode", limit: 5
    t.string "nationality", limit: 50
    t.string "id_card_file", limit: 200
    t.datetime "id_card_valid"
    t.string "fam_card_file", limit: 200
    t.string "lessee_cat", limit: 2
    t.string "fs_curr", limit: 3
    t.string "lob", limit: 250
    t.string "cr_name", limit: 30
    t.string "other_phone1", limit: 60
    t.string "other_phone2", limit: 60
    t.string "other_phonenotes1", limit: 60
    t.string "other_phonenotes2", limit: 60
    t.integer "business_size"
    t.decimal "spouse_income"
    t.string "alias_name", limit: 100
    t.string "modifier", limit: 4
    t.datetime "modified"
    t.string "npwp16", limit: 16
    t.index ["apless", "grpcode"], name: "IX_CAFLESS_NC1"
    t.index ["apless", "address1", "address2", "lessee_tp", "id_card", "lessee_nm"], name: "NC2_CAFLESS"
  end
 
  create_table "cafless_detail", force: :cascade do |t|
    t.string "apless", limit: 6, null: false
    t.string "business_type", limit: 10
    t.string "fullname_without_title", limit: 100
    t.string "business_entity", limit: 20
    t.string "go_public", limit: 1
    t.string "relationship", limit: 20
    t.string "passportno", limit: 30
    t.string "last_education", limit: 50
    t.string "career_field", limit: 50
    t.string "spouse_placebirth", limit: 30
    t.date "spouse_tglbirth"
    t.string "spouse_citizen", limit: 25
    t.string "spouse_nationality", limit: 50
    t.string "spouse_id_card", limit: 30
    t.datetime "spouse_id_card_valid"
    t.string "spouse_passportno", limit: 30
    t.string "spouse_marriage", limit: 1
    t.string "spouse_dependent", limit: 30
    t.string "spouse_fullname_without_title", limit: 100
    t.string "emergency_name", limit: 100
    t.string "emergency_relation", limit: 100
    t.string "siup_no", limit: 50
    t.string "domicile_no", limit: 50
    t.string "sustainable_business", limit: 5
    t.string "supp", limit: 6
    t.string "cust_app", limit: 6
  end
 
  create_table "cafless_detail_address", force: :cascade do |t|
    t.string "apless", limit: 6, null: false
    t.string "kecamatan", limit: 100
    t.string "kelurahan", limit: 100
    t.string "rt", limit: 5
    t.string "rw", limit: 5
    t.string "emergency_name", limit: 100
    t.string "emergency_address", limit: 250
    t.string "emergency_phone", limit: 60
    t.string "emergency_relation", limit: 100
    t.string "siup_no", limit: 100
    t.string "domicile_no", limit: 50
    t.string "address_npwp", limit: 250
    t.string "area_cd_npwp", limit: 4
    t.string "kecamatan_npwp", limit: 100
    t.string "kelurahan_npwp", limit: 100
    t.string "zipcode_npwp", limit: 10
    t.string "spouse_address", limit: 250
    t.string "spouse_area_cd", limit: 4
    t.string "spouse_city", limit: 50
    t.string "spouse_kecamatan", limit: 6
    t.string "spouse_kelurahan", limit: 10
    t.string "spouse_rt", limit: 5
    t.string "spouse_rw", limit: 5
    t.string "spouse_zipcode", limit: 10
  end
 
  create_table "cafless_history", force: :cascade do |t|
    t.string "apless", limit: 6, null: false
    t.string "from", limit: 6
    t.string "until", limit: 6
    t.string "company", limit: 100
    t.string "position", limit: 100
    t.string "company_address", limit: 500
    t.string "phone", limit: 60
    t.index ["apless"], name: "NCI_CAFLESS_HISTORY_1"
  end
 
  create_table "caflr", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "lease_no", limit: 11, null: false
    t.integer "term"
    t.decimal "marketprice"
    t.string "paymentstatus", limit: 10
    t.decimal "outstanding"
    t.decimal "rate"
  end
 
  create_table "caforgstruct", force: :cascade do |t|
    t.string "apless", limit: 6, null: false
    t.string "period", limit: 6, null: false
    t.string "authorized_capital", limit: 4000
    t.decimal "paid_in_capital", precision: 15, scale: 2
    t.integer "contract_signer"
    t.string "other_signer", limit: 4000
    t.string "pic", limit: 500
  end
 
  create_table "caforgstruct_blacklist", force: :cascade do |t|
    t.string "blacklist_nm", limit: 100
    t.string "management_nm", limit: 200
    t.string "position", limit: 100
    t.string "address", limit: 250
    t.string "city", limit: 40
    t.string "id_card", limit: 40
    t.string "images", limit: 150
    t.string "os_code", limit: 4
    t.string "npwp", limit: 30
  end
 
  create_table "caforgstruct_detail", force: :cascade do |t|
    t.string "apless", limit: 6
    t.string "period", limit: 6
    t.string "os_code", limit: 4
    t.string "management_nm", limit: 200
    t.decimal "totofshares", precision: 20, scale: 2
    t.decimal "nomofshares", precision: 15, scale: 2
    t.string "pos_deedno", limit: 4000
    t.string "date_of_deed", limit: 20
    t.string "notary_nm", limit: 100
    t.string "certificate", limit: 4000
    t.boolean "signer"
    t.string "address", limit: 250
    t.string "city", limit: 40
    t.string "id_card", limit: 40
    t.string "images", limit: 150
    t.string "name", limit: 200
    t.string "gender", limit: 1
    t.string "kecamatan", limit: 50
    t.string "kelurahan", limit: 50
    t.string "passportno", limit: 30
    t.string "citizen", limit: 25
    t.string "nationality", limit: 50
    t.boolean "owner"
    t.string "shareholder_status", limit: 1
    t.string "npwp", limit: 30
    t.string "update_by", limit: 50
    t.string "update_fromapplication", limit: 3
    t.string "name_npwp", limit: 200
    t.string "add_npwp", limit: 250
    t.string "city_npwp", limit: 100
    t.string "kecamatan_npwp", limit: 30
    t.string "kelurahan_npwp", limit: 30
    t.index ["apless", "period", "os_code"], name: "IX_CAFORGSTRUCT_DETAIL_NC2"
  end
 
  create_table "cafref", force: :cascade do |t|
    t.string "apless", limit: 6, null: false
    t.string "appl_no", limit: 11, null: false
    t.string "ref_name", limit: 100
    t.string "ref_phone", limit: 60
    t.string "remark", limit: 250
    t.datetime "input_dt"
    t.index ["apless"], name: "IX_CAFREF_APLESS"
  end
 
  create_table "cafstep", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.integer "step", null: false
    t.integer "no_step"
    t.decimal "pmt_step"
    t.decimal "mlci_step"
  end
 
  create_table "cafsurv_detail", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "file_sid_checking", limit: 500
    t.string "note_sid_checking", limit: 500
    t.boolean "sid_check"
    t.string "sid_subject", limit: 200
    t.string "sid_relatedparty", limit: 200
    t.string "sid_keterangan", limit: 500
    t.string "sid_creditbureau", limit: 200
    t.string "sid_status", limit: 200
    t.string "sid_score", limit: 50
    t.string "sid_grade", limit: 50
    t.integer "sid_type_id"
    t.integer "sid_row"
    t.string "sid_type", limit: 20
    t.index ["appl_no"], name: "IX_Cafsurv_Detail_Appl_No"
  end
 
  create_table "cafsurv_pr", force: :cascade do |t|
    t.string "credit_his", limit: 1
    t.string "ref", limit: 1
    t.string "work_exp", limit: 1
    t.string "note_char", limit: 4000
    t.string "living", limit: 1
    t.string "living_sts", limit: 1
    t.string "car_own", limit: 1
    t.boolean "deposit"
    t.boolean "bank_stat"
    t.decimal "deposit_amt"
    t.string "bank_stat_amt", limit: 1
    t.string "note_capital", limit: 4000
    t.decimal "fix_inc"
    t.string "job", limit: 1
    t.decimal "tot_oth_inc"
    t.decimal "tot_inc"
    t.decimal "tot_credit"
    t.string "note_capacity", limit: 4000
    t.string "dp", limit: 1
    t.string "pmt", limit: 1
    t.string "note_collateral", limit: 4000
    t.string "appl_no", limit: 11, null: false
    t.string "insurance", limit: 1
    t.string "fix_inc_source", limit: 1
    t.string "tot_oth_inc_source", limit: 1
    t.string "fix_source_remark", limit: 250
    t.string "oth_source_remark", limit: 250
    t.string "file_sid_checking", limit: 5000
    t.string "note_sid_checking", limit: 1000
    t.boolean "sidcheck"
    t.string "sid_subject", limit: 200
    t.string "sid_relatedparty", limit: 2000
    t.string "sid_keterangan", limit: 5000
    t.string "sid_creditbureau", limit: 2000
    t.string "sid_status", limit: 2000
    t.string "sid_score", limit: 200
    t.string "sid_grade", limit: 200
    t.string "sid_type", limit: 200
    t.decimal "tot_inc_year"
    t.string "note_slik_sid_checking", limit: 1
  end
 
  create_table "cafsurv_pt", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "credit_his", limit: 1
    t.string "ref", limit: 1
    t.string "work_exp", limit: 1
    t.string "comp_sts", limit: 1
    t.string "scale", limit: 1
    t.string "note_char", limit: 4000
    t.string "bus_loc", limit: 1
    t.string "unit_own", limit: 1
    t.string "unit_free", limit: 1
    t.boolean "deposit"
    t.boolean "bank_stat"
    t.decimal "deposit_amt"
    t.string "bank_stat_amt", limit: 1
    t.string "note_capital", limit: 4000
    t.decimal "month_profit"
    t.decimal "month_sales"
    t.string "net_profit", limit: 1
    t.decimal "tot_credit"
    t.string "note_capacity", limit: 4000
    t.string "dp", limit: 1
    t.string "pmt", limit: 1
    t.string "note_collateral", limit: 4000
    t.string "insurance", limit: 1
    t.string "month_profit_source", limit: 1
    t.string "month_profit_remark", limit: 250
    t.string "file_sid_checking", limit: 5000
    t.string "note_sid_checking", limit: 1000
    t.boolean "sidcheck"
    t.string "sid_subject", limit: 200
    t.string "sid_relatedparty", limit: 2000
    t.string "sid_keterangan", limit: 5000
    t.string "sid_creditbureau", limit: 2000
    t.string "sid_status", limit: 2000
    t.string "sid_score", limit: 200
    t.string "sid_grade", limit: 200
    t.string "sid_type", limit: 200
    t.boolean "crcheck"
    t.string "cr_rattingbureau", limit: 50
    t.string "cr_status", limit: 50
    t.string "cr_rating", limit: 50
    t.date "cr_ratingdate"
    t.string "file_cust_rating", limit: 5000
    t.string "note_slik_sid_checking", limit: 1
  end
 
  create_table "camoverlimitbpkb", force: :cascade do |t|
    t.datetime "asof", null: false
    t.string "appl_no", limit: 11, null: false
    t.string "appl_no_samedealer", limit: 11, null: false
    t.decimal "l_amount"
    t.decimal "maxlimit"
    t.string "cmo", limit: 4
  end
 
  create_table "cappbalance", force: :cascade do |t|
    t.datetime "asof", null: false
    t.string "branch_cd", limit: 1, null: false
    t.integer "amount"
  end
 
  create_table "cappstock", force: :cascade do |t|
    t.string "branch_cd", limit: 1, null: false
    t.datetime "received_date", null: false
    t.integer "amount"
    t.string "remark", limit: 250
    t.datetime "modified_dt"
    t.string "modified_by", limit: 4
  end
 
  create_table "cappusage", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.datetime "print_date", null: false
    t.integer "print_automatic"
    t.integer "print_manual"
    t.integer "print_correction"
    t.string "remark", limit: 250
  end
 
  create_table "checklistvehicle", force: :cascade do |t|
    t.string "police_no", limit: 15, null: false
    t.string "employee_id", limit: 4
    t.string "branch_cd", limit: 2
    t.string "code", limit: 4, null: false
    t.string "period", limit: 6, null: false
    t.integer "km"
    t.decimal "scoring", precision: 10, scale: 2
    t.integer "cleanliness"
    t.string "remark", limit: 250
    t.datetime "input_date", null: false
    t.string "remark2", limit: 100
    t.string "created_by", limit: 50
    t.datetime "created_dt"
    t.datetime "period_check"
  end
 
  create_table "checklistvehicledetail", force: :cascade do |t|
    t.string "police_no", limit: 15, null: false
    t.string "period", limit: 6, null: false
    t.string "item_id", limit: 3, null: false
    t.integer "left_score"
    t.integer "right_score"
    t.datetime "input_date", null: false
    t.index ["police_no", "period", "item_id", "left_score", "right_score", "input_date"], name: "IX_CHECKLISTVEHICLEDETAIL_NC1"
  end
 
  create_table "cigna_fee", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.decimal "survey_fee_cigna"
    t.decimal "survey_base_rate_cigna"
    t.decimal "survey_loan_cigna"
    t.decimal "credit_protection"
    t.datetime "list_order_dt"
    t.boolean "guarantedacceptance"
    t.decimal "cigna_rate", precision: 3, scale: 1
  end
 
  create_table "cl_overdue_daily", force: :cascade do |t|
    t.datetime "asof", null: false
    t.string "lease_no", limit: 9, null: false
    t.string "branch_cd", limit: 1, null: false
    t.integer "od"
    t.decimal "amount"
    t.decimal "outs_princ"
    t.decimal "pay_amount"
    t.decimal "new_outs_princ"
    t.datetime "process_dt"
    t.index ["asof", "branch_cd", "od", "pay_amount", "new_outs_princ", "process_dt"], name: "IX_CL_OVERDUE_DAILY_BRANCH_CD_OD_PAY_AMOUNT_NEW_OUTS_PRINC_PROCESS_DT"
  end
 
  create_table "clarea", force: :cascade do |t|
    t.string "employee_id", limit: 4
    t.string "zipcode", limit: 7
  end
 
  create_table "clcustrecord", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.datetime "record_date", null: false
    t.datetime "visit_date"
    t.datetime "due_date"
    t.integer "od"
    t.string "collector", limit: 100
    t.string "action1", limit: 50
    t.string "action2", limit: 250
    t.string "phone_no", limit: 30
    t.string "result", limit: 5000
    t.datetime "promise_date"
    t.integer "reason"
    t.index ["record_date", "visit_date", "due_date", "od", "collector", "action1", "action2", "phone_no", "result", "promise_date", "reason", "lease_no"], name: "idx_test"
    t.index ["lease_no", "collector", "promise_date"], name: "IX_CLCUSTRECORD_PROMISE_DATE"
  end
 
  create_table "clf_auditcont", force: :cascade do |t|
    t.string "cd", limit: 0, null: false
    t.datetime "asof"
    t.string "lease_no", limit: 9, null: false
  end
 
  create_table "clf_bpkb_take", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.integer "print_no", null: false
    t.datetime "print_date", null: false
    t.string "print_status", limit: 1
    t.index ["lease_no", "print_date"], name: "NC1_CLF_BPKB_TAKE"
  end
 
  create_table "clf_memo_insurance", force: :cascade do |t|
    t.string "memo_type", limit: 1, null: false
    t.string "memo_no", limit: 13, null: false
    t.datetime "memo_date", null: false
    t.string "ins", limit: 10
    t.string "voucher", limit: 11
    t.string "branch_cd", limit: 1
  end
 
  create_table "clf_memo_insurance_detail", force: :cascade do |t|
    t.string "memo_no", limit: 13
    t.string "lease_no", limit: 9
    t.decimal "amount"
    t.string "branch_cd", limit: 1
    t.decimal "notary"
    t.decimal "tax"
    t.index ["memo_no", "lease_no"], name: "IX_CLF_MEMO_INSURANCE_DETAIL"
  end
 
  create_table "clf_out_standing_ap", force: :cascade do |t|
    t.string "voucher", limit: 11
    t.string "trcode", limit: 1
    t.string "coa_code", limit: 5, null: false
    t.string "lease_no", limit: 15
    t.datetime "receive_date", null: false
    t.datetime "settle_date"
    t.decimal "amount", null: false
    t.string "flag_ok", limit: 1
    t.string "voucher_bd", limit: 11
    t.string "memo_no", limit: 13
    t.string "sales_no", limit: 14
    t.boolean "exception", default: false, null: false
    t.integer "isdormant", null: false
    t.index ["id", "voucher", "trcode", "lease_no", "amount", "voucher_bd", "memo_no"], name: "IX_CLF_OUT_STANDING_AP_Memo_No_15771"
    t.index ["lease_no", "settle_date"], name: "IX_CLF_OUT_STANDING_AP_NC2"
    t.index ["voucher", "coa_code", "receive_date"], name: "NC1_CLF_OUT_STANDING_AP"
  end
 
  create_table "clf_overdue_3month", force: :cascade do |t|
    t.string "branch_cd", limit: 1, null: false
    t.datetime "asof", null: false
    t.string "lease_no", limit: 9, null: false
    t.string "ins", limit: 3
    t.integer "od"
    t.decimal "amount"
    t.decimal "out_princ"
  end
 
  create_table "clf_overdue_bpkb", force: :cascade do |t|
    t.string "code", limit: 1, null: false
    t.datetime "asof", null: false
    t.string "supp", limit: 9, null: false
    t.string "branch_cd", limit: 1, null: false
    t.integer "nd1"
    t.integer "nd2"
    t.integer "od1"
    t.integer "od2"
    t.integer "od3"
    t.integer "od4"
  end
 
  create_table "clf_overdue_daily", force: :cascade do |t|
    t.string "branch_cd", limit: 1, null: false
    t.datetime "asof", null: false
    t.string "cont_type", limit: 1, null: false
    t.integer "od1_cont"
    t.decimal "od1_amt"
    t.decimal "od1_outs"
    t.integer "od2_cont"
    t.decimal "od2_amt"
    t.decimal "od2_outs"
    t.integer "od3_cont"
    t.decimal "od3_amt"
    t.decimal "od3_outs"
    t.integer "od4_cont"
    t.decimal "od4_amt"
    t.decimal "od4_outs"
    t.string "flag", limit: 0, null: false
    t.string "cmo", limit: 15, null: false
  end
 
  create_table "clf_overdue_rental", force: :cascade do |t|
    t.string "lease_no", limit: 4, null: false
    t.datetime "periodtaken", null: false
    t.integer "period"
    t.datetime "periodstartdelay", null: false
    t.decimal "begbalor"
    t.decimal "additional"
    t.decimal "repayment"
    t.decimal "endingbalor"
    t.string "status", limit: 2
    t.decimal "recievable"
    t.decimal "uinotdue"
    t.decimal "begbal_ui"
    t.decimal "accrual1_ui"
    t.decimal "accrual2_ui"
    t.decimal "settle_ui"
    t.decimal "et_ui"
    t.decimal "endingbal_ui"
    t.decimal "principal_ui"
    t.index ["lease_no", "period", "periodtaken", "periodstartdelay"], name: "IX_CLF_Overdue_Rental"
  end
 
  create_table "clfaccident_claim", force: :cascade do |t|
    t.string "vehicle_type", limit: 255
    t.string "chasis", limit: 25
    t.string "engine", limit: 25
    t.string "policeno", limit: 25
    t.string "ins_comp", limit: 255
    t.datetime "incident_dt"
    t.datetime "upload_dt"
    t.string "upload_by", limit: 4
  end
 
  create_table "clfakta", force: :cascade do |t|
    t.string "id_akta", limit: 8, null: false
    t.string "lessee_no", limit: 6, null: false
    t.string "noakta", limit: 25, null: false
    t.datetime "aktadate"
    t.string "notaris", limit: 100
    t.string "stategazetteno", limit: 200
    t.string "id_os_certificate", limit: 4000
    t.index ["lessee_no"], name: "NC_CLFAKTA"
  end
 
  create_table "clfatr", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.decimal "adm", default: 0
    t.decimal "ins", default: 0
    t.decimal "comm", default: 0
    t.float "irr", default: 0
    t.decimal "notary", default: 0
    t.decimal "subsidy", default: 0
    t.decimal "bpkb_checking"
  end
 
  create_table "clfaudit", force: :cascade do |t|
    t.string "lease_no", limit: 4, null: false
    t.datetime "audit_date"
    t.string "chk_list", limit: 1, null: false
    t.string "desc", limit: 100
  end
 
  create_table "clfbankcf", force: :cascade do |t|
    t.string "mlcibank", limit: 1, null: false
    t.datetime "cf_date", null: false
    t.string "cf_code", limit: 1, null: false
    t.decimal "cf_amount"
  end
 
  create_table "clfbeneficiary_routine", force: :cascade do |t|
    t.string "routine_cd", limit: 14, null: false
    t.string "bank", limit: 7, null: false
    t.string "bankbranch", limit: 40
    t.string "accno", limit: 30
    t.string "accnoname", limit: 100, null: false
    t.integer "beneficiary_type"
    t.integer "resident_status"
    t.string "status", limit: 1, null: false
    t.string "npwp", limit: 16
    t.string "ktp", limit: 16
    t.integer "retained_unretained"
    t.integer "beneficiaryaccount_id"
  end
 
  create_table "clfblist", force: :cascade do |t|
    t.string "lessee_no", limit: 3
    t.string "name", limit: 20, null: false
    t.string "address", limit: 50
    t.string "city", limit: 10
    t.string "equip", limit: 10
    t.string "remark", limit: 25
    t.datetime "input"
  end
 
  create_table "clfboard", force: :cascade do |t|
    t.string "lessee_no", limit: 6, null: false
    t.string "name", limit: 50, null: false
    t.string "occupation", limit: 100, null: false
    t.string "address", limit: 125
    t.string "city", limit: 20
    t.integer "board_cd", null: false
    t.string "id_card", limit: 15
    t.decimal "saham", precision: 20, scale: 2
    t.string "board_name", limit: 50
    t.string "gender", limit: 1
    t.string "kecamatan", limit: 50
    t.string "kelurahan", limit: 50
    t.string "citizen", limit: 25
    t.string "passportno", limit: 30
    t.string "nationality", limit: 50
    t.index ["lessee_no", "name", "occupation", "address", "city", "board_cd"], name: "NC_CLFBOARD"
  end
 
  create_table "clfchecklist", force: :cascade do |t|
    t.string "lease_no", limit: 9
    t.integer "clfequip_id"
    t.string "list_cat", limit: 1
    t.string "list_desc", limit: 60
    t.boolean "list_value"
    t.string "remark", limit: 50
    t.index ["lease_no", "clfequip_id"], name: "IX_CLFCHECKLIST"
  end
 
  create_table "clfcont", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.string "lessee_no", limit: 6
    t.string "curr_code", limit: 3
    t.decimal "l_amount"
    t.decimal "security"
    t.decimal "residual"
    t.float "declrate"
    t.float "flatrate"
    t.float "overate"
    t.float "rebate"
    t.string "col_type", limit: 1
    t.string "adv_arr", limit: 0
    t.integer "l_type"
    t.string "fix_float", limit: 0
    t.integer "float_cyc"
    t.string "dl_slb", limit: 1
    t.integer "tenor"
    t.integer "pay_cycle"
    t.decimal "rental"
    t.float "mlcidecl"
    t.float "mlciflat"
    t.decimal "mlcirent"
    t.float "mlcitax"
    t.integer "notaryfee"
    t.integer "otherfee"
    t.integer "g_term"
    t.integer "g_period"
    t.float "g_int_rate"
    t.decimal "g_int_amt"
    t.string "corp_ret", limit: 0
    t.string "cons_leas", limit: 0
    t.string "cmo", limit: 15
    t.string "upd_stat", limit: 0, default: "NY"
    t.datetime "con_date"
    t.datetime "execution"
    t.datetime "collection"
    t.string "pendreas", limit: 37
    t.string "appl_no", limit: 11
    t.float "disc_mlci"
    t.string "purpoffinc", limit: 7
    t.float "disc_cust", default: 0
    t.decimal "refund_supp", default: 0
    t.string "col_type_supp", limit: 1, default: "BG"
    t.decimal "admfee", default: 0
    t.string "branch_cd", limit: 1
    t.boolean "flgdel"
    t.string "contsts", limit: 1
    t.decimal "income"
    t.string "oldlease_no", limit: 8
    t.datetime "et_dt"
    t.string "input_by", limit: 25
    t.datetime "pdcreceiv"
    t.decimal "otherloan"
    t.string "oldleaseno", limit: 50
    t.float "declrate1000"
    t.float "flatrate1000"
    t.integer "tenor1000"
    t.string "notary_no", limit: 3
    t.decimal "notary"
    t.decimal "fiduciary"
    t.decimal "gross"
    t.decimal "subsidy"
    t.string "disb_type", limit: 1
    t.string "cont_type", limit: 3, null: false
    t.string "notes"
    t.string "pending_notes", limit: 2000
    t.decimal "provision"
    t.decimal "comm_provision"
    t.string "fa_sts", limit: 3
    t.string "incentive", limit: 1, default: "0"
    t.decimal "businesstrip_fee"
    t.decimal "subsidy_supp"
    t.boolean "writeoff", default: false
    t.string "status_wo", limit: 2
    t.index ["execution", "appl_no"], name: "CLFCONT_CNI_1"
    t.index ["lease_no", "cons_leas", "cmo", "branch_cd", "curr_code", "declrate", "mlcidecl", "appl_no", "flgdel", "execution"], name: "CLFCONT_nc5"
    t.index ["lease_no", "lessee_no", "curr_code", "l_amount", "security", "residual", "declrate", "flatrate", "overate", "rebate", "col_type", "adv_arr", "l_type", "fix_float", "float_cyc", "dl_slb", "tenor", "pay_cycle", "rental", "mlcidecl", "mlciflat", "mlcirent", "mlcitax", "notaryfee", "otherfee", "g_term", "g_period", "g_int_rate", "g_int_amt", "corp_ret", "cons_leas", "cmo", "upd_stat", "execution", "collection", "pendreas", "appl_no", "disc_mlci", "purpoffinc", "disc_cust", "refund_supp", "col_type_supp", "admfee", "branch_cd", "flgdel", "contsts", "income", "oldlease_no", "pdcreceiv", "otherloan", "fiduciary", "gross", "subsidy", "cont_type", "pending_notes", "provision", "businesstrip_fee", "subsidy_supp", "con_date"], name: "CLFCONT_NX1"
    t.index ["lease_no", "lessee_no", "cmo", "curr_code", "cons_leas", "branch_cd", "flgdel"], name: "CLFCONT_NX2"
    t.index ["lessee_no", "tenor", "collection", "branch_cd", "writeoff", "execution"], name: "idx_test"
    t.index ["lease_no", "lessee_no", "branch_cd", "upd_stat", "writeoff", "execution"], name: "idx_test2"
    t.index ["lease_no", "overate", "curr_code", "cmo", "lessee_no", "execution", "writeoff", "branch_cd", "upd_stat"], name: "IX_CLFCONT_ADD_IX"
    t.index ["lease_no", "upd_stat", "oldlease_no", "et_dt", "cont_type", "branch_cd", "flgdel", "execution"], name: "IX_CLFCONT_BRANCH_CD_FLGDEL_EXECUTION"
    t.index ["lessee_no", "tenor", "curr_code", "flgdel", "writeoff", "upd_stat", "execution", "branch_cd"], name: "IX_CLFCONT_CURR_CODE_FLGDEL_WriteOff_UPD_STAT_EXECUTION_BRANCH_CD"
    t.index ["lease_no", "lessee_no", "l_type", "tenor", "con_date", "collection", "appl_no", "writeoff", "adv_arr", "cons_leas", "tenor1000", "branch_cd", "flgdel", "execution", "et_dt", "rental"], name: "IX_CLFCONT_index1"
    t.index ["lease_no", "lessee_no", "upd_stat", "flgdel"], name: "IX_CLFCONT_LESSEE_NO_NC4"
    t.index ["lease_no", "lessee_no", "upd_stat", "branch_cd", "flgdel", "execution"], name: "IX_CLFCONT_UPD_STAT_BRANCH_CD_FLGDEL_EXECUTION"
    t.index ["lessee_no", "cons_leas", "collection", "appl_no", "purpoffinc", "branch_cd", "notary_no", "upd_stat", "flgdel", "execution"], name: "IX_CLFCONT_UPDSTAT_FLGDEL_EXEC"
    t.index ["lease_no", "appl_no", "lessee_no", "flgdel", "execution"], name: "NC_CLFCONT_QRY2"
    t.index ["appl_no", "cmo", "execution"], name: "NC2_CLFCONT"
    t.index ["appl_no", "flgdel"], name: "UQ_clfcont_appl_no_flgdel", unique: true
  end
 
  create_table "clfcont_file", force: :cascade do |t|
    t.string "lease_no", limit: 12
    t.string "file_nm", limit: 200
    t.string "file_ext", limit: 10
    t.string "cat", limit: 20
    t.string "ket", limit: 200
  end
 
  create_table "clfcont_file_req", force: :cascade do |t|
    t.string "req_no", limit: 4, null: false
    t.string "supp", limit: 8
    t.string "file_nm", limit: 30
    t.string "file_ext", limit: 10
    t.string "cat", limit: 20
  end
 
  create_table "clfcont_notary", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "notary_name", limit: 100
    t.string "npwp_no", limit: 30
    t.string "npwp_address", limit: 250
    t.decimal "notary_fee_gross"
    t.decimal "notary_fee_nett"
  end
 
  create_table "clfcont_sp123", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.date "receive_payment"
    t.date "sp1"
    t.date "sp2"
    t.date "sp3"
  end
 
  create_table "clfcont_watchlist", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
  end
 
  create_table "clfdisb", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.decimal "gross_prem"
    t.decimal "net_com"
    t.decimal "disb_insc"
    t.decimal "admfee"
    t.decimal "first_inst"
    t.decimal "dp"
    t.string "branch_cd", limit: 1
    t.decimal "prov"
    t.string "split", limit: 11, null: false
    t.decimal "l_amount"
    t.string "split_others", limit: 20
    t.decimal "service_agency_fee"
    t.decimal "bbn_fee"
    t.decimal "notary_fee"
    t.decimal "businesstrip_fee"
    t.decimal "agency_fee"
    t.decimal "surveyfeegross_cigna"
  end
 
  create_table "clfequip", force: :cascade do |t|
    t.decimal "clfequip_id", precision: 10, scale: 0, null: false
    t.string "lease_no", limit: 9, null: false
    t.string "type_cd", limit: 2
    t.string "brand", limit: 3
    t.string "type", limit: 10
    t.string "model", limit: 3
    t.string "tahun", limit: 2
    t.string "supp", limit: 7
    t.string "chasis", limit: 50
    t.string "engine", limit: 50
    t.string "colour", limit: 50
    t.string "condition", limit: 5
    t.string "policeno", limit: 100
    t.string "bpkb_no", limit: 150
    t.string "bpkb_an_tp", limit: 1
    t.string "bpkb_an", limit: 50
    t.string "bpkb_addr", limit: 250
    t.string "city_bpkb", limit: 50
    t.datetime "receive"
    t.datetime "issued"
    t.string "forma", limit: 60
    t.decimal "priceotr"
    t.string "status", limit: 6
    t.string "reason", limit: 30
    t.string "remark", limit: 60
    t.string "ins_pol", limit: 50
    t.string "nopolblokir", limit: 50
    t.datetime "dateblokir"
    t.string "park_loc", limit: 250
    t.string "city_park", limit: 50
    t.boolean "flgdel"
    t.string "purpose", limit: 2
    t.string "bpkb_an_fam", limit: 11
    t.datetime "stnk"
    t.string "branch_cd", limit: 1
    t.datetime "receive_ca"
    t.integer "km"
    t.datetime "km_date"
    t.string "km_time", limit: 10
    t.datetime "approve_date"
    t.datetime "receive_ca2"
    t.string "notes", limit: 250
    t.string "prov_cd", limit: 2
    t.datetime "datecheck"
    t.datetime "temp_issued"
    t.datetime "temp_expired"
    t.datetime "temp_receive"
    t.string "karoseri", limit: 2
    t.string "remark_block", limit: 250
    t.string "remark_overdue", limit: 250
    t.string "bpkb_actual_nm", limit: 150
    t.datetime "expired_dt"
    t.string "fdc_area", limit: 2
    t.string "relation", limit: 100
    t.string "bpkb_an_sts", limit: 2
    t.datetime "stnk_validdt"
    t.string "karoseri_supp", limit: 7
    t.decimal "wheels", precision: 18, scale: 0
    t.boolean "cancel_order", default: false
    t.string "userusage", limit: 100
    t.string "accessories_supp", limit: 7
    t.string "other_supp", limit: 7
    t.string "bpkb_area_cd", limit: 4
    t.integer "off_road"
    t.string "faktur_no", limit: 100
    t.string "sertifikat_no", limit: 100
    t.string "surety_bond", limit: 100
    t.datetime "dateblocksixmonth"
    t.string "nopolblokirsixmonth", limit: 50
    t.time "issued_time"
    t.string "bpkb_placebirth", limit: 30
    t.date "bpkb_tglbirth"
    t.boolean "add_collateral"
    t.string "fund_purpose", limit: 1000
    t.string "authorized_name", limit: 100
    t.string "other_notes", limit: 500
    t.index ["condition"], name: "idx_test"
    t.index ["lease_no", "supp", "type_cd", "city_bpkb", "bpkb_an_fam", "bpkb_no", "bpkb_an", "condition", "bpkb_an_tp", "bpkb_addr", "flgdel", "stnk", "receive"], name: "IX_CLFCONT_NC1"
    t.index ["stnk", "lease_no", "flgdel"], name: "IX_CLFEQUIP"
    t.index ["lease_no", "model", "flgdel", "engine"], name: "IX_CLFEQUIP_FLGDEL_ENGINE"
    t.index ["lease_no", "brand", "type", "flgdel", "policeno"], name: "IX_CLFEQUIP_FLGDEL_POLICENO_6DBBC"
    t.index ["supp", "flgdel", "receive_ca"], name: "IX_CLFEQUIP_SUPP_NC2"
    t.index ["lease_no", "brand", "type", "chasis", "engine", "colour", "condition", "policeno", "bpkb_an", "bpkb_addr", "city_bpkb", "nopolblokir", "model", "tahun", "issued", "flgdel", "receive"], name: "NC9_CLFEQUIP"
  end
 
  create_table "clfequip_fiducia", force: :cascade do |t|
    t.decimal "clfequip_id", precision: 10, scale: 0, null: false
    t.datetime "deed_createdt"
    t.datetime "deed_dt"
    t.string "deed_no", limit: 100
    t.string "nosertfidusia", limit: 100
    t.datetime "fiduciary_dt"
    t.datetime "fiduciary_receiveddt"
    t.datetime "revised_dt"
    t.string "revised_note", limit: 250
    t.datetime "revised_finish"
    t.string "revised_pic", limit: 50
    t.decimal "revised_price"
    t.boolean "revised_done"
  end
 
  create_table "clfequip_fiducia_revisi", force: :cascade do |t|
    t.decimal "clfequip_id", precision: 10, scale: 0, null: false
    t.datetime "dateofdeed"
    t.string "deed_no", limit: 100
    t.string "fiduciary_no", limit: 100
    t.datetime "fiduciary_date"
    t.string "fiduciary_note", limit: 250
    t.decimal "revision_no", precision: 10, scale: 0, null: false
  end
 
  create_table "clfequip_supplier", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.integer "detail_no", null: false
    t.string "type_supp", limit: 2, null: false
    t.string "supp", limit: 7
  end
 
  create_table "clfequipstat", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.decimal "clfequip_id", precision: 10, scale: 0, null: false
    t.datetime "borrow_date", null: false
    t.datetime "return_date"
    t.string "borrow_by", limit: 2
    t.string "reason", limit: 50
    t.string "borrow_doc", limit: 3
    t.string "return_doc", limit: 3
    t.string "form_ac", limit: 1
    t.integer "kk"
    t.string "reason1", limit: 250
    t.string "reason2", limit: 250
    t.string "reason3", limit: 250
    t.string "coll_id", limit: 10
    t.string "fam_code", limit: 10
  end
 
  create_table "clfet", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.datetime "et_dt"
    t.decimal "et_amt"
    t.decimal "et_pay"
    t.decimal "penalty"
    t.string "branch_cd", limit: 1
    t.string "status", limit: 0
    t.decimal "bv_ccr"
    t.decimal "bv_bur"
    t.decimal "bv_ui"
    t.decimal "bv_uftc"
    t.decimal "bv_impair"
    t.decimal "bv_ci"
    t.decimal "bv_arcust"
    t.decimal "loss"
    t.datetime "process_dt"
    t.string "process_by", limit: 50
    t.decimal "disc_intrst_rfnd"
    t.string "reason", limit: 255
    t.string "notes", limit: 255
    t.decimal "bv_advbur"
    t.decimal "bv_advcol"
    t.decimal "penalty_et"
    t.string "cross_no", limit: 9
    t.decimal "bv_adjacc"
    t.string "reason_et", limit: 5000
    t.string "fundingsource", limit: 5000
  end
 
  create_table "clfflborrow", force: :cascade do |t|
    t.string "lease_no", limit: 4, null: false
    t.datetime "borrow_date", null: false
    t.datetime "return_date"
    t.string "borrow_by", limit: 100
    t.string "reason", limit: 250
  end
 
  create_table "clfgroup", force: :cascade do |t|
    t.string "grpcode", limit: 5, null: false
    t.string "grpname", limit: 100
    t.string "grpdesc", limit: 100
    t.string "grptype", limit: 1
    t.datetime "input_dt"
    t.string "update_by", limit: 50
    t.string "flgdel", limit: 1
    t.string "groupcodelbpp", limit: 8
    t.string "slikgroupcode", limit: 8
  end
 
  create_table "clfguarn", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.string "grntname", limit: 50, null: false
    t.string "grntadd", limit: 250
    t.string "grnttp", limit: 2
    t.string "grntspouse", limit: 100
    t.string "grntstatus", limit: 14
    t.string "grntakte", limit: 100
    t.string "grntcontact", limit: 200
    t.string "grntoccupation", limit: 80
    t.decimal "grntmoddasr"
    t.decimal "grntmoddstr"
    t.decimal "grntttl"
    t.string "branch_cd", limit: 1
    t.string "grncat", limit: 1
    t.datetime "grndob"
    t.string "grncity", limit: 40
    t.string "grnzipcode", limit: 6
    t.string "grnfax", limit: 20
    t.string "grnphone", limit: 60
    t.string "grnrelation", limit: 100
    t.string "grnidcard", limit: 30
    t.string "grnidfile", limit: 50
    t.datetime "grnidval"
    t.string "grnlob", limit: 250
    t.string "noofbank", limit: 5
    t.string "con_signpos", limit: 100
    t.string "grnspouseadd", limit: 250
    t.string "grnspousecity", limit: 50
    t.string "grnspousecode", limit: 6
    t.string "grnspouseidcard", limit: 30
    t.string "grnname_without_title", limit: 100
    t.string "grncitizen", limit: 25
    t.string "grnnationality", limit: 50
    t.string "grnpassportno", limit: 30
    t.string "grnnpwp", limit: 30
    t.string "grn_bitype", limit: 4
    t.string "grnname_npwp", limit: 100
    t.string "grnadd_npwp", limit: 250
    t.string "grncity_npwp", limit: 100
    t.string "grnzipcode_npwp", limit: 6
    t.string "npwp16", limit: 16
  end
 
  create_table "clfguarnakta", force: :cascade do |t|
    t.string "lease_no", limit: 4, null: false
    t.string "grntname", limit: 50, null: false
    t.string "noakta", limit: 25, null: false
    t.datetime "aktadate", null: false
    t.string "notaris", limit: 25
  end
 
  create_table "clfguarnboard", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.string "grntname", limit: 50, null: false
    t.string "boardname", limit: 50, null: false
    t.string "id_card", limit: 15
    t.string "occupation", limit: 100
    t.string "address", limit: 125
    t.string "city", limit: 10
    t.integer "board_cd", null: false
    t.integer "shareqty"
    t.decimal "sharevalue"
    t.integer "printorder"
  end
 
  create_table "clfimpair", force: :cascade do |t|
    t.string "period", limit: 6, null: false
    t.string "lease_no", limit: 9, null: false
    t.datetime "due_date", null: false
    t.decimal "od_recv"
    t.decimal "beg_int"
    t.decimal "beg_adm"
    t.decimal "beg_ins"
    t.decimal "beg_comm"
    t.decimal "add_int"
    t.decimal "add_adm"
    t.decimal "add_ins"
    t.decimal "add_comm"
    t.decimal "stl_int"
    t.decimal "stl_adm"
    t.decimal "stl_ins"
    t.decimal "stl_comm"
    t.decimal "etf_int"
    t.decimal "etf_adm"
    t.decimal "etf_ins"
    t.decimal "etf_comm"
    t.decimal "end_int"
    t.decimal "end_adm"
    t.decimal "end_ins"
    t.decimal "end_comm"
    t.decimal "beg_notary"
    t.decimal "add_notary"
    t.decimal "stl_notary"
    t.decimal "etf_notary"
    t.decimal "end_notary"
    t.decimal "beg_sub"
    t.decimal "add_sub"
    t.decimal "stl_sub"
    t.decimal "etf_sub"
    t.decimal "end_sub"
    t.decimal "beg_bpkbcheck"
    t.decimal "add_bpkbcheck"
    t.decimal "stl_bpkbcheck"
    t.decimal "etf_bpkbcheck"
    t.decimal "end_bpkbcheck"
    t.index ["period", "end_int", "end_adm", "end_ins", "end_comm", "end_notary", "end_sub", "lease_no"], name: "IX_CLFIMPAIR_Lease_no"
    t.index ["lease_no", "due_date"], name: "NC1_CLFIMPAIR_DueDate"
  end
 
  create_table "clfindus", force: :cascade do |t|
    t.string "indus_code", limit: 1, null: false
    t.string "descrip", limit: 17
  end
 
  create_table "clfinscla", force: :cascade do |t|
    t.string "ins_cd", limit: 3, null: false
    t.string "clause", limit: 2, null: false
    t.integer "tlo_ar", null: false
    t.float "net_premi", null: false
    t.float "net_rec_new", null: false
    t.float "net_rec_used", null: false
    t.float "premi", null: false
    t.string "branch_cd", limit: 1
    t.string "model", limit: 2, null: false
  end
 
  create_table "clfinslr", force: :cascade do |t|
    t.integer "id", null: false
    t.string "ins_cd", limit: 3
    t.string "model", limit: 2
    t.integer "lr_age"
    t.string "lr_next", limit: 1
  end
 
  create_table "clfinspa", force: :cascade do |t|
    t.string "ins_cd", limit: 3, null: false
    t.integer "pa_amount", null: false
    t.integer "driver_fee_ins"
    t.integer "driver_fee_cust"
  end
 
  create_table "clfinspre", force: :cascade do |t|
    t.string "ins_cd", limit: 3, null: false
    t.string "model", limit: 2, null: false
    t.decimal "l_amount", null: false
    t.integer "tlo_ar", null: false
    t.float "net_premi", null: false
    t.float "net_rec_new", null: false
    t.float "net_rec_used"
    t.float "premi", null: false
    t.string "branch_cd", limit: 1
    t.string "usage", limit: 1
  end
 
  create_table "clfinsseat", force: :cascade do |t|
    t.string "ins_cd", limit: 3, null: false
    t.integer "seat_amount", null: false
    t.integer "seat", null: false
    t.integer "seat_fee_ins"
    t.integer "seat_fee_cust"
  end
 
  create_table "clfinstpl", force: :cascade do |t|
    t.string "ins_cd", limit: 3
    t.string "model", limit: 2
    t.integer "tlo_ar"
    t.integer "tpl_amt"
    t.integer "tpl_fee"
    t.integer "tpl_fee2"
    t.string "branch_cd", limit: 1
    t.index ["tpl_amt", "ins_cd", "model"], name: "IX_CLFINSTPL_INS_CD_MODEL"
  end
 
  create_table "clfinsu", force: :cascade do |t|
    t.string "ins_pol", limit: 50, null: false
    t.string "lease_no", limit: 9, null: false
    t.datetime "ins_dt1"
    t.datetime "ins_dt2"
    t.string "ins_cd", limit: 3
    t.integer "pay_method"
    t.decimal "creditamt", default: 0
    t.datetime "cover"
    t.string "remark", limit: 25
    t.decimal "commadmfee", default: 0
    t.string "police_no", limit: 50
    t.string "model", limit: 2
    t.string "condition", limit: 5
    t.string "flgdel", limit: 1
    t.datetime "paytoinscompdate"
    t.string "branch_cd", limit: 1
    t.integer "total_seat"
    t.decimal "specialrate", precision: 5, scale: 2
    t.decimal "grossprem"
    t.index ["lease_no", "flgdel"], name: "IX_clfinsu_leaseno_flgdel", unique: true
    t.index ["ins_dt1", "ins_dt2", "ins_cd", "grossprem", "flgdel", "cover"], name: "NC_CLFINSU"
  end
 
  create_table "clfinsu_cancelation", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.date "canceldate"
    t.decimal "refundestimation"
    t.string "remarkrefund", limit: 50
    t.decimal "amountreceived"
    t.date "fundreceivedate"
    t.date "createdate"
    t.string "createby", limit: 4
    t.date "updatedate"
    t.string "updateby", limit: 4
  end
 
  create_table "clfinsud", force: :cascade do |t|
    t.string "ins_pol", limit: 50, null: false
    t.decimal "ins_amt"
    t.integer "year_no", null: false
    t.decimal "tpl_amt"
    t.integer "tlo_ar"
    t.integer "clause"
    t.decimal "prer_amt"
    t.decimal "prep_amt"
    t.datetime "prep_dt"
    t.boolean "flgdel", default: false
    t.string "lease_no", limit: 9
    t.integer "pa_amount"
    t.integer "seat"
    t.decimal "seat_amount"
    t.decimal "specialrate", precision: 5, scale: 2
  end
 
  create_table "clfkomis", force: :cascade do |t|
    t.string "trcode", limit: 1
    t.string "voucher", limit: 5
    t.string "lease_no", limit: 9, null: false
    t.string "sales_no", limit: 7, null: false
    t.decimal "fee"
    t.date "pay_dt"
    t.decimal "pay_amount"
    t.string "sd_type", limit: 0, null: false
    t.string "pay_type", limit: 2
    t.string "no_pay", limit: 25
    t.string "branch_cd", limit: 1
    t.decimal "taxamount"
    t.decimal "ppnamount"
    t.decimal "grossamount"
    t.index ["lease_no", "voucher"], name: "CLFKOMIS_NC1"
    t.index ["lease_no", "fee", "sd_type", "sales_no"], name: "IX_CLFKOMIS_3"
    t.index ["sales_no", "fee", "pay_amount", "pay_dt"], name: "IX_CLFKOMIS_PAY_DT"
  end
 
  create_table "clfkomis_hold", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.string "sales_no", limit: 6, null: false
    t.date "hold_date"
    t.date "release_date"
    t.string "create_by", limit: 4
    t.date "create_date"
    t.string "modified_by", limit: 4
    t.date "modified_date"
  end
 
  create_table "clfkwitansi", force: :cascade do |t|
    t.string "kwitansi_no", limit: 7, null: false
    t.datetime "kwitansi_dt"
    t.string "kwitansi_type", limit: 2
    t.string "lease_no", limit: 9
    t.string "receiver", limit: 100
    t.string "paid_by", limit: 25
    t.decimal "et"
    t.decimal "dp"
    t.decimal "installment"
    t.decimal "penalty"
    t.decimal "subsidy"
    t.decimal "insurance"
    t.decimal "emploan"
    t.decimal "fixa"
    t.decimal "fiducia"
    t.decimal "others"
    t.string "branch_cd", limit: 1, null: false
    t.string "flag", limit: 1
    t.datetime "create_dt"
    t.decimal "subsidy_apm"
    t.decimal "incentive_apm"
    t.string "currency", limit: 3
    t.decimal "beamaterai", default: 0
    t.index ["kwitansi_no", "kwitansi_dt", "branch_cd"], name: "IX_CLFKWITANSI_Branch_cd"
  end
 
  create_table "clflawfee", force: :cascade do |t|
    t.string "law_fee_cd", limit: 3, null: false
    t.string "name", limit: 15
    t.string "address", limit: 125
    t.string "npwp", limit: 15
    t.float "tax"
    t.string "idcard", limit: 15
    t.string "accname", limit: 12
    t.string "bank", limit: 3
    t.string "branch_bank", limit: 15
    t.string "accno", limit: 10
    t.string "typelawfee", limit: 1
    t.boolean "paid"
  end
 
  create_table "clfless", force: :cascade do |t|
    t.string "lessee_no", limit: 6, null: false
    t.string "lessee_nm", limit: 100
    t.string "address1", limit: 250
    t.string "city1", limit: 50
    t.string "phone1", limit: 60
    t.string "address2", limit: 250
    t.string "city2", limit: 50
    t.string "phone2", limit: 60
    t.string "address3", limit: 250
    t.string "city3", limit: 50
    t.string "phone3", limit: 60
    t.string "lessee_tp", limit: 1
    t.string "gender", limit: 0
    t.string "placebirth", limit: 15
    t.date "tglbirth"
    t.string "religion", limit: 1
    t.string "marital", limit: 0
    t.string "id_card", limit: 15
    t.string "fam_card", limit: 12
    t.string "npwp", limit: 15
    t.string "indus_code", limit: 6, null: false
    t.string "relation", limit: 0
    t.string "remark", limit: 50
    t.datetime "review"
    t.string "contact", limit: 50
    t.string "flgdel", limit: 1
    t.string "occupation", limit: 40
    t.string "zipcode1", limit: 10
    t.string "zipcode2", limit: 10
    t.string "zipcode3", limit: 10
    t.string "custprofile", limit: 2
    t.string "email1", limit: 75
    t.string "email2", limit: 75
    t.boolean "send_sms", default: true
    t.string "spouse", limit: 100
    t.string "spouseaddr", limit: 250
    t.string "aktecity", limit: 25
    t.string "citizen", limit: 12
    t.string "mother", limit: 25
    t.string "area_cd", limit: 4
    t.string "cust_type", limit: 4, null: false
    t.string "apless", limit: 6
    t.datetime "modified"
    t.string "modifier", limit: 50
    t.string "branch_address", limit: 250
    t.string "branch_city", limit: 50
    t.string "branch_phone", limit: 50
    t.string "address_status", limit: 2
    t.string "mobile_phone1", limit: 200
    t.string "mobile_phone2", limit: 20
    t.string "mobile_phone3", limit: 20
    t.string "fax1", limit: 20
    t.string "fax2", limit: 20
    t.string "fax3", limit: 20
    t.string "address4", limit: 250
    t.string "city4", limit: 50
    t.string "zipcode4", limit: 10
    t.string "phone4", limit: 20
    t.string "fax4", limit: 20
    t.string "address5", limit: 250
    t.string "city5", limit: 50
    t.string "zipcode5", limit: 10
    t.string "phone5", limit: 20
    t.string "fax5", limit: 20
    t.string "grpcode", limit: 6
    t.string "nationality", limit: 50
    t.string "id_card_file", limit: 200
    t.datetime "id_card_valid"
    t.string "fam_card_file", limit: 200
    t.string "lessee_cat", limit: 2
    t.string "fs_curr", limit: 3
    t.string "lob", limit: 250
    t.string "other_phone1", limit: 60
    t.string "other_phone2", limit: 60
    t.string "other_phonenotes1", limit: 60
    t.string "other_phonenotes2", limit: 60
    t.integer "business_size"
    t.decimal "spouse_income"
    t.string "npwp16", limit: 16
    t.index ["apless"], name: "IX_CLFLESS_APLESS"
    t.index ["lessee_no", "grpcode"], name: "IX_CLFLESS_GrpCode_6BF72"
    t.index ["lessee_no", "address1", "city1", "phone1", "lessee_nm"], name: "IX_CLFLESS_LESSEE_NM"
  end
 
  create_table "clfless_address", force: :cascade do |t|
    t.string "apless", limit: 6, null: false
    t.string "address_type", limit: 50, null: false
    t.string "address", limit: 250
    t.string "city", limit: 50
    t.string "zipcode", limit: 5
    t.string "kecamatan", limit: 100
    t.string "kelurahan", limit: 100
    t.string "rt", limit: 5
    t.string "rw", limit: 5
    t.string "area_cd", limit: 4
  end
 
  create_table "clfless_contact", force: :cascade do |t|
    t.string "apless", limit: 6, null: false
    t.string "contact_type", limit: 50, null: false
    t.string "contact_no", limit: 50
    t.string "other_notes", limit: 60
  end
 
  create_table "clfless_status", force: :cascade do |t|
    t.string "lessee_no", limit: 6
    t.boolean "isactive"
    t.string "created_by_app", limit: 3
    t.string "created_by", limit: 5
    t.datetime "created_dt", default: "getdate", null: false
  end
 
  create_table "clfnotary", force: :cascade do |t|
    t.string "notary_no", limit: 3, null: false
    t.string "fdc_area", limit: 2, null: false
    t.decimal "otr_min", null: false
    t.decimal "otr_max"
    t.decimal "nett_notary"
    t.decimal "nett_fiduciary"
    t.decimal "gross"
    t.decimal "revised_price"
  end
 
  create_table "clfnotary_area", force: :cascade do |t|
    t.string "notary_no", limit: 3, null: false
    t.string "fdc_area", limit: 2, null: false
    t.string "fdc_area_desc", limit: 50
    t.string "reviewed_by", limit: 50
    t.datetime "reviewed_date"
  end
 
  create_table "clfpay", force: :cascade do |t|
    t.string "oldleaseno", limit: 127
    t.string "lease_no", limit: 9, null: false
    t.integer "period", null: false
    t.datetime "date_due"
    t.float "int_pp"
    t.decimal "rental"
    t.decimal "accrual1"
    t.decimal "accrual2"
    t.decimal "l_income"
    t.decimal "i_recovery"
    t.decimal "outs_princ"
    t.decimal "un_income"
    t.decimal "oust_rec"
    t.datetime "date_pay"
    t.decimal "payment"
    t.decimal "quarrel_payment"
    t.string "upd_stat", limit: 127
    t.string "l_type", limit: 1
    t.decimal "adj_rec", default: 0
    t.decimal "adj_ui", default: 0
    t.string "branch_cd", limit: 1
    t.decimal "l_income_psak"
    t.decimal "i_recovery_psak"
    t.decimal "outs_princ_psak"
    t.decimal "un_income_psak"
    t.decimal "atribute"
    t.decimal "atr_accrual1"
    t.decimal "atr_accrual2"
    t.float "irr"
    t.index ["lease_no", "rental", "atribute", "atr_accrual1", "atr_accrual2", "period"], name: "CLFPAY_IX2"
    t.index ["lease_no", "date_due", "period"], name: "IX_CLFPAY"
    t.index ["lease_no", "period", "rental", "payment", "date_pay"], name: "NC3_CLFPAY"
    t.index ["lease_no", "payment", "date_pay", "date_due"], name: "NCI_CLFPAY_1"
  end
 
  create_table "clfpay_history", force: :cascade do |t|
    t.string "cd_history_clfpay", limit: 13, null: false
    t.string "lease_no", limit: 9, null: false
    t.integer "period", null: false
    t.string "cd_history_bgiro", limit: 13, null: false
    t.index ["cd_history_bgiro"], name: "CLFPAY_HISTORY_IXBgiro"
    t.index ["lease_no", "period", "cd_history_bgiro"], name: "CLFPAY_HISTORY_NC6"
    t.index ["lease_no", "period"], name: "IX_CLFPAY_HISTORY"
  end
 
  create_table "clfpay_rescheduling", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.integer "period", null: false
    t.decimal "accrual_1"
    t.decimal "accrual_2"
    t.float "irr"
    t.decimal "l_income_psak"
    t.decimal "un_income_psak"
    t.decimal "i_recovery_psak"
    t.decimal "outs_princ_psak"
    t.decimal "ajeday1"
    t.decimal "accrual_1_aje"
    t.decimal "accrual_2_aje"
    t.decimal "endday1"
    t.decimal "balday1loss"
  end
 
  create_table "clfpenalty", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.datetime "penaltydate"
    t.decimal "penaltyamount", null: false
    t.string "paidby", limit: 10
    t.string "bank", limit: 7
    t.string "voucher", limit: 11
    t.string "trcode", limit: 1
    t.string "branch_cd", limit: 1
    t.string "cd", limit: 0
    t.index ["lease_no", "cd"], name: "IX_CLFPENALTY"
  end
 
  create_table "clfpendingdoc", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.string "description", limit: 255
    t.datetime "promsdate"
    t.datetime "promsgirodate"
  end
 
  create_table "clfprincipal", force: :cascade do |t|
    t.string "sk_no", limit: 50, null: false
    t.string "sk_code", limit: 5
    t.string "branch_city", limit: 25
    t.string "principal", limit: 50
    t.string "endorsee", limit: 50
    t.string "siup", limit: 1
    t.string "tdp", limit: 1
    t.string "npwp", limit: 1
    t.string "domicile", limit: 1
    t.datetime "printdate"
    t.datetime "periode"
    t.datetime "asof"
    t.string "branch_cd", limit: 1
  end
 
  create_table "clfprincipal_detail", force: :cascade do |t|
    t.string "sk_no", limit: 50, null: false
    t.string "branch_cd", limit: 1
    t.string "police_no", limit: 100, null: false
  end
 
  create_table "clfrecon", force: :cascade do |t|
    t.string "type", limit: 1, null: false
    t.string "period", limit: 4, null: false
    t.integer "outs_unit"
    t.integer "outs_more"
    t.integer "outs_bpkb"
    t.string "branch", limit: 1, null: false
    t.integer "outs_borr"
    t.integer "outs_addcoll"
  end
 
  create_table "clfroutine", force: :cascade do |t|
    t.string "routine_cd", limit: 14, null: false
    t.datetime "routine_date"
    t.string "routine_type_cd", limit: 3
    t.datetime "pay_date_before"
    t.datetime "pay_date"
    t.string "payto", limit: 15
    t.string "payby", limit: 4
    t.string "girono", limit: 50
    t.string "remark1", limit: 200
    t.string "remark2", limit: 200
    t.string "branch_cd", limit: 1
    t.string "curr_code", limit: 1
    t.decimal "trans_rate"
    t.decimal "tax_rate"
    t.string "voucher", limit: 5
    t.datetime "voucdate"
    t.string "voucher_jv", limit: 5
    t.string "coalink", limit: 50
    t.string "vendortype", limit: 10
    t.string "naturatype", limit: 10
    t.string "created_by", limit: 20
    t.datetime "created_date"
    t.string "modified_by", limit: 20
    t.datetime "modified_date"
    t.string "branchvendor_id", limit: 2
    t.string "retained_category", limit: 6
    t.string "memono", limit: 50
    t.index ["routine_date", "routine_cd", "voucher", "voucdate"], name: "IX_CLFROUTINE_VOUCHER_VOUCDATE"
    t.index ["routine_cd", "payto", "payby", "remark1", "remark2", "curr_code", "trans_rate", "tax_rate", "vendortype", "branch_cd", "routine_date"], name: "NC2_CLFROUTINE"
  end
 
  create_table "clfroutinedetail", force: :cascade do |t|
    t.string "routine_cd", limit: 14, null: false
    t.string "rtypecd", limit: 1, null: false
    t.string "rdetailcd", limit: 2, null: false
    t.string "ritemcat", limit: 6
    t.string "regular", limit: 0
    t.decimal "amount"
    t.decimal "totlasbal"
    t.decimal "totcurbal"
    t.decimal "tax"
    t.string "branch_cd", limit: 1, null: false
    t.decimal "km", precision: 18, scale: 0
    t.string "pos_reff", limit: 14
    t.string "payment_type", limit: 11
    t.string "costcenter_id", limit: 50
    t.index ["routine_cd"], name: "IX_CLFROUTINEDETAIL_ROUTINE_CD"
    t.index ["routine_cd", "km", "rtypecd"], name: "IX_CLFROUTINEDETAIL_RTYPECD"
  end
 
  create_table "clfroutinepeople", force: :cascade do |t|
    t.string "routine_cd", limit: 14
    t.string "rtypecd", limit: 1
    t.string "rdetailcd", limit: 2
    t.string "title", limit: 30
    t.string "peoplename", limit: 40
    t.string "companyname", limit: 40
    t.string "people_tp", limit: 5
    t.string "detail_no", limit: 1
    t.integer "routinedetail_id"
    t.index ["routine_cd"], name: "IX_CLFROUTINEPEOPLE"
    t.index ["rtypecd", "companyname"], name: "IX_CLFROUTINEPEOPLE_RTYPECD_CompanyName"
  end
 
  create_table "clfroutinesubdetail", force: :cascade do |t|
    t.string "routine_cd", limit: 14
    t.string "rtypecd", limit: 1
    t.string "rdetailcd", limit: 2
    t.string "ritemcat", limit: 1
    t.string "rsubdtlcd", limit: 2
    t.string "user", limit: 100
    t.string "div_id", limit: 10
    t.string "detail_no", limit: 1
    t.integer "term"
    t.decimal "installment"
    t.decimal "amount"
    t.string "phoneno", limit: 100
    t.string "placeocc", limit: 50
    t.string "address", limit: 255
    t.datetime "exp_date"
    t.string "tparty", limit: 100
    t.datetime "fromdt"
    t.datetime "todt"
    t.string "desc", limit: 5000
    t.string "branch_cd", limit: 1
    t.decimal "partial_amt"
    t.string "branch_sales", limit: 4
    t.decimal "kilometer", precision: 9, scale: 0
    t.integer "routinedetail_id"
    t.index ["routine_cd"], name: "IX_CLFROUTINESUBDETAIL"
    t.index ["routine_cd", "fromdt", "phoneno", "rtypecd", "ritemcat", "user", "rdetailcd"], name: "NC1_CLFROUTINESUBDETAIL"
  end
 
  create_table "clfroutinesubdetailtax", force: :cascade do |t|
    t.string "routine_cd", limit: 14, null: false
    t.string "rtypecd", limit: 1, null: false
    t.string "rdetailcd", limit: 2, null: false
    t.string "taxcd", limit: 5
    t.string "supp", limit: 3
    t.decimal "dpp"
    t.decimal "lastdpp"
    t.decimal "ltaxamt"
    t.decimal "taxamt"
    t.string "branch_cd", limit: 1, null: false
    t.float "taxrate"
    t.decimal "grosstax"
    t.integer "routinedetail_id"
  end
 
  create_table "clfsales", force: :cascade do |t|
    t.string "sales_no", limit: 7, null: false
    t.string "name", limit: 25
    t.string "address", limit: 125
    t.string "idcard", limit: 15
    t.boolean "paid"
    t.datetime "lastupdate"
    t.string "updateby", limit: 12
    t.string "bd_occupation", limit: 15
    t.string "bd_occupationother", limit: 100
    t.datetime "id_validdt"
    t.string "status", limit: 0
    t.string "dealertype", limit: 2
    t.boolean "id_cardvaliddate"
    t.boolean "id_card"
    t.boolean "addressdatachange"
    t.boolean "salesmanaccount"
    t.boolean "reactivation"
    t.boolean "otherdatachange"
    t.string "otherdatachangedetail", limit: 255
    t.string "city", limit: 100
    t.string "phonenumber", limit: 20
    t.string "remark", limit: 255
    t.boolean "id_cardattachment"
    t.boolean "bankbookattachment"
    t.boolean "salesmanformattachment"
    t.boolean "otherattachment"
    t.string "otherattachmentdetail", limit: 255
    t.string "descotherattachment", limit: 255
    t.string "sales_type", limit: 2
    t.string "created_by", limit: 25
    t.string "initial_sales_no", limit: 8
    t.string "phone", limit: 40
    t.string "id_cmo", limit: 10
    t.string "branch_cd", limit: 1
    t.string "zipcode", limit: 10
    t.string "sales_nickname", limit: 100
    t.string "fax", limit: 40
    t.datetime "create_date"
    t.string "sales_notes", limit: 5000
    t.string "broker", limit: 1
    t.boolean "idcard_validdt"
    t.string "postcode", limit: 2
    t.string "additional_notes", limit: 2000
    t.string "gender", limit: 1
    t.string "email_address", limit: 200
    t.boolean "issalestv", default: false, null: false
    t.index ["sales_no", "status", "name"], name: "IX_CLFSALES_NC2"
  end
 
  create_table "clfsales_file", force: :cascade do |t|
    t.string "sales_no", limit: 6
    t.string "file_nm", limit: 40
    t.string "file_ext", limit: 10
    t.string "cat", limit: 20
    t.string "ket", limit: 200
    t.index ["sales_no", "cat", "ket"], name: "IX_CLFSALES_FILE_SALES_NO"
  end
 
  create_table "clfsales_history", force: :cascade do |t|
    t.string "sales_no", limit: 7
    t.string "supp", limit: 7
    t.string "bd_occupation", limit: 2
    t.string "bd_occupation_other", limit: 100
    t.string "update_by", limit: 4
    t.datetime "update_date"
    t.boolean "isactive"
  end
 
  create_table "clfsales_hold", force: :cascade do |t|
    t.string "sales_no", limit: 7
    t.datetime "hold_date"
    t.datetime "released_date"
    t.datetime "created_date"
    t.string "created_by", limit: 5
    t.datetime "update_date"
    t.string "update_by", limit: 5
  end
 
  create_table "clfsalespic", force: :cascade do |t|
    t.string "sales_no", limit: 7, null: false
    t.string "contact_name", limit: 50
    t.string "contact_idcard", limit: 30
    t.datetime "contact_idvaliddt"
    t.string "contact_address", limit: 250
    t.string "contact_city", limit: 100
    t.string "contact_phone", limit: 20
    t.string "contact_position", limit: 100
    t.string "contact_positionother", limit: 100
    t.string "contact_post", limit: 10
    t.string "occupation", limit: 15
    t.string "email_address", limit: 200
  end
 
  create_table "clfstep", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.integer "step", null: false
    t.integer "no_step"
    t.decimal "pmt_step"
    t.decimal "mlci_step"
  end
 
  create_table "clfsupp", force: :cascade do |t|
    t.string "supp", limit: 7, null: false
    t.string "name", limit: 50, null: false
    t.string "nickname", limit: 100
    t.string "address", limit: 125
    t.string "city", limit: 10
    t.string "prov", limit: 100
    t.string "phone", limit: 30
    t.string "contact", limit: 25
    t.string "position", limit: 40
    t.string "addr_con", limit: 125
    t.string "city_con", limit: 40
    t.string "adm_name", limit: 15
    t.string "bpkbstaf", limit: 15
    t.string "branch_mgr", limit: 20
    t.string "zipcode", limit: 5
    t.string "zipcode1", limit: 5
    t.string "branch_cd", limit: 1
    t.boolean "paid"
    t.string "fax", limit: 30
    t.string "remark", limit: 125
    t.datetime "lastupd"
    t.string "supp_type", limit: 2
    t.string "brand", limit: 1
    t.datetime "ca_lastupdate"
    t.string "ca_updateby", limit: 15
    t.datetime "bd_lastupdate"
    t.string "bd_updateby", limit: 30
    t.string "bd_area", limit: 10
    t.string "cmo", limit: 15
    t.string "note1", limit: 250
    t.string "note2", limit: 250
    t.string "note3", limit: 250
    t.string "note4", limit: 250
    t.string "note5", limit: 250
    t.string "cmo_promise", limit: 500
    t.datetime "established_dt"
    t.string "business_type", limit: 100
    t.integer "market_segmentation"
    t.decimal "authorized_capital"
    t.decimal "paidin_capital"
    t.integer "totalofsalesperson"
    t.integer "salesavgpermonth"
    t.integer "expect_unitpermonth"
    t.string "explanation", limit: 1000
    t.string "summary", limit: 1000
    t.string "flgdel", limit: 1
    t.integer "bpkbcat_id"
    t.string "car_type", limit: 3
    t.decimal "credit_amount"
    t.integer "no_reg"
    t.string "idcard", limit: 60
    t.datetime "id_validdt"
    t.string "phone_con", limit: 120
    t.string "created_by", limit: 15
    t.datetime "create_date"
    t.string "supp_notes", limit: 5000
    t.boolean "id_cardlifetimestatus"
    t.string "car_condition", limit: 2
    t.string "email_address", limit: 200
    t.boolean "isactive", default: true
    t.boolean "fast_approval"
    t.string "spouse_name", limit: 100
    t.string "spouse_id_card", limit: 16
    t.boolean "isvalid_spouse_id_card"
    t.date "spouse_id_card_valid_until"
    t.boolean "spouse_status"
    t.string "spouse_address", limit: 1000
    t.string "spouse_city", limit: 250
    t.string "spouse_phone", limit: 50
    t.string "spouse_zipcode", limit: 10
    t.string "spouse_email", limit: 200
  end
 
  create_table "clfsupp_delete", force: :cascade do |t|
    t.string "supp", limit: 7, null: false
    t.string "form_no", limit: 50
    t.string "delete_by", limit: 10
    t.string "reason", limit: 250
    t.datetime "delete_date"
    t.string "attachment", limit: 50
  end
 
  create_table "clfsupp_detail", force: :cascade do |t|
    t.string "supp", limit: 9
    t.string "registration_no", limit: 9
    t.string "code", limit: 1
    t.string "name", limit: 70
    t.string "position", limit: 30
    t.string "remark", limit: 250
    t.decimal "totalofownership"
    t.datetime "start_dt"
    t.integer "totalunit"
    t.float "percentage"
  end
 
  create_table "clfsupp_doc", force: :cascade do |t|
    t.integer "no", null: false
    t.string "name", limit: 250
    t.integer "ad"
    t.integer "private"
    t.integer "company"
    t.integer "iu"
  end
 
  create_table "clfsupp_history", force: :cascade do |t|
    t.integer "no", null: false
    t.string "supp", limit: 9
    t.string "registration_no", limit: 9
    t.datetime "asof"
    t.string "code", limit: 1
    t.string "range", limit: 25
    t.decimal "amount"
    t.integer "unit"
    t.decimal "group_amount"
    t.integer "group_unit"
    t.string "remark", limit: 25
  end
 
  create_table "clfsupp_official", force: :cascade do |t|
    t.string "supp", limit: 16
    t.string "official_name", limit: 250
    t.string "position", limit: 50
    t.string "id_card_no", limit: 16
    t.boolean "isvalid_id_card"
    t.date "id_card_valid_until"
    t.string "address", limit: 1000
    t.string "city", limit: 250
    t.string "zipcode", limit: 10
    t.string "phone", limit: 30
    t.string "email", limit: 200
  end
 
  create_table "clfsupp_routine", force: :cascade do |t|
    t.string "supp", limit: 3, null: false
    t.string "name", limit: 100, null: false
    t.string "nickname", limit: 50
    t.string "address", limit: 200
    t.string "city", limit: 20
    t.string "phone", limit: 50
    t.string "contact", limit: 30
    t.string "position", limit: 50
    t.string "zipcode", limit: 8
    t.string "branch_cd", limit: 1
    t.string "fax", limit: 50
    t.string "remark", limit: 200
    t.datetime "lastupd"
    t.string "supp_by_user", limit: 8
    t.string "supp_centralized", limit: 8
    t.integer "flag_centralized"
    t.string "update_by", limit: 36
    t.string "phone_contact", limit: 50
    t.integer "flgdel"
    t.integer "cekreport"
    t.string "retained_category", limit: 10
  end
 
  create_table "clfsupp1", force: :cascade do |t|
    t.string "supp", limit: 11, null: false
    t.string "name", limit: 100
    t.string "address", limit: 250
    t.string "city", limit: 20
    t.string "zipcode", limit: 10
    t.string "phone", limit: 60
    t.string "accno", limit: 20
    t.string "bank", limit: 40
    t.string "accnoname", limit: 40
    t.string "bankbranch", limit: 40
    t.string "dealercd", limit: 7
    t.string "contact", limit: 30
    t.string "occupation", limit: 50
    t.string "supp_type", limit: 2
    t.string "supp_cat", limit: 1
    t.string "lessee_no", limit: 6
  end
 
  create_table "clfsupp2", force: :cascade do |t|
    t.string "supp", limit: 9, null: false
    t.string "name", limit: 50, null: false
    t.string "address", limit: 125
    t.string "city", limit: 10
    t.string "zipcode", limit: 5
    t.string "phone", limit: 30
    t.string "accno", limit: 10
    t.string "bank", limit: 20
    t.string "accnoname", limit: 20
    t.string "bankbranch", limit: 20
    t.string "dealercd", limit: 5
  end
 
  create_table "clfwitholdingtax", force: :cascade do |t|
    t.string "trcode", limit: 1
    t.string "voucherno", limit: 13
    t.string "pph_id", limit: 5
    t.datetime "paymentdate"
    t.string "honorercode", limit: 3
    t.string "honorertypeid", limit: 5
    t.string "buktipotong", limit: 30
    t.decimal "grossamount"
    t.decimal "taxamount"
    t.decimal "netamount"
    t.string "branch_cd", limit: 1
    t.decimal "ppnamount"
    t.decimal "taxrate", precision: 6, scale: 2
    t.string "npwp_no", limit: 30
    t.string "vendorname", limit: 200
    t.string "npwp_address", limit: 250
    t.string "signer", limit: 1
    t.decimal "grossamount_skb"
    t.integer "dpp"
    t.boolean "hasnpwp"
    t.string "nik", limit: 30
    t.string "phone_no", limit: 30
    t.string "ebukpot_cd", limit: 10
    t.string "hasfacility", limit: 3
    t.string "skb_no", limit: 50
    t.string "dtp_no", limit: 50
    t.string "ntpn_dtp", limit: 50
    t.string "documenttype", limit: 2
    t.string "document_no", limit: 200
    t.date "documentdate"
    t.string "updateby", limit: 4
    t.datetime "updatedate"
    t.string "tin", limit: 250
    t.date "birthdate"
    t.string "paspor_no", limit: 30
    t.string "kitas_no", limit: 30
    t.string "kodenegara", limit: 3
    t.decimal "tarif_skd", precision: 5, scale: 2
    t.decimal "usd_amount"
    t.string "skb_skd_no", limit: 50
    t.date "ntpn_date"
    t.string "ntpn_no", limit: 100
    t.index ["voucherno", "paymentdate", "honorercode", "buktipotong", "trcode"], name: "IX_CLFWitholdingTax"
    t.index ["trcode", "voucherno", "paymentdate", "honorercode", "honorertypeid"], name: "IX_CLFWITHOLDINGTAX_1"
    t.index ["honorercode", "honorertypeid"], name: "IX_CLFWITHOLDINGTAX_2"
    t.index ["voucherno", "paymentdate", "honorercode", "honorertypeid", "buktipotong", "grossamount", "taxamount", "branch_cd", "pph_id", "trcode"], name: "IX_CLFWitholdingTax_3"
  end
 
  create_table "clfwitholdingtaxcumulative", force: :cascade do |t|
    t.string "honorercode", limit: 3, null: false
    t.datetime "period", null: false
    t.decimal "bruto"
    t.decimal "taxwitholding"
    t.decimal "taxpayable"
    t.string "branch_cd", limit: 1, null: false
  end
 
  create_table "clletter", force: :cascade do |t|
    t.string "lt_type", limit: 3, null: false
    t.string "lt_no", limit: 3, null: false
    t.datetime "lt_date", null: false
    t.string "lessee_no", limit: 7
    t.string "collector1", limit: 100
    t.string "collector2", limit: 100
    t.string "collector3", limit: 100
    t.string "occup", limit: 100
    t.string "branch_cd", limit: 1, null: false
    t.string "assign_task", limit: 5
    t.index ["lt_no", "lt_date", "lt_type", "branch_cd"], name: "IX_CLLETTER_LT_TYPE_BRANCH_CD"
  end
 
  create_table "cmompe", force: :cascade do |t|
    t.string "cmo", limit: 15, null: false
    t.string "branch", limit: 1, null: false
    t.datetime "period", null: false
    t.decimal "mnc", null: false
    t.decimal "mnl", null: false
    t.decimal "mni"
    t.decimal "mnf"
    t.decimal "mns"
    t.decimal "mnu"
    t.decimal "mnd"
    t.decimal "mnw"
    t.decimal "ync", null: false
    t.decimal "ynl", null: false
    t.decimal "yni"
    t.decimal "ynf"
    t.decimal "yns"
    t.decimal "ynu"
    t.decimal "ynd"
    t.decimal "ynw"
    t.integer "muc", null: false
    t.integer "mul", null: false
    t.integer "mui"
    t.integer "muf"
    t.integer "mus"
    t.integer "muu"
    t.integer "mud"
    t.integer "muw"
    t.integer "yuc", null: false
    t.integer "yul", null: false
    t.integer "yui"
    t.integer "yuf"
    t.integer "yus"
    t.integer "yuu"
    t.integer "yud"
    t.integer "yuw"
    t.float "wirc", null: false
    t.float "wirl", null: false
    t.float "wiri"
    t.float "wirf"
    t.float "wirs"
    t.float "wiru"
    t.float "wird"
    t.float "wirw"
    t.float "wirtot", null: false
    t.decimal "os", null: false
    t.decimal "osovd", null: false
    t.decimal "persenos", null: false
    t.integer "oscon", null: false
    t.integer "osconovd", null: false
    t.float "wirctot"
    t.float "wirltot"
    t.float "wiritot"
    t.float "wirftot"
    t.float "wirstot"
    t.float "wirutot"
    t.float "wirdtot"
    t.float "wirwtot"
    t.float "wirgt"
    t.datetime "beforemonth"
  end
 
  create_table "collateral_object", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.decimal "l_amount"
    t.string "type_cd", limit: 2, null: false
    t.string "brand", limit: 3, null: false
    t.string "model", limit: 2, null: false
    t.string "type", limit: 5
    t.string "karoseri", limit: 2
    t.string "year", limit: 4
    t.string "condition", limit: 5
    t.string "chasis", limit: 25
    t.string "engine", limit: 25
    t.string "colour", limit: 50
    t.string "policeno", limit: 100
    t.string "park_loc", limit: 250
    t.string "city_park", limit: 50
    t.string "bpkb_no", limit: 20
    t.string "bpkb_an", limit: 100
    t.string "bpkb_addr", limit: 250
    t.string "bpkb_area_cd", limit: 4
    t.string "city_bpkb", limit: 50
    t.string "notary_no", limit: 10
    t.string "fdc_area", limit: 2
    t.datetime "approve_date"
    t.datetime "dateblocksixmonth"
    t.datetime "dateblokir"
    t.datetime "datecheck"
    t.datetime "expired_dt"
    t.datetime "issued_dt"
    t.time "issued_time"
    t.string "nopolblokirsixmonth", limit: 30
    t.string "notes", limit: 250
    t.datetime "receive_ca"
    t.datetime "receive_ca2"
    t.string "remark", limit: 60
    t.string "remark_block", limit: 250
    t.string "remark_overdue", limit: 250
    t.string "nopolblokir", limit: 30
    t.datetime "create_dt", null: false
  end
 
  create_table "collectorreportvisit", force: :cascade do |t|
    t.datetime "visit_date", null: false
    t.string "employee_id", limit: 15, null: false
    t.string "lease_no", limit: 9, null: false
    t.datetime "date_due", null: false
    t.integer "overdue", null: false
    t.decimal "rental", null: false
    t.string "created_by", limit: 25
    t.datetime "created_dt"
    t.integer "area_id"
    t.index ["visit_date", "employee_id", "created_by"], name: "IX_COLLECTORREPORTVISIT_Created_By_F3A75"
    t.index ["date_due", "rental", "employee_id"], name: "IX_COLLECTORREPORTVISIT_EMPLOYEE_ID"
  end
 
  create_table "comm_party", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.decimal "total_income"
    t.decimal "comm_thirdparty"
    t.decimal "percentage", precision: 5, scale: 1
  end
 
  create_table "complaint_appr", force: :cascade do |t|
    t.string "complaint_sts", limit: 4
    t.string "lessee_no", limit: 6
    t.string "employee_id", limit: 5
    t.string "no_report", limit: 100
    t.string "appr_sts", limit: 2
    t.string "appr_name", limit: 50
    t.string "next_appr", limit: 50
    t.datetime "appr_date"
    t.string "remark", limit: 300
  end
 
  create_table "complaint_approval_master", force: :cascade do |t|
    t.string "city", limit: 50, null: false
    t.integer "complaint"
    t.integer "complaint_status", null: false
    t.string "position_id", limit: 16
    t.string "employee_id", limit: 15
  end
 
  create_table "complaint_contract", force: :cascade do |t|
    t.string "no_report", limit: 50, null: false
    t.string "lease_no", limit: 9, null: false
  end
 
  create_table "complaint_data", force: :cascade do |t|
    t.string "no_report", limit: 50, null: false
    t.string "no_submit_ojk", limit: 30
    t.string "no_doc_ojk", limit: 50
    t.datetime "ojk_dt"
    t.string "branch_cd", limit: 1
    t.string "lessee_no", limit: 6
    t.string "lessee_nm", limit: 100
    t.string "phone", limit: 60
    t.string "complaint", limit: 2
    t.string "other_complaint", limit: 1000
    t.string "remark1", limit: 5000
    t.string "complaint_status", limit: 2
    t.string "remark2", limit: 5000
    t.string "cause_complaint", limit: 2
    t.string "other", limit: 250
    t.string "informan", limit: 100
    t.datetime "create_rpt"
    t.datetime "done_rpt"
    t.string "no_registrasi", limit: 50
    t.datetime "tgl_kejadian"
    t.boolean "revisi"
  end
 
  create_table "complaint_detail", force: :cascade do |t|
    t.string "no_report", limit: 50, null: false
    t.string "address", limit: 1000
    t.string "email", limit: 100, null: false
  end
 
  create_table "complaint_pic", force: :cascade do |t|
    t.string "employee_id", limit: 15, null: false
    t.boolean "isdefault", default: false
    t.datetime "created_dt", default: "getdate"
    t.string "created_by", limit: 15, null: false
    t.datetime "updated_dt"
    t.string "updated_by", limit: 15
  end
 
  create_table "complaint_pic_availability", force: :cascade do |t|
    t.string "employee_id", limit: 15
    t.datetime "datefrom"
    t.datetime "dateto"
    t.string "employee_substitution_id", limit: 15
    t.datetime "created_dt", default: "getdate"
    t.string "created_by", limit: 15, null: false
    t.string "remark", limit: 7
    t.integer "isactive", null: false
  end
 
  create_table "con_date_old", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.date "con_date"
    t.string "newappl_no", limit: 11
    t.datetime "modifieddate"
  end
 
  create_table "confirmation_customer", force: :cascade do |t|
    t.date "asof", null: false
    t.string "courier", limit: 20, null: false
    t.string "lease_no", limit: 9, null: false
    t.string "reason", limit: 50
    t.boolean "isretur"
  end
 
  create_table "contract_addendum", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.integer "number_addendum", null: false
    t.datetime "addendum_date"
  end
 
  create_table "contract_with_additional", force: :cascade do |t|
    t.string "coll_id", limit: 10, null: false
    t.string "lease_no", limit: 9, null: false
    t.string "appl_no", limit: 11
    t.integer "detail_no"
  end
 
  create_table "contractwriteoff", force: :cascade do |t|
    t.string "leaseno", limit: 9, null: false
    t.date "writeoffdate"
    t.decimal "wo_amount"
    t.date "recoverydate"
    t.decimal "recoveryamount"
    t.date "releasedate"
    t.string "remark", limit: 20
  end
 
  create_table "copy_cam", force: :cascade do |t|
    t.string "appl_no_new", limit: 11, null: false
    t.string "appl_no_old", limit: 11
    t.datetime "create_date_old"
  end
 
  create_table "customer_document", force: :cascade do |t|
    t.string "appl_no", limit: 11
    t.string "file_document", limit: 4000
    t.string "organization_type", limit: 4000
    t.integer "doc_no"
    t.string "doc_type", limit: 500
    t.string "apless", limit: 6
    t.datetime "upload_dt"
    t.string "grnid", limit: 14
    t.index ["appl_no", "doc_type"], name: "IX_CUSTOMER_DOCUMENT_appl_no_doc_type"
    t.index ["apless"], name: "NC1_CUSTOMER_DOCUMENT"
  end
 
  create_table "customer_reject", force: :cascade do |t|
    t.string "cust_name", limit: 100
    t.string "reject_status", limit: 1
    t.string "create_by", limit: 4, null: false
    t.datetime "create_date", null: false
  end
 
  create_table "datamanual_wo", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.datetime "createdate"
  end
 
  create_table "deed_fee", force: :cascade do |t|
    t.string "cd", limit: 1, null: false
    t.string "lease_no", limit: 9, null: false
    t.datetime "check_dt"
    t.datetime "received_dt"
    t.decimal "deed_fee"
    t.string "notary_no", limit: 6
    t.string "remark", limit: 250
    t.string "create_by", limit: 50
    t.datetime "created_dt"
    t.decimal "profile_company_fee"
    t.string "companyname", limit: 100
    t.datetime "disbursedate"
    t.string "updateby", limit: 25
    t.datetime "updatedate"
    t.string "category", limit: 1
    t.string "customername", limit: 200
  end
 
  create_table "del_2077_asli_ri_datasearch", force: :cascade do |t|
    t.string "json_request", limit: 1500, null: false
    t.string "json_respond", limit: 1500, null: false
    t.string "requesttransactionid", limit: 50, null: false
  end
 
  create_table "del_2077_asli_ri_history", force: :cascade do |t|
    t.datetime "searchdate", null: false
    t.string "searchby", limit: 50, null: false
    t.boolean "issuccess", null: false
    t.integer "status"
    t.string "messageerror", limit: 500
    t.string "verifyby", limit: 1, null: false
    t.string "requesttransactionid", limit: 50, null: false
    t.string "respondreferenceid", limit: 50, null: false
    t.string "batchid", limit: 50, null: false
  end
 
  create_table "del_2077_asli_ri_mst_statuscode", force: :cascade do |t|
    t.string "statuscode", limit: 4, null: false
    t.string "description", limit: 500, null: false
  end
 
  create_table "del_2077_asli_ri_mst_verifyby", force: :cascade do |t|
    t.integer "verifyid", null: false
    t.string "description", limit: 1500, null: false
  end
 
  create_table "del_2077_tcalculate", force: :cascade do |t|
    t.integer "keydummy", null: false
    t.string "trcode", limit: 3
    t.string "tr_code", limit: 1
    t.string "lease_no", limit: 9
    t.string "bank", limit: 6
    t.string "girono", limit: 15
    t.decimal "gamount"
    t.decimal "transamount"
    t.string "status", limit: 0
    t.string "rejcode", limit: 1
    t.decimal "rental"
    t.decimal "ohtherinc"
    t.decimal "penalty"
    t.string "mlci", limit: 1
    t.decimal "advance"
  end
 
  create_table "del_bca_va_requestflagpaymentfrombca", force: :cascade do |t|
    t.string "va", limit: 15, null: false
    t.string "lease_no", limit: 9, null: false
    t.string "requestid", limit: 250, null: false
    t.string "json_request", limit: 8000, null: false
    t.string "referenceid", limit: 500
    t.datetime "createddate", null: false
  end
 
  create_table "del_bca_va_requestinqbillsfrombca", force: :cascade do |t|
    t.string "va", limit: 15, null: false
    t.string "lease_no", limit: 9, null: false
    t.string "requestid", limit: 250, null: false
    t.string "json_request", limit: 8000, null: false
    t.string "referenceid", limit: 500, null: false
    t.datetime "createddate", null: false
  end
 
  create_table "del_bca_va_requestinqstatusbillsfrommlci", force: :cascade do |t|
    t.string "va", limit: 15, null: false
    t.string "lease_no", limit: 9, null: false
    t.string "requestid", limit: 250, null: false
    t.string "json_request", limit: 8000, null: false
    t.string "referenceid", limit: 500, null: false
    t.datetime "createddate", null: false
  end
 
  create_table "del_bca_va_respondflagpaymentfrommlci", force: :cascade do |t|
    t.string "va", limit: 15, null: false
    t.string "lease_no", limit: 9, null: false
    t.string "requestid", limit: 250, null: false
    t.string "json_respond", limit: 8000, null: false
    t.string "referenceid", limit: 500
    t.datetime "createddate", null: false
    t.string "paymentflagstatus", limit: 2000
    t.decimal "paidamount", precision: 25, scale: 0
  end
 
  create_table "del_bca_va_respondinqbillsfrommlci", force: :cascade do |t|
    t.string "va", limit: 15, null: false
    t.string "lease_no", limit: 9, null: false
    t.string "requestid", limit: 250, null: false
    t.string "json_respond", limit: 8000, null: false
    t.string "referenceid", limit: 500, null: false
    t.datetime "createddate", null: false
    t.string "inquirystatus", limit: 2000
  end
 
  create_table "del_bca_va_respondinqstatusbillsfrombca", force: :cascade do |t|
    t.string "va", limit: 15, null: false
    t.string "lease_no", limit: 9, null: false
    t.string "requestid", limit: 250, null: false
    t.string "json_respond", limit: 8000, null: false
    t.string "referenceid", limit: 500, null: false
    t.datetime "createddate", null: false
  end
 
  create_table "deviation_dp", force: :cascade do |t|
    t.string "appl_no", limit: 11
    t.string "down_payment", limit: 2
    t.string "base_rate", limit: 2
    t.string "checked_by", limit: 4
    t.datetime "checked_date"
    t.string "update_by", limit: 4
    t.datetime "update_date"
    t.datetime "asof"
    t.string "attachment", limit: 25
  end
 
  create_table "disbursementplan", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.date "disbursementdate", null: false
    t.string "createby", limit: 15, null: false
    t.datetime "createdate", null: false
  end
 
  create_table "discountpenaltybpkb", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.datetime "finisheddate"
    t.datetime "releaseddate"
    t.decimal "totalpenalty"
    t.decimal "paymentpenalty"
    t.string "reasonoverdue", limit: 255
    t.decimal "totalbpkbcost"
    t.decimal "paymentbpkbcost"
    t.string "reasonbpkbcost", limit: 255
    t.decimal "totalbpkbblockfee"
    t.decimal "paymentbpkbblockfee"
    t.string "reasonbpkbblockfee", limit: 255
    t.string "notes", limit: 255
    t.string "create_by", limit: 4
    t.datetime "create_dt"
    t.string "update_by", limit: 4
    t.datetime "update_dt"
    t.decimal "outsglobal"
    t.decimal "totalinstallment"
    t.string "et_memo_no", limit: 16
    t.string "cross_memo_no", limit: 16
  end
 
  create_table "document_complaint", force: :cascade do |t|
    t.string "no_report", limit: 50, null: false
    t.string "documenttype", limit: 50
    t.string "documentpath", limit: 150
    t.string "documentname", limit: 100
    t.datetime "upload_dt"
  end
 
  create_table "dtproperties", force: :cascade do |t|
    t.integer "objectid"
    t.string "property", limit: 64, null: false
    t.string "value", limit: 255
    t.string "uvalue", limit: 127
    t.binary "lvalue"
    t.integer "version", default: 0, null: false
  end
 
  create_table "dukcapil_databalikan", force: :cascade do |t|
    t.string "batch_id", limit: 9, null: false
    t.string "lease_no", limit: 9, null: false
    t.string "nik", limit: 20, null: false
    t.string "no_cif", limit: 6, null: false
    t.date "disburse_date"
    t.datetime "process_date"
    t.index ["nik"], name: "IX_Dukcapil_Databalikan_1"
  end
 
  create_table "dukcapil_databalikanrespon", force: :cascade do |t|
    t.string "batch_id", limit: 9, null: false
    t.datetime "dateprocess", null: false
    t.boolean "issent", null: false
    t.string "status", limit: 200, null: false
  end
 
  create_table "dukcapil_mst_agama", force: :cascade do |t|
    t.integer "id_agama", null: false
    t.string "deskrip", limit: 50, null: false
  end
 
  create_table "dukcapil_mst_goldarah", force: :cascade do |t|
    t.integer "id_darah", null: false
    t.string "deskrip", limit: 50, null: false
  end
 
  create_table "dukcapil_mst_jeniskonsumen", force: :cascade do |t|
    t.string "jenis_konsumen", limit: 2, null: false
    t.string "description", limit: 50
  end
 
  create_table "dukcapil_mst_kelamin", force: :cascade do |t|
    t.integer "id_kelamin", null: false
    t.string "deskrip", limit: 50, null: false
  end
 
  create_table "dukcapil_mst_keluarga", force: :cascade do |t|
    t.integer "id_keluarga", null: false
    t.string "deskrip", limit: 50, null: false
  end
 
  create_table "dukcapil_mst_pekerjaan", force: :cascade do |t|
    t.integer "id_pekerjaan", null: false
    t.string "deskrip", limit: 100, null: false
  end
 
  create_table "dukcapil_mst_pendidikan", force: :cascade do |t|
    t.integer "id_pendidikan", null: false
    t.string "deskrip", limit: 100, null: false
  end
 
  create_table "dukcapil_mst_responcode", force: :cascade do |t|
    t.string "responcode", limit: 5, null: false
    t.string "respondesc", limit: 250, null: false
  end
 
  create_table "dukcapil_mst_statusobject", force: :cascade do |t|
    t.string "status_object", limit: 2, null: false
    t.string "description", limit: 200
  end
 
  create_table "dukcapil_mst_stskawin", force: :cascade do |t|
    t.integer "id_kawin", null: false
    t.string "deskrip", limit: 50, null: false
  end
 
  create_table "dukcapil_mst_tujuan", force: :cascade do |t|
    t.string "tujuan_cek", limit: 1, null: false
    t.string "description", limit: 50
  end
 
  create_table "dukcapil_mst_wilayah", force: :cascade do |t|
    t.integer "no_prop", null: false
    t.string "nama_prop", limit: 250, null: false
    t.integer "no_kab", null: false
    t.string "nama_kab", limit: 250, null: false
    t.integer "no_kec", null: false
    t.string "nama_kec", limit: 250, null: false
    t.integer "no_kel", null: false
    t.string "nama_kel", limit: 250, null: false
    t.index ["nama_kab", "no_kel", "nama_kel", "nama_kec", "no_prop", "no_kab", "no_kec"], name: "IX_Dukcapil_Mst_Wilayah"
  end
 
  create_table "dukcapil_quota", force: :cascade do |t|
    t.datetime "lastmodified", null: false
    t.integer "lastvalue", null: false
  end
 
  create_table "dukcapil_respon", force: :cascade do |t|
    t.integer "id_search", null: false
    t.string "nik", limit: 16
    t.string "namalengkap", limit: 30
    t.string "tgllahir", limit: 30
    t.string "tmplahir", limit: 30
    t.string "jnskelamin", limit: 30
    t.string "alamat", limit: 30
    t.string "noprop", limit: 30
    t.string "namaprop", limit: 30
    t.string "nokab", limit: 30
    t.string "namakab", limit: 30
    t.string "nokec", limit: 30
    t.string "namakec", limit: 30
    t.string "nokel", limit: 30
    t.string "namakel", limit: 30
    t.string "rt", limit: 30
    t.string "rw", limit: 30
    t.string "stskawin", limit: 30
    t.string "jnspekerjaan", limit: 30
    t.string "namaibu", limit: 30
    t.string "pendidikan", limit: 30
    t.string "stskeluarga", limit: 30
    t.datetime "create_date", null: false
  end
 
  create_table "dukcapil_searchdata", force: :cascade do |t|
    t.integer "id_search", null: false
    t.string "nik", limit: 16
    t.string "namalengkap", limit: 60
    t.date "tgllahir"
    t.string "tmplahir", limit: 60
    t.integer "jnskelamin"
    t.string "alamat", limit: 360
    t.integer "noprop"
    t.string "namaprop", limit: 26
    t.integer "nokab"
    t.string "namakab", limit: 27
    t.integer "nokec"
    t.string "namakec", limit: 31
    t.integer "nokel"
    t.string "namakel", limit: 44
    t.integer "rt"
    t.integer "rw"
    t.integer "stskawin"
    t.integer "jnspekerjaan"
    t.string "namaibu", limit: 60
    t.integer "pendidikan"
    t.integer "stskeluarga"
    t.datetime "create_date", null: false
  end
 
  create_table "dukcapil_searchresult", force: :cascade do |t|
    t.datetime "process_date"
    t.string "username", limit: 50
    t.string "status", limit: 50
    t.string "nik", limit: 50
    t.string "cabang", limit: 50
    t.string "tujuan_cek", limit: 50
    t.string "jenis_konsumen", limit: 50
    t.string "status_object", limit: 50
    t.string "other_object", limit: 250
    t.string "file_pdf", limit: 1000
    t.integer "id_search"
    t.integer "treshold_value"
    t.string "pathdate", limit: 2000
    t.string "file_nm", limit: 35
  end
 
  create_table "dukcapil_settings", force: :cascade do |t|
    t.string "setting_name", limit: 50, null: false
    t.integer "setting_value", null: false
  end
 
  create_table "ebankloginhistory", force: :cascade do |t|
    t.string "username", limit: 250
    t.datetime "login_date"
    t.string "browser", limit: 250
  end
 
  create_table "ebankmenu", force: :cascade do |t|
    t.integer "menu_id", null: false
    t.string "menudescription", limit: 250
  end
 
  create_table "ebankuser", force: :cascade do |t|
    t.string "employee_no", limit: 4, null: false
    t.integer "isactive", null: false
    t.date "expireson"
    t.datetime "createdate"
    t.string "createby", limit: 4
  end
 
  create_table "ebankuseraccess", force: :cascade do |t|
    t.string "employee_no", limit: 4
    t.integer "menu_id"
    t.boolean "iseditable"
    t.datetime "createdate"
  end
 
  create_table "employee_moreposition", force: :cascade do |t|
    t.string "employee_id", limit: 4, null: false
    t.string "div_id", limit: 10, null: false
    t.string "position_id", limit: 16, null: false
    t.string "branch_cd", limit: 1, null: false
  end
 
  create_table "eskd", force: :cascade do |t|
    t.string "service_type", limit: 50
    t.string "tax_type", limit: 50
    t.string "lender_id", limit: 25
    t.string "email_address", limit: 50
    t.string "cod_no", limit: 50
    t.string "agreement_no", limit: 50
    t.date "agreementdate"
    t.string "taxidentitynumber", limit: 50
    t.string "address", limit: 250
    t.string "country", limit: 50
    t.date "startperiod"
    t.date "endperiod"
    t.string "incomerecepient", limit: 50
    t.string "signatoryposition", limit: 100
    t.string "phonenumber", limit: 25
    t.string "ebukpot_cd", limit: 9
  end
 
  create_table "exportautodebet_bca", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.string "acc_no", limit: 20, null: false
    t.decimal "nominal"
    t.date "auto_debet_date"
    t.string "create_by", limit: 4
    t.datetime "create_date", default: "getdate"
  end
 
  create_table "fa_editpaymentmethod", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.string "paymethod_from", limit: 14, null: false
    t.string "paymethod_to", limit: 14, null: false
    t.integer "bgiroperiod_from", null: false
    t.integer "bgiroperiod_to", null: false
    t.string "memo_no", limit: 25, null: false
    t.string "create_by", limit: 4, null: false
    t.datetime "create_dt", default: "getdate", null: false
    t.string "executed_by_system", limit: 5
    t.datetime "executed_dt"
  end
 
  create_table "faebanking", force: :cascade do |t|
    t.string "trans_id", limit: 10, null: false
    t.string "mlcibank", limit: 1
    t.datetime "trans_dt"
  end
 
  create_table "faebankingdtl", force: :cascade do |t|
    t.string "detail_id", limit: 3, null: false
    t.string "trans_id", limit: 10
    t.string "trans_cd", limit: 3
    t.string "branch_cd", limit: 1
    t.string "curr", limit: 1
    t.decimal "amount"
    t.string "transfer_to", limit: 100
  end
 
  create_table "fafixa", force: :cascade do |t|
    t.string "item_cat", limit: 1, null: false
    t.string "code", limit: 4, null: false
    t.string "branch", limit: 1, null: false
    t.string "name", limit: 50
    t.string "desc", limit: 50
    t.datetime "purcdate"
    t.decimal "purcprice"
    t.decimal "depr_sl"
    t.decimal "acdep_sl"
    t.decimal "cval_sl"
    t.string "fiscal_cat", limit: 1
    t.integer "fiscal_year"
    t.decimal "inival_dd"
    t.decimal "depr_dd"
    t.decimal "acdep_dd"
    t.decimal "cval_dd"
    t.integer "depr_dd_cnt"
    t.datetime "wdate"
    t.datetime "sdate"
    t.decimal "selprc"
    t.datetime "stnk_valid"
    t.string "flgdel", limit: 1
    t.string "employee_id", limit: 40
    t.integer "depr_year"
  end
 
  create_table "fafixa_merge", force: :cascade do |t|
    t.string "item_cat", limit: 1
    t.string "code", limit: 4
    t.string "branch", limit: 2
    t.string "code_old", limit: 4
    t.string "branch_old", limit: 2
  end
 
  create_table "fainsud", force: :cascade do |t|
    t.string "item_cat", limit: 1, null: false
    t.string "code", limit: 4, null: false
    t.string "branch", limit: 1, null: false
    t.string "ins_co", limit: 25, null: false
    t.decimal "sum_insured"
    t.string "coverage", limit: 50
    t.date "start_period", null: false
    t.date "end_period", null: false
    t.string "ins_pol", limit: 15, null: false
  end
 
  create_table "fait", force: :cascade do |t|
    t.string "item_cat", limit: 1, null: false
    t.string "code", limit: 1, null: false
    t.string "branch_cd", limit: 1, null: false
    t.string "user_nm", limit: 50
    t.string "asset_nm", limit: 100
    t.string "serial_no", limit: 25
    t.string "desc", limit: 200
    t.string "action_type", limit: 10
    t.datetime "action_date"
    t.string "new_branch", limit: 1
    t.datetime "purcdate"
  end
 
  create_table "falinkprog", force: :cascade do |t|
    t.string "link_cd", limit: 2, null: false
    t.string "memo_no", limit: 11, null: false
  end
 
  create_table "fam", force: :cascade do |t|
    t.string "fam_code", limit: 10, null: false
    t.string "fam_no", limit: 20, null: false
    t.string "apless", limit: 6, null: false
    t.string "curr", limit: 3
    t.decimal "top_ceiling_amt", precision: 25, scale: 2
    t.string "appr_by", limit: 4
    t.date "appr_dt"
    t.date "valid_from"
    t.date "valid_to"
    t.string "appr_comment", limit: 500
    t.string "notes", limit: 500
    t.string "created_by", limit: 4, null: false
    t.datetime "created_dt", null: false
    t.string "update_by", limit: 4
    t.datetime "update_dt"
    t.string "fam_type", limit: 1
    t.decimal "credit_limit", precision: 25, scale: 2
    t.string "grade", limit: 1
    t.date "mou_dt"
    t.string "review_by", limit: 4
    t.datetime "review_dt"
    t.string "review_comment", limit: 500
    t.string "branch_cd", limit: 1
    t.string "fiduciary", limit: 1
    t.string "fiduciary_type", limit: 1
    t.string "business_type", limit: 2
    t.string "transfer_by", limit: 4
    t.datetime "transfer_dt"
    t.index ["fam_no"], name: "IX_FAM", unique: true
  end
 
  create_table "fam_attachment", force: :cascade do |t|
    t.string "fam_code", limit: 10, null: false
    t.string "filename", limit: 100, null: false
    t.string "filepath", limit: 100, null: false
    t.string "filetype", limit: 20, null: false
    t.string "created_by", limit: 4, null: false
    t.datetime "created_dt", null: false
  end
 
  create_table "fam_cam", force: :cascade do |t|
    t.string "fam_code", limit: 10, null: false
    t.string "appl_no", limit: 11, null: false
    t.date "exp_date"
  end
 
  create_table "famemo", force: :cascade do |t|
    t.string "memo_no", limit: 11, null: false
    t.datetime "memo_dt"
    t.string "from", limit: 50
    t.string "request_cd", limit: 2
    t.string "faofficer", limit: 50
    t.string "correction_cd1", limit: 2
    t.string "desc", limit: 4000
    t.string "done_by", limit: 50
    t.datetime "date_done"
    t.string "correction_cd2", limit: 2
    t.string "correction_cd3", limit: 2
    t.string "correction_cd4", limit: 2
    t.string "correction_cd5", limit: 2
    t.string "desc_cd", limit: 2
    t.string "reason_cd", limit: 2
  end
 
  create_table "family_member", force: :cascade do |t|
    t.string "member_code", limit: 4, null: false
    t.string "apless", limit: 6, null: false
  end
 
  create_table "fapendinggiro", force: :cascade do |t|
    t.string "lease_no", limit: 9
    t.datetime "giro_dt"
    t.string "giro_no", limit: 20
    t.string "pending_reason", limit: 250
  end
 
  create_table "fatabdd", force: :cascade do |t|
    t.string "fiscal_cat", limit: 1, null: false
    t.string "name", limit: 25
    t.integer "term"
    t.float "rate_dd"
    t.string "jenisharta", limit: 0
    t.string "kelompokharta", limit: 1
    t.string "jenisusaha", limit: 1
    t.string "namaharta", limit: 2
  end
 
  create_table "fatabsl", force: :cascade do |t|
    t.string "item_cat", limit: 1, null: false
    t.string "branch", limit: 1, null: false
    t.string "name", limit: 100
    t.string "fixa", limit: 6, null: false
    t.string "adep", limit: 6
    t.string "depexp", limit: 6
    t.string "period", limit: 3
    t.decimal "pdepr", null: false
    t.decimal "udepr"
    t.float "rate_sl"
  end
 
  create_table "favehc", force: :cascade do |t|
    t.string "item_cat", limit: 1, null: false
    t.string "code", limit: 4, null: false
    t.string "branch", limit: 1, null: false
    t.string "supplier", limit: 25
    t.string "police_no", limit: 11
    t.string "chassis_no", limit: 10
    t.string "engine_no", limit: 12
    t.string "faktur_no", limit: 30
    t.string "bpkb_no", limit: 5
    t.date "bpkb_rec_date"
    t.date "bpkb_issued_date"
    t.date "stnk_valid"
    t.string "location", limit: 50
    t.string "dealer", limit: 25
    t.datetime "purch_date"
    t.string "item_name", limit: 100
    t.string "user", limit: 15
    t.string "brand", limit: 50
    t.string "type", limit: 50
    t.string "colour", limit: 25
    t.string "desc", limit: 250
    t.integer "year"
    t.index ["branch", "police_no"], name: "NC1_FAVEHC"
  end
 
  create_table "fdfcost", force: :cascade do |t|
    t.datetime "period", null: false
    t.decimal "interest_usd"
    t.decimal "interest_jpy"
    t.decimal "interest_idr"
    t.decimal "swap_usd"
    t.decimal "swap_jpy"
    t.decimal "swap_idr"
    t.decimal "interest_swap"
    t.decimal "deposit"
    t.decimal "guarantee"
    t.decimal "costoffund"
  end
 
  create_table "fdflend", force: :cascade do |t|
    t.string "lendno", limit: 1, null: false
    t.string "lendnm", limit: 25
    t.string "addr_1", limit: 25
    t.string "addr_2", limit: 25
    t.string "phone", limit: 10
    t.string "contact", limit: 15
    t.decimal "plafonlg"
    t.decimal "usedlg"
    t.float "spreadlg"
    t.decimal "plafonnlg"
    t.decimal "usednlg"
    t.float "spreadnlg"
    t.string "curr_code", limit: 1
    t.string "remark", limit: 25
    t.integer "days"
    t.string "off_onshore", limit: 1
    t.integer "fornew"
    t.integer "forroll"
    t.boolean "flgdel"
    t.float "tax_off"
  end
 
  create_table "fdftran", force: :cascade do |t|
    t.string "tr_code", limit: 1, null: false
    t.string "promno", limit: 4, null: false
    t.string "lendno", limit: 1
    t.datetime "perio1"
    t.datetime "perio2"
    t.decimal "loanamt"
    t.float "tr_spot"
    t.float "int_rate"
    t.string "curr_code", limit: 1
    t.string "clean", limit: 1
    t.float "fwr_rate"
    t.datetime "cc_prd1"
    t.datetime "cc_prd2"
    t.string "basic_gu", limit: 5
    t.boolean "flgdel", default: false
    t.string "voucher", limit: 5
    t.string "payvoucher", limit: 5
    t.string "rolloverno", limit: 5
    t.string "status", limit: 1
    t.string "remark", limit: 100
  end
 
  create_table "filestorage", force: :cascade do |t|
    t.string "refno", limit: 20
    t.string "filename", limit: 200, null: false
    t.string "fileextension", limit: 10, null: false
    t.string "filetype", limit: 100
    t.string "category", limit: 100, null: false
    t.string "description", limit: 100
    t.string "createdby", limit: 50, null: false
    t.datetime "createdon", null: false
    t.string "modifiedby", limit: 50
    t.datetime "modifiedon"
    t.string "deletedby", limit: 50
    t.datetime "deletedon"
  end
 
  create_table "formbusinesstripaccomodation", force: :cascade do |t|
    t.string "memoid", limit: 12
    t.string "category", limit: 100
    t.date "overalltripdatefrom"
    t.date "overalltripdateto"
    t.integer "daysoftrip"
    t.boolean "isexceeddeviation"
    t.integer "deviationexceeddays"
    t.integer "deviationlongbusinesstripdays"
    t.integer "deviationadditionaldays"
    t.string "purpose", limit: 255
    t.string "reason", limit: 255
    t.string "createdby", limit: 4
    t.datetime "createddate"
    t.string "submittedby", limit: 4
    t.string "modifiedby", limit: 4
    t.datetime "modifieddate"
    t.string "tripreference", limit: 255
    t.date "paymentdate"
    t.boolean "isnewdata"
    t.string "notes", limit: 255
  end
 
  create_table "formbusinesstripallowance", force: :cascade do |t|
    t.string "memoid", limit: 12
    t.string "tripreference", limit: 100
    t.decimal "totaltripexpense", precision: 10, scale: 0
    t.decimal "totalexpensepaidbycompany", precision: 10, scale: 0
    t.decimal "balanceduetofromcompany", precision: 10, scale: 0
    t.string "createdby", limit: 4
    t.datetime "createddate"
    t.string "submittedby", limit: 4
    t.string "modifiedby", limit: 4
    t.datetime "modifieddate"
    t.string "notes", limit: 255
    t.date "paymentdate"
    t.boolean "isnewdata"
    t.date "overalltripdatefrom"
    t.date "overalltripdateto"
    t.integer "daysoftrip"
  end
 
  create_table "formpeb", force: :cascade do |t|
    t.string "memoid", limit: 12
    t.string "category", limit: 100
    t.date "expensedate"
    t.string "expensetype", limit: 50
    t.string "expensetypedetail", limit: 100
    t.string "venuename", limit: 100
    t.string "venueaddress", limit: 255
    t.decimal "priceamount", precision: 10, scale: 0
    t.string "purpose", limit: 250
    t.boolean "isgratification"
    t.string "gratificationnotes", limit: 250
    t.string "createdby", limit: 4
    t.datetime "createddate"
    t.string "submittedby", limit: 4
    t.string "modifiedby", limit: 4
    t.datetime "modifieddate"
    t.string "notes", limit: 255
    t.date "paymentdate"
    t.boolean "isnewdata"
    t.string "others", limit: 255
  end
 
  create_table "ga_businesssurvey", force: :cascade do |t|
    t.string "triptype", limit: 3, null: false
    t.string "tripreff_cam", limit: 11, null: false
    t.string "branchcd", limit: 1
    t.string "emp_id", limit: 2
    t.datetime "depart_dt"
    t.datetime "return_dt"
    t.string "depart_tm", limit: 5
    t.string "return_tm", limit: 5
    t.string "destination", limit: 100
    t.string "div_id", limit: 10
  end
 
  create_table "gacourier", force: :cascade do |t|
    t.string "regno", limit: 8, null: false
    t.datetime "date", null: false
    t.string "courier", limit: 20
    t.string "type", limit: 1
  end
 
  create_table "gacourier_detail", force: :cascade do |t|
    t.string "regno", limit: 8, null: false
    t.string "lease_no", limit: 9
    t.string "name", limit: 50
    t.string "address", limit: 100
    t.string "phone", limit: 30
    t.index ["regno"], name: "IX_GACOURIER_DETAIL_REGNO"
  end
 
  create_table "gamaterai", force: :cascade do |t|
    t.string "branch_cd", limit: 1
    t.datetime "materai_dt"
    t.string "lease_no", limit: 9
    t.string "description", limit: 100
    t.decimal "qty", precision: 18, scale: 0
    t.string "notes", limit: 250
    t.string "modified_by", limit: 75
    t.datetime "modified_dt"
    t.boolean "flgdel"
  end
 
  create_table "gamemoreg", force: :cascade do |t|
    t.string "reg_no", limit: 8, null: false
    t.datetime "reg_dt"
    t.string "branch", limit: 5
    t.string "div", limit: 5
    t.datetime "memo_dt"
    t.string "memoreg_cd", limit: 3
    t.string "desc1", limit: 250
    t.string "desc2", limit: 250
    t.string "bod", limit: 20
    t.string "memoby", limit: 5
  end
 
  create_table "gaparkingms", force: :cascade do |t|
    t.string "branch_cd", limit: 1, null: false
    t.string "location", limit: 100, null: false
    t.string "bank", limit: 50
    t.string "acc_nm", limit: 25
    t.string "acc_no", limit: 15
    t.string "vehicle_type", limit: 1, null: false
    t.string "parking_type", limit: 2, null: false
    t.decimal "parking_fee"
    t.string "curr", limit: 3
  end
 
  create_table "gaparkingtp", force: :cascade do |t|
    t.string "parking_type", limit: 2, null: false
    t.string "parking_desc", limit: 30, null: false
  end
 
  create_table "gaparkingtr", force: :cascade do |t|
    t.string "item_cat", limit: 1, null: false
    t.string "code", limit: 4, null: false
    t.string "branch", limit: 1, null: false
    t.string "parking_type", limit: 2
    t.string "parking_location", limit: 1, null: false
  end
 
  create_table "gasupp", force: :cascade do |t|
    t.string "supp_type", limit: 0, null: false
    t.string "supp_name", limit: 50, null: false
    t.string "supp_code", limit: 4
  end
 
  create_table "glfcoa", force: :cascade do |t|
    t.string "coacode", limit: 5, null: false
    t.string "coadesc", limit: 100, null: false
    t.integer "coalevel", null: false
    t.boolean "coatype", null: false
    t.string "posojk", limit: 4
    t.string "coacurr", limit: 1
    t.string "postax", limit: 5
    t.string "coa_purpose", limit: 500
    t.index ["coacode", "coalevel"], name: "IX_GLFCOA_index1"
  end
 
  create_table "glfledger", force: :cascade do |t|
    t.string "coacode", limit: 5, null: false
    t.string "period", limit: 7, null: false
    t.decimal "begbal", default: 0
    t.decimal "debit", default: 0
    t.decimal "credit", default: 0
    t.datetime "startdate"
    t.datetime "enddate"
    t.index ["coacode", "debit", "credit", "period"], name: "IX_GLFLEDGER_PERIOD"
  end
 
  create_table "headerexport_bca", force: :cascade do |t|
    t.integer "order_no", null: false
    t.string "order", limit: 8, null: false
    t.string "description", limit: 200
    t.string "create_by", limit: 4
    t.datetime "create_date", default: "getdate"
    t.index ["order_no"], name: "UC_HeaderExport_BCA", unique: true
  end
 
  create_table "history_cafless", force: :cascade do |t|
    t.integer "version", null: false
    t.string "apless", limit: 6, null: false
    t.string "lessee_nm", limit: 100
    t.string "lessee_tp", limit: 2, null: false
    t.string "gender", limit: 1
    t.string "placebirth", limit: 30
    t.date "tglbirth"
    t.string "religion", limit: 1
    t.string "marital", limit: 1
    t.string "id_card", limit: 30
    t.string "fam_card", limit: 25
    t.string "npwp", limit: 30
    t.string "indus_code", limit: 6
    t.string "relation", limit: 1
    t.string "remark", limit: 50
    t.datetime "review"
    t.string "contact", limit: 50
    t.string "occupation", limit: 40
    t.string "custprofile", limit: 2
    t.boolean "send_sms"
    t.string "citizen", limit: 25
    t.string "mother", limit: 50
    t.string "spouse", limit: 100
    t.string "area_cd", limit: 4
    t.string "cust_type", limit: 4, null: false
    t.string "address_status", limit: 2
    t.string "grpcode", limit: 5
    t.string "nationality", limit: 50
    t.string "id_card_file", limit: 200
    t.datetime "id_card_valid"
    t.string "fam_card_file", limit: 200
    t.string "lessee_cat", limit: 2
    t.string "fs_curr", limit: 3
    t.string "lob", limit: 250
    t.string "cr_name", limit: 30
    t.integer "business_size"
    t.decimal "spouse_income"
    t.string "alias_name", limit: 100
    t.string "modifier", limit: 4
    t.datetime "modified"
  end
 
  create_table "history_cafless_detail", force: :cascade do |t|
    t.integer "version", null: false
    t.string "apless", limit: 6, null: false
    t.string "business_type", limit: 10
    t.string "fullname_without_title", limit: 100
    t.string "business_entity", limit: 20
    t.string "go_public", limit: 1
    t.string "relationship", limit: 20
    t.string "passportno", limit: 30
    t.string "last_education", limit: 50
    t.string "career_field", limit: 50
    t.string "spouse_placebirth", limit: 30
    t.date "spouse_tglbirth"
    t.string "spouse_citizen", limit: 25
    t.string "spouse_nationality", limit: 50
    t.string "spouse_id_card", limit: 30
    t.datetime "spouse_id_card_valid"
    t.string "spouse_passportno", limit: 30
    t.string "spouse_marriage", limit: 1
    t.string "spouse_dependent", limit: 30
    t.string "spouse_fullname_without_title", limit: 100
    t.string "emergency_name", limit: 100
    t.string "emergency_relation", limit: 100
    t.string "siup_no", limit: 50
    t.string "domicile_no", limit: 50
    t.string "sustainable_business", limit: 5
    t.string "supp", limit: 6
    t.string "cust_app", limit: 6
  end
 
  create_table "history_clfless_address", force: :cascade do |t|
    t.integer "version", null: false
    t.string "apless", limit: 6, null: false
    t.string "address_type", limit: 50, null: false
    t.string "address", limit: 250
    t.string "city", limit: 50
    t.string "zipcode", limit: 5
    t.string "kecamatan", limit: 100
    t.string "kelurahan", limit: 100
    t.string "rt", limit: 5
    t.string "rw", limit: 5
    t.string "area_cd", limit: 4
  end
 
  create_table "history_clfless_contact", force: :cascade do |t|
    t.integer "version", null: false
    t.string "apless", limit: 6, null: false
    t.string "contact_type", limit: 50, null: false
    t.string "contact_no", limit: 50
    t.string "other_notes", limit: 60
  end
 
  create_table "hr_candidatecommunities", force: :cascade do |t|
    t.string "candidate_id", limit: 15
    t.string "organizationname", limit: 100
    t.string "typeoforganization", limit: 10
    t.string "position", limit: 100
    t.datetime "startyear"
    t.datetime "endyear"
    t.string "remark", limit: 255
  end
 
  create_table "hr_candidatecourseandtrainings", force: :cascade do |t|
    t.string "candidate_id", limit: 15
    t.string "subject", limit: 50
    t.string "organizer", limit: 50
    t.string "city", limit: 30
    t.integer "duration"
    t.datetime "startyear"
    t.datetime "endyear"
    t.boolean "isgraduation"
  end
 
  create_table "hr_candidateemergencycontacts", force: :cascade do |t|
    t.string "candidate_id", limit: 15
    t.string "name", limit: 30
    t.string "address", limit: 255
    t.string "phonenumber", limit: 20
    t.string "occupation", limit: 50
    t.string "relationship", limit: 30
  end
 
  create_table "hr_candidatefamilies", force: :cascade do |t|
    t.string "candidate_id", limit: 15
    t.integer "status"
    t.string "name", limit: 30
    t.string "gender", limit: 1
    t.string "education", limit: 30
    t.datetime "dateofbirth"
    t.string "occupation", limit: 50
    t.string "remark", limit: 255
    t.string "bloodtype", limit: 2
    t.boolean "haswork"
    t.string "maritalstatus", limit: 2
  end
 
  create_table "hr_candidatefamilyreferences", force: :cascade do |t|
    t.string "candidate_id", limit: 15
    t.string "name", limit: 100
    t.string "address", limit: 255
    t.string "phonenumber", limit: 15
    t.string "relation", limit: 255
    t.string "remark", limit: 255
  end
 
  create_table "hr_candidateforeignlanguages", force: :cascade do |t|
    t.string "candidate_id", limit: 15
    t.string "language", limit: 30
    t.string "speakingskill", limit: 6
    t.string "writingskill", limit: 6
  end
 
  create_table "hr_candidateformaleducations", force: :cascade do |t|
    t.string "candidate_id", limit: 15
    t.string "educationlevel", limit: 2
    t.string "institutionname", limit: 50
    t.string "city", limit: 30
    t.string "majorofstudy", limit: 100
    t.datetime "startyear"
    t.datetime "endyear"
    t.boolean "isgraduated"
    t.float "candidate_gpa"
    t.index ["candidate_id"], name: "IX_HR_CandidateFormalEducations_Candidate_ID"
  end
 
  create_table "hr_candidateotherinformations", force: :cascade do |t|
    t.string "candidate_id", limit: 15, null: false
    t.string "jobvacancysource", limit: 20
    t.string "reason", limit: 255
    t.integer "environmentpreference"
    t.boolean "workovertime"
    t.boolean "workshift"
    t.boolean "businesstrip"
    t.decimal "currentsalary"
    t.decimal "expectedsalary"
    t.datetime "availabletostart"
    t.string "desiredfacilities", limit: 255
    t.string "anycontactagreement", limit: 255
    t.string "applyingtoother", limit: 255
    t.string "othercompaniesapplypos", limit: 255
    t.string "hobbies", limit: 255
    t.string "lastcompanyjobdesc", limit: 2000
    t.boolean "disclaimer"
  end
 
  create_table "hr_candidates", force: :cascade do |t|
    t.string "candidate_id", limit: 15, null: false
    t.string "nama", limit: 100
    t.string "email", limit: 100
    t.date "tanggal"
    t.time "jam"
    t.integer "type_cd"
    t.string "status", limit: 50
    t.string "notes", limit: 500
    t.string "catatan_nilai", limit: 500
    t.string "pendidikan", limit: 2
    t.datetime "email_date"
    t.string "referensi", limit: 100
  end
 
  create_table "hr_candidates_try", force: :cascade do |t|
    t.string "candidate_id", limit: 15, null: false
    t.date "tanggal", null: false
    t.time "jam"
    t.string "status", limit: 50
    t.string "notes", limit: 500
    t.string "catatan_nilai", limit: 500
    t.datetime "email_date"
  end
 
  create_table "hr_candidateseriousillnesses", force: :cascade do |t|
    t.string "candidate_id", limit: 15
    t.string "typeofsickness", limit: 100
    t.string "year", limit: 2
    t.string "remark", limit: 255
  end
 
  create_table "hr_candidateskills", force: :cascade do |t|
    t.string "candidate_id", limit: 15
    t.string "skill", limit: 30
    t.string "score", limit: 6
    t.string "remark", limit: 255
  end
 
  create_table "hr_candidateworkingexperience", force: :cascade do |t|
    t.string "candidate_id", limit: 15
    t.string "companyname", limit: 100
    t.string "address", limit: 255
    t.datetime "startperiod"
    t.datetime "endperiod"
    t.string "firstposition", limit: 50
    t.string "lastposition", limit: 50
    t.string "resignationreason", limit: 255
    t.string "typeofindustry", limit: 100
    t.index ["candidate_id"], name: "IX_HR_CandidateWorkingExperience_Candidate_ID"
  end
 
  create_table "hr_config", force: :cascade do |t|
    t.string "email", limit: 100
    t.string "pass_m", limit: 200
    t.string "type", limit: 20
  end
 
  create_table "hr_data_candidates", force: :cascade do |t|
    t.string "candidate_id", limit: 15, null: false
    t.string "fullname", limit: 100
    t.string "nickname", limit: 50
    t.string "position", limit: 6
    t.string "branch", limit: 1
    t.string "birthplace", limit: 50
    t.datetime "birthdate"
    t.integer "age"
    t.string "idnumber", limit: 20
    t.string "email", limit: 100
    t.string "mobilephone", limit: 20
    t.string "religion", limit: 2
    t.string "gender", limit: 1
    t.string "maritalstatus", limit: 2
    t.string "bloodtype", limit: 2
    t.string "bpjskesehatan", limit: 20
    t.string "bpjsketenagakerjaan", limit: 20
    t.string "npwp", limit: 20
    t.string "nationality", limit: 50
    t.integer "residentialstatus"
    t.string "idbasedaddress", limit: 255
    t.string "idbasedpostcode", limit: 5
    t.string "idbasedphonenumber", limit: 20
    t.string "currentaddress", limit: 255
    t.string "currentpostcode", limit: 5
    t.string "currentphonenumber", limit: 20
    t.string "parentaddress", limit: 255
    t.string "parentpostcode", limit: 5
    t.string "parentphonenumber", limit: 20
    t.datetime "created_date"
    t.string "created_by", limit: 15
    t.datetime "modified_date"
    t.string "modified_by", limit: 15
    t.integer "height"
    t.integer "weight"
    t.string "specialcondition", limit: 255
    t.datetime "lastmedicalcheckup"
    t.integer "result"
    t.string "remarklastcheckup", limit: 255
    t.string "branch_recruit", limit: 1
    t.string "nationalitycheck", limit: 0
    t.string "residentialdesc", limit: 50
    t.string "sim_a", limit: 50
    t.string "sim_c", limit: 50
    t.string "bpjspensiun", limit: 20
    t.string "npwpaddress", limit: 255
    t.string "hr_notes", limit: 2000
    t.string "city", limit: 50
    t.string "province", limit: 2
    t.string "parentcity", limit: 50
    t.string "parentprovince", limit: 2
    t.string "no_passport", limit: 50
    t.date "passportdate"
    t.date "bpjsjoindate"
    t.date "bpjsstartdate"
    t.boolean "isemployed", default: false
    t.string "instagram", limit: 250
    t.string "linkedin", limit: 250
    t.string "othersocialmedia", limit: 250
    t.string "familycard_no", limit: 30
    t.string "mothername", limit: 100
    t.index ["fullname", "birthplace", "birthdate", "idnumber"], name: "IX_HR_Data_Candidates_NC1"
  end
 
  create_table "hr_educationlevel", force: :cascade do |t|
    t.string "education_id", limit: 1, null: false
    t.string "education_desc", limit: 15
    t.string "sort", limit: 2
  end
 
  create_table "hr_employeeuploaddata", force: :cascade do |t|
    t.string "employee_id", limit: 15
    t.string "type", limit: 20
    t.integer "sequence"
    t.string "attachment", limit: 1000
    t.index ["employee_id", "type"], name: "IX_HR_EmployeeUploadData_Employee_ID_Type"
  end
 
  create_table "hr_kategori", force: :cascade do |t|
    t.string "kategori_nm", limit: 50
    t.string "kategori_desc", limit: 2000
    t.integer "kategori_waktu"
    t.integer "kategori_type"
    t.integer "type_cd"
    t.string "kategori_contoh", limit: 5000
  end
 
  create_table "hr_kategori_score", force: :cascade do |t|
    t.string "candidate_id", limit: 15
    t.integer "kategori_cd"
    t.datetime "start"
    t.integer "status"
    t.index ["candidate_id"], name: "IX_HR_Kategori_NC1"
  end
 
  create_table "hr_kategori_type", force: :cascade do |t|
    t.string "kategori_type_desc", limit: 50
  end
 
  create_table "hr_master_data", force: :cascade do |t|
    t.string "div_id", limit: 1
    t.string "branch_cd", limit: 1
    t.string "position_id", limit: 3
    t.string "test_tambahan", limit: 50
  end
 
  create_table "hr_mnacc", force: :cascade do |t|
    t.string "groupid", limit: 10, null: false
    t.string "menucode", limit: 50, null: false
    t.string "menuadd", limit: 1
    t.string "menuupdate", limit: 1
    t.string "menudelete", limit: 1
    t.string "menuprint", limit: 1
  end
 
  create_table "hr_mnlst", force: :cascade do |t|
    t.string "menucode", limit: 50, null: false
    t.string "menuparent", limit: 50
    t.string "menuname", limit: 50
    t.string "menuaction", limit: 50
    t.integer "lvl"
    t.integer "sort"
  end
 
  create_table "hr_nilai", force: :cascade do |t|
    t.string "candidate_id", limit: 15
    t.date "tanggal"
    t.string "kategori_nm", limit: 50
    t.string "nilai", limit: 20
    t.string "file_name", limit: 200
  end
 
  create_table "hr_subtest", force: :cascade do |t|
    t.integer "kategori_cd"
    t.string "soal", limit: 5000
    t.string "point", limit: 250
    t.string "image", limit: 200
  end
 
  create_table "hr_subtest_detail", force: :cascade do |t|
    t.integer "subtest_cd"
    t.string "point", limit: 250
    t.string "jawab_desc", limit: 2000
    t.string "image", limit: 200
  end
 
  create_table "hr_subtest_score", force: :cascade do |t|
    t.string "candidate_id", limit: 15, null: false
    t.integer "subtest_cd", null: false
    t.string "jawaban", limit: 250
    t.integer "id_kategori_score", null: false
    t.index ["jawaban", "subtest_cd", "id_kategori_score"], name: "IX_HR_Subtest_score_subtest_cd_id_kategori_score_BA16F"
  end
 
  create_table "hr_type", force: :cascade do |t|
    t.string "type_desc", limit: 50
  end
 
  create_table "hr_usrmst", force: :cascade do |t|
    t.string "employee_id", limit: 15, null: false
    t.string "groupid", limit: 10
  end
 
  create_table "hrm_employee", force: :cascade do |t|
    t.string "employee_id", limit: 15, null: false
    t.string "position_id", limit: 16
    t.string "div_id", limit: 10
    t.string "branch_code", limit: 1
    t.string "employee_fullname", limit: 100
    t.string "employee_nickname", limit: 50
    t.datetime "employee_indate"
    t.datetime "employee_effectivedate"
    t.datetime "employee_relocdate"
    t.datetime "employee_assigndate"
    t.string "employee_prevbranch", limit: 1
    t.datetime "employee_outdate"
    t.string "employee_birth_location", limit: 50
    t.datetime "employee_birth_date"
    t.string "employee_address", limit: 255
    t.string "employee_city", limit: 8
    t.string "employee_province", limit: 8
    t.string "employee_email", limit: 100
    t.string "employee_home_phone", limit: 50
    t.string "employee_cellular", limit: 50
    t.string "employee_id_type", limit: 10
    t.string "employee_id_card_no", limit: 50
    t.string "employee_blood", limit: 3
    t.string "employee_religion", limit: 2
    t.string "employee_postalcode", limit: 5
    t.string "employee_marriage_state", limit: 2
    t.binary "employee_photo"
    t.string "employee_gender", limit: 1
    t.integer "employee_status"
    t.integer "employee_workstatus"
    t.datetime "employee_end_contractdate"
    t.string "employee_father", limit: 30
    t.string "employee_mother", limit: 30
    t.string "employee_parent_address", limit: 50
    t.string "employee_parent_city", limit: 8
    t.string "employee_parent_province", limit: 8
    t.string "employee_parent_postalcode", limit: 50
    t.string "employee_parent_phone", limit: 50
    t.string "employee_couple", limit: 50
    t.integer "employee_num_child"
    t.string "employee_couple_state", limit: 20
    t.string "employee_npwp", limit: 20
    t.string "employee_tax_status", limit: 4
    t.string "employee_bank", limit: 20
    t.string "employee_bank_branch", limit: 25
    t.string "employee_acc", limit: 25
    t.string "employee_acc_name", limit: 100
    t.string "modif_by", limit: 50
    t.datetime "modif_date"
    t.integer "beneficiary_type"
    t.integer "resident_status"
    t.string "sub_div", limit: 2
    t.index ["position_id", "div_id", "branch_code", "employee_outdate"], name: "IX_HRM_employee_position_ID_NC1"
  end
 
  create_table "hrm_facility", force: :cascade do |t|
    t.string "employee_id", limit: 7, null: false
    t.datetime "nmtag_requestdt"
    t.datetime "nmtag_executedt"
    t.datetime "nmcard_requestdt"
    t.datetime "nmcard_executedt"
    t.datetime "simcard_requestdt"
    t.datetime "simcard_executedt"
    t.string "vehicle_type", limit: 0
    t.datetime "vehicle_requestdt"
    t.datetime "vehicle_executedt"
    t.datetime "uniform_requestdt"
    t.datetime "uniform_executedt"
    t.datetime "camera_requestdt"
    t.datetime "camera_executedt"
    t.string "fiscal_sim", limit: 0
    t.string "fiscal_vech", limit: 0
    t.string "modified_by", limit: 50
    t.datetime "modified_dt"
  end
 
  create_table "hrm_reimbursement", force: :cascade do |t|
    t.integer "id", null: false
    t.string "employee_id", limit: 4
    t.string "branch_allocation", limit: 2
    t.datetime "from"
    t.datetime "to"
    t.string "rtypecd", limit: 3
    t.string "rdetailcd", limit: 5
    t.string "rsubdetailcd", limit: 5
    t.string "modified_by", limit: 50
    t.datetime "modified_dt"
    t.integer "flgdel"
    t.integer "cek"
  end
 
  create_table "insurancefile", force: :cascade do |t|
    t.string "ins_co", limit: 100, null: false
    t.string "leaseno", limit: 9, null: false
    t.string "filename", limit: 100, null: false
    t.string "filetype", limit: 20, null: false
    t.string "filepath", limit: 500
    t.integer "filesize_kb"
    t.datetime "createddate", default: "getdate"
  end
 
  create_table "invoice_corfin", force: :cascade do |t|
    t.string "invoice_no", limit: 23, null: false
    t.date "invoice_date", null: false
    t.string "lease_no", limit: 9
    t.string "invoice_type", limit: 20
    t.string "currency", limit: 3
    t.date "period_from"
    t.date "period_to"
    t.string "multiple_contract", limit: 3
    t.string "invoicing_to", limit: 100
    t.string "attention", limit: 100
    t.string "address", limit: 250
    t.string "phoneno", limit: 50
    t.string "additional_notes", limit: 500
    t.string "bank", limit: 2
    t.string "to", limit: 9
    t.string "createby", limit: 50
    t.datetime "createdate"
    t.integer "seq_invoiceno"
    t.string "signer", limit: 4
  end
 
  create_table "invoice_corfin_detail", force: :cascade do |t|
    t.string "invoice_no", limit: 23, null: false
    t.string "lease_no", limit: 9, null: false
    t.date "due_date"
    t.string "remark", limit: 250
    t.decimal "amount", null: false
  end
 
  create_table "invoice_thirdpart", force: :cascade do |t|
    t.string "id", limit: 5, null: false
    t.string "type", limit: 1
    t.string "year", limit: 2
    t.string "urut", limit: 2
    t.string "name", limit: 50, null: false
    t.string "invoicing_to", limit: 100, null: false
    t.string "attention", limit: 100
    t.string "address", limit: 250
    t.string "city", limit: 50
    t.string "zipcode", limit: 15
    t.string "country", limit: 50
    t.string "phoneno", limit: 50
  end
 
  create_table "jurnalentry_review", force: :cascade do |t|
    t.string "maker_branch", limit: 1, null: false
    t.string "maker_position_id", limit: 6, null: false
    t.string "reviewer_position_id", limit: 6
  end
 
  create_table "kuisioner_edd", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.boolean "edd_customer"
    t.boolean "edd_bo"
  end
 
  create_table "l_parameter_combo", force: :cascade do |t|
    t.string "category", limit: 50, null: false
    t.string "code", limit: 50, null: false
    t.string "desc_value", limit: 50, null: false
  end
 
  create_table "lbpp", force: :cascade do |t|
    t.string "category", limit: 30, null: false
    t.string "id_mlci", limit: 10, null: false
    t.string "dimension", limit: 5, null: false
    t.string "element", limit: 7, null: false
  end
 
  create_table "listblokir_bpkb_newcar", force: :cascade do |t|
    t.string "lease_no", limit: 9
    t.datetime "submissionblockdate"
    t.string "vendor_id", limit: 7
    t.datetime "receiveblockstatementdate"
    t.decimal "actualbpkbcheckingfee"
    t.datetime "create_dt"
    t.string "create_by", limit: 4
    t.datetime "modified_dt"
    t.string "modified_by", limit: 4
  end
 
  create_table "lodgebusinesstripaccomodation", force: :cascade do |t|
    t.string "lodgename", limit: 100
    t.string "lodgeaddress", limit: 255
    t.date "checkindate"
    t.date "checkoutdate"
    t.string "lodgeremarks", limit: 100
    t.string "lodgeremarksdetail", limit: 255
    t.string "lodgeaccomodationtype", limit: 50
    t.string "lodgenamega", limit: 100
    t.string "lodgeaddressga", limit: 255
    t.date "checkindatega"
    t.date "checkoutdatega"
    t.string "lodgeremarksga", limit: 100
    t.string "lodgeremarksdetailga", limit: 255
    t.decimal "lodgepricega", precision: 10, scale: 0
    t.string "createdby", limit: 4
    t.datetime "createddate"
    t.string "modifiedby", limit: 4
    t.datetime "modifieddate"
    t.integer "tripbusinesstripaccomodationid"
  end
 
  create_table "log_access_menuboard", force: :cascade do |t|
    t.string "lessee_no", limit: 6
    t.string "lessee_nm", limit: 150
    t.string "id_card_name", limit: 150
    t.string "bod_name", limit: 150
    t.string "gender", limit: 20
    t.string "occupation", limit: 100
    t.string "bod_address", limit: 250
    t.string "area", limit: 100
    t.string "province", limit: 100
    t.string "city", limit: 100
    t.string "kelurahan", limit: 100
    t.string "kecamatan", limit: 100
    t.string "citizenship", limit: 50
    t.string "nationality", limit: 50
    t.string "id_card", limit: 16
    t.string "passportnumber", limit: 30
    t.string "board_position", limit: 50
    t.decimal "saham"
    t.integer "board_id", null: false
    t.string "modify_by", limit: 100, null: false
    t.datetime "modified_dt", null: false
    t.string "status", limit: 10, null: false
  end
 
  create_table "log_access_menuequipment", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.string "typeofbrand", limit: 50
    t.string "brandname", limit: 100
    t.string "typeofequip", limit: 50
    t.string "ojkfinance_goods", limit: 100
    t.string "ojkcollateral_goods", limit: 100
    t.string "modelname", limit: 50
    t.string "karoseri", limit: 100
    t.integer "tahun"
    t.string "condition", limit: 10
    t.string "suppname", limit: 200
    t.string "suppaddr", limit: 250
    t.string "supptype", limit: 50
    t.string "suppphone", limit: 50
    t.string "karsuppname", limit: 200
    t.string "karsuppaddr", limit: 250
    t.string "accsuppname", limit: 200
    t.string "accsuppaddr", limit: 250
    t.string "othersuppname", limit: 200
    t.string "othersuppaddr", limit: 250
    t.string "colour", limit: 50
    t.string "policenumber", limit: 15
    t.string "vehiclepurpose", limit: 15
    t.string "description_purpose", limit: 250
    t.string "chasisnumber", limit: 25
    t.string "enginenumber", limit: 25
    t.string "parkingaddr", limit: 250
    t.string "cityparkingaddr", limit: 100
    t.datetime "temp_issueddate"
    t.datetime "temp_expireddate"
    t.datetime "temp_receiveddate"
    t.string "bpkbnumber", limit: 25
    t.string "idcode", limit: 5
    t.boolean "off_theroad"
    t.string "bpkb_type", limit: 15
    t.string "bpkb_fam", limit: 20
    t.string "bpkb_name", limit: 100
    t.boolean "cancelorder"
    t.string "actualname", limit: 100
    t.string "placebirth", limit: 100
    t.datetime "dob"
    t.string "bpkbaddr", limit: 250
    t.string "city_bpkbaddr", limit: 100
    t.string "areabpkb", limit: 100
    t.boolean "additionalcollateral"
    t.string "fakturnumber", limit: 50
    t.string "sertifikatnik_number", limit: 100
    t.string "suretybond_number", limit: 100
    t.datetime "receivedate"
    t.string "notes", limit: 25
    t.string "othernotes", limit: 250
    t.datetime "lastreceivedate"
    t.datetime "releasedate"
    t.time "releasetime"
    t.string "formulir_a/c_number", limit: 30
    t.datetime "stnk_date"
    t.decimal "priceotr"
    t.string "status", limit: 6
    t.string "reason", limit: 30
    t.string "insurancepolicy", limit: 50
    t.datetime "submissionblock_date"
    t.datetime "receivedate_blockstatement"
    t.string "agencyname", limit: 50
    t.datetime "blockdate"
    t.string "polnoblock", limit: 50
    t.datetime "expiredblock_date"
    t.datetime "blockdatemore6month"
    t.string "polnoblock_more6month", limit: 50
    t.datetime "checkdate"
    t.datetime "approvedate"
    t.string "remarkblockbpkb", limit: 250
    t.string "remarkforother", limit: 500
    t.string "remarkforoverduebpkb", limit: 250
    t.string "username", limit: 50, null: false
    t.datetime "process_date", null: false
    t.string "statusaction", limit: 10, null: false
  end
 
  create_table "log_clfakta", force: :cascade do |t|
    t.string "lessee_no", limit: 6, null: false
    t.string "lessee_nm", limit: 150, null: false
    t.string "stategazette_number", limit: 200
    t.string "deed_no", limit: 100
    t.datetime "dateofdeed"
    t.string "notary_nm", limit: 100
    t.string "modify_by", limit: 100, null: false
    t.datetime "modified_dt", null: false
    t.string "status", limit: 10, null: false
  end
 
  create_table "log_clfequip", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.datetime "modif_dt", null: false
    t.string "modifier", limit: 50, null: false
  end
 
  create_table "log_clfguarn", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.string "lessee_nm", limit: 150, null: false
    t.string "guarn_tp", limit: 30
    t.string "guarnnm_in_idcard", limit: 150
    t.string "guarnnm_in_npwp", limit: 150
    t.string "guarnnm_withouttitle", limit: 150
    t.string "citizenship", limit: 5
    t.string "nationality", limit: 20
    t.string "idcard_number", limit: 16
    t.string "passport_number", limit: 30
    t.string "bi_cust_tp", limit: 200
    t.string "occupation", limit: 80
    t.string "npwp_15", limit: 15
    t.string "npwp_16", limit: 16
    t.string "address_in_npwp", limit: 250
    t.string "city_npwp", limit: 100
    t.string "postcode_npwp", limit: 6
    t.string "address", limit: 250
    t.string "city", limit: 100
    t.string "postcode", limit: 6
    t.string "phone", limit: 60
    t.string "akte_adress", limit: 100
    t.string "contact_person", limit: 200
    t.decimal "modaldasar"
    t.decimal "modaldisetor"
    t.string "spouse", limit: 100
    t.string "spouse_status", limit: 10
    t.string "idcard_spouse", limit: 16
    t.string "address_spouse", limit: 250
    t.string "city_spouse", limit: 100
    t.string "zipcode_spouse", limit: 6
    t.string "modify_by", limit: 100, null: false
    t.datetime "modified_dt", null: false
    t.string "status", limit: 10, null: false
  end
 
  create_table "log_clfinsu", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.string "lessee_nm", limit: 150, null: false
    t.string "insurance_policy", limit: 50
    t.string "insurance_company", limit: 50
    t.string "pay_method", limit: 10
    t.string "model", limit: 50
    t.string "insurancecigna_policy", limit: 50
    t.decimal "credit_amount"
    t.decimal "gross_premium"
    t.decimal "comm_adm_fee"
    t.datetime "insurance_periode_from"
    t.datetime "insurance_periode_to"
    t.datetime "insurancecigna_periode_from"
    t.datetime "insurancecigna_periode_to"
    t.datetime "cover_date"
    t.string "remark", limit: 100
    t.string "police_no", limit: 15
    t.string "condition", limit: 10
    t.string "modify_by", limit: 100, null: false
    t.datetime "modified_dt", null: false
    t.string "status", limit: 10, null: false
  end
 
  create_table "log_clfless", force: :cascade do |t|
    t.string "lessee_no", limit: 6
    t.string "lessee_nm", limit: 150
    t.string "id_card_name", limit: 150
    t.string "id_card_address", limit: 200
    t.string "rt", limit: 4
    t.string "rw", limit: 5
    t.string "kelurahan", limit: 100
    t.string "kecamatan", limit: 100
    t.string "city", limit: 100
    t.string "postcode", limit: 5
    t.string "telephone_other", limit: 15
    t.string "telephone_house", limit: 15
    t.string "mobilenumber", limit: 20
    t.string "mailaddress", limit: 50
    t.string "mailaddress_city", limit: 100
    t.string "mailaddress_postcode", limit: 5
    t.string "npwp", limit: 16
    t.string "lessee_type", limit: 10
    t.string "lessee_profile", limit: 16
    t.string "citizenship", limit: 20
    t.string "mothername", limit: 100
    t.string "bi_type", limit: 200
    t.string "occupation", limit: 100
    t.string "id_card_no", limit: 16
    t.string "id_card_validity", limit: 15
    t.datetime "id_card_validity_date"
    t.string "familycard", limit: 20
    t.string "placeofbirth", limit: 100
    t.string "gender", limit: 7
    t.string "marital", limit: 50
    t.string "religion", limit: 10
    t.string "spousename", limit: 150
    t.string "spousenamewithouttitle", limit: 150
    t.decimal "spouseincome"
    t.string "id_card_no_spouse", limit: 16
    t.string "id_card_validity_spouse", limit: 15
    t.datetime "id_card_validity_spouse_date"
    t.string "passportnumber", limit: 50
    t.string "placeofbirthspouse", limit: 100
    t.datetime "dob_spouse"
    t.string "marriageagreement", limit: 50
    t.integer "totaldependent"
    t.string "indus_code", limit: 300
    t.string "relation", limit: 50
    t.string "remark", limit: 50
    t.string "email", limit: 75
    t.boolean "checklistsendsms"
    t.string "areacode", limit: 200
    t.string "npwp_address", limit: 200
    t.string "npwp_city", limit: 100
    t.string "npwp_postcode", limit: 5
    t.string "npwp_kelurahan", limit: 100
    t.string "npwp_kecamatan", limit: 100
    t.string "npwp_province", limit: 100
    t.string "differentwith_cust_name", limit: 150
    t.string "differentwith_cust_area", limit: 200
    t.string "differentwith_cust_province", limit: 100
    t.string "differentwith_cust_city", limit: 100
    t.string "differentwith_cust_kecamatan", limit: 100
    t.string "differentwith_cust_kelurahan", limit: 100
    t.string "differentwith_cust_rt", limit: 5
    t.string "differentwith_cust_rw", limit: 150
    t.string "differentwith_cust_postcode", limit: 150
    t.string "alias_nm", limit: 159, null: false
    t.string "province_debitur", limit: 100, null: false
    t.string "business_size", limit: 100, null: false
    t.string "office_address", limit: 200, null: false
    t.string "office_city", limit: 100, null: false
    t.string "office_zipcode", limit: 5, null: false
    t.string "npwp15", limit: 15, null: false
    t.string "contact", limit: 150, null: false
    t.datetime "dob_lessee", null: false
    t.string "spouse_address", limit: 200, null: false
    t.string "siup_number", limit: 75, null: false
    t.string "sk_domicile", limit: 75, null: false
    t.string "modify_by", limit: 100
    t.datetime "modified_dt"
    t.string "status", limit: 10
  end
 
  create_table "log_crchange", force: :cascade do |t|
    t.string "appl_no", limit: 11
    t.string "cr_before", limit: 15
    t.string "cr_after", limit: 15
    t.string "created_by", limit: 15
    t.datetime "created_dt"
  end
 
  create_table "log_crosscoll", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "lease_no", limit: 9
    t.string "delete_by", limit: 50
    t.datetime "delete_date"
    t.string "menu", limit: 100
  end
 
  create_table "log_datavoip", force: :cascade do |t|
    t.string "empl_id", limit: 4
    t.string "username", limit: 50
    t.datetime "lastlogin"
    t.string "flag", limit: 1
    t.string "session_id", limit: 50
  end
 
  create_table "log_dukcapil", force: :cascade do |t|
    t.datetime "log_date"
    t.string "username", limit: 50
    t.string "nik", limit: 20
    t.boolean "status"
    t.string "respond", limit: 2000
  end
 
  create_table "log_dukcapil_datachecking", force: :cascade do |t|
    t.string "noreff", limit: 50, null: false
    t.datetime "datecheck"
    t.string "ktp_npwp", limit: 50
    t.string "namecheck", limit: 50
    t.string "cmo", limit: 4
    t.string "cabang", limit: 2
    t.string "user_by_reff", limit: 1
    t.boolean "slik"
    t.boolean "pefindo"
    t.boolean "dukcapil"
    t.boolean "rapindo"
    t.string "custtype", limit: 2
    t.date "birthdate"
    t.string "birthplace", limit: 50
    t.string "addresscheck", limit: 500
    t.integer "jml_pefindo"
    t.integer "score"
    t.string "ket_score", limit: 30
    t.string "pefindo_id", limit: 100
    t.string "no_rangka", limit: 50
    t.string "ktp_pengurus_1", limit: 50
    t.date "tgllahir_pengurus_1"
    t.string "nama_pengurus_1", limit: 250
    t.string "alamat_pengurus_1", limit: 500
    t.string "ktp_pengurus_2", limit: 50
    t.date "tgllahir_pengurus_2"
    t.string "nama_pengurus_2", limit: 250
    t.string "alamat_pengurus_2", limit: 500
    t.string "ktp_pengurus_3", limit: 50
    t.date "tgllahir_pengurus_3"
    t.string "nama_pengurus_3", limit: 250
    t.string "alamat_pengurus_3", limit: 500
    t.string "ktp_pengurus_4", limit: 50
    t.date "tgllahir_pengurus_4"
    t.string "nama_pengurus_4", limit: 250
    t.string "alamat_pengurus_4", limit: 500
    t.string "ktp_pengurus_5", limit: 50
    t.date "tgllahir_pengurus_5"
    t.string "nama_pengurus_5", limit: 250
    t.string "alamat_pengurus_5", limit: 500
    t.string "create_by", limit: 50
    t.string "create_by_branch", limit: 1
    t.string "update_by", limit: 50
    t.date "update_date"
  end
 
  create_table "log_pefindo", force: :cascade do |t|
    t.string "nama_file", limit: 250, null: false
    t.datetime "upload_dt"
    t.string "kode_cabang", limit: 2
    t.string "nama_cabang", limit: 50
    t.string "tipe_data", limit: 50
    t.string "lokasi_file", limit: 500
    t.string "upd_by", limit: 30
    t.integer "file_size_kb"
    t.string "idgroup", limit: 3
    t.index ["id", "nama_file", "upload_dt", "nama_cabang", "tipe_data", "lokasi_file", "kode_cabang"], name: "ix_Log_Pefindo_Kode_Cabang"
    t.index ["id", "nama_file", "kode_cabang", "tipe_data"], name: "IX_Log_Pefindo_Tipe_Data"
  end
 
  create_table "log_pefindo_delete_history", force: :cascade do |t|
    t.datetime "deletedate", null: false
    t.string "deletelocation", limit: 500, null: false
    t.string "deleteby", limit: 50
  end
 
  create_table "log_rapindo_penarikan", force: :cascade do |t|
    t.datetime "tgl_penarikan"
    t.date "tgl_awal"
    t.date "tgl_akhir"
    t.string "tipe_penarikan", limit: 50
    t.integer "total"
  end
 
  create_table "log_rapindo_search", force: :cascade do |t|
    t.datetime "searchdate", null: false
    t.string "referenceid", limit: 50, null: false
    t.string "search_by", limit: 100
    t.string "file_nm", limit: 500
  end
 
  create_table "log_rapindo_upload", force: :cascade do |t|
    t.datetime "tgl_upload", null: false
    t.date "tgl_awal"
    t.date "tgl_akhir"
    t.string "tipe_upload", limit: 50, null: false
    t.string "tipe_asset", limit: 50
    t.integer "total", default: 0, null: false
    t.string "referenceid", limit: 50, null: false
    t.string "upload_by", limit: 100
  end
 
  create_table "log_routine_deleted", force: :cascade do |t|
    t.string "routine_cd", limit: 14, null: false
    t.string "type_cd", limit: 10, null: false
    t.string "detail_cd", limit: 10, null: false
    t.string "delete_by", limit: 6, null: false
    t.datetime "delete_date", null: false
    t.string "voucher", limit: 11
    t.datetime "voucher_date"
    t.string "branch_cd", limit: 1
  end
 
  create_table "log_voucher_deleted", force: :cascade do |t|
    t.string "voucher", limit: 5, null: false
    t.string "trcode", limit: 1, null: false
    t.string "scode", limit: 1, null: false
    t.string "delete_by", limit: 4, null: false
    t.datetime "delete_date", null: false
    t.string "voucdesc", limit: 200
    t.date "voucdate"
    t.string "branch", limit: 2
  end
 
  create_table "logfixasset", force: :cascade do |t|
    t.string "itemcat", limit: 1, null: false
    t.string "code", limit: 4, null: false
    t.string "branchcd", limit: 1, null: false
    t.string "policeno", limit: 11
    t.string "userasset", limit: 10
    t.string "processtype", limit: 6
    t.string "processby", limit: 6, null: false
    t.datetime "processdate", null: false
  end
 
  create_table "m_counterpart", force: :cascade do |t|
    t.string "counterpartno", limit: 3, null: false
    t.string "counterpartid", limit: 15, null: false
    t.string "counterpartdomicile", limit: 1
    t.string "counterparttype", limit: 1
    t.string "counterpartojkcode", limit: 5
    t.string "counterpartname", limit: 100, null: false
    t.string "counterpartaddress", limit: 200, null: false
    t.string "counterpartphoneno", limit: 30
    t.string "counterpartcontact", limit: 100
    t.datetime "lastupdate"
    t.string "updateby", limit: 100
    t.string "counterpartstatus", limit: 1
  end
 
  create_table "m_counterpart_checklist", force: :cascade do |t|
    t.string "counterpartno", limit: 3, null: false
    t.string "documentcode", limit: 6, null: false
    t.string "value", limit: 1
    t.string "documentdesc", limit: 150
  end
 
  create_table "m_counterpart_contact", force: :cascade do |t|
    t.string "counterpartno", limit: 3, null: false
    t.string "contactname", limit: 100, null: false
    t.string "contactoccupation", limit: 100
    t.string "updateby", limit: 100
    t.datetime "lastupdate"
  end
 
  create_table "m_counterpart_deposit", force: :cascade do |t|
    t.string "counterpartno", limit: 3, null: false
    t.integer "totaldays"
    t.decimal "withholdingtax", precision: 6, scale: 2
    t.string "statusfinal", limit: 2
    t.string "remark", limit: 100
  end
 
  create_table "m_counterpart_derivative", force: :cascade do |t|
    t.string "counterpartno", limit: 3, null: false
    t.string "agreementid", limit: 7, null: false
    t.date "availableperiodfrom"
    t.date "availableperiodto"
    t.date "endmaturity"
    t.string "agreementno", limit: 50, null: false
    t.date "agreementdate"
    t.string "plafonlgcurr", limit: 3
    t.decimal "plafonlg"
    t.decimal "spreadlg", precision: 6, scale: 2
    t.decimal "feelg", precision: 6, scale: 2
    t.string "plafonnlgcurr", limit: 3
    t.decimal "plafonnlg"
    t.decimal "spreadnlg", precision: 6, scale: 2
    t.decimal "feenlg", precision: 6, scale: 2
    t.integer "totaldays"
    t.decimal "withholdingtax", precision: 6, scale: 2
    t.string "statusfinal", limit: 2
    t.string "remark", limit: 100
    t.string "agreementname", limit: 500
  end
 
  create_table "m_counterpart_detail", force: :cascade do |t|
    t.string "counterpartno", limit: 1, null: false
    t.string "currcode", limit: 1, null: false
    t.string "coacode", limit: 5, null: false
    t.string "updateby", limit: 100
    t.datetime "lastupdate"
  end
 
  create_table "m_counterpart_detcov", force: :cascade do |t|
    t.string "counterpartno", limit: 3, default: "0", null: false
    t.string "facility", limit: 10
    t.string "status_convenant", limit: 7
    t.string "convenant", limit: 1000
  end
 
  create_table "m_counterpart_docchecklist", force: :cascade do |t|
    t.string "documentcode", limit: 6, null: false
    t.string "documentparentcode", limit: 6
    t.string "no", limit: 4
    t.string "documentname", limit: 70
    t.string "level", limit: 1
  end
 
  create_table "m_counterpart_nlginfo", force: :cascade do |t|
    t.string "counterpartno", limit: 3, null: false
    t.string "agreementid", limit: 7, null: false
    t.string "curr", limit: 3, null: false
    t.string "typenlg", limit: 15
    t.string "counterpart", limit: 3
    t.string "limitcurr", limit: 3
    t.decimal "limitfee"
    t.decimal "limitpercen", precision: 6, scale: 2
    t.string "feenlgcurr", limit: 3
    t.decimal "feenlgfee"
    t.decimal "feenlgpercen", precision: 6, scale: 2
    t.string "feeothercurr", limit: 3
    t.decimal "feeotherfee"
    t.decimal "feeotherpercen", precision: 6, scale: 2
    t.string "lgjaml", limit: 5
    t.decimal "lgjamlpercen", precision: 6, scale: 2
    t.string "remark", limit: 100
  end
 
  create_table "m_counterpart_phone", force: :cascade do |t|
    t.string "counterpartno", limit: 3, null: false
    t.string "phonecode", limit: 1, null: false
    t.string "phonenomor", limit: 15, null: false
    t.string "updateby", limit: 100
    t.datetime "lastupdate"
  end
 
  create_table "m_counterpart_shortterm", force: :cascade do |t|
    t.string "counterpartno", limit: 3, null: false
    t.string "agreementid", limit: 7, null: false
    t.date "availableperiodfrom"
    t.date "availableperiodto"
    t.date "endmaturity"
    t.string "agreementno", limit: 50, null: false
    t.date "agreementdate"
    t.integer "totaldays"
    t.decimal "withholdingtax", precision: 6, scale: 2
    t.string "finalvalue", limit: 10
    t.decimal "provisionpercen", precision: 6, scale: 2
    t.decimal "provisionfee"
    t.string "provisioncurr", limit: 3
    t.decimal "agentpercen", precision: 6, scale: 2
    t.decimal "agentfee"
    t.string "agentcurr", limit: 3
    t.decimal "arrangerpercen", precision: 6, scale: 2
    t.decimal "arrangerfee"
    t.string "arrangercurr", limit: 3
    t.string "remark", limit: 100
    t.string "agreementname", limit: 500
  end
 
  create_table "m_counterpart_shortterm_borrow", force: :cascade do |t|
    t.string "counterpartno", limit: 3, null: false
    t.string "agreementid", limit: 7, null: false
    t.string "curr", limit: 3, null: false
    t.string "plafonlgcurr", limit: 3
    t.decimal "plafonlg"
    t.decimal "spreadlg", precision: 6, scale: 2
    t.decimal "feelg", precision: 6, scale: 2
    t.string "plafonnlgcurr", limit: 3
    t.decimal "plafonnlg"
    t.decimal "spreadnlg", precision: 6, scale: 2
    t.decimal "feenlg", precision: 6, scale: 2
  end
 
  create_table "m_counterpart_standbylc", force: :cascade do |t|
    t.string "counterpartno", limit: 3, null: false
    t.string "agreementid", limit: 3, null: false
    t.date "availableperiodfrom"
    t.date "availableperiodto"
    t.date "endmaturity"
    t.string "agreementno", limit: 50, null: false
    t.date "agreementdate"
    t.string "plafonlgcurr", limit: 3
    t.decimal "plafonlg"
    t.decimal "spreadlg", precision: 6, scale: 2
    t.decimal "feelg", precision: 6, scale: 2
    t.string "plafonnlgcurr", limit: 3
    t.decimal "plafonnlg"
    t.decimal "spreadnlg", precision: 6, scale: 2
    t.decimal "feenlg", precision: 6, scale: 2
    t.integer "totaldays"
    t.decimal "withholdingtax", precision: 6, scale: 2
    t.string "statusfinal", limit: 2
    t.decimal "provisionpercen", precision: 6, scale: 2
    t.decimal "provisionfee"
    t.string "provisioncurr", limit: 3
    t.decimal "agentpercen", precision: 6, scale: 2
    t.decimal "agentfee"
    t.string "agentcurr", limit: 3
    t.decimal "arrangerpercen", precision: 6, scale: 2
    t.decimal "arrangerfee"
    t.string "arrangercurr", limit: 3
    t.string "remark", limit: 100
    t.string "agreementname", limit: 500
  end
 
  create_table "m_exchange_rate", force: :cascade do |t|
    t.string "currencycode", limit: 3, null: false
    t.string "exchangerate", limit: 25, null: false
    t.date "exchangefromdt", null: false
    t.date "exchangetodt", null: false
    t.decimal "closingtaxrate"
    t.decimal "closingbirate"
    t.decimal "closingcompanyrate"
    t.string "updateby", limit: 100
    t.datetime "lastupdate"
  end
 
  create_table "m_guarantee_rate", force: :cascade do |t|
    t.string "counterpartno", limit: 3, null: false
    t.decimal "guaranteerate", precision: 6, scale: 2
    t.decimal "withholdingtax", precision: 6, scale: 2
    t.decimal "exchangerateusd"
    t.decimal "exchangeratejpy"
    t.date "guaranteefromdt", null: false
    t.date "guaranteetodt"
    t.string "updateby", limit: 100
    t.date "lastupdate"
  end
 
  create_table "m_transaction", force: :cascade do |t|
    t.string "transactioncode", limit: 1, null: false
    t.string "transactionid", limit: 1, null: false
    t.string "transactiondesc", limit: 100, null: false
    t.string "updateby", limit: 100
    t.datetime "lastupdate"
  end
 
  create_table "mapppurpoffinc", force: :cascade do |t|
    t.string "period", limit: 7, null: false
    t.string "branch", limit: 2, null: false
    t.string "reportcd", limit: 3, null: false
    t.boolean "posting"
    t.string "attribute", limit: 3, null: false
  end
 
  create_table "mapppurpoffinc_detail", force: :cascade do |t|
    t.string "period", limit: 7, null: false
    t.string "branch", limit: 2, null: false
    t.string "reportcd", limit: 3, null: false
    t.integer "purpoffinc", null: false
    t.string "cons_leas", limit: 0, null: false
    t.string "attribute", limit: 3, null: false
    t.string "amountdesc", limit: 50, null: false
    t.decimal "amount"
  end
 
  create_table "materaitera", force: :cascade do |t|
    t.datetime "materai_dt"
    t.string "lease_no", limit: 9
    t.string "description", limit: 100
    t.integer "out"
    t.decimal "isi"
    t.string "modified_by", limit: 100
    t.datetime "modified_dt"
    t.boolean "flgdel"
    t.string "branch_cd", limit: 1
    t.string "other_branchcd", limit: 1
    t.integer "mesin_tera"
    t.decimal "materai_amount"
    t.datetime "materai_processdt"
    t.index ["id", "materai_dt", "lease_no", "description", "out", "isi", "other_branchcd", "flgdel", "branch_cd", "mesin_tera"], name: "IX_MateraiTera_FLGDEL_Branch_CD_Mesin_Tera"
  end
 
  create_table "mcmo_hp2", force: :cascade do |t|
    t.string "emp_id", limit: 11, null: false
    t.string "hp", limit: 50
    t.string "hp_private", limit: 300
  end
 
  create_table "mcmoapproveraudit", force: :cascade do |t|
    t.string "userid", limit: 30
    t.datetime "datelog"
    t.string "event", limit: 100
    t.string "user_ip", limit: 20
  end
 
  create_table "mcmocamaccstatus", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "appr_sts", limit: 1
    t.string "appr_id", limit: 60
    t.datetime "appr_date"
    t.datetime "create_date"
    t.string "supp", limit: 7
    t.string "comment", limit: 600
    t.string "account_bank", limit: 500
    t.index ["appl_no", "create_date", "appr_sts", "appr_id"], name: "IX_MCMOCAMACCSTATUS_appr_sts_appr_id"
    t.index ["create_date", "appl_no", "appr_sts", "appr_id"], name: "IX_MCMOCAMACCSTATUS_NC1"
  end
 
  create_table "mcmocamaccstatus_history", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "appr_sts", limit: 3
    t.string "bank_name", limit: 100
    t.string "bank_branch", limit: 100
    t.string "account_name", limit: 100
    t.string "account_number", limit: 25
    t.decimal "amount", null: false
    t.datetime "appr_date"
  end
 
  create_table "mcmocamcommstatus", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "appr_sts", limit: 1
    t.string "appr_id", limit: 60
    t.datetime "appr_date"
    t.datetime "create_date"
    t.string "comment", limit: 500
  end
 
  create_table "mcmocamcommstatus_history", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "appr_sts", limit: 3
    t.string "sales_no", limit: 1000
    t.decimal "sales_fee"
    t.decimal "total_comm", null: false
    t.decimal "otr", null: false
    t.decimal "downpayment", null: false
    t.datetime "appr_date"
    t.string "insert_number", limit: 3
  end
 
  create_table "mcmocamcompletelist", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.boolean "admsts", null: false
    t.datetime "admdate"
    t.string "picked_by", limit: 4
    t.string "result_independent", limit: 2
    t.index ["appl_no"], name: "IX_MCMOCAMCOMPLETELIST_index1"
    t.index ["appl_no", "admsts", "admdate"], name: "NC2_MCMOCAMCOMPLETELIST"
  end
 
  create_table "mcmocamimages", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.integer "image_no", null: false
    t.datetime "date_entered", null: false
    t.string "notes"
    t.string "image_1", limit: 150
    t.string "image_2", limit: 150
    t.string "image_3", limit: 150
    t.string "image_4", limit: 150
    t.string "cust_no", limit: 6
    t.index ["cust_no", "image_no"], name: "IX_MCMOCAMImages_NC1"
  end
 
  create_table "mcmocamoutsstatus", force: :cascade do |t|
    t.string "appl_no", limit: 11
    t.string "appr_sts", limit: 2
    t.string "appr_id", limit: 60
    t.datetime "appr_date"
    t.datetime "create_date"
    t.string "appr_id_from", limit: 60
    t.string "appr_id_to", limit: 60
    t.string "supp", limit: 7
    t.decimal "outstanding"
    t.string "comment", limit: 300
    t.boolean "flag"
    t.index ["no", "appl_no", "create_date", "appr_id_from", "appr_sts", "appr_id"], name: "IX_MCMOCAMOUTSSTATUS_APPR_STS_APPR_ID"
    t.index ["appl_no", "appr_sts"], name: "IX_MCMOCAMOUTSSTATUS_NC1"
  end
 
  create_table "mcmocamstatus", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "appr_sts", limit: 1, null: false
    t.string "appr_id", limit: 15, null: false
    t.datetime "appr_date", default: "getdate", null: false
    t.string "comment", limit: 5000
    t.string "appr_id_from", limit: 15, null: false
    t.string "appr_id_to", limit: 15, null: false
    t.string "downloadflag", limit: 0, null: false
    t.datetime "createdate", default: "getdate"
    t.string "appr_flag", limit: 2
    t.index ["no", "appl_no", "createdate", "appr_id", "appr_sts"], name: "IX_MCMOCAMSTATUS_index2"
    t.index ["appl_no", "appr_sts"], name: "IX_MCMOCAMSTATUS_index3"
    t.index ["no", "appl_no", "appr_id", "appr_id_from", "createdate", "appr_sts"], name: "MCMOCAMStatus_IX1"
  end
 
  create_table "mcmocamwords", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.integer "word_no", null: false
    t.string "word_name", limit: 150, null: false
    t.datetime "date_entered"
  end
 
  create_table "mcmocr", force: :cascade do |t|
    t.string "cr_code", limit: 10, null: false
    t.string "group_cr", limit: 10, null: false
    t.integer "cam"
    t.string "sts", limit: 1, null: false
    t.integer "priority", null: false
    t.datetime "leave_periodfrom"
    t.datetime "leave_periodto"
    t.string "update_by", limit: 100
    t.datetime "last_update"
  end
 
  create_table "mcmocrcommcar", force: :cascade do |t|
    t.string "cr_code", limit: 10
    t.string "group_cr", limit: 10
  end
 
  create_table "mcmocrgroup", force: :cascade do |t|
    t.string "group_cr", limit: 10, null: false
    t.string "cr_code", limit: 50
    t.integer "cam", null: false
    t.string "sts", limit: 1, null: false
    t.datetime "leave_periodfrom"
    t.datetime "leave_periodto"
    t.string "update_by", limit: 100
    t.datetime "last_update"
  end
 
  create_table "mcmocrsurvey", force: :cascade do |t|
    t.string "apless", limit: 6, null: false
    t.string "cr_code", limit: 5
    t.date "input_dt"
    t.datetime "confirm_dt"
    t.string "confirm_sts", limit: 1
  end
 
  create_table "mcmolistcommappr", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "appr_id", limit: 60
    t.datetime "appr_date"
    t.string "comment", limit: 500
    t.string "appr_id_to", limit: 60
  end
 
  create_table "mcmomastatus", force: :cascade do |t|
    t.string "appl_no", limit: 11
    t.string "appr_sts", limit: 1
    t.string "role", limit: 1
    t.string "appr_id", limit: 15
    t.datetime "appr_date"
    t.string "comment", limit: 500
    t.datetime "createdate"
    t.boolean "flag"
  end
 
  create_table "mcmononcr", force: :cascade do |t|
    t.string "emp_id", limit: 4, null: false
    t.string "availability", limit: 1, null: false
    t.datetime "leave_periodfrom"
    t.datetime "leave_periodto"
    t.string "update_by", limit: 100
    t.datetime "last_update"
    t.string "status", limit: 1
    t.string "alternate_by", limit: 4
  end
 
  create_table "mcmorevisi", force: :cascade do |t|
    t.string "oldappl_no", limit: 11, null: false
    t.string "newappl_no", limit: 11, null: false
    t.string "first_appl_no", limit: 11
    t.integer "revisi", null: false
    t.string "revisi_note", limit: 255
    t.string "createuser", limit: 10, null: false
    t.datetime "createdate", null: false
    t.string "lastuser", limit: 10
    t.datetime "lastupdate"
    t.index ["revisi", "newappl_no"], name: "IX_MCMORevisi_NewAppl_No"
    t.index ["oldappl_no"], name: "IX_MCMORevisi_OldAppl_No_1"
  end
 
  create_table "mcmorevisi2", force: :cascade do |t|
    t.string "oldappl_no", limit: 11, null: false
    t.string "newappl_no", limit: 11, null: false
    t.datetime "createdate", null: false
  end
 
  create_table "mcmouseraudit", force: :cascade do |t|
    t.string "userid", limit: 30
    t.datetime "waktu", null: false
    t.string "event", limit: 255, null: false
    t.string "user_ip", limit: 200
    t.string "server_addr", limit: 20
    t.string "sessionid", limit: 50
    t.string "user_browser", limit: 50
    t.index ["no", "waktu", "event", "user_ip", "server_addr", "sessionid", "userid"], name: "NCI_MCMOUSERAUDIT_"
  end
 
  create_table "mcmowatchlist", force: :cascade do |t|
    t.integer "no", null: false
    t.string "name", limit: 50, null: false
    t.string "address", limit: 1000
    t.string "id_card", limit: 20
    t.string "phone", limit: 60
    t.string "contactperson", limit: 50
    t.string "contactaddress", limit: 250
    t.string "createuser", limit: 10, null: false
    t.datetime "createdate", default: "getdate", null: false
    t.string "lastuser", limit: 10
    t.datetime "lastupdate"
    t.string "reason", limit: 1000
    t.datetime "dob"
    t.string "flag_type", limit: 1
    t.string "flagdel", limit: 1
    t.string "deleteby", limit: 500
    t.string "attachment", limit: 150
    t.string "apless", limit: 6
    t.string "customer_type", limit: 2
    t.string "spouse_name", limit: 100
    t.string "contact_group", limit: 50
    t.string "reason_delete", limit: 500
    t.string "mother", limit: 50
    t.datetime "deletedate"
    t.string "reason_category", limit: 2
    t.string "reason_other", limit: 500
    t.date "problem_since"
    t.string "npwp", limit: 100
    t.string "dttot_code", limit: 20
    t.index ["apless"], name: "IX_MCMOWATCHLIST_APLESS"
    t.index ["name", "address", "createuser", "createdate", "lastuser", "lastupdate", "reason_category", "flagdel"], name: "IX_MCMOWATCHLIST_FlagDel"
  end
 
  create_table "mcmowatchlist_aliasnm", force: :cascade do |t|
    t.integer "no", null: false
    t.integer "id", null: false
    t.string "name", limit: 1000
  end
 
  create_table "mcmowatchlist_reasonhistory", force: :cascade do |t|
    t.string "apless", limit: 6, null: false
    t.datetime "firstcreatedate", null: false
    t.datetime "reasondate", null: false
    t.string "reason", limit: 255
  end
 
  create_table "memo_floating", force: :cascade do |t|
    t.string "memo_id", limit: 9, null: false
    t.datetime "memo_date"
    t.datetime "floating_date"
    t.decimal "libor3m", precision: 9, scale: 6
    t.decimal "libor6m", precision: 9, scale: 6
    t.decimal "jibor3m", precision: 9, scale: 6
    t.decimal "jibor6m", precision: 9, scale: 6
    t.decimal "swap3m", precision: 9, scale: 6
    t.decimal "swap6m", precision: 9, scale: 6
    t.datetime "appr_date"
    t.string "reg_no", limit: 50
    t.string "float_by", limit: 25
    t.string "create_by", limit: 4
    t.datetime "create_date"
    t.string "update_by", limit: 4
    t.datetime "update_date"
    t.decimal "sofr3m", precision: 9, scale: 6
    t.decimal "sofr6m", precision: 9, scale: 6
    t.date "rate_date"
  end
 
  create_table "memo_floating_detail", force: :cascade do |t|
    t.string "memo_id", limit: 9
    t.string "lease_no", limit: 9
    t.integer "period"
    t.datetime "rental_date"
    t.decimal "spread", precision: 9, scale: 6
    t.decimal "final_rate", precision: 9, scale: 6
    t.integer "float_cyc"
    t.string "ibor", limit: 4
  end
 
  create_table "menulist_salespoint", force: :cascade do |t|
    t.string "menu_code", limit: 15
    t.boolean "iscontract"
  end
 
  create_table "msclresult", force: :cascade do |t|
    t.integer "result", null: false
    t.string "result_desc", limit: 200
  end
 
  create_table "mst_country", force: :cascade do |t|
    t.string "id2digit", limit: 2, null: false
    t.string "id3digit", limit: 3
    t.string "name", limit: 100
    t.string "phone", limit: 10, null: false
  end
 
  create_table "mst_deo", force: :cascade do |t|
    t.string "deo", limit: 5
    t.string "cmopkwt", limit: 5
    t.string "branch_cd", limit: 3
    t.boolean "isactive"
    t.datetime "created_date"
    t.datetime "updated_date"
  end
 
  create_table "mst_ebukpot", force: :cascade do |t|
    t.string "ebukpot_cd", limit: 9, null: false
    t.string "ebukpot_desc", limit: 500
    t.string "pph_id", limit: 5, null: false
  end
 
  create_table "mst_ebukpot_signer", force: :cascade do |t|
    t.string "signername", limit: 200
    t.string "npwp_no", limit: 30
    t.string "branch_cd", limit: 2
    t.string "employee_id", limit: 4
  end
 
  create_table "mst_etappr", force: :cascade do |t|
    t.integer "code", null: false
    t.integer "urutan", null: false
    t.string "description", limit: 250
    t.integer "approver"
  end
 
  create_table "mst_kecamatan", force: :cascade do |t|
    t.string "area_cd", limit: 2, null: false
    t.string "kecamatan_cd", limit: 6, null: false
    t.string "desc_name", limit: 50
    t.index ["area_cd"], name: "IX_Mst_Kecamatan_Area_CD"
  end
 
  create_table "mst_kelurahan", force: :cascade do |t|
    t.string "kecamatan_cd", limit: 6, null: false
    t.string "kelurahan_cd", limit: 10, null: false
    t.string "desc_name", limit: 50
    t.index ["kecamatan_cd"], name: "IX_Mst_Kelurahan_Kecamatan_CD"
  end
 
  create_table "mst_mou_detail", force: :cascade do |t|
    t.string "vendor_id", limit: 8, null: false
    t.string "nickname", limit: 20, null: false
    t.datetime "mou_date"
    t.datetime "end_date"
  end
 
  create_table "mst_mou_vendor", force: :cascade do |t|
    t.string "vendor_id", limit: 8, null: false
    t.string "division", limit: 2
    t.string "typeofservices", limit: 10
    t.string "typeofservices2", limit: 11
    t.string "reason", limit: 100
    t.integer "moutype"
    t.datetime "mou_dt"
    t.datetime "end_dt"
    t.string "reason1", limit: 200
    t.string "reason2", limit: 200
    t.string "ktp_no", limit: 30
    t.string "establishdeed", limit: 50
    t.string "ministrydegree", limit: 50
    t.string "tdp", limit: 50
    t.string "remark", limit: 100
    t.datetime "terminate_dt"
    t.datetime "final_dt"
    t.string "reason3", limit: 200
    t.string "reason4", limit: 200
    t.integer "multiple"
  end
 
  create_table "mst_path_cam", force: :cascade do |t|
    t.string "id_path", limit: 50, null: false
    t.string "path", limit: 200
    t.string "desc", limit: 200
  end
 
  create_table "mst_rpt_epolisraksa", force: :cascade do |t|
    t.string "branchcoderaksa", limit: 3, null: false
    t.string "branchname", limit: 100, null: false
    t.string "notes", limit: 150, null: false
    t.string "branch_cd", limit: 1, null: false
    t.string "condition", limit: 10, null: false
    t.datetime "createdate", default: "getdate", null: false
  end
 
  create_table "mst_samsateditorial", force: :cascade do |t|
    t.string "branch_cd", limit: 1
    t.string "app_type", limit: 20
    t.string "to_name", limit: 100
    t.string "up_name", limit: 100
  end
 
  create_table "mst_typedocumentmaterai", force: :cascade do |t|
    t.string "documentcode", limit: 6
    t.string "usermaterai", limit: 50
    t.string "document_desc", limit: 100
    t.string "created_by", limit: 4, null: false
    t.datetime "created_dt", null: false
    t.string "modified_by", limit: 4
    t.datetime "modified_dt"
  end
 
  create_table "mst_usermaterai", force: :cascade do |t|
    t.string "usermaterai", limit: 30
    t.string "purchaseunit", limit: 20
    t.string "approvermemo", limit: 50
    t.string "divisi", limit: 50
    t.string "created_by", limit: 4, null: false
    t.datetime "created_dt", null: false
    t.string "modified_by", limit: 4
    t.datetime "modified_dt"
  end
 
  create_table "mst_wilayah", force: :cascade do |t|
    t.string "kode", limit: 20, null: false
    t.string "wilayah", limit: 100
  end
 
  create_table "mstaddressstatus", force: :cascade do |t|
    t.string "addressstatus", limit: 2, null: false
    t.string "name", limit: 30
  end
 
  create_table "mstallowancetrip", force: :cascade do |t|
    t.string "levelorgrade", limit: 50
    t.boolean "ismonthly"
    t.decimal "domesticallowance", precision: 10, scale: 0
    t.decimal "internationalallowance", precision: 10, scale: 0
  end
 
  create_table "mstamortype", force: :cascade do |t|
    t.integer "l_type", null: false
    t.string "name", limit: 15, null: false
    t.string "name_corfin", limit: 50
  end
 
  create_table "mstappr", force: :cascade do |t|
    t.integer "id", null: false
    t.decimal "appr_plafond"
    t.integer "appr_level"
    t.string "appr", limit: 10
    t.string "category", limit: 20, null: false
  end
 
  create_table "mstapprouts", force: :cascade do |t|
    t.integer "appr_level"
    t.string "appr", limit: 10
    t.string "category", limit: 20
  end
 
  create_table "mstarq", force: :cascade do |t|
    t.string "code", limit: 1, null: false
    t.string "category", limit: 50
    t.string "remark", limit: 30
    t.string "npf", limit: 25
    t.integer "percentage"
  end
 
  create_table "mstassessment_desc", force: :cascade do |t|
    t.string "r_code", limit: 5
    t.string "category", limit: 50
    t.string "remark", limit: 50, null: false
    t.string "quality", limit: 20, null: false
    t.string "descrip", limit: 500, null: false
  end
 
  create_table "mstassessmentvalue", force: :cascade do |t|
    t.string "category", limit: 20, null: false
    t.string "code", limit: 10, null: false
    t.string "descrip", limit: 100, null: false
    t.string "parent", limit: 10
  end
 
  create_table "mstaudit", force: :cascade do |t|
    t.string "chk_list", limit: 1, null: false
    t.string "chk_desc", limit: 100
  end
 
  create_table "mstboardmitsui", force: :cascade do |t|
    t.string "code", limit: 0, null: false
    t.string "name", limit: 15, null: false
  end
 
  create_table "mstbodcomposition", force: :cascade do |t|
    t.datetime "periodstart"
    t.datetime "periodend"
    t.string "presdir", limit: 100
    t.string "dir1", limit: 100
    t.string "dir2", limit: 100
    t.boolean "flgdel"
    t.string "modified_by", limit: 50
    t.datetime "modified_dt"
  end
 
  create_table "mstbranchnetworkarea", force: :cascade do |t|
    t.string "area", limit: 10
    t.string "branchcd", limit: 1
    t.string "finalapprovedby", limit: 5
    t.datetime "modifieddate"
    t.string "modifiedby", limit: 5
    t.datetime "createddate"
    t.string "createdby", limit: 5
  end
 
  create_table "mstbranchnetworkofficeravailability", force: :cascade do |t|
    t.string "employeeid", limit: 4
    t.string "area", limit: 10
    t.boolean "isactive"
    t.datetime "modifieddate"
    t.string "modifiedby", limit: 5
    t.datetime "createddate"
    t.string "createdby", limit: 5
  end
 
  create_table "mstcategory", force: :cascade do |t|
    t.string "code", limit: 1, null: false
    t.string "name", limit: 20
  end
 
  create_table "mstcffl", force: :cascade do |t|
    t.string "cons_leas", limit: 0, null: false
    t.string "name", limit: 50, null: false
    t.string "name_indo", limit: 50
    t.string "flag_active", limit: 1
  end
 
  create_table "mstchecklist", force: :cascade do |t|
    t.string "list_cat", limit: 1, null: false
    t.string "list_desc", limit: 60, null: false
  end
 
  create_table "mstclause", force: :cascade do |t|
    t.integer "code", null: false
    t.string "name", limit: 25
  end
 
  create_table "mstclvalue", force: :cascade do |t|
    t.integer "start_limit", null: false
    t.integer "end_limit", null: false
    t.integer "value", null: false
    t.string "type_cd", limit: 2, null: false
  end
 
  create_table "mstcmonotary", force: :cascade do |t|
    t.string "notary_no", limit: 6
    t.string "cmo", limit: 4, null: false
    t.string "createdby", limit: 50
    t.datetime "createdate"
  end
 
  create_table "mstcolltype", force: :cascade do |t|
    t.string "col_type", limit: 2, null: false
    t.string "name", limit: 20, null: false
  end
 
  create_table "mstcombo", force: :cascade do |t|
    t.string "cat_value", limit: 30
    t.string "value", limit: 50
    t.string "desc_value", limit: 1000
    t.index ["cat_value"], name: "NC_MSTCOMBO"
  end
 
  create_table "mstcondition", force: :cascade do |t|
    t.string "code", limit: 0, null: false
    t.string "name", limit: 15, null: false
  end
 
  create_table "mstconttype", force: :cascade do |t|
    t.string "cont_type", limit: 3, null: false
    t.string "name", limit: 100, null: false
  end
 
  create_table "mstcustprofile", force: :cascade do |t|
    t.string "code", limit: 0, null: false
    t.string "name", limit: 15, null: false
  end
 
  create_table "mstdealerarea", force: :cascade do |t|
    t.string "code", limit: 4, null: false
    t.string "description", limit: 30
  end
 
  create_table "mstdealerbpkbcategory", force: :cascade do |t|
    t.integer "bpkbcat_id", null: false
    t.string "bpkbcat_desc", limit: 50, null: false
    t.decimal "min_limit", precision: 18, scale: 0, null: false
    t.decimal "max_limit", precision: 18, scale: 0, null: false
  end
 
  create_table "mstdealerbuss", force: :cascade do |t|
    t.string "code", limit: 4, null: false
    t.string "description", limit: 30
  end
 
  create_table "mstdealerownership", force: :cascade do |t|
    t.string "code", limit: 4, null: false
    t.string "description", limit: 30
  end
 
  create_table "mstdealersegment", force: :cascade do |t|
    t.string "code", limit: 4, null: false
    t.string "description", limit: 60
  end
 
  create_table "mstdealertype", force: :cascade do |t|
    t.string "code", limit: 4, null: false
    t.string "description", limit: 40
  end
 
  create_table "mstdeviation", force: :cascade do |t|
    t.string "deviation_cd", limit: 4, null: false
    t.string "deviation_desc", null: false
    t.string "standard_desc", null: false
    t.string "flag", limit: 1, null: false
  end
 
  create_table "mstdeviation_corfin", force: :cascade do |t|
    t.string "deviation_cd", limit: 4, null: false
    t.string "deviation_desc", null: false
    t.string "standard_desc", null: false
    t.string "flag", limit: 1, null: false
  end
 
  create_table "mstdisbtype", force: :cascade do |t|
    t.string "disb_type", limit: 1, null: false
    t.string "name", limit: 30, null: false
  end
 
  create_table "mstdokumendeviasi", force: :cascade do |t|
    t.integer "id_mstdokumen", null: false
    t.string "desc_dokumen", limit: 4000
  end
 
  create_table "mstdokumendeviasi_detail", force: :cascade do |t|
    t.integer "id_mstdokumen_detail", null: false
    t.integer "id_new"
    t.integer "id_mstdokumen"
    t.string "desc_dokumen_detail_in", limit: 4000
    t.string "desc_dokumen_detail_en", limit: 4000
    t.string "standard_condition_in", limit: 4000
    t.string "standard_condition_en", limit: 4000
  end
 
  create_table "mstendorsee", force: :cascade do |t|
    t.string "branch_city", limit: 25
    t.integer "endorsee_no"
    t.string "endorsee_name", limit: 40
    t.string "endorsee_idcard", limit: 25
    t.string "endorsee_address1", limit: 200
    t.string "endorsee_address2", limit: 200
  end
 
  create_table "mstequipreason", force: :cascade do |t|
    t.integer "id_reason", null: false
    t.string "reason_eng", limit: 80
    t.string "reason_ind", limit: 80
  end
 
  create_table "mstfacorrectiontype", force: :cascade do |t|
    t.string "correction_cd", limit: 2, null: false
    t.string "correction_type", limit: 100
    t.integer "sort_number"
  end
 
  create_table "mstfalinkprog", force: :cascade do |t|
    t.string "link_cd", limit: 2, null: false
    t.string "link_prog", limit: 100
    t.integer "sort_number"
  end
 
  create_table "mstfamstatus", force: :cascade do |t|
    t.string "id_fam", limit: 2, null: false
    t.string "deskripsi", limit: 70
  end
 
  create_table "mstfareq", force: :cascade do |t|
    t.string "request_cd", limit: 2, null: false
    t.string "request_by", limit: 50
  end
 
  create_table "mstfastapp", force: :cascade do |t|
    t.string "appl_no", limit: 11
    t.string "cmo", limit: 5
    t.string "cr", limit: 5
    t.string "crh", limit: 5
    t.datetime "lastupdate"
    t.string "updateby", limit: 5
  end
 
  create_table "mstfintype", force: :cascade do |t|
    t.string "code", limit: 0, null: false
    t.string "name", limit: 10, null: false
  end
 
  create_table "mstfs", force: :cascade do |t|
    t.string "fs_code", limit: 6, null: false
    t.string "fs_desc", limit: 100, null: false
  end
 
  create_table "mstgrouptype", force: :cascade do |t|
    t.string "grptype", limit: 1, null: false
    t.string "name", limit: 20
  end
 
  create_table "mstibor", force: :cascade do |t|
    t.date "date_rate", null: false
    t.string "ibor", limit: 5, null: false
    t.decimal "rate", precision: 9, scale: 6
    t.integer "month", null: false
    t.string "create_by", limit: 4, null: false
    t.datetime "create_dt", null: false
    t.string "update_by", limit: 4
    t.datetime "update_dt"
  end
 
  create_table "mstindus", force: :cascade do |t|
    t.string "indus_code", limit: 3, null: false
    t.string "descrip", limit: 150
    t.string "mlci_code", limit: 6, null: false
  end
 
  create_table "mstindustry", force: :cascade do |t|
    t.string "header", limit: 1, null: false
    t.string "mlci_code", limit: 6, null: false
    t.string "descrip", limit: 300, null: false
    t.string "parent", limit: 5
    t.string "bi_code", limit: 3
  end
 
  create_table "mstindustry_lbpp", force: :cascade do |t|
    t.string "header", limit: 1, null: false
    t.string "mlci_code", limit: 6, null: false
    t.string "descrip", limit: 300, null: false
    t.string "parent", limit: 6
    t.string "bi_code", limit: 3
    t.string "real_mlci_code", limit: 6
    t.string "isactive", limit: 1
    t.integer "urut"
    t.index ["descrip", "mlci_code"], name: "IX_MstIndustry_LBPP_MLCI_Code"
    t.index ["parent"], name: "IX_MstIndustry_LBPP_Parent"
  end
 
  create_table "mstinsurancearea", force: :cascade do |t|
    t.string "code", limit: 1, null: false
    t.string "name", limit: 50
  end
 
  create_table "mstlbppgroupcode", force: :cascade do |t|
    t.string "groupcodelbpp", limit: 8, null: false
    t.string "groupcodedesc", limit: 100
  end
 
  create_table "mstleasetype", force: :cascade do |t|
    t.string "code", limit: 0, null: false
    t.string "name", limit: 15, null: false
  end
 
  create_table "mstlesseetype", force: :cascade do |t|
    t.string "cust_type", limit: 2, null: false
    t.string "lessee_tp", limit: 2
    t.string "name", limit: 30
  end
 
  create_table "mstmarital", force: :cascade do |t|
    t.string "marital", limit: 1, null: false
    t.string "name", limit: 50, null: false
  end
 
  create_table "mstmarketprice", force: :cascade do |t|
    t.string "model", limit: 2, null: false
    t.integer "year", null: false
    t.decimal "percentage", precision: 10, scale: 2
  end
 
  create_table "mstmateraitera", force: :cascade do |t|
    t.integer "id_tera", null: false
    t.string "mesin_tera", limit: 10
    t.boolean "flgdel"
    t.string "merk", limit: 50
    t.string "type", limit: 10
    t.string "year", limit: 4
    t.string "branch_cd", limit: 1
    t.string "div_id", limit: 10
    t.string "map", limit: 10
    t.string "kjs", limit: 10
    t.datetime "purchase_dt"
    t.string "status", limit: 1
    t.string "izin_no", limit: 100
    t.datetime "izin_dt"
    t.datetime "izin_eff_dt"
    t.string "cabut_izin_no", limit: 100
    t.datetime "cabut_izin_dt"
    t.string "remark", limit: 250
    t.string "update_by", limit: 4
    t.datetime "update_dt"
  end
 
  create_table "mstmemoreg", force: :cascade do |t|
    t.string "memoreg_cd", limit: 3, null: false
    t.string "memoreg_nm", limit: 100
    t.string "description1", limit: 250
    t.string "description2", limit: 250
    t.boolean "flgdel"
  end
 
  create_table "mstos_certificate", force: :cascade do |t|
    t.string "cust_type", limit: 2
    t.string "cert_code", limit: 2, null: false
    t.string "desc", limit: 4000
  end
 
  create_table "mstos_code", force: :cascade do |t|
    t.string "os_code", limit: 4, null: false
    t.string "desc", limit: 100
  end
 
  create_table "mstos_position", force: :cascade do |t|
    t.string "os_code", limit: 4, null: false
    t.string "desc", limit: 100
  end
 
  create_table "mstos_signer", force: :cascade do |t|
    t.string "cust_type", limit: 2
    t.string "signer_code", limit: 50, null: false
    t.string "desc", limit: 4000
  end
 
  create_table "mstpaymethod", force: :cascade do |t|
    t.string "code", limit: 1, null: false
    t.string "name", limit: 10, null: false
  end
 
  create_table "mstprofcoll", force: :cascade do |t|
    t.string "coll_type", limit: 1
    t.string "coll_id", limit: 4, null: false
    t.integer "status"
    t.string "name", limit: 100
    t.string "address", limit: 250
    t.string "contact_name", limit: 100
    t.string "phone", limit: 60
    t.string "contact_no", limit: 60
    t.string "update_by", limit: 50
    t.date "update_date"
    t.string "entity_coll", limit: 4
    t.string "id_card", limit: 15
  end
 
  create_table "mstpurpoffinc", force: :cascade do |t|
    t.integer "purpoffinc", null: false
    t.string "desc", limit: 20
    t.string "flag_active", limit: 1
  end
 
  create_table "mstpurpose", force: :cascade do |t|
    t.string "purpose", limit: 2, null: false
    t.string "name", limit: 50, null: false
  end
 
  create_table "mstrange", force: :cascade do |t|
    t.datetime "implement_date"
    t.float "actual"
    t.float "npf_range_from"
    t.float "npf_range_to"
    t.float "multiguna"
    t.float "investasi"
    t.string "created_by", limit: 4
    t.datetime "created_date"
    t.string "update_by", limit: 4
    t.datetime "update_date"
  end
 
  create_table "mstreligion", force: :cascade do |t|
    t.string "religion", limit: 1, null: false
    t.string "name", limit: 15, null: false
  end
 
  create_table "mstservicepartcategory", force: :cascade do |t|
    t.string "type", limit: 1
    t.string "vehicle_type", limit: 1
    t.string "item_id", limit: 4, null: false
    t.string "item_desc", limit: 50
  end
 
  create_table "mstservicevendor", force: :cascade do |t|
    t.integer "service_id", null: false
    t.string "service_type", limit: 100
    t.string "create_by", limit: 4
    t.datetime "create_dt"
    t.string "update_by", limit: 4
    t.datetime "update_dt"
  end
 
  create_table "mstslikgroupcode", force: :cascade do |t|
    t.string "slikgroupcode", limit: 8, null: false
    t.string "slikgroupdesc", limit: 250
  end
 
  create_table "msttaxprogresif", force: :cascade do |t|
    t.decimal "start_value", null: false
    t.decimal "end_value", null: false
    t.decimal "tarif_percentage", precision: 6, scale: 2
    t.boolean "npwp", null: false
  end
 
  create_table "mstthreshold", force: :cascade do |t|
    t.integer "ratio"
    t.datetime "implement_date"
    t.integer "remark"
    t.float "threshold_level_from"
    t.float "threshold_level_to"
    t.string "created_by", limit: 4
    t.datetime "created_date"
    t.string "update_by", limit: 4
    t.datetime "update_date"
  end
 
  create_table "msttloar", force: :cascade do |t|
    t.integer "code", null: false
    t.string "name", limit: 30, null: false
  end
 
  create_table "msttype", force: :cascade do |t|
    t.string "grnttp", limit: 2, null: false
    t.string "name", limit: 20
  end
 
  create_table "msttypecustouts", force: :cascade do |t|
    t.integer "id_type", null: false
    t.string "desc_type", limit: 30
  end
 
  create_table "msttypeofservicevendor", force: :cascade do |t|
    t.string "div", limit: 10
    t.string "type_id", limit: 10, null: false
    t.string "type_desc", limit: 100
    t.integer "service_id", default: 0, null: false
    t.string "create_by", limit: 4
    t.datetime "create_dt"
    t.string "update_by", limit: 4
    t.datetime "update_dt"
  end
 
  create_table "mstvehiclechecklist", force: :cascade do |t|
    t.string "vehicle_type", limit: 1
    t.string "item_id", limit: 3, null: false
    t.string "item_desc", limit: 50
  end
 
  create_table "mstzipcode", force: :cascade do |t|
    t.string "zipcode", limit: 7, null: false
    t.string "description", limit: 75
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
 
  create_table "newamortlist", force: :cascade do |t|
    t.string "kdrpt", limit: 4, null: false
    t.string "lease_no", limit: 9, null: false
    t.datetime "amdate", null: false
    t.string "printstatus", limit: 1
    t.datetime "printdate"
    t.string "flagjv", limit: 3
    t.datetime "journaldate"
    t.string "journalvoucher", limit: 11
    t.datetime "finish_journal_date"
    t.string "amby", limit: 4
  end
 
  create_table "newinterestrate", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.string "lease_name", limit: 100
    t.string "period", limit: 3, null: false
    t.string "interestratecurrent", limit: 50
    t.string "interestratenew", limit: 50
    t.integer "floatcycle"
    t.decimal "spread", precision: 9, scale: 6
    t.string "reasons", limit: 5000
    t.string "ibor_new", limit: 20
    t.datetime "createddate"
    t.string "created_by", limit: 4
    t.datetime "modifieddate"
    t.string "modified_by", limit: 4
  end
 
  create_table "oauth_access_tokens", force: :cascade do |t|
    t.string "id", limit: 50, null: false
    t.integer "user_id"
    t.integer "client_id", null: false
    t.string "name", limit: 127
    t.string "scopes"
    t.boolean "revoked", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "expires_at"
  end
 
  create_table "oauth_auth_codes", force: :cascade do |t|
    t.string "id", limit: 50, null: false
    t.integer "user_id", null: false
    t.integer "client_id", null: false
    t.string "scopes"
    t.boolean "revoked", null: false
    t.datetime "expires_at"
  end
 
  create_table "oauth_clients", force: :cascade do |t|
    t.integer "user_id"
    t.string "name", limit: 127, null: false
    t.string "secret", limit: 50, null: false
    t.string "redirect", null: false
    t.boolean "personal_access_client", null: false
    t.boolean "password_client", null: false
    t.boolean "revoked", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end
 
  create_table "oauth_grupotors", force: :cascade do |t|
    t.integer "grup_id", null: false
    t.integer "otor_id", null: false
    t.boolean "st_inq", default: false, null: false
    t.boolean "st_add", default: false, null: false
    t.boolean "st_edit", default: false, null: false
    t.boolean "st_del", default: false, null: false
    t.boolean "st_print", default: false, null: false
    t.boolean "status", default: true, null: false
    t.string "us_id", limit: 50, default: "sistem", null: false
    t.datetime "us_time", default: "getdate", null: false
    t.index ["grup_id", "otor_id"], name: "IX_oauth_grupotors", unique: true
    t.index ["grup_id", "st_inq", "st_add", "st_edit", "st_del", "st_print", "status", "otor_id"], name: "NCI_oauth_1"
  end
 
  create_table "oauth_grups", force: :cascade do |t|
    t.string "nama", limit: 100, null: false
    t.boolean "status", default: true, null: false
    t.string "us_id", limit: 50, default: "sistem", null: false
    t.datetime "us_time", default: "getdate", null: false
    t.string "crus_id", limit: 50, default: "sistem", null: false
    t.datetime "crus_time", default: "getdate", null: false
  end
 
  create_table "oauth_log_action", force: :cascade do |t|
    t.string "username", limit: 50
    t.datetime "logtime", default: "getdate"
    t.string "apli_id", limit: 3
    t.string "action", limit: 100, null: false
    t.text "action_detail"
    t.string "ip_server", limit: 40
  end
 
  create_table "oauth_log_eval", force: :cascade do |t|
    t.integer "otor_id", null: false
    t.string "st_from", limit: 1
    t.string "st_to", limit: 1
    t.string "notes", limit: 8000
    t.string "us_id", limit: 50
    t.datetime "us_time", default: "getdate"
  end
 
  create_table "oauth_log_login", force: :cascade do |t|
    t.string "username", limit: 50
    t.datetime "logintime", default: "getdate"
    t.string "ip", limit: 40
    t.boolean "flag", default: false
    t.string "ip_server", limit: 40
  end
 
  create_table "oauth_otors", force: :cascade do |t|
    t.integer "id", null: false
    t.string "urut", limit: 50, null: false
    t.string "upline", limit: 50
    t.integer "levels"
    t.string "tipe", limit: 1, default: "M", null: false
    t.string "nama", limit: 150, null: false
    t.string "descr", limit: 1000
    t.string "progs", limit: 200
    t.string "routes", limit: 200
    t.string "creport", limit: 1000
    t.boolean "status", default: true, null: false
    t.string "us_id", limit: 50, default: "sistem", null: false
    t.datetime "us_time", default: "getdate", null: false
    t.string "dreport", limit: 100
    t.string "st_eval", limit: 1, default: "X"
    t.string "pnotes", limit: 4000
    t.string "help", limit: 4000
    t.boolean "is_public", default: false
    t.boolean "is_hide", default: false
    t.index ["urut"], name: "IX_oauth_otors", unique: true
  end
 
  create_table "oauth_params", force: :cascade do |t|
    t.integer "id", null: false
    t.string "version", limit: 20
    t.boolean "triggermode", null: false
    t.string "picturepath", limit: 200
  end
 
  create_table "oauth_rolebbranchs", force: :cascade do |t|
    t.integer "roleb_id", null: false
    t.string "branch_cd", limit: 1, null: false
    t.boolean "status", default: false, null: false
    t.string "us_id", limit: 50, default: "sistem", null: false
    t.datetime "us_time", default: "getdate", null: false
    t.index ["roleb_id", "branch_cd"], name: "IX_oauth_rolebbranchs", unique: true
  end
 
  create_table "oauth_rolebs", force: :cascade do |t|
    t.string "nama", limit: 100, null: false
    t.boolean "status", default: true, null: false
    t.string "us_id", limit: 50, default: "sistem", null: false
    t.datetime "us_time", default: "getdate", null: false
    t.string "crus_id", limit: 50, default: "sistem", null: false
    t.datetime "crus_time", default: "getdate", null: false
  end
 
  create_table "oauth_rolegrups", force: :cascade do |t|
    t.integer "role_id", null: false
    t.integer "grup_id", null: false
    t.boolean "st_inq", default: false, null: false
    t.boolean "status", default: true, null: false
    t.string "us_id", limit: 50, default: "sistem", null: false
    t.datetime "us_time", default: "getdate", null: false
    t.index ["role_id", "grup_id"], name: "IX_oauth_rolegrups", unique: true
  end
 
  create_table "oauth_roles", force: :cascade do |t|
    t.string "nama", limit: 100, null: false
    t.boolean "status", default: true, null: false
    t.string "us_id", limit: 50, default: "sistem", null: false
    t.datetime "us_time", default: "getdate", null: false
    t.string "crus_id", limit: 50, default: "sistem", null: false
    t.datetime "crus_time", default: "getdate", null: false
  end
 
  create_table "oauth_users", force: :cascade do |t|
    t.string "username", limit: 50, null: false
    t.string "employee_id", limit: 4
    t.string "fullname", limit: 100
    t.string "email", limit: 200
    t.string "password", limit: 250
    t.string "remember_token", limit: 250
    t.integer "role_id"
    t.integer "roleb_id"
    t.string "branchcode", limit: 1
    t.string "lastloginip", limit: 50
    t.datetime "lastlogin"
    t.datetime "lastlogout"
    t.boolean "status", default: true, null: false
    t.string "notes", limit: 500
    t.string "us_id", limit: 25, default: "sistem", null: false
    t.datetime "us_time", default: "getdate", null: false
    t.string "crus_id", limit: 25, default: "sistem", null: false
    t.datetime "crus_time", default: "getdate", null: false
    t.string "st_eval", limit: 1
    t.string "superior", limit: 4
    t.index ["email"], name: "IX_oauth_users", unique: true
    t.index ["username"], name: "IX_oauth_users_1", unique: true
    t.index ["employee_id", "st_eval"], name: "IX_oauth_users_Employee_id_st_eval"
  end
 
  create_table "offeringletter", force: :cascade do |t|
    t.string "no_letter", limit: 18, null: false
    t.string "branch_cd", limit: 1
    t.string "lessee_type", limit: 30, null: false
    t.datetime "offeringdate", null: false
    t.string "lessee_to", limit: 35, null: false
    t.string "contactperson", limit: 35, null: false
    t.string "equiptype", limit: 80, null: false
    t.string "purpoffinc", limit: 15, null: false
    t.string "cons_leas", limit: 1, null: false
    t.string "amortizationtype", limit: 20, null: false
    t.decimal "otr_price", null: false
    t.integer "calcutate_count", null: false
    t.string "empl_id", limit: 4, null: false
  end
 
  create_table "offeringletterdetail", force: :cascade do |t|
    t.string "no_letter", limit: 18, null: false
    t.string "no_calculate", limit: 2, null: false
    t.integer "tenor"
    t.decimal "security"
    t.float "rate"
    t.string "firstinstallmenttype", limit: 4
    t.string "insurancetype", limit: 2
    t.decimal "insurancevaluedebt"
    t.decimal "insurancevaluecash"
    t.string "admtype", limit: 2
    t.decimal "admvaluedebt"
    t.decimal "admvaluecash"
    t.string "provisitype", limit: 2
    t.decimal "provisivaluedebt"
    t.decimal "provisivaluecash"
    t.string "othertype", limit: 2
    t.decimal "othervaluedebt"
    t.decimal "othervaluecash"
    t.decimal "fiduciavalue"
    t.string "countdesc", limit: 30
    t.decimal "countvalue"
  end
 
  create_table "offeringletterinsu", force: :cascade do |t|
    t.string "ins_pol", limit: 20, null: false
    t.string "no_letter", limit: 18
    t.string "ins_cd", limit: 3
    t.string "year", limit: 4
    t.string "model", limit: 2
    t.string "condition", limit: 5
    t.integer "total_seat"
    t.string "usage", limit: 5
    t.string "no_calculate", limit: 2
    t.decimal "premigross"
    t.decimal "netkomisi"
    t.string "area_cd", limit: 1
  end
 
  create_table "offeringletterinsud", force: :cascade do |t|
    t.string "ins_pol", limit: 20, null: false
    t.decimal "ins_amt", null: false
    t.integer "year_no", null: false
    t.integer "tpl_amt"
    t.integer "tlo_ar"
    t.integer "clause"
    t.decimal "prer_amt"
    t.decimal "prep_amt"
    t.integer "pa_amount"
    t.integer "seat"
    t.decimal "seat_amount"
  end
 
  create_table "offeringletterstep", force: :cascade do |t|
    t.string "no_letter", limit: 18, null: false
    t.string "no_calculate", limit: 2, null: false
    t.integer "no_step", null: false
    t.integer "tenor"
    t.decimal "rental"
  end
 
  create_table "overduetotalbybranch", force: :cascade do |t|
    t.string "branch_cd", limit: 2, null: false
    t.date "dateprocess", null: false
    t.integer "totalcontract", default: 0, null: false
  end
 
  create_table "participantpeb", force: :cascade do |t|
    t.string "name", limit: 100
    t.string "position", limit: 100
    t.string "companyordivision", limit: 100
    t.string "status", limit: 50
    t.string "createdby", limit: 4
    t.datetime "createddate"
    t.string "modifiedby", limit: 4
    t.datetime "modifieddate"
    t.integer "formpebid"
  end
 
  create_table "pefindo_score", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.integer "score"
    t.string "grade", limit: 30
    t.string "decision", limit: 2
    t.string "createdby", limit: 5
    t.datetime "createddate"
    t.string "updatedby", limit: 5
    t.datetime "updateddate"
  end
 
  create_table "penalty_et", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.boolean "ismultiple", default: false, null: false
    t.float "rate", null: false
    t.integer "year"
  end
 
  create_table "pep", force: :cascade do |t|
    t.string "pepid", limit: 13, null: false
    t.date "asof", null: false
    t.string "name", limit: 100
    t.string "alias_name", limit: 100
    t.string "pep_stat", limit: 50
    t.string "business_type", limit: 10
    t.string "address", limit: 250
    t.string "phone", limit: 60
    t.string "id_card", limit: 30
    t.date "tglbirth"
    t.string "spouse", limit: 100
    t.string "mother", limit: 50
    t.string "remark", limit: 50
    t.string "create_by", limit: 50
    t.datetime "create_date"
    t.string "related_contract", limit: 9
    t.string "category", limit: 3, null: false
  end
 
  create_table "po_addendum", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.integer "po_no"
    t.date "print_dt", null: false
    t.integer "revisi_no"
    t.datetime "modified_dt"
    t.string "modified_by", limit: 4
  end
 
  create_table "po_contract", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.integer "po_no", null: false
    t.integer "revisi_no"
  end
 
  create_table "priority_tv", force: :cascade do |t|
    t.integer "priority_tv", null: false
    t.string "thirdparty", limit: 2, null: false
    t.string "insert_by", limit: 4, null: false
    t.datetime "insert_dt", default: "getdate", null: false
  end
 
  create_table "problem_account", force: :cascade do |t|
    t.integer "no_bl", null: false
    t.string "lessee_no", limit: 6, null: false
    t.string "branch_cd", limit: 2
    t.string "update_by", limit: 50
    t.date "update_date"
    t.string "approve_by", limit: 50
    t.date "approve_date"
    t.string "reason", limit: 1000
  end
 
  create_table "promotorpeb", force: :cascade do |t|
    t.string "position", limit: 100
    t.string "division", limit: 100
    t.string "status", limit: 50
    t.string "createdby", limit: 4
    t.datetime "createddate"
    t.string "modifiedby", limit: 4
    t.datetime "modifieddate"
    t.integer "formpebid"
    t.string "name", limit: 100
  end
 
  create_table "provision_loan", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.decimal "prov_loan", null: false
  end
 
  create_table "pv_rescheduling", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.integer "versi", null: false
    t.integer "new_period_start"
    t.decimal "tot_pv"
    t.decimal "gain"
    t.decimal "new_outsprincpsak"
    t.decimal "new_uipsak"
  end
 
  create_table "raksarespond", force: :cascade do |t|
    t.string "idupload", limit: 11, null: false
    t.string "policyno", limit: 40
    t.string "policyurl", limit: 100
    t.string "refno", limit: 9
    t.string "httpcode", limit: 5
    t.string "returncode", limit: 10
    t.string "returnmessage", limit: 250
    t.string "packetvalue", limit: 5000
    t.datetime "createdate"
  end
 
  create_table "raksaupload", force: :cascade do |t|
    t.string "idupload", limit: 11, null: false
    t.string "lease_no", limit: 9
    t.string "createby", limit: 4, null: false
    t.datetime "createdate"
    t.string "packetvalue", limit: 8000
  end
 
  create_table "rapindo_token", force: :cascade do |t|
    t.string "token", limit: 500, null: false
    t.datetime "expired", null: false
    t.datetime "created_date", null: false
  end
 
  create_table "rapindoclaimhistory", force: :cascade do |t|
    t.datetime "claimdate", null: false
    t.boolean "issuccess", null: false
    t.string "errorcode", limit: 250
    t.string "messageerror", limit: 500
    t.string "leaseno", limit: 9, null: false
    t.string "referenceid", limit: 50, null: false
  end
 
  create_table "rapindoclaimrespond", force: :cascade do |t|
    t.string "leaseno", limit: 9, null: false
    t.string "json_request", limit: 1500, null: false
    t.string "json_respond", limit: 1500, null: false
    t.string "referenceid", limit: 50, null: false
    t.index ["leaseno", "referenceid"], name: "NC1_rapindoClaimRespond"
  end
 
  create_table "rapindoexpiredhistory", force: :cascade do |t|
    t.datetime "expireddate", null: false
    t.boolean "issuccess", null: false
    t.string "errorcode", limit: 250
    t.string "messageerror", limit: 500
    t.string "chassisno", limit: 50, null: false
    t.string "lease_no", limit: 9
    t.string "referenceid", limit: 50, null: false
  end
 
  create_table "rapindoexpiredrespond", force: :cascade do |t|
    t.string "chassisno", limit: 50, null: false
    t.string "json_request", limit: 1500, null: false
    t.string "json_respond", limit: 1500, null: false
    t.string "referenceid", limit: 50, null: false
  end
 
  create_table "rapindosearchhistory", force: :cascade do |t|
    t.boolean "issuccess", null: false
    t.boolean "isfound"
    t.string "errorcode", limit: 250
    t.string "messageerror", limit: 500
    t.string "chassisno", limit: 50, null: false
    t.string "referenceid", limit: 50, null: false
  end
 
  create_table "rapindosearchrespond", force: :cascade do |t|
    t.string "chassisno", limit: 50, null: false
    t.string "json_request", limit: 1500, null: false
    t.string "json_respond", limit: 8000, null: false
    t.string "referenceid", limit: 50, null: false
  end
 
  create_table "ratio", force: :cascade do |t|
    t.string "ratio", limit: 2
    t.datetime "as_of"
    t.float "remark"
    t.float "actual_from"
    t.string "actual_to", limit: 50
    t.float "thresholder_level_from"
    t.float "threshold_level_to"
    t.string "created_by", limit: 4
    t.datetime "created_date"
    t.string "update_by", limit: 4
    t.datetime "update_date"
  end
 
  create_table "refund_interest", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.decimal "refund_interest"
  end
 
  create_table "rescheduling", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.string "reason", limit: 2000
    t.string "cmo_analysis", limit: 3000
    t.integer "lastpay_period"
    t.integer "tenor"
    t.decimal "last_outsprinc"
    t.integer "new_period_start"
    t.date "new_collection_dt"
    t.decimal "installment_overdue"
    t.decimal "add_insurance"
    t.decimal "penalty_paid"
    t.decimal "other_cost"
    t.decimal "new_oustprinc"
    t.integer "remaining_tenor"
    t.float "new_declrate"
    t.decimal "current_collateral"
    t.string "create_by", limit: 4
    t.datetime "create_date"
    t.datetime "update_date"
    t.date "addendum_date"
    t.string "addendum_fill_by", limit: 4
    t.datetime "addendum_fill_date"
    t.boolean "amortized", default: false
    t.string "amortized_by", limit: 4
    t.datetime "amortized_date"
    t.decimal "total_penalty"
    t.string "amor_type", limit: 2
    t.string "reject_reason", limit: 300
    t.datetime "reject_date"
    t.string "status_memo", limit: 1, null: false
    t.integer "extend_period"
    t.string "reason_restructuring", limit: 1
    t.integer "versi", null: false
    t.string "voucher", limit: 11
    t.boolean "isactive", default: true
    t.string "flaginformation", limit: 20
    t.index ["lease_no", "new_period_start", "new_collection_dt", "installment_overdue", "new_oustprinc", "new_declrate", "create_date", "versi", "voucher", "addendum_date", "amor_type"], name: "NC1_Rescheduling"
  end
 
  create_table "rescheduling_step", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.integer "step_no", null: false
    t.integer "step_month"
    t.decimal "pmt_step"
    t.integer "versi", null: false
    t.index ["lease_no", "step_no", "step_month", "pmt_step", "versi"], name: "NC1_Rescheduling_Step"
  end
 
  create_table "rizalaudit", force: :cascade do |t|
    t.string "lease_no", limit: 9
    t.string "appl_no", limit: 11
    t.integer "yearexec"
    t.string "branchcd", limit: 1
  end
 
  create_table "rptaccrualinterest", force: :cascade do |t|
    t.date "period", null: false
    t.string "lease_no", limit: 9, null: false
    t.decimal "diff_ui"
    t.decimal "tot_accrual"
  end
 
  create_table "rptafda", force: :cascade do |t|
    t.date "asof", null: false
    t.string "branch_cd", limit: 1, null: false
    t.string "fq", limit: 0, null: false
    t.decimal "amountdue", null: false
    t.decimal "overdue", null: false
    t.decimal "outsprinc", null: false
    t.decimal "estimatedvalue", null: false
    t.decimal "afda", null: false
  end
 
  create_table "rptafda_consleas", force: :cascade do |t|
    t.date "asof", null: false
    t.string "branch_cd", limit: 1, null: false
    t.string "consleas", limit: 0, null: false
    t.string "fq", limit: 0, null: false
    t.decimal "amountdue", null: false
    t.decimal "overdue", null: false
    t.decimal "outsprinc", null: false
    t.decimal "estimatedvalue", null: false
    t.decimal "afda", null: false
    t.index ["asof", "branch_cd", "fq", "outsprinc", "consleas"], name: "IX_RptAFDA_ConsLeas_ConsLeas"
    t.index ["asof", "fq", "outsprinc", "branch_cd", "consleas"], name: "IX_RptAFDA_ConsLeas_NC1"
  end
 
  create_table "rptbookingassetdisb", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.datetime "create_date"
    t.string "keterangan", limit: 500
    t.string "createby", limit: 4
    t.datetime "logdate"
    t.index ["lease_no", "create_date"], name: "IX_RptBookingAssetDisb_Create_Date"
  end
 
  create_table "rptcustpayment", force: :cascade do |t|
    t.string "branch", limit: 1, null: false
    t.integer "tahun", null: false
    t.integer "bulan", null: false
    t.integer "newgirou"
    t.integer "newtransu"
    t.integer "usedgirou"
    t.integer "usedtransu"
    t.decimal "newgiron"
    t.decimal "newtransn"
    t.decimal "usedgiron"
    t.decimal "usedtransn"
    t.integer "oufnewgirou"
    t.integer "oufnewtransu"
    t.integer "oufusedgirou"
    t.integer "oufusedtransu"
    t.decimal "oafnewgiron"
    t.decimal "oafnewtransn"
    t.decimal "oafusedgiron"
    t.decimal "oafusedtransn"
  end
 
  create_table "rptestimatedcollateral", force: :cascade do |t|
    t.string "lessee_no", limit: 6
    t.string "lease_no", limit: 9, null: false
    t.string "tabul", limit: 6, null: false
    t.date "asof"
    t.integer "currenttenor"
    t.integer "estimatedpersen"
    t.decimal "estimatedvalue"
  end
 
  create_table "rptoutstandingtemp", force: :cascade do |t|
    t.datetime "asof", null: false
    t.string "lease_no", limit: 9, null: false
    t.datetime "date_due", null: false
    t.decimal "outsrecnotdue", null: false
    t.decimal "outsrecoverdue", null: false
    t.decimal "endinguioverdue", null: false
    t.decimal "outsrecdiff", default: 0, null: false
    t.index ["asof", "lease_no"], name: "IX_lease_no_asof"
  end
 
  create_table "rptoverduetemp", force: :cascade do |t|
    t.datetime "asof", null: false
    t.string "lease_no", limit: 9, null: false
    t.datetime "date_due", null: false
    t.decimal "amount"
  end
 
  create_table "rptpfolio", force: :cascade do |t|
    t.integer "type", null: false
    t.datetime "periode", null: false
    t.string "criteria", limit: 10, null: false
    t.decimal "muf_new"
    t.decimal "muf_used"
    t.decimal "maf_new"
    t.decimal "maf_used"
    t.decimal "yuf_new"
    t.decimal "yuf_used"
    t.decimal "yaf_new"
    t.decimal "yaf_used"
    t.decimal "ouf_new"
    t.decimal "ouf_used"
    t.decimal "oaf_new"
    t.decimal "oaf_used"
    t.string "branch", limit: 1, null: false
    t.decimal "mir_new"
    t.decimal "mir_used"
    t.decimal "mir_total"
    t.decimal "yir_new"
    t.decimal "yir_used"
    t.decimal "yir_total"
    t.decimal "msl_new"
    t.decimal "msl_used"
    t.decimal "msl_total"
    t.decimal "ysl_new"
    t.decimal "ysl_used"
    t.decimal "ysl_total"
    t.index ["branch", "type", "criteria", "periode"], name: "IX_RPTPFOLIO"
  end
 
  create_table "rptpfoliooth", force: :cascade do |t|
    t.datetime "periode", null: false
    t.string "criteria", limit: 20, null: false
    t.decimal "muf_new"
    t.decimal "muf_used"
    t.decimal "maf_new"
    t.decimal "maf_used"
    t.decimal "yuf_new"
    t.decimal "yuf_used"
    t.decimal "yaf_new"
    t.decimal "yaf_used"
    t.decimal "ouf_new"
    t.decimal "ouf_used"
    t.decimal "oaf_new"
    t.decimal "oaf_used"
    t.string "branch", limit: 1
  end
 
  create_table "rptwinterest", force: :cascade do |t|
    t.string "week_date", limit: 5, null: false
    t.datetime "date_from"
    t.datetime "date_to"
    t.integer "new"
    t.integer "used"
    t.decimal "new_amount"
    t.decimal "used_amount"
    t.float "week_int_new"
    t.float "week_int_used"
    t.float "total_week_int"
    t.string "branch_cd", limit: 1, null: false
    t.float "total_week_decl"
    t.float "wa_irr"
    t.string "create_by", limit: 50
    t.datetime "create_date"
  end
 
  create_table "salespaidby_ext", force: :cascade do |t|
    t.string "salesno", limit: 7, null: false
    t.date "cam_startdate", null: false
    t.date "cam_enddate", null: false
    t.string "createby", limit: 15, null: false
    t.datetime "createdate", null: false
    t.string "updateby", limit: 15
    t.datetime "updatedate"
  end
 
  create_table "salespph21cum", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.string "sales_no", limit: 7, null: false
    t.decimal "dppcumulative"
    t.decimal "pph21cumulative"
    t.datetime "createdt"
    t.integer "taxrate"
    t.string "initial_sales_no", limit: 7
  end
 
  create_table "secretary", force: :cascade do |t|
    t.string "secretaryemployeeid", limit: 4
    t.string "bodemployeeid", limit: 4
  end
 
  create_table "selfinsurance", force: :cascade do |t|
    t.string "lease_no", limit: 9
    t.string "ins_pol", limit: 50
    t.string "ins_cd", limit: 5
    t.string "ins_co", limit: 100
    t.decimal "grossprem"
    t.decimal "nettprem"
    t.string "coveragetype", limit: 100
    t.date "ins_dt1"
    t.date "ins_dt2"
    t.string "createby", limit: 5
    t.datetime "createdate"
    t.string "modifiedby", limit: 5
    t.datetime "modifieddate"
  end
 
  create_table "sik_audittrail", force: :cascade do |t|
    t.string "username", limit: 50, null: false
    t.string "eventaction", limit: 250, null: false
    t.string "module", limit: 100, null: false
    t.datetime "createddate"
  end
 
  create_table "sik_document", force: :cascade do |t|
    t.string "id", limit: 3, null: false
    t.string "documentdesc", limit: 100, null: false
    t.string "createdby", limit: 50, null: false
    t.datetime "createddate", null: false
  end
 
  create_table "sik_group", force: :cascade do |t|
    t.string "id", limit: 3, null: false
    t.string "groupdesc", limit: 50, null: false
    t.boolean "isactive", default: true, null: false
    t.string "createdby", limit: 50, null: false
    t.datetime "createddate", null: false
  end
 
  create_table "sik_groupdetail", force: :cascade do |t|
    t.string "idgroup", limit: 3, null: false
    t.string "iddocument", limit: 3, null: false
    t.string "createdby", limit: 50, null: false
    t.datetime "createddate", null: false
  end
 
  create_table "sik_user_rolebranch", force: :cascade do |t|
    t.string "employee_id", limit: 4, null: false
    t.string "branch", limit: 100, null: false
    t.datetime "modifydate"
    t.string "modifyby", limit: 50
    t.datetime "createdate", default: "getdate", null: false
    t.string "createby", limit: 50, null: false
  end
 
  create_table "sik_user_tempaccess", force: :cascade do |t|
    t.string "username", limit: 50, null: false
    t.string "employee_id", limit: 4, null: false
    t.string "sik_access", limit: 1, null: false
    t.string "dukcapil_access", limit: 1, null: false
    t.string "rapindo_access", limit: 1, null: false
    t.string "asli_ri_access", limit: 1, null: false
    t.string "isadmin", limit: 1, null: false
    t.datetime "lastmodifieddate"
    t.string "lastmodifiedby", limit: 50
    t.date "periodfrom", null: false
    t.date "periodto", null: false
    t.integer "isactive", null: false
    t.boolean "isdelete", default: false, null: false
  end
 
  create_table "sik_usergroup", force: :cascade do |t|
    t.string "employeeid", limit: 4, null: false
    t.string "idsikgroup", limit: 3, null: false
    t.string "lastmodifiedby", limit: 50, null: false
    t.datetime "lastmodifieddate", null: false
  end
 
  create_table "sikresetcode", force: :cascade do |t|
    t.string "resetcode", limit: 250, null: false
    t.datetime "expiredate", default: "dateaddminute,3,getdate", null: false
    t.string "username", limit: 50, null: false
  end
 
  create_table "simasjson_licenseplate", force: :cascade do |t|
    t.string "branch_cd", limit: 2, null: false
    t.string "defaultlicenseplate", limit: 3, null: false
    t.string "email", limit: 100
  end
 
  create_table "simasparam", force: :cascade do |t|
    t.string "uploadlink", limit: 200, null: false
    t.string "infolink", limit: 70, null: false
    t.string "accesscode", limit: 50, null: false
    t.string "updateby", limit: 4
    t.datetime "updatedate"
    t.integer "typecode"
  end
 
  create_table "simasrespond", force: :cascade do |t|
    t.string "idupload", limit: 11, null: false
    t.string "policy_no", limit: 40
    t.string "policyurl", limit: 100
    t.decimal "adminfee", precision: 20, scale: 4
    t.decimal "commission", precision: 20, scale: 4
    t.integer "stampreceipt"
    t.decimal "discount", precision: 20, scale: 1
    t.string "idtransaction", limit: 100
    t.string "refno", limit: 50
    t.string "caseid", limit: 100
    t.decimal "premium", precision: 20, scale: 0
    t.decimal "sumpaymenttotal", precision: 20, scale: 0
    t.integer "stamppolicy"
    t.integer "statuspenerbitan"
    t.string "httpcode", limit: 15
    t.string "feedbackmessage", limit: 250
    t.string "packetvalue", limit: 4000
    t.string "errorname", limit: 250
    t.datetime "createdate"
    t.string "nb_code", limit: 9
  end
 
  create_table "simasupload", force: :cascade do |t|
    t.string "idupload", limit: 11, null: false
    t.string "lease_no", limit: 9
    t.string "createby", limit: 4, null: false
    t.datetime "createdate"
    t.string "packetvalue", limit: 4000
    t.index ["lease_no"], name: "IX_SimasUpload_Lease_No"
  end
 
  create_table "sipp_tb_210020300", force: :cascade do |t|
    t.string "period", limit: 5, null: false
    t.string "version", limit: 2
    t.string "nmr_kntrk:met:sd650", limit: 9, null: false
    t.string "sktr_knm_lpngn_sh:se:ld1", limit: 25
    t.string "klts:sf:ld1", limit: 25
  end
 
  create_table "sit_user", force: :cascade do |t|
    t.string "username", limit: 50, null: false
    t.string "employee_id", limit: 4, null: false
    t.string "sik_access", limit: 1, null: false
    t.string "dukcapil_access", limit: 1, null: false
    t.string "rapindo_access", limit: 1, null: false
    t.string "asli_ri_access", limit: 1, null: false
    t.string "isadmin", limit: 1, null: false
    t.datetime "lastmodifieddate"
    t.string "lastmodifiedby", limit: 50
    t.string "secretcode", limit: 100
  end
 
  create_table "sit_user_masteraccess", force: :cascade do |t|
    t.string "access_code", limit: 1, null: false
    t.string "accessdescription", limit: 50, null: false
  end
 
  create_table "sortirbpkb", force: :cascade do |t|
    t.string "period", limit: 6, null: false
    t.string "branch", limit: 1
    t.string "lessee_no", limit: 6
    t.string "lease_no", limit: 9, null: false
    t.date "created_dt"
    t.string "issued_by", limit: 50
    t.date "issued_dt"
  end
 
  create_table "supp_dev", force: :cascade do |t|
    t.string "supp", limit: 8
    t.string "dev_cd", limit: 8
    t.string "description", limit: 500
    t.boolean "ischeck"
    t.string "modified_by", limit: 4
    t.datetime "modified_date"
  end
 
  create_table "supp_req", force: :cascade do |t|
    t.string "req_no", limit: 4, null: false
    t.string "supp", limit: 8
    t.string "supp_type", limit: 2
    t.string "name", limit: 100
    t.string "nickname", limit: 100
    t.string "phone", limit: 60
    t.string "fax", limit: 60
    t.string "address", limit: 250
    t.string "npwp", limit: 30
    t.string "npwp_name", limit: 100
    t.string "npwp_addr", limit: 250
    t.string "contact", limit: 50
    t.string "position", limit: 40
    t.string "addr_con", limit: 250
    t.string "area", limit: 30
    t.string "note1", limit: 250
    t.string "note2", limit: 250
    t.string "note3", limit: 250
    t.string "note4", limit: 250
    t.string "note5", limit: 250
    t.string "cmo_promise", limit: 4000
    t.string "cmo", limit: 15
    t.boolean "flgdel"
    t.string "bpkbstaff", limit: 30
    t.integer "bpkbcat_id"
    t.boolean "ppn"
    t.string "city", limit: 40
    t.string "city_con", limit: 40
    t.string "npwp_city", limit: 70
    t.datetime "id_validdt"
    t.string "idcard", limit: 60
    t.string "correspondenceaddress", limit: 250
    t.string "npwp16", limit: 16
    t.string "spouse_name", limit: 100
    t.string "spouse_id_card", limit: 16
    t.boolean "isvalid_spouse_id_card"
    t.date "spouse_id_card_valid_until"
    t.boolean "spouse_status"
    t.string "spouse_address", limit: 1000
    t.string "spouse_city", limit: 250
    t.string "spouse_phone", limit: 50
    t.string "remark", limit: 100
    t.string "spouse_zipcode", limit: 10
    t.string "spouse_email", limit: 200
  end
 
  create_table "supp_req_detail", force: :cascade do |t|
    t.string "req_no", limit: 16
    t.string "official_name", limit: 250
    t.string "position", limit: 100
    t.string "id_card_no", limit: 16
    t.boolean "isvalid_id_card"
    t.date "id_card_valid_until"
    t.string "address", limit: 1000
    t.string "city", limit: 250
  end
 
  create_table "suppdev_req", force: :cascade do |t|
    t.string "req_no", limit: 4, null: false
    t.string "dev_cd", limit: 8, null: false
    t.string "description", limit: 500
    t.boolean "ischeck"
    t.string "modified_by", limit: 50
    t.datetime "modified_date"
  end
 
  create_table "suppdev_req_doc", force: :cascade do |t|
    t.string "dev_cd", limit: 8, null: false
    t.string "dev_doc", limit: 250, null: false
    t.boolean "dev_sts", null: false
  end
 
  create_table "suppdev_req_other", force: :cascade do |t|
    t.string "req_no", limit: 8, null: false
    t.string "dev_doc", limit: 250, null: false
    t.string "status", limit: 1
  end
 
  create_table "supporting_collateral", force: :cascade do |t|
    t.string "fam_code", limit: 10
    t.string "lease_no", limit: 9
    t.string "bpkb_no", limit: 20
    t.string "bpkb_name", limit: 100
    t.string "bpkb_area_cd", limit: 4
    t.string "bpkb_addr", limit: 250
    t.string "bpkb_city", limit: 100
    t.string "faktur_no", limit: 100
    t.string "forma", limit: 100
    t.string "sertifikat_no", limit: 100
    t.string "stnk_no", limit: 100
    t.string "chasis", limit: 25
    t.string "engine", limit: 25
    t.string "colour", limit: 50
    t.string "police_no", limit: 100
    t.string "brand", limit: 3
    t.string "model", limit: 2
    t.string "type", limit: 5
    t.string "karoseri", limit: 2
    t.string "year", limit: 4
    t.decimal "asset_val", precision: 25, scale: 0
    t.date "asset_val_asof"
    t.string "lease_item", limit: 100
    t.integer "unit"
    t.string "supplier_name", limit: 100
    t.string "remark", limit: 500
    t.string "created_by", limit: 4
    t.datetime "created_dt"
    t.string "update_by", limit: 4
    t.datetime "update_dt"
  end
 
  create_table "sysdiagrams", force: :cascade do |t|
    t.string "name", limit: 64, null: false
    t.integer "principal_id", null: false
    t.integer "version"
    t.binary "definition"
    t.index ["principal_id", "name"], name: "UK_principal_name", unique: true
  end
 
  create_table "t_borrowing", force: :cascade do |t|
    t.string "transactioncode", limit: 2
    t.string "transactionno", limit: 8, default: "0", null: false
    t.string "firsttransactionno", limit: 8
    t.string "counterpartno", limit: 3
    t.string "transactionremark", limit: 500
    t.decimal "notionalamount", precision: 20, scale: 2
    t.string "currency", limit: 3
    t.decimal "spotrate", precision: 20, scale: 2
    t.datetime "periodfrom"
    t.datetime "periodto"
    t.string "instruction", limit: 2
    t.datetime "instruction_dt"
    t.decimal "repay", precision: 20, scale: 2
    t.string "paymentmethod", limit: 1
    t.decimal "interestrate", precision: 10, scale: 5
    t.string "guarantee", limit: 1
    t.string "basicgross", limit: 1
    t.string "rollovertransactionno", limit: 8
    t.datetime "lastupdate"
    t.string "updateby", limit: 100
    t.string "deal_ref", limit: 8
    t.string "period_specified", limit: 5
    t.decimal "grossup_interest", precision: 20, scale: 2
    t.decimal "additional", precision: 20, scale: 2
    t.string "voucher", limit: 5
    t.string "payvoucher", limit: 5
  end
 
  create_table "t_coupon_derivative", force: :cascade do |t|
    t.string "transactionno", limit: 8, null: false
    t.string "nourut", limit: 2, null: false
    t.datetime "periodfrom"
    t.datetime "periodto"
    t.decimal "fixedrate", precision: 5, scale: 2
    t.decimal "floatingrate", precision: 10, scale: 5
  end
 
  create_table "t_derivative", force: :cascade do |t|
    t.string "transactioncode", limit: 2, null: false
    t.string "transactionno", limit: 8, null: false
    t.string "deal_ref", limit: 8
    t.string "deal_type", limit: 1
    t.string "counterpartno", limit: 3, null: false
    t.string "transactionremark", limit: 500
    t.decimal "notionalamount", precision: 20, scale: 2
    t.string "currency", limit: 3
    t.decimal "spotrate", precision: 10, scale: 2
    t.datetime "periodfrom"
    t.datetime "periodto"
    t.string "instruction", limit: 2
    t.datetime "instruction_dt"
    t.decimal "forward_rate", precision: 20, scale: 2
    t.decimal "swap_rate", precision: 15, scale: 8
    t.string "rollovertransactionno", limit: 8
    t.datetime "lastupdate"
    t.string "updateby", limit: 100
    t.string "firsttransactionno", limit: 8
    t.string "couponperiod", limit: 2
    t.string "coupontype", limit: 1
    t.string "deal_refbank", limit: 50
  end
 
  create_table "t_derivative_movement", force: :cascade do |t|
    t.string "deal_ref", limit: 8, null: false
    t.string "no_urut", limit: 0, null: false
    t.string "currency", limit: 3
    t.string "flag", limit: 1
    t.string "payreceive", limit: 1
    t.decimal "amount", precision: 20, scale: 2
    t.string "counterpart_from", limit: 3
    t.string "counterpart_to", limit: 3
    t.string "movement", limit: 1
    t.string "updateby", limit: 100
    t.datetime "lastupdate"
  end
 
  create_table "t_forex", force: :cascade do |t|
    t.string "transactioncode", limit: 2
    t.string "transactionno", limit: 8, null: false
    t.string "deal_ref", limit: 8
    t.string "deal_type", limit: 1
    t.string "counterpartno", limit: 3
    t.string "remark", limit: 500
    t.string "remark_purpose", limit: 500
    t.decimal "notional_amount", precision: 20, scale: 2
    t.string "currency", limit: 3
    t.string "against", limit: 3
    t.decimal "trans_spot_rate", precision: 20, scale: 2
    t.decimal "exch_incoming", precision: 20, scale: 2
    t.datetime "value_date"
    t.string "debit_account", limit: 6
    t.string "ac_no1", limit: 15
    t.string "coa1", limit: 10
    t.string "credit_account", limit: 6
    t.string "ac_no2", limit: 15
    t.string "coa2", limit: 10
    t.datetime "lastupdate"
    t.string "updateby", limit: 100
    t.string "deal_refbank", limit: 50
  end
 
  create_table "t_hedging", force: :cascade do |t|
    t.string "borrowing_transactionno", limit: 8, null: false
    t.string "derivative_transactionno", limit: 8
    t.string "firsttransactionno", limit: 8, null: false
  end
 
  create_table "t_interest_borrowing", force: :cascade do |t|
    t.string "transactionno", limit: 8, null: false
    t.string "nourut", limit: 2, null: false
    t.datetime "periodfrom"
    t.datetime "periodto"
    t.decimal "interestrate", precision: 10, scale: 5
    t.decimal "grossup_interest", precision: 20, scale: 5
    t.string "voucher", limit: 5
    t.string "payvoucher", limit: 5
  end
 
  create_table "t_materai_tempel", force: :cascade do |t|
    t.string "contract", limit: 100
    t.string "customer", limit: 200
    t.string "doc_type", limit: 500
    t.string "divisi", limit: 50
    t.string "branch_cd", limit: 1
    t.datetime "materai_dt"
    t.string "usermaterai", limit: 100
    t.string "description", limit: 100
    t.decimal "qty", precision: 18, scale: 0
    t.string "notes", limit: 500
    t.decimal "saldo", precision: 18, scale: 0
    t.string "initial_div", limit: 10
    t.string "created_by", limit: 4, null: false
    t.datetime "created_dt", null: false
    t.string "modified_by", limit: 4
    t.datetime "modified_dt"
    t.index ["materai_dt", "qty", "created_dt", "branch_cd", "usermaterai"], name: "IX_T_Materai_Tempel_Branch_CD_UserMaterai"
  end
 
  create_table "t_memostamp", force: :cascade do |t|
    t.string "memo_id", limit: 10, null: false
    t.string "userdivision", limit: 50
    t.datetime "memodate"
    t.datetime "periodfrom"
    t.datetime "periodto"
    t.datetime "usagefrom"
    t.datetime "usageto"
    t.string "createdby", limit: 4
    t.datetime "createddate"
    t.integer "adjustment"
    t.string "reviewer", limit: 100
    t.string "reviewer2", limit: 100
    t.string "approver", limit: 100
    t.string "reason", limit: 5000
  end
 
  create_table "t_memostampdetail", force: :cascade do |t|
    t.string "memo_id", limit: 10
    t.string "branch_cd", limit: 1
    t.integer "actualusage"
    t.integer "endingbalance"
    t.decimal "estimationusage", precision: 5, scale: 2
    t.integer "requestpurcase"
    t.string "createdby", limit: 4
    t.datetime "createddate"
    t.string "modifiedby", limit: 4
    t.datetime "modifieddate"
  end
 
  create_table "t_quotation", force: :cascade do |t|
    t.string "transactioncode", limit: 2, null: false
    t.string "quotationid", limit: 6, null: false
    t.datetime "quotationdate"
    t.datetime "usdfrom"
    t.datetime "usdto"
    t.datetime "jpyfrom"
    t.datetime "jpyto"
    t.datetime "idrfrom"
    t.datetime "idrto"
    t.string "updateby", limit: 100
    t.datetime "lastupdate"
  end
 
  create_table "t_quotation_borrowing", force: :cascade do |t|
    t.string "quotationid", limit: 6, null: false
    t.string "nourut", limit: 2, null: false
    t.string "transactionno", limit: 8
    t.string "currency", limit: 3
    t.decimal "borrowingamount", precision: 20, scale: 2
    t.string "counterpartid", limit: 3
    t.decimal "rate", precision: 10, scale: 5
    t.string "instruction", limit: 2
    t.string "transactioncode", limit: 2, null: false
    t.decimal "on1", precision: 10, scale: 5
    t.decimal "w1", precision: 10, scale: 5
    t.decimal "w2", precision: 10, scale: 5
    t.decimal "w3", precision: 10, scale: 5
    t.decimal "m1", precision: 10, scale: 5
    t.decimal "m2", precision: 10, scale: 5
    t.decimal "m3", precision: 10, scale: 5
    t.decimal "m6", precision: 10, scale: 5
    t.string "derivativeno", limit: 8
    t.string "updateby", limit: 100
    t.datetime "lastupdate"
    t.string "flagstat", limit: 1
    t.index ["derivativeno"], name: "IX_T_QUOTATION_BORROWING_DerivativeNo"
  end
 
  create_table "t_quotation_borrowing_detail", force: :cascade do |t|
    t.string "quotationid", limit: 6, null: false
    t.string "nourut", limit: 2, null: false
    t.string "transactioncode", limit: 2, null: false
    t.string "periode", limit: 3, null: false
    t.decimal "rate", precision: 10, scale: 5
    t.string "periode_value", limit: 3
  end
 
  create_table "t_quotation_derivative", force: :cascade do |t|
    t.string "quotationid", limit: 6, null: false
    t.string "nourut", limit: 2, null: false
    t.string "transactionno", limit: 8
    t.string "currency", limit: 3
    t.decimal "borrowingamount", precision: 20, scale: 2
    t.string "counterpartid", limit: 3
    t.decimal "rate", precision: 10, scale: 2
    t.string "instruction", limit: 2
    t.string "transactioncode", limit: 2, null: false
    t.string "borrowingno", limit: 8
    t.string "updateby", limit: 100
    t.datetime "lastupdate"
    t.string "flagstat", limit: 1
  end
 
  create_table "t_quotation_derivative_ccs", force: :cascade do |t|
    t.string "quotationid", limit: 6, null: false
    t.string "counterpartid", limit: 3, null: false
    t.string "period", limit: 3, null: false
    t.string "couponperiod", limit: 2
    t.decimal "fixed", precision: 15, scale: 8
    t.string "coupontype", limit: 1
  end
 
  create_table "t_quotation_derivative_swap", force: :cascade do |t|
    t.string "quotationid", limit: 6, null: false
    t.string "counterpartid", limit: 3, null: false
    t.string "period", limit: 12, null: false
    t.integer "days"
    t.decimal "points", precision: 5, scale: 2
    t.decimal "fwd", precision: 20, scale: 2
    t.decimal "rate", precision: 15, scale: 8
    t.decimal "spotrate", precision: 20, scale: 2
    t.string "periodspotrate", limit: 12
    t.index ["quotationid"], name: "IX_T_QUOTATION_DERIVATIVE_SWAP_QuotationID"
  end
 
  create_table "t_standby", force: :cascade do |t|
    t.string "transactioncode", limit: 2
    t.string "transactionno", limit: 8, null: false
    t.string "deal_ref", limit: 8
    t.string "counterpartno", limit: 3
    t.string "remark", limit: 500
    t.decimal "notional_amount", precision: 20, scale: 2
    t.string "currency", limit: 3
    t.string "lg_jaml", limit: 1
    t.decimal "lg_jaml_percentage", precision: 5, scale: 2
    t.datetime "period_form"
    t.datetime "period_to"
    t.string "payment_method", limit: 1
    t.datetime "lastupdate"
    t.string "updateby", limit: 100
  end
 
  create_table "ta_routinenumber", force: :cascade do |t|
    t.string "routinenumber", limit: 20
    t.string "routinetype_cd", limit: 3
    t.string "routinenumber_clfroutine", limit: 20
    t.string "createdby", limit: 20
    t.datetime "createddate"
  end
 
  create_table "tacrossno", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "lease_no", limit: 9, null: false
    t.string "crossno", limit: 9, null: false
    t.string "cross_type", limit: 3
    t.decimal "amount"
    t.string "purpose", limit: 2
    t.index ["appl_no", "cross_type"], name: "IX_TACrossNo_APPL_NO_CROSS_TYPE"
    t.index ["crossno", "purpose"], name: "IX_TACrossNo_NC1"
  end
 
  create_table "tamaster", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "mstr_ca", limit: 11
    t.string "lease_no", limit: 9
    t.string "mstr_cl", limit: 9
    t.string "branch_cd", limit: 1
    t.index ["mstr_ca", "mstr_cl"], name: "IX_TAMASTER"
    t.index ["mstr_cl"], name: "IX_Tamaster_MSTR_CL"
    t.index ["mstr_cl", "branch_cd", "lease_no"], name: "NC2_TAMASTER"
  end
 
  create_table "tandaterimabpkbgiro", force: :cascade do |t|
    t.datetime "print_date", null: false
    t.string "print_by", limit: 50
    t.string "lease_no", limit: 9, null: false
    t.string "status", limit: 1
    t.string "purpose", limit: 5
  end
 
  create_table "tanumber", force: :cascade do |t|
    t.string "propertygroupname", limit: 15, null: false
    t.decimal "nextnumber", precision: 10, scale: 0, default: 0, null: false
    t.datetime "lastupdate", default: "getdate", null: false
    t.string "description", limit: 255
    t.string "tblname", limit: 20, null: false
    t.string "resettype", limit: 2
    t.integer "saveinc", default: 1, null: false
    t.integer "startno", default: 0, null: false
    t.integer "startinit", default: 0
    t.integer "stepno", default: 1, null: false
    t.integer "maxno", default: 0, null: false
    t.boolean "ischeck"
  end
 
  create_table "temp_1c9_trans_journal", force: :cascade do |t|
    t.string "trcode", limit: 3, null: false
    t.string "voucher", limit: 11, null: false
    t.string "coadesc", limit: 200
    t.string "coacode", limit: 10, null: false
    t.string "leaseno", limit: 9, null: false
    t.decimal "amount"
    t.string "branch", limit: 20
  end
 
  create_table "temp_br1_trans_journal1", force: :cascade do |t|
    t.string "trcode", limit: 1
    t.string "voucher", limit: 5
    t.string "coadesc", limit: 100
    t.string "coacode", limit: 5
    t.string "leaseno", limit: 9
    t.decimal "amount"
    t.string "username", limit: 50
    t.index ["trcode", "voucher", "coacode", "username"], name: "IX_Temp_BR1_Trans_Journal1_NC1"
  end
 
  create_table "temp_clfequip", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.string "brand_nm", limit: 30
    t.string "type_nm", limit: 50
    t.string "chasis", limit: 30
    t.string "engine", limit: 30
    t.string "tahun", limit: 4
    t.string "warna", limit: 50
    t.string "no_pol", limit: 15
    t.string "bpkb_nm", limit: 100
    t.string "alamat_bpkb", limit: 250
    t.string "kota_bpkb", limit: 50
    t.datetime "create_date"
    t.string "user_login", limit: 50, null: false
    t.integer "keterangan", null: false
  end
 
  create_table "temp_clfinsud_clause", force: :cascade do |t|
    t.string "lease_no", limit: 9
    t.integer "year_no"
    t.integer "clause"
  end
 
  create_table "temp_darwin2", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.string "lessee_no", limit: 50, null: false
    t.datetime "tanggal"
  end
 
  create_table "temp_darwinva", force: :cascade do |t|
    t.string "leaseno", limit: 9, null: false
    t.decimal "mutasi_amount", precision: 18, scale: 0, null: false
    t.date "tanggal", null: false
  end
 
  create_table "temp_feecontract", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.decimal "l_amount"
    t.decimal "dp"
    t.decimal "rental"
    t.integer "tenor"
    t.datetime "create_date"
    t.string "user_login", limit: 50, null: false
    t.integer "keterangan", null: false
    t.float "flaterate"
    t.decimal "netfinance"
    t.datetime "datecollection1"
    t.datetime "datecollection2"
  end
 
  create_table "temp_insurance", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.integer "tahun"
    t.string "tlo_ar", limit: 10
    t.decimal "tpl_amount"
    t.string "pay_method", limit: 10
    t.decimal "ins_amt"
    t.datetime "create_date", null: false
    t.string "user_login", limit: 50, null: false
    t.integer "keterangan", null: false
  end
 
  create_table "temp_jv1", force: :cascade do |t|
    t.string "branch", limit: 1, null: false
    t.string "leaseno", limit: 9, null: false
    t.string "userid", limit: 50
  end
 
  create_table "temp_jv5_trans_journal", force: :cascade do |t|
    t.string "trcode", limit: 1, null: false
    t.string "voucher", limit: 5, null: false
    t.string "coadesc", limit: 200
    t.string "coacode", limit: 5, null: false
    t.string "leaseno", limit: 9, null: false
    t.decimal "amount"
  end
 
  create_table "tempbbn", force: :cascade do |t|
    t.string "lease_no", limit: 4, null: false
    t.string "nama", limit: 100
    t.string "alamat", limit: 250
    t.string "jabatan", limit: 50
    t.string "user_id", limit: 50, null: false
  end
 
  create_table "tempdatarepo", force: :cascade do |t|
    t.string "lease_no", limit: 9
  end
 
  create_table "tempdiscetmaster", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.decimal "gross"
    t.decimal "discount"
    t.string "user_id", limit: 50, null: false
  end
 
  create_table "tempetca", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.string "name", limit: 100
    t.datetime "tanggal"
    t.string "hp", limit: 30, null: false
    t.string "user", limit: 50
  end
 
  create_table "temphslttl", force: :cascade do |t|
    t.string "branch", limit: 1
    t.string "cons_leas", limit: 1
    t.string "lease_no", limit: 9, null: false
    t.string "oldleaseno", limit: 16
    t.datetime "girodt"
    t.integer "tms"
    t.string "lessee_nm", limit: 100
    t.string "phone", limit: 30
    t.string "hp", limit: 30
    t.integer "period"
    t.string "girono", limit: 15
    t.string "bank", limit: 7
    t.decimal "amount"
    t.decimal "prinsiple"
    t.string "inst", limit: 5
    t.decimal "unitprice"
    t.string "equip", limit: 100
    t.string "supp", limit: 20
    t.string "policeno", limit: 20
    t.decimal "penalty"
    t.string "cmo", limit: 15
    t.string "rejreas", limit: 2
    t.string "un", limit: 4
    t.integer "startdue"
    t.string "perioddue", limit: 50
    t.datetime "girotemp"
    t.integer "amounttemp"
    t.datetime "tanggal", null: false
    t.string "curr_code", limit: 3
    t.string "branch2", limit: 1
    t.integer "c1"
    t.decimal "m1"
    t.decimal "p1"
    t.integer "c2"
    t.decimal "m2"
    t.decimal "p2"
    t.integer "c3"
    t.decimal "m3"
    t.decimal "p3"
    t.integer "cup3"
    t.decimal "mup3"
    t.decimal "pup3"
    t.string "branch1", limit: 1
    t.string "pr_c1", limit: 8
    t.string "pr_mn1", limit: 8
    t.string "pr_p1", limit: 8
    t.string "pr_c2", limit: 8
    t.string "pr_mn2", limit: 8
    t.string "pr_p2", limit: 8
    t.string "pr_c3", limit: 8
    t.string "pr_mn3", limit: 8
    t.string "pr_p3", limit: 8
    t.string "pr_cup3", limit: 8
    t.string "pr_mnup3", limit: 8
    t.string "pr_pup3", limit: 8
    t.integer "ct"
    t.decimal "mt"
    t.decimal "pt"
    t.integer "tnew"
    t.integer "tused"
    t.integer "gnew"
    t.integer "gused"
    t.string "print_by", limit: 30
    t.datetime "print_date"
    t.string "upd_stat", limit: 1
    t.decimal "principal_acc"
    t.date "monthduerental"
    t.index ["lease_no", "tms", "amount", "prinsiple", "cmo", "penalty", "principal_acc", "bank", "branch", "cons_leas", "tanggal", "curr_code"], name: "idx_test"
    t.index ["lease_no", "tms", "girodt", "amount", "prinsiple", "penalty", "principal_acc", "tanggal"], name: "TempHSLTtl_NC2"
  end
 
  create_table "temphutpokl", force: :cascade do |t|
    t.string "lease_no", limit: 4, null: false
    t.decimal "lm", null: false
    t.decimal "ca", null: false
    t.integer "ot", null: false
    t.decimal "dp", null: false
    t.decimal "netfinance", null: false
  end
 
  create_table "tempincstate", force: :cascade do |t|
    t.string "groupcode", limit: 4, null: false
    t.string "coacode", limit: 10, default: "0", null: false
    t.decimal "ho"
    t.decimal "corfin"
    t.decimal "comcar"
    t.decimal "thamrin"
    t.decimal "mangga2"
    t.decimal "pi"
    t.decimal "kj"
    t.decimal "semarang"
    t.decimal "surabaya"
    t.decimal "bandung"
    t.decimal "medan"
    t.decimal "totalcurrmonth"
    t.decimal "totalyear"
    t.decimal "totallastmonth"
    t.string "coadesc", limit: 100
    t.decimal "denpasar"
    t.decimal "serpong"
    t.decimal "yogya"
    t.decimal "manggadua"
    t.decimal "balikpapan"
    t.decimal "palembang"
    t.decimal "bekasi"
    t.decimal "lampung"
  end
 
  create_table "tempincstatecombine", force: :cascade do |t|
    t.string "groupcode", limit: 4, null: false
    t.string "coacode", limit: 10, null: false
    t.decimal "ho"
    t.decimal "corfin"
    t.decimal "comcar"
    t.decimal "thamrin"
    t.decimal "mangga2"
    t.decimal "pi"
    t.decimal "kj"
    t.decimal "semarang"
    t.decimal "surabaya"
    t.decimal "bandung"
    t.decimal "medan"
    t.decimal "totalcurrmonth"
    t.decimal "totalyear"
    t.decimal "totallastmonth"
    t.string "coadesc", limit: 100
    t.decimal "denpasar"
    t.decimal "serpong"
    t.decimal "yogya"
    t.decimal "manggadua"
    t.decimal "balikpapan"
    t.decimal "palembang"
    t.decimal "bekasi"
    t.decimal "lampung"
  end
 
  create_table "tempincstateperiod", force: :cascade do |t|
    t.string "groupcode", limit: 4, null: false
    t.string "coacode", limit: 10, null: false
    t.decimal "ho"
    t.decimal "corfin"
    t.decimal "comcar"
    t.decimal "thamrin"
    t.decimal "mangga2"
    t.decimal "pi"
    t.decimal "kj"
    t.decimal "semarang"
    t.decimal "surabaya"
    t.decimal "bandung"
    t.decimal "medan"
    t.decimal "totalcurrmonth"
    t.decimal "totalyear"
    t.decimal "totallastmonth"
    t.string "coadesc", limit: 100
    t.decimal "denpasar"
    t.decimal "serpong"
    t.decimal "yogya"
    t.decimal "manggadua"
    t.decimal "balikpapan"
    t.decimal "palembang"
    t.decimal "bekasi"
    t.decimal "lampung"
  end
 
  create_table "tempincstatetotexp", force: :cascade do |t|
    t.string "totgroupcode", limit: 2, null: false
    t.string "groupcode", limit: 4, null: false
    t.decimal "totho"
    t.decimal "totcorfin"
    t.decimal "totcomcar"
    t.decimal "totthamrin"
    t.decimal "totmangdu"
    t.decimal "totpi"
    t.decimal "totkj"
    t.decimal "totsmg"
    t.decimal "totsby"
    t.decimal "totbdg"
    t.decimal "totmedan"
    t.decimal "totinccurrmonth"
    t.decimal "totincyear"
    t.decimal "totinclastmonth"
    t.decimal "totdenpasar"
    t.decimal "totserpong"
    t.decimal "totyogya"
    t.decimal "totmanggadua"
    t.decimal "totbp"
    t.decimal "totpalembang"
    t.decimal "totbekasi"
    t.decimal "totlampung"
  end
 
  create_table "tempincstatetotinc", force: :cascade do |t|
    t.string "totgroupcode", limit: 2, null: false
    t.string "groupcode", limit: 4, null: false
    t.decimal "totho"
    t.decimal "totcorfin"
    t.decimal "totcomcar"
    t.decimal "totthamrin"
    t.decimal "totmangdu"
    t.decimal "totpi"
    t.decimal "totkj"
    t.decimal "totsmg"
    t.decimal "totsby"
    t.decimal "totbdg"
    t.decimal "totmedan"
    t.decimal "totinccurrmonth"
    t.decimal "totincyear"
    t.decimal "totinclastmonth"
    t.decimal "totdenpasar"
    t.decimal "totserpong"
    t.decimal "totyogya"
    t.decimal "totmanggadua"
    t.decimal "totbp"
    t.decimal "totpalembang"
    t.decimal "totbekasi"
    t.decimal "totlampung"
  end
 
  create_table "tempincstatetotni", force: :cascade do |t|
    t.string "totgroupcode", limit: 2, null: false
    t.string "groupcode", limit: 4, null: false
    t.decimal "totho"
    t.decimal "totcorfin"
    t.decimal "totcomcar"
    t.decimal "totthamrin"
    t.decimal "totmangdu"
    t.decimal "totpi"
    t.decimal "totkj"
    t.decimal "totsmg"
    t.decimal "totsby"
    t.decimal "totbdg"
    t.decimal "totmedan"
    t.decimal "totinccurrmonth"
    t.decimal "totincyear"
    t.decimal "totinclastmonth"
    t.decimal "totdenpasar"
    t.decimal "totserpong"
    t.decimal "totyogya"
    t.decimal "totmanggadua"
    t.decimal "totbp"
    t.decimal "totpalembang"
    t.decimal "totbekasi"
    t.decimal "totlampung"
  end
 
  create_table "tempkomisi", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.string "lessee_nm", limit: 100
    t.datetime "execution"
    t.string "sales_no", limit: 7, null: false
    t.string "sales_nm", limit: 50
    t.decimal "fee"
    t.decimal "pph21"
    t.string "cek", limit: 1
    t.string "branch", limit: 1
  end
 
  create_table "tempparlocma", force: :cascade do |t|
    t.string "appl_no", limit: 11, null: false
    t.string "branch_cd", limit: 1
    t.string "apless", limit: 3
  end
 
  create_table "temprptamandement", force: :cascade do |t|
    t.string "lease_no", limit: 4, null: false
    t.decimal "rental"
    t.decimal "hutpok"
    t.decimal "bunga"
    t.decimal "totalfinance"
  end
 
  create_table "temprptinsuamandement", force: :cascade do |t|
    t.string "lease_no", limit: 4, null: false
    t.decimal "nilai1", null: false
    t.decimal "tjh1", null: false
    t.string "jp1", limit: 25, null: false
    t.decimal "nilai2", null: false
    t.decimal "tjh2", null: false
    t.string "jp2", limit: 25, null: false
    t.decimal "nilai3", null: false
    t.decimal "tjh3", null: false
    t.string "jp3", limit: 25, null: false
    t.decimal "nilai4", null: false
    t.decimal "tjh4", null: false
    t.string "jp4", limit: 25, null: false
    t.decimal "nilai5", null: false
    t.decimal "tjh5", null: false
    t.string "jp5", limit: 25, null: false
    t.string "name", limit: 5
  end
 
  create_table "temprptod3months", force: :cascade do |t|
    t.string "user_nm", limit: 50, null: false
    t.string "lease_no", limit: 11, null: false
    t.string "handled_by", limit: 20
    t.string "latest_condition", limit: 250
  end
 
  create_table "tempsendoc", force: :cascade do |t|
    t.string "lease_no", limit: 9
    t.string "branch_cd", limit: 1
    t.string "user_id", limit: 50
    t.string "tipe", limit: 1
  end
 
  create_table "temptransfer", force: :cascade do |t|
    t.string "voucher", limit: 11, null: false
    t.string "lease_no", limit: 9, null: false
  end
 
  create_table "temptransfermaster", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.decimal "nominal"
    t.decimal "transfer"
    t.decimal "rental"
    t.string "bank", limit: 3
    t.string "girono", limit: 6
    t.integer "period"
    t.string "initial", limit: 0
    t.decimal "totrental"
    t.decimal "other_income"
    t.string "contract_nm", limit: 100
    t.string "sts", limit: 0
    t.string "voucher", limit: 5
  end
 
  create_table "tempttiki", force: :cascade do |t|
    t.string "lessee_nm", limit: 100
    t.string "lease_no", limit: 4
    t.string "address", limit: 200
    t.string "phone", limit: 60
    t.string "user_id", limit: 25
    t.string "address2", limit: 200
  end
 
  create_table "tempweeklyoverdueupdate", force: :cascade do |t|
    t.integer "cont_cf1"
    t.integer "cont_le1"
    t.integer "total_cont1"
    t.decimal "amt_cf1"
    t.decimal "amt_le1"
    t.decimal "total_amt1"
    t.decimal "outs_cf1"
    t.decimal "outs_le1"
    t.decimal "total_outs1"
    t.integer "cont_cf2"
    t.integer "cont_le2"
    t.integer "total_cont2"
    t.decimal "amt_cf2"
    t.decimal "amt_le2"
    t.decimal "total_amt2"
    t.decimal "outs_cf2"
    t.decimal "outs_le2"
    t.decimal "total_outs2"
    t.integer "cont_cf3"
    t.integer "cont_le3"
    t.integer "total_cont3"
    t.decimal "amt_cf3"
    t.decimal "amt_le3"
    t.decimal "total_amt3"
    t.decimal "outs_cf3"
    t.decimal "outs_le3"
    t.decimal "total_outs3"
    t.integer "cont_cf4"
    t.integer "cont_le4"
    t.integer "total_cont4"
    t.decimal "amt_cf4"
    t.decimal "amt_le4"
    t.decimal "total_amt4", precision: 25, scale: 2
    t.decimal "outs_cf4"
    t.decimal "outs_le4"
    t.decimal "total_outs4", precision: 25, scale: 2
    t.integer "total_cont_cf"
    t.integer "total_cont_le"
    t.decimal "total_amt_cf"
    t.decimal "total_amt_le"
    t.decimal "total_outs_cf"
    t.decimal "total_outs_le"
    t.string "branch_cd", limit: 1, null: false
    t.string "branch_name", limit: 20
    t.datetime "asof", null: false
    t.string "userid", limit: 25, null: false
    t.decimal "total_outs_acc1"
    t.decimal "total_outs_acc2"
    t.decimal "total_outs_acc3"
    t.decimal "total_outs_acc4"
  end
 
  create_table "tmpequipment", force: :cascade do |t|
    t.string "supp", limit: 3
    t.string "supp_name", limit: 100
    t.string "bpkb_an", limit: 50
    t.string "policeno", limit: 50
    t.string "chasis", limit: 10, null: false
    t.string "engine", limit: 12
    t.string "type", limit: 30
    t.string "model_nm", limit: 10
    t.string "tahun", limit: 2
    t.string "colour", limit: 20
    t.string "remark", limit: 30
    t.string "lease_no2", limit: 4, null: false
  end
 
  create_table "totaloutsprinc", force: :cascade do |t|
    t.datetime "asof", null: false
    t.string "lease_no", limit: 9, null: false
    t.decimal "outsprinc_acc", precision: 25, scale: 0
    t.decimal "outsprinc_contract", precision: 25, scale: 0
    t.decimal "outsprinc_psak", precision: 25, scale: 4
    t.index ["asof", "outsprinc_contract", "outsprinc_psak", "lease_no"], name: "TotalOutsPrinc_NC1"
    t.index ["lease_no", "outsprinc_acc", "outsprinc_contract", "outsprinc_psak", "asof"], name: "TotalOutsPrinc_NC3"
  end
 
  create_table "tripbusinesstripaccomodation", force: :cascade do |t|
    t.string "transporttype", limit: 100
    t.string "transporttypedetail", limit: 255
    t.string "departurefrom", limit: 100
    t.string "departureto", limit: 100
    t.date "departuredate"
    t.time "departuretime"
    t.string "transportremarks", limit: 100
    t.string "transportremarksdetail", limit: 255
    t.string "transportaccomodationtype", limit: 50
    t.string "transporttypega", limit: 100
    t.string "transporttypedetailga", limit: 255
    t.string "departurefromga", limit: 100
    t.string "departuretoga", limit: 255
    t.date "departuredatega"
    t.time "departuretimega"
    t.string "transportremarksga", limit: 50
    t.string "transportremarksdetailga", limit: 255
    t.string "createdby", limit: 4
    t.datetime "createddate"
    t.string "modifiedby", limit: 4
    t.datetime "modifieddate"
    t.integer "formbusinesstripaccomodationid"
    t.date "arrivaldatega"
    t.time "arrivaltimega"
    t.string "flighttrainnumberga", limit: 50
    t.decimal "transportpricega", precision: 10, scale: 0
  end
 
  create_table "tripbusinesstripallowance", force: :cascade do |t|
    t.string "tripfrom", limit: 100
    t.string "tripto", limit: 100
    t.date "tripdatefrom"
    t.time "tripdatefromtime"
    t.date "tripdateto"
    t.time "tripdatetotime"
    t.date "tripextenddate"
    t.time "tripextendtime"
    t.string "triptype", limit: 100
    t.string "trippurpose", limit: 255
    t.decimal "triptotalreimburse", precision: 10, scale: 0
    t.string "createdby", limit: 4
    t.datetime "createddate"
    t.string "modifiedby", limit: 4
    t.datetime "modifieddate"
    t.integer "formbusinesstripallowanceid"
  end
 
  create_table "tspgeneral", force: :cascade do |t|
    t.string "sp_name", limit: 25, null: false
    t.integer "sp_type", null: false
    t.string "param_name", limit: 15, null: false
    t.integer "param_order", null: false
    t.boolean "param_key", null: false
    t.string "param_type", limit: 15, null: false
    t.integer "param_size", null: false
    t.string "param_value", limit: 25
    t.string "param_valid", limit: 25
    t.integer "param_direct", default: 1
  end
 
  create_table "umf_agency", force: :cascade do |t|
    t.string "branch_cd", limit: 1, null: false
    t.string "agency_nm", limit: 50, null: false
    t.string "bank", limit: 7
    t.string "bank_branch", limit: 50
    t.string "acc_nm", limit: 50
    t.string "acc_no", limit: 50
    t.string "mlci_agency", limit: 30
    t.string "mlci_agencyperson", limit: 30
    t.decimal "agency_fee"
  end
 
  create_table "umf_div", force: :cascade do |t|
    t.string "div_id", limit: 10, null: false
    t.string "div_desc", limit: 50
    t.string "div", limit: 6
  end
 
  create_table "umf_empos", force: :cascade do |t|
    t.string "position_id", limit: 6, null: false
    t.string "position_desc", limit: 250
    t.string "position_initial", limit: 10
    t.boolean "isho"
    t.boolean "isbranch"
    t.string "groupid", limit: 1
    t.string "div_id", limit: 10
  end
 
  create_table "umf_gaposition", force: :cascade do |t|
    t.string "position_id", limit: 1, null: false
    t.string "position_desc", limit: 50
  end
 
  create_table "umf_gasubdiv", force: :cascade do |t|
    t.string "div_id", limit: 1, null: false
    t.string "subdiv_id", limit: 1, null: false
    t.string "subdiv_desc", limit: 50
  end
 
  create_table "umf_npwp", force: :cascade do |t|
    t.string "kota", limit: 20, null: false
    t.string "kpp", limit: 50
    t.string "npwp", limit: 30
    t.string "alamat", limit: 100
    t.string "sign", limit: 30
    t.string "npwp_sign", limit: 30
  end
 
  create_table "umf_prepaidcat", force: :cascade do |t|
    t.string "item_cat", limit: 3, null: false
    t.string "item_desc", limit: 50
  end
 
  create_table "umf_reject", force: :cascade do |t|
    t.string "reject_code", limit: 5, null: false
    t.string "reject_description", limit: 100
  end
 
  create_table "umf_tax", force: :cascade do |t|
    t.string "pph_id", limit: 5, null: false
    t.string "pph_desc", limit: 100
  end
 
  create_table "umf_tax_weight", force: :cascade do |t|
    t.integer "pph_detail_id", null: false
    t.string "pph_id", limit: 5, null: false
    t.decimal "pph_min"
    t.decimal "pph_max"
    t.float "pph_weight"
    t.string "flag_active", limit: 1
  end
 
  create_table "umf_type_honorer", force: :cascade do |t|
    t.string "honorer_typ_id", limit: 2, null: false
    t.string "pph_id", limit: 5, null: false
    t.string "type_desc", limit: 100
  end
 
  create_table "umfappr", force: :cascade do |t|
    t.string "branch_cd", limit: 1
    t.string "trans_typ", limit: 0
    t.integer "appr_level", default: 1
    t.string "appr_name", limit: 15
    t.string "occupation", limit: 15
    t.boolean "agr_signer", default: false
    t.string "occ_appr", limit: 1
    t.boolean "assign", default: false
  end
 
  create_table "umfarea", force: :cascade do |t|
    t.string "area_cd", limit: 2, null: false
    t.string "propinsi", limit: 25
    t.string "kabupaten", limit: 25
    t.string "flag_del", limit: 1
  end
 
  create_table "umfaudit", force: :cascade do |t|
    t.string "audit_cat", limit: 3, null: false
    t.string "audit_desc", limit: 200
  end
 
  create_table "umfauditcd", force: :cascade do |t|
    t.string "audit_cat", limit: 3, null: false
    t.string "audit_cd", limit: 3, null: false
    t.string "desc", limit: 200
  end
 
  create_table "umfbank", force: :cascade do |t|
    t.string "bank_code", limit: 7, null: false
    t.string "bank", limit: 30, null: false
    t.string "desc", limit: 50
    t.string "clearing_code", limit: 7
    t.string "lcc_code", limit: 7
    t.string "sm_code", limit: 8
    t.boolean "status", null: false
  end
 
  create_table "umfbankaccount_rizalwan", force: :cascade do |t|
    t.string "branch_cd", limit: 1, null: false
    t.string "no_rek", limit: 20
  end
 
  create_table "umfbityp", force: :cascade do |t|
    t.string "cust_type", limit: 4, null: false
    t.string "desc1", limit: 16
    t.string "desc2", limit: 22
    t.string "ojk_code", limit: 4
    t.string "mlci_desc", limit: 200
  end
 
  create_table "umfbityp_lbpp", force: :cascade do |t|
    t.string "ojk_code", limit: 4, null: false
    t.string "mlci_desc", limit: 200
  end
 
  create_table "umfboard_occup", force: :cascade do |t|
    t.string "occup_nm", limit: 50
  end
 
  create_table "umfbranch", force: :cascade do |t|
    t.string "branch_cd", limit: 1, null: false
    t.string "branch_name", limit: 20
    t.string "address1", limit: 100
    t.string "address2", limit: 100
    t.string "city", limit: 20
    t.string "zipcode", limit: 7
    t.string "bank", limit: 7
    t.string "cab_bank", limit: 40
    t.string "no_rek", limit: 20
    t.string "adminnm1", limit: 40
    t.string "adminnm2", limit: 40
    t.string "adminnm3", limit: 40
    t.string "phone", limit: 15
    t.string "fax", limit: 15
    t.string "npwp", limit: 15
    t.string "area", limit: 1
    t.string "contract_signer", limit: 40
    t.string "memo_signer", limit: 40
    t.string "collection_signer", limit: 50
    t.string "nickname", limit: 3
    t.string "lbp_loc", limit: 5
    t.string "position", limit: 50
    t.string "sk_no", limit: 30
    t.datetime "tgl_sk"
    t.string "email", limit: 50
    t.string "addressfiducia", limit: 200
    t.boolean "isdeleted", null: false
    t.string "collection_nm1", limit: 40
    t.string "collection_nm2", limit: 40
    t.string "bm_network", limit: 4
    t.string "ref_signer", limit: 100
    t.string "ref_signer_position", limit: 100
    t.string "nitku", limit: 22
  end
 
  create_table "umfbranch_salespoint", force: :cascade do |t|
    t.string "branch_sales", limit: 4, null: false
    t.string "branch_cd", limit: 1, null: false
    t.string "salespoint_desc", limit: 25
    t.string "initial_sales", limit: 15
    t.datetime "create_date"
    t.string "create_by", limit: 4
    t.datetime "modified_date"
    t.string "modified_by", limit: 4
    t.string "contract_signer", limit: 50
    t.string "position", limit: 30
    t.string "address", limit: 250
    t.string "phone", limit: 15
    t.string "fax", limit: 15
    t.string "changefor", limit: 1
  end
 
  create_table "umfbrand", force: :cascade do |t|
    t.string "brand", limit: 3, null: false
    t.string "brand_nm", limit: 30, null: false
  end
 
  create_table "umfcolle", force: :cascade do |t|
    t.string "col_type", limit: 1, null: false
    t.string "col_nm", limit: 15
  end
 
  create_table "umfcr", force: :cascade do |t|
    t.string "cr_code", limit: 5, null: false
    t.string "cr_name", limit: 30
  end
 
  create_table "umfcurr", force: :cascade do |t|
    t.string "curr_code", limit: 3, null: false
    t.string "descrip", limit: 15
    t.integer "rounding"
    t.string "ojk_code", limit: 3
  end
 
  create_table "umfdictionary", force: :cascade do |t|
    t.string "columnname", limit: 25, null: false
    t.string "aliasname", limit: 25
    t.integer "nourut"
    t.string "nmform", limit: 20
  end
 
  create_table "umfholi", force: :cascade do |t|
    t.datetime "tgllibur", null: false
    t.string "keterangan", limit: 25
  end
 
  create_table "umfinscd", force: :cascade do |t|
    t.string "ins_cd", limit: 3, null: false
    t.string "ins_co", limit: 25
    t.decimal "stamp_duty", default: 0
    t.decimal "stamp_dutyins", default: 0
    t.string "branch_cd", limit: 1
    t.string "address", limit: 250
    t.string "city", limit: 20
    t.string "zipcode", limit: 5
    t.string "phone", limit: 60
    t.string "fax", limit: 60
    t.string "contact", limit: 100
    t.string "coacode", limit: 5
    t.string "bank", limit: 7
    t.string "bank_branch", limit: 50
    t.string "acc_no_1", limit: 20
    t.string "bank_2", limit: 7
    t.string "bank_branch_2", limit: 50
    t.string "acc_no_2", limit: 20
    t.string "insurance_area", limit: 1
    t.integer "beneficiary_type"
    t.integer "resident_status"
  end
 
  create_table "umfinsdesc", force: :cascade do |t|
    t.integer "tlo_ar", null: false
    t.integer "clause", null: false
    t.string "ins_desc", limit: 25
    t.string "contract_desc", limit: 50
  end
 
  create_table "umfjbm", force: :cascade do |t|
    t.string "type_cd", limit: 2, null: false
    t.string "type_nm", limit: 35
  end
 
  create_table "umfkaroseri", force: :cascade do |t|
    t.string "model", limit: 3, null: false
    t.string "karoseri", limit: 3, null: false
    t.string "karoseri_desc", limit: 30
    t.boolean "isactive", default: true
    t.string "id_key", limit: 7, null: false
  end
 
  create_table "umflgd", force: :cascade do |t|
    t.string "year", limit: 4, null: false
    t.float "lgd"
  end
 
  create_table "umfmodel", force: :cascade do |t|
    t.string "model", limit: 3, null: false
    t.string "model_nm", limit: 50
  end
 
  create_table "umfnotary", force: :cascade do |t|
    t.string "notary_no", limit: 3, null: false
    t.string "notary_nm", limit: 100
    t.string "nick_nm", limit: 100
    t.string "address", limit: 100
    t.string "city", limit: 20
    t.string "zipcode", limit: 6
    t.string "phone", limit: 25
    t.string "fax", limit: 25
    t.string "sk", limit: 100
    t.string "npwp_no", limit: 30
    t.string "npwp_addrs", limit: 100
    t.string "bank_nm", limit: 100
    t.string "bank_branch", limit: 100
    t.string "bank_accno", limit: 30
    t.string "bank_accnm", limit: 100
    t.string "branch", limit: 1
    t.string "flgdel", limit: 1
    t.datetime "last_update"
    t.string "update_by", limit: 20
    t.string "npwp_nm", limit: 100
    t.string "tax_type", limit: 10
    t.string "tax_rate", limit: 15
    t.float "tax_percent"
    t.float "tax_dpp"
    t.integer "beneficiary_type"
    t.integer "resident_status"
    t.string "masternotary_no", limit: 6
    t.string "npwp16", limit: 16
  end
 
  create_table "umfparam", force: :cascade do |t|
    t.string "paramcode", limit: 4
    t.string "paramname", limit: 15
    t.string "paramvalue", limit: 5
    t.string "paramdesc", limit: 127
  end
 
  create_table "umfrate", force: :cascade do |t|
    t.string "curr_code", limit: 1, null: false
    t.datetime "val_date", null: false
    t.decimal "bimid"
    t.decimal "compex"
    t.decimal "spot"
    t.decimal "taxex"
    t.decimal "whtax", default: 10, null: false
    t.decimal "gfrate", default: 0.2, null: false
  end
 
  create_table "umftlo", force: :cascade do |t|
    t.decimal "type", precision: 18, scale: 0, null: false
    t.string "type_nm", limit: 20
  end
 
  create_table "umftype", force: :cascade do |t|
    t.string "brand", limit: 3, null: false
    t.string "type", limit: 10, null: false
    t.string "type_nm", limit: 100
    t.string "fuel", limit: 2
    t.boolean "isactive", default: true
    t.string "id_key", limit: 13, null: false
    t.string "model", limit: 10
  end
 
  create_table "undeletecontract", force: :cascade do |t|
    t.string "lease_no", limit: 9
    t.string "appl_no", limit: 11
    t.string "user_id", limit: 50
    t.datetime "input_dt"
  end
 
  create_table "users", force: :cascade do |t|
    t.string "name", limit: 127, null: false
    t.string "email", limit: 127, null: false
    t.string "password", limit: 127, null: false
    t.string "remember_token", limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], name: "users_email_unique", unique: true
  end
 
  create_table "usertokensik", force: :cascade do |t|
    t.string "username", limit: 50, null: false
    t.string "token", limit: 500
    t.datetime "created_date"
    t.boolean "isactive", null: false
  end
 
  create_table "watchlist_detail", force: :cascade do |t|
    t.integer "no_watchlist", null: false
    t.string "lease_no", limit: 50, null: false
    t.date "create_w"
    t.date "create_b"
    t.date "girodt_w"
    t.date "girodt_b"
  end
 
  create_table "wo_collateral", force: :cascade do |t|
    t.decimal "clfequip_id", precision: 10, scale: 0, null: false
    t.string "lease_no", limit: 9, null: false
    t.datetime "receive_dt"
    t.string "receive_by", limit: 4
    t.datetime "release_dt"
    t.string "release_by", limit: 4
    t.string "taken_by", limit: 1
  end
 
  create_table "wo_collateral_borrow", force: :cascade do |t|
    t.string "lease_no", limit: 9, null: false
    t.decimal "clfequip_id", precision: 10, scale: 0, null: false
    t.datetime "borrow_dt", null: false
    t.string "borrow_by", limit: 2, null: false
    t.datetime "return_dt"
    t.string "reason", limit: 50
    t.string "borrow_doc", limit: 15
    t.string "return_doc", limit: 15
    t.string "form_ac", limit: 1
    t.integer "family_card"
    t.string "reason1", limit: 250
    t.string "reason2", limit: 250
    t.string "reason3", limit: 250
    t.string "create_by", limit: 4, null: false
    t.datetime "create_dt", null: false
    t.string "update_by", limit: 4
    t.datetime "update_dt"
  end
 
  add_foreign_key "auction_detail", "auction", column: "auctionno", name: "FK_Auction_Detail", primary_key: "auctionno"
  add_foreign_key "bca_auto_collect_doc", "bca_auto_collect", column: "bca_id", name: "FK_BCA_Auto_Collect_Doc", primary_key: "bca_id"
  add_foreign_key "bca_auto_collect_reg", "bca_auto_collect", column: "bca_id", name: "FK_BCA_Auto_Collect_Reg", primary_key: "bca_id"
  add_foreign_key "bca_skpr_web_view", "bca_auto_collect", column: "bca_id", name: "FK_BCA_SKPR_Web_View", primary_key: "bca_id"
  add_foreign_key "cafchecklist", "cafcont", column: "appl_no", name: "FK_CAFCHECKLIST_CAFCONT", primary_key: "appl_no"
  add_foreign_key "cafcont", "mstconttype", column: "cont_type", name: "FK_CAFCONT_CONTYPE", primary_key: "cont_type"
  add_foreign_key "cafcont", "umfbranch", column: "branch_cd", name: "FK_CAFCONT_UMFBRANCH", primary_key: "branch_cd"
  add_foreign_key "cafcont_detail", "umfbranch_salespoint", column: "sales_point", name: "FK_UMFBranch_SalesPoint2", primary_key: "branch_sales"
  add_foreign_key "cafcont_irr", "cafcont", column: "appl_no", name: "FK_CAFCONT_IRR", primary_key: "appl_no"
  add_foreign_key "cafdisb", "cafcont", column: "appl_no", name: "FK_CAFDISB_CAFCONT", primary_key: "appl_no"
  add_foreign_key "cafequip", "cafcont", column: "appl_no", name: "FK_CAFEQUIP_CAFCONT", primary_key: "appl_no"
  add_foreign_key "cafequip", "clfsupp", column: "supp", name: "FK_CAFEQUIP_CLFSUPP", primary_key: "supp"
  add_foreign_key "cafequip", "umfbrand", column: "brand", name: "FK_CAFEQUIP_UMFBRAND", primary_key: "brand"
  add_foreign_key "cafequip", "umfjbm", column: "type_cd", name: "FK_CAFEQUIP_UMFJBM", primary_key: "type_cd"
  add_foreign_key "cafequip", "umfmodel", column: "model", name: "FK_CAFEQUIP_UMFMODEL", primary_key: "model"
  add_foreign_key "cafguarn", "cafcont", column: "appl_no", name: "FK_CAFGUARN_CAFCONT", primary_key: "appl_no"
  add_foreign_key "cafguarn", "cafcont", column: "appl_no", name: "FK_CAFGUARN_CAFCONT1", primary_key: "appl_no"
  add_foreign_key "cafguarn", "msttype", column: "grntp", name: "FK_CAFGUARN_MstType", primary_key: "grnttp"
  add_foreign_key "cafinsu", "cafcont", column: "appl_no", name: "FK_CAFINSU_CAFCONT", primary_key: "appl_no"
  add_foreign_key "cafinsu", "umfinscd", column: "ins_cd", name: "FK_CAFINSU_UMFINSCD", primary_key: "ins_cd"
  add_foreign_key "cafinsud", "cafinsu", column: "ins_pol", name: "FK_CAFINSUD_CAFINSU", primary_key: "ins_pol"
  add_foreign_key "cafinsud", "cafinsu", column: "ins_pol", name: "FK_CAFINSUD_CAFINSU1", primary_key: "ins_pol"
  add_foreign_key "cafinsud_clause", "cafinsud", column: "ins_pol", name: "FK_CAFINSUD_Clause", primary_key: "ins_pol"
  add_foreign_key "cafinsud_clause", "cafinsud", column: "year_no", name: "FK_CAFINSUD_Clause", primary_key: "year_no"
  add_foreign_key "cafkomis", "cafcont", column: "appl_no", name: "FK_CAFKOMIS_CAFCONT", primary_key: "appl_no"
  add_foreign_key "cafless_history", "cafless", column: "apless", name: "FK_CAFLESS_History_CAFLESS", primary_key: "apless"
  add_foreign_key "cafref", "cafless", column: "apless", name: "FK_CAFREF_CAFLESS", primary_key: "apless"
  add_foreign_key "cafstep", "cafcont", column: "appl_no", name: "FK_CAFSTEP_CAFCONT", primary_key: "appl_no"
  add_foreign_key "clfakta", "clfless", column: "lessee_no", name: "FK_CLFAKTA_CLFLESS_NEW", primary_key: "lessee_no"
  add_foreign_key "clfboard", "clfless", column: "lessee_no", name: "FK_CLFBOARD_CLFLESS", primary_key: "lessee_no"
  add_foreign_key "clfcont", "umfbranch", column: "branch_cd", name: "FK_CLFCONT_UMFBRANCH", primary_key: "branch_cd"
  add_foreign_key "clfcont_sp123", "clfcont", column: "lease_no", name: "FK_CLFCONT_SP123_CLFCONT", primary_key: "lease_no"
  add_foreign_key "clfequip", "clfcont", column: "lease_no", name: "FK_CLFEQUIP_CLFCONT", primary_key: "lease_no"
  add_foreign_key "clfequip", "umfbrand", column: "brand", name: "FK_CLFEQUIP_UMFBRAND", primary_key: "brand"
  add_foreign_key "clfequip", "umfjbm", column: "type_cd", name: "FK_CLFEQUIP_UMFJBM", primary_key: "type_cd"
  add_foreign_key "clfequip", "umfmodel", column: "model", name: "FK_CLFEQUIP_UMFMODEL", primary_key: "model"
  add_foreign_key "clfgroup", "mstslikgroupcode", column: "slikgroupcode", name: "FK_CLFGroup_MSTGROUPTYPE", primary_key: "slikgroupcode"
  add_foreign_key "clfguarn", "clfcont", column: "lease_no", name: "FK_CLFGUARN_CLFCONT", primary_key: "lease_no"
  add_foreign_key "clfinscla", "umfinscd", column: "ins_cd", name: "FK_CLFINSCLA_UMFINSCD", primary_key: "ins_cd"
  add_foreign_key "clfinsseat", "umfinscd", column: "ins_cd", name: "FK_CLFINSSEAT_UMFINSCD", primary_key: "ins_cd"
  add_foreign_key "clfinstpl", "umfinscd", column: "ins_cd", name: "FK_CLFINSTPL_UMFINSCD", primary_key: "ins_cd"
  add_foreign_key "clfkomis", "clfcont", column: "lease_no", name: "FK_CLFKOMIS_CLFCONT", primary_key: "lease_no"
  add_foreign_key "clfnotary_area", "umfnotary", column: "notary_no", name: "FK_CLFNOTARY_AREA_UMFNOTARY", primary_key: "notary_no"
  add_foreign_key "clfroutinesubdetail", "umfbranch_salespoint", column: "branch_sales", name: "FK_CLFROUTINESUBDETAIL_Branch_Sales", primary_key: "branch_sales"
  add_foreign_key "clfsupp1", "cafcont", column: "supp", name: "FK_CLFSUPP1_CAFCONT", primary_key: "appl_no"
  add_foreign_key "clfsupp1", "mstcategory", column: "supp_cat", name: "FK_CLFSUPP1_MstCategory", primary_key: "code"
  add_foreign_key "clfsupp1", "msttype", column: "supp_type", name: "FK_CLFSUPP1_MstType", primary_key: "grnttp"
  add_foreign_key "confirmation_customer", "clfcont", column: "lease_no", name: "FK_Confirmation_Customer", primary_key: "lease_no"
  add_foreign_key "disbursementplan", "clfcont", column: "lease_no", name: "FK_DisbursementPlan_CLFCONT", primary_key: "lease_no"
  add_foreign_key "ebankuseraccess", "ebankmenu", column: "menu_id", name: "FK_eBankUserAccess", primary_key: "menu_id"
  add_foreign_key "fam_attachment", "fam", column: "fam_code", name: "FK_FAM_Attachment", primary_key: "fam_code"
  add_foreign_key "famemo", "mstfacorrectiontype", column: "correction_cd2", name: "FK_FAMEMO_MSTFACORRECTIONTYPE", primary_key: "correction_cd"
  add_foreign_key "famemo", "mstfacorrectiontype", column: "correction_cd3", name: "FK_FAMEMO_MSTFACORRECTIONTYPE1", primary_key: "correction_cd"
  add_foreign_key "famemo", "mstfacorrectiontype", column: "correction_cd4", name: "FK_FAMEMO_MSTFACORRECTIONTYPE2", primary_key: "correction_cd"
  add_foreign_key "famemo", "mstfacorrectiontype", column: "correction_cd5", name: "FK_FAMEMO_MSTFACORRECTIONTYPE3", primary_key: "correction_cd"
  add_foreign_key "invoice_corfin_detail", "invoice_corfin", column: "invoice_no", name: "FK_Invoice_Corfin_Detail", primary_key: "invoice_no"
  add_foreign_key "listblokir_bpkb_newcar", "clfcont", column: "lease_no", name: "FK_ListBlokir_BPKB_NewCar", primary_key: "lease_no"
  add_foreign_key "lodgebusinesstripaccomodation", "tripbusinesstripaccomodation", column: "tripbusinesstripaccomodationid", name: "FK_LodgeBusinessTripAccomodation_TripBusinessTripAccomodation"
  add_foreign_key "m_counterpart_detcov", "m_counterpart", column: "counterpartno", name: "FK_M_CounterPart_DetCov", primary_key: "counterpartno"
  add_foreign_key "materaitera", "umfbranch", column: "branch_cd", name: "FK_MateraiTera_UMFBRANCH", primary_key: "branch_cd"
  add_foreign_key "memo_floating_detail", "memo_floating", column: "memo_id", name: "FK_MEMO_FLOATING_DETAIL", primary_key: "memo_id"
  add_foreign_key "menulist_salespoint", "app_mnlst", column: "menu_code", name: "FK_MenuList_SalesPoint", primary_key: "menucode"
  add_foreign_key "mst_ebukpot", "umf_tax", column: "pph_id", name: "FK_Mst_EBukPot", primary_key: "pph_id"
  add_foreign_key "mstbranchnetworkarea", "umfbranch", column: "branchcd", name: "FK_MstBranchNetworkArea", primary_key: "branch_cd"
  add_foreign_key "mstmateraitera", "umfbranch", column: "branch_cd", name: "FK_MstMateraiTera_BRANCH_CD", primary_key: "branch_cd"
  add_foreign_key "oauth_grupotors", "oauth_grups", column: "grup_id", name: "FK_oauth_grupotors_oauth_grups"
  add_foreign_key "oauth_grupotors", "oauth_otors", column: "otor_id", name: "FK_oauth_grupotors_oauth_otors"
  add_foreign_key "oauth_rolebbranchs", "oauth_rolebs", column: "roleb_id", name: "FK_oauth_rolebbranchs_oauth_rolebs"
  add_foreign_key "oauth_rolegrups", "oauth_grups", column: "grup_id", name: "FK_oauth_rolegrups_oauth_grups"
  add_foreign_key "oauth_rolegrups", "oauth_roles", column: "role_id", name: "FK_oauth_rolegrups_oauth_roles"
  add_foreign_key "oauth_users", "oauth_rolebs", column: "roleb_id", name: "FK_oauth_users_oauth_rolebs"
  add_foreign_key "oauth_users", "oauth_roles", column: "role_id", name: "FK_oauth_users_oauth_roles"
  add_foreign_key "offeringletter", "umfbranch", column: "branch_cd", name: "FK_OfferingLetter", primary_key: "branch_cd"
  add_foreign_key "participantpeb", "formpeb", column: "formpebid", name: "FK_ParticipantPEB_FormPEB"
  add_foreign_key "promotorpeb", "formpeb", column: "formpebid", name: "FK_PromotorPEB_FormPEB"
  add_foreign_key "salespaidby_ext", "clfsales", column: "salesno", name: "FK_SalesPaidBy_Ext_CLFSALES", primary_key: "sales_no"
  add_foreign_key "sik_groupdetail", "sik_document", column: "iddocument", name: "FK_SIK_groupDetail_SIK_document"
  add_foreign_key "sik_groupdetail", "sik_group", column: "idgroup", name: "FK_SIK_groupDetail_SIK_group"
  add_foreign_key "t_memostampdetail", "t_memostamp", column: "memo_id", name: "FK_T_MemoStampDetail", primary_key: "memo_id"
  add_foreign_key "t_quotation_borrowing_detail", "t_quotation_borrowing", column: "quotationid", name: "FK_T_Quotation_Borrowing_Detail", primary_key: "quotationid"
  add_foreign_key "t_quotation_borrowing_detail", "t_quotation_borrowing", column: "nourut", name: "FK_T_Quotation_Borrowing_Detail", primary_key: "nourut"
  add_foreign_key "t_quotation_borrowing_detail", "t_quotation_borrowing", column: "transactioncode", name: "FK_T_Quotation_Borrowing_Detail", primary_key: "transactioncode"
  add_foreign_key "tripbusinesstripaccomodation", "formbusinesstripaccomodation", column: "formbusinesstripaccomodationid", name: "FK_TripBusinessTripAccomodation_FormBusinessTripAccomodation"
  add_foreign_key "tripbusinesstripallowance", "formbusinesstripallowance", column: "formbusinesstripallowanceid", name: "FK_TripBusinessTripAllowance_FormBusinessTripAllowance"
  add_foreign_key "umfbranch_salespoint", "umfbranch", column: "branch_cd", name: "FK_UMFBranch_SalesPoint", primary_key: "branch_cd"
  add_foreign_key "wo_collateral", "clfequip", column: "clfequip_id", name: "FK_WO_Collateral"
  add_foreign_key "wo_collateral", "clfequip", column: "lease_no", name: "FK_WO_Collateral", primary_key: "lease_no"
  add_foreign_key "wo_collateral_borrow", "clfequip", column: "clfequip_id", name: "FK_WO_Collateral_Borrow"
  add_foreign_key "wo_collateral_borrow", "clfequip", column: "lease_no", name: "FK_WO_Collateral_Borrow", primary_key: "lease_no"
 
end
