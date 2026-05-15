# Auto-generated from SQL Server - Database: MitsuiSupportData
 
ActiveRecord::Schema[8.1].define(version: 20260515_000000) do
 
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
 
  create_table "formdatacollateral", force: :cascade do |t|
    t.integer "applicantno", null: false
    t.integer "sequence", null: false
    t.integer "conditioncollateral"
    t.string "chasisno", limit: 50
    t.string "brand", limit: 3
    t.string "brandname", limit: 50
    t.string "type", limit: 10
    t.string "typename", limit: 25, null: false
    t.integer "vehicletype"
    t.integer "totalunit", default: 1, null: false
    t.decimal "dp", precision: 10, scale: 2
    t.decimal "netfinance", precision: 15, scale: 0
    t.integer "tenor"
    t.string "iddealer", limit: 7
    t.string "dealername", limit: 50
    t.string "idsales", limit: 7
    t.string "salesname", limit: 50
    t.datetime "modifieddate"
    t.string "modifiedby", limit: 50
    t.datetime "createdate", null: false
    t.string "createby", limit: 50, null: false
  end
 
  create_table "formdatacustomer", force: :cascade do |t|
    t.integer "applicantno", null: false
    t.integer "consenttype"
    t.string "applicanttype", limit: 2, null: false
    t.string "lesseetype", limit: 2
    t.string "branchcd", limit: 2, null: false
    t.string "dealername", limit: 50
    t.string "salesname", limit: 50
    t.integer "conditioncollateral"
    t.string "chasisno", limit: 50
    t.string "gender", limit: 1
    t.string "placeofbirth", limit: 100
    t.date "dateofbirth"
    t.string "npwpno", limit: 25
    t.string "npwpaddress", limit: 500
    t.string "picname", limit: 50
    t.string "idcardno", limit: 16
    t.string "idcardname", limit: 50, null: false
    t.string "idcardaddress", limit: 500
    t.string "idcardrt", limit: 3
    t.string "idcardrw", limit: 3
    t.string "idcardprov", limit: 50
    t.string "idcardkota", limit: 4
    t.string "idcardkecamatan", limit: 6
    t.string "idcardkelurahan", limit: 10
    t.boolean "isdomicilysamewithidcard"
    t.string "domicilyaddress", limit: 500
    t.string "domicilyrt", limit: 3
    t.string "domicilyrw", limit: 3
    t.string "domicilyprov", limit: 50
    t.string "domicilykota", limit: 4
    t.string "domicilykecamatan", limit: 6
    t.string "domicilykelurahan", limit: 10
    t.string "phoneno", limit: 20
    t.string "ismarried", limit: 2
    t.string "job", limit: 100
    t.string "refchecking", limit: 18
    t.datetime "modifieddate"
    t.string "modifiedby", limit: 50
    t.datetime "createdate", null: false
    t.string "createby", limit: 50, null: false
    t.string "ibukandung", limit: 100
    t.boolean "isdeleted"
    t.string "deleteby", limit: 50
    t.datetime "deletedate"
  end
 
  create_table "formdatacustomerbo", force: :cascade do |t|
    t.integer "applicantno", null: false
    t.string "position", limit: 50
    t.string "idcardno", limit: 25
    t.string "idcardname", limit: 50
    t.string "gender", limit: 1, null: false
    t.string "placeofbirth", limit: 100
    t.date "dateofbirth"
    t.string "phoneno", limit: 20
    t.string "idcardaddress", limit: 500
    t.string "idcardrt", limit: 3
    t.string "idcardrw", limit: 3
    t.string "idcardprov", limit: 50
    t.string "idcardkota", limit: 4
    t.string "idcardkecamatan", limit: 6
    t.string "idcardkelurahan", limit: 10
    t.string "refchecking", limit: 20
    t.datetime "modifieddate"
    t.string "modifiedby", limit: 50
    t.datetime "createdate", null: false
    t.string "createby", limit: 50, null: false
    t.boolean "iswni"
  end
 
  create_table "formdatacustomerconsent", force: :cascade do |t|
    t.integer "applicantno", null: false
    t.integer "concentby", null: false
    t.string "isapproved", limit: 1
    t.string "concentnotes", limit: 100
    t.datetime "calltime"
    t.datetime "createdate", null: false
    t.string "createby", limit: 50, null: false
  end
 
  create_table "formdatacustomerreviewer", force: :cascade do |t|
    t.integer "applicantno", null: false
    t.string "revieweremplid", limit: 4, null: false
    t.datetime "takendate"
    t.boolean "isactive", default: false, null: false
    t.datetime "modifiedon"
    t.string "modifiedby", limit: 4
  end
 
  create_table "formdatacustomerspouse", force: :cascade do |t|
    t.integer "applicantno", null: false
    t.string "idcardno", limit: 16
    t.string "idcardname", limit: 50
    t.string "placeofbirth", limit: 500
    t.date "dateofbirth"
    t.string "phoneno", limit: 20
    t.boolean "idcardaddresssamewithapplicant", null: false
    t.string "idcardaddress", limit: 500
    t.string "idcardrt", limit: 3
    t.string "idcardrw", limit: 3
    t.string "idcardprov", limit: 50
    t.string "idcardkota", limit: 4
    t.string "idcardkecamatan", limit: 6
    t.string "idcardkelurahan", limit: 10
    t.boolean "domicileaddresssamewithapplicant", null: false
    t.string "domicileaddress", limit: 500
    t.string "domicilert", limit: 3
    t.string "domicilerw", limit: 3
    t.string "domicileprov", limit: 50
    t.string "domicilekota", limit: 4
    t.string "domicilekecamatan", limit: 6
    t.string "domicilekelurahan", limit: 10
    t.string "refchecking", limit: 18
    t.string "job", limit: 100
    t.datetime "modifieddate"
    t.string "modifiedby", limit: 50
    t.datetime "createdate", null: false
    t.string "createby", limit: 50, null: false
    t.string "ibukandung", limit: 100
  end
 
  create_table "formdatacustomerstatus", force: :cascade do |t|
    t.integer "applicantno", null: false
    t.integer "status"
    t.date "rejectdate"
    t.integer "rejectcondition"
    t.integer "rejectby"
    t.integer "rejectreason"
    t.datetime "modifieddate"
    t.string "modifiedby", limit: 50
    t.datetime "createdate", null: false
    t.string "createby", limit: 50, null: false
    t.string "reason", limit: 250
  end
 
  create_table "lettermonitoring", force: :cascade do |t|
    t.integer "letternomlci", null: false
    t.string "lettertype", limit: 1, null: false
    t.datetime "receiveddate", null: false
    t.string "letterno", limit: 100, null: false
    t.string "lettersubject", null: false
    t.string "letterfrom", limit: 1, null: false
    t.string "fromother", limit: 100
    t.datetime "duedate", null: false
    t.string "priority", limit: 1, null: false
    t.string "information", limit: 4000, null: false
    t.boolean "iscomplete"
    t.datetime "createdate", null: false
    t.string "createby", limit: 4, null: false
    t.datetime "updatedate"
    t.string "updateby", limit: 4
    t.boolean "isdelete"
    t.string "deletedby", limit: 4
    t.datetime "deleteddate"
    t.string "typeother", limit: 250
  end
 
  create_table "lettermonitoringcc", force: :cascade do |t|
    t.integer "letternomlci", null: false
    t.string "pic", limit: 4, null: false
    t.datetime "createdate", null: false
    t.string "createby", limit: 4, null: false
    t.datetime "updatedate"
    t.string "updateby", limit: 4
  end
 
  create_table "lettermonitoringpic", force: :cascade do |t|
    t.integer "letternomlci", null: false
    t.string "pic", limit: 4, null: false
    t.boolean "hasupload", null: false
    t.datetime "createdate", null: false
    t.string "createby", limit: 4, null: false
    t.datetime "updatedate"
    t.string "updateby", limit: 4
  end
 
  create_table "lettermonitoringstatus", force: :cascade do |t|
    t.integer "letternomlci", null: false
    t.string "status", limit: 1, null: false
    t.datetime "createdate", null: false
    t.string "createby", limit: 4, null: false
    t.datetime "updatedate"
    t.string "updateby", limit: 4
  end
 
  create_table "mstmaximumretailprice", force: :cascade do |t|
    t.string "vehiclebrand", limit: 50, null: false
    t.string "vehiclemodel", limit: 50, null: false
    t.string "vehicletype", limit: 100
    t.string "transmission", limit: 50, null: false
    t.integer "year"
    t.string "province", limit: 50, null: false
    t.string "city", limit: 100
    t.decimal "referenceprice", null: false
    t.decimal "maxretailprice"
    t.datetime "createon", null: false
    t.string "createby", limit: 30, null: false
    t.boolean "isactive"
    t.string "modifiedby", limit: 30
    t.datetime "modifiedon"
  end
 
  create_table "mstreviewerapplicant", force: :cascade do |t|
    t.string "revieweremplid", limit: 4, null: false
    t.integer "total", default: 0, null: false
    t.boolean "isactive", default: false, null: false
    t.datetime "lastupdatedate"
    t.boolean "isdeleted"
    t.string "deleteby", limit: 4
    t.datetime "deletedate"
  end
 
  create_table "mstreviewerapplicantlog", force: :cascade do |t|
    t.string "revieweremplid", limit: 4
    t.datetime "startdate"
    t.datetime "enddate"
    t.integer "flagactive", null: false
    t.datetime "createdate"
    t.string "createby", limit: 4
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
 
  create_table "prescoring", force: :cascade do |t|
    t.integer "applicantno", null: false
    t.integer "getcontact"
    t.integer "slik"
    t.integer "riskstatus"
    t.string "surveyby", limit: 2
    t.string "retailcredit", limit: 4
    t.datetime "reqsurveydate"
    t.datetime "surveydate"
    t.datetime "modifieddate"
    t.string "modifiedby", limit: 50
    t.datetime "createdate", null: false
    t.string "createby", limit: 50, null: false
  end
 
  create_table "resultcheckingcustomer", force: :cascade do |t|
    t.string "refchecking", limit: 15, null: false
    t.string "checkingtype", limit: 50, null: false
    t.string "result", limit: 100
    t.datetime "createdate", null: false
  end
 
 
end

Completion time: 2026-05-15T17:28:29.9188781+07:00
