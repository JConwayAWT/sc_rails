# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140805214000) do

  create_table "mx_admin_menu", primary_key: "adminMenuID", force: true do |t|
    t.boolean "menuType",              default: false, null: false
    t.string  "menuTitle", limit: 100,                 null: false
    t.string  "seoUri",    limit: 100, default: "#",   null: false
    t.integer "xOrder",                default: 0,     null: false
    t.integer "parentID",              default: 0,     null: false
    t.boolean "status",                default: true,  null: false
    t.boolean "menuPose",              default: true,  null: false
  end

  create_table "mx_admin_meta", primary_key: "adminMetaID", force: true do |t|
    t.string  "metaKey",     limit: 100,                 null: false
    t.integer "metaValue",                               null: false
    t.boolean "metaType",                default: false, null: false
    t.string  "metaTitle",                               null: false
    t.text    "metaKeyword",                             null: false
    t.text    "metaDesc",                                null: false
  end

  create_table "mx_admin_roles", force: true do |t|
    t.string  "role_name_new",                            null: false
    t.string  "roleEmail",     limit: 100,                null: false
    t.boolean "status",                    default: true, null: false
  end

  create_table "mx_admin_user_access", primary_key: "userAccessID", force: true do |t|
    t.integer "roleID",      null: false
    t.integer "adminMenuID", null: false
    t.text    "accessType",  null: false
  end

  create_table "mx_admin_users", primary_key: "userID", force: true do |t|
    t.integer  "roleID",                    default: 0,    null: false
    t.integer  "addedBy",                                  null: false
    t.string   "displayName",   limit: 100,                null: false
    t.string   "userName",      limit: 100,                null: false
    t.string   "userPass",      limit: 100,                null: false
    t.string   "userEmail",     limit: 100,                null: false
    t.string   "address",       limit: 512,                null: false
    t.string   "contactNo",     limit: 20,                 null: false
    t.string   "imageName",                                null: false
    t.string   "logoWebsite",   limit: 100,                null: false
    t.string   "logoIpad",      limit: 100,                null: false
    t.string   "logoIphone",    limit: 100,                null: false
    t.datetime "dateAdded",                                null: false
    t.datetime "dateModified",                             null: false
    t.datetime "dateLogin",                                null: false
    t.string   "loginKey",                                 null: false
    t.string   "activationKey",                            null: false
    t.boolean  "status",                    default: true, null: false
    t.integer  "assignedTo",                               null: false
  end

  create_table "mx_alarm_systems", primary_key: "alarmSystemId", force: true do |t|
    t.string   "alarmsLocation",                   null: false
    t.string   "disarming",                        null: false
    t.string   "arming",                           null: false
    t.string   "securityLocation",                 null: false
    t.string   "securityDisarming",                null: false
    t.string   "securityArming",                   null: false
    t.integer  "userID",                           null: false
    t.integer  "apartmentID",                      null: false
    t.datetime "dateAdded",                        null: false
    t.datetime "dateModified",                     null: false
    t.boolean  "status",            default: true, null: false
  end

  create_table "mx_apartment", primary_key: "apartmentID", force: true do |t|
    t.integer  "userID",                                null: false
    t.string   "apartmentName",                         null: false
    t.datetime "dateAdded",                             null: false
    t.datetime "dateModified",                          null: false
    t.boolean  "status",                 default: true, null: false
    t.integer  "assignedTo",                            null: false
    t.integer  "assignedToRegional",                    null: false
    t.integer  "assignedToRMaintenance",                null: false
    t.integer  "assignedToPMaintenance",                null: false
    t.integer  "pmcID",                                 null: false
  end

  create_table "mx_category", primary_key: "categoryID", force: true do |t|
    t.string   "seoUri",                                   null: false
    t.string   "categoryTitle", limit: 250,                null: false
    t.text     "synopsis",                                 null: false
    t.string   "imageName",                                null: false
    t.integer  "parentID",                  default: 0,    null: false
    t.integer  "xOrder",                                   null: false
    t.datetime "dateAdded",                                null: false
    t.datetime "dateModified",                             null: false
    t.integer  "modifiedBy",                               null: false
    t.boolean  "status",                    default: true, null: false
  end

  create_table "mx_command_center", primary_key: "commandCenterID", force: true do |t|
    t.integer  "userID",                           null: false
    t.integer  "apartmentID",                      null: false
    t.string   "operationFirstLoc",                null: false
    t.string   "operationAlterLoc",                null: false
    t.string   "residentFirstLoc",                 null: false
    t.string   "residentAlterLoc",                 null: false
    t.string   "emergencyFirstLoc",                null: false
    t.string   "emergencyAlterLoc",                null: false
    t.string   "mediaFirstLoc",                    null: false
    t.string   "mediaAlterLoc",                    null: false
    t.datetime "dateAdded",                        null: false
    t.datetime "dateModified",                     null: false
    t.boolean  "status",            default: true, null: false
  end

  create_table "mx_community_apartment", primary_key: "communityApartmentID", force: true do |t|
    t.integer "communityServiceID",                null: false
    t.integer "apartmentID",                       null: false
    t.boolean "status",             default: true, null: false
  end

  create_table "mx_community_service", primary_key: "communityServiceID", force: true do |t|
    t.integer  "userID",                      null: false
    t.integer  "apartmentID",                 null: false
    t.string   "agencyName",                  null: false
    t.string   "contactName",                 null: false
    t.string   "address",                     null: false
    t.string   "phonenumber",                 null: false
    t.datetime "dateAdded",                   null: false
    t.datetime "dateModified",                null: false
    t.boolean  "status",       default: true, null: false
  end

  create_table "mx_corporate_apartment", primary_key: "corporateapartmentID", force: true do |t|
    t.integer "corporateServiceID",                null: false
    t.integer "apartmentID",                       null: false
    t.boolean "status",             default: true, null: false
  end

  create_table "mx_corporate_procedure", primary_key: "procedureID", force: true do |t|
    t.integer  "userID",                                   null: false
    t.string   "procedureTitle", limit: 50,                null: false
    t.text     "procedureDesc",                            null: false
    t.datetime "dateAdded",                                null: false
    t.boolean  "status",                    default: true, null: false
  end

  create_table "mx_corporate_procedure_steps", primary_key: "ID", force: true do |t|
    t.integer  "CPID",                                      null: false
    t.string   "procedureTitle", limit: 500,                null: false
    t.text     "procedureDesc",                             null: false
    t.integer  "userID",                                    null: false
    t.datetime "dateAdded",                                 null: false
    t.boolean  "status",                     default: true, null: false
  end

  create_table "mx_corporate_procedure_types", primary_key: "CPID", force: true do |t|
    t.string  "title",  limit: 50,                null: false
    t.boolean "status",            default: true, null: false
  end

  create_table "mx_corporate_service", primary_key: "corporateServiceID", force: true do |t|
    t.integer   "userID",                      null: false
    t.integer   "apartmentID",                 null: false
    t.string    "name",                        null: false
    t.string    "possition",                   null: false
    t.string    "phonenumber",                 null: false
    t.string    "cellNumber",                  null: false
    t.string    "emailID",                     null: false
    t.datetime  "dateAdded",                   null: false
    t.timestamp "dateModified",                null: false
    t.boolean   "status",       default: true, null: false
  end

  create_table "mx_emergency_supplies", primary_key: "emergencySuppliesID", force: true do |t|
    t.string   "emergencySupplies",                null: false
    t.integer  "userID",                           null: false
    t.integer  "apartmentID",                      null: false
    t.datetime "dateAdded",                        null: false
    t.datetime "dateModified",                     null: false
    t.boolean  "status",            default: true, null: false
  end

  create_table "mx_equipment", primary_key: "equipmentID", force: true do |t|
    t.string   "equipmentName",                null: false
    t.datetime "dateAdded",                    null: false
    t.datetime "dateModified",                 null: false
    t.boolean  "status",        default: true, null: false
  end

  create_table "mx_evacuation", primary_key: "evacuationID", force: true do |t|
    t.text     "evacPordures",   limit: 16777215,                null: false
    t.text     "primEvacuRoute", limit: 16777215,                null: false
    t.text     "secoEvacuRoure", limit: 16777215,                null: false
    t.integer  "userID",                                         null: false
    t.integer  "apartmentID",                                    null: false
    t.datetime "dateAdded",                                      null: false
    t.datetime "dateModified",                                   null: false
    t.boolean  "status",                          default: true, null: false
  end

  create_table "mx_files", primary_key: "fileID", force: true do |t|
    t.integer  "apartmentID",                 null: false
    t.string   "fileTitle",                   null: false
    t.string   "fileName",                    null: false
    t.integer  "userID",                      null: false
    t.datetime "dateAdded",                   null: false
    t.datetime "dateModified",                null: false
    t.boolean  "status",       default: true, null: false
  end

  create_table "mx_first_aid", primary_key: "firstAidID", force: true do |t|
    t.integer  "userID",                      null: false
    t.integer  "apartmentID",                 null: false
    t.string   "firstAidName",                null: false
    t.datetime "dateAdded",                   null: false
    t.boolean  "status",       default: true, null: false
  end

  create_table "mx_image_detail", primary_key: "imageDetailID", force: true do |t|
    t.integer "apartmentID",                                 null: false
    t.integer "imageSectionID",                              null: false
    t.string  "imageDetailTitle", limit: 100,                null: false
    t.text    "imageDetailDesc",                             null: false
    t.string  "image",            limit: 100,                null: false
    t.boolean "status",                       default: true, null: false
  end

  create_table "mx_image_section", primary_key: "imageSectionID", force: true do |t|
    t.integer "apartmentID",                                  null: false
    t.string  "imageSectionTitle", limit: 100,                null: false
    t.integer "userID",                                       null: false
    t.boolean "status",                        default: true, null: false
  end

  create_table "mx_insurance", primary_key: "insuranceID", force: true do |t|
    t.integer  "userID",                          null: false
    t.string   "companyName",                     null: false
    t.string   "insurancePolicy",                 null: false
    t.string   "agentsName",                      null: false
    t.string   "phoneNumber",                     null: false
    t.string   "national",                        null: false
    t.string   "coverageAmt",                     null: false
    t.string   "deductible",                      null: false
    t.string   "companyProcedure",                null: false
    t.datetime "dateAdded",                       null: false
    t.datetime "dateModified",                    null: false
    t.boolean  "status",           default: true, null: false
  end

  create_table "mx_maintenance_schedule", primary_key: "maintenanceID", force: true do |t|
    t.integer  "userID",                                  null: false
    t.integer  "apartmentID",                             null: false
    t.text     "equipments",                              null: false
    t.string   "last_date_maintained",                    null: false
    t.string   "next_due_date_maintained",                null: false
    t.datetime "dateModified",                            null: false
    t.boolean  "status",                   default: true, null: false
  end

  create_table "mx_media", primary_key: "mediaID", force: true do |t|
    t.integer  "userID",                                             null: false
    t.string   "priSpokeperson",                                     null: false
    t.string   "priPossition",                                       null: false
    t.string   "priContInformation",                                 null: false
    t.string   "alterSpokeperson",                                   null: false
    t.string   "alterPossition",                                     null: false
    t.string   "alterContInform",                                    null: false
    t.text     "compInformation",    limit: 16777215,                null: false
    t.datetime "dateAdded",                                          null: false
    t.datetime "dateModified",                                       null: false
    t.boolean  "status",                              default: true, null: false
  end

  create_table "mx_office_relocation", primary_key: "officeRelocationID", force: true do |t|
    t.integer  "userID",                                           null: false
    t.integer  "apartmentID",                                      null: false
    t.text     "officeRelocation", limit: 16777215,                null: false
    t.datetime "dateAdded",                                        null: false
    t.datetime "dateModified",                                     null: false
    t.boolean  "status",                            default: true, null: false
  end

  create_table "mx_page", primary_key: "pageID", force: true do |t|
    t.string   "seoUri",                                      null: false
    t.string   "pageTitle",                                   null: false
    t.text     "synopsis",                                    null: false
    t.text     "pageContent",                                 null: false
    t.boolean  "downloadEnabled",             default: false, null: false
    t.string   "templateFile",    limit: 100,                 null: false
    t.datetime "dateAdded",                                   null: false
    t.datetime "dateModified",                                null: false
    t.integer  "modifiedBy",                                  null: false
    t.boolean  "status",                      default: true,  null: false
  end

  create_table "mx_post", primary_key: "postID", force: true do |t|
    t.string   "seoUri",                                  null: false
    t.string   "postTitle",                               null: false
    t.text     "synopsis",                                null: false
    t.text     "postContent",                             null: false
    t.string   "imageName",    limit: 100,                null: false
    t.string   "fileName",     limit: 100,                null: false
    t.datetime "datePublish",                             null: false
    t.datetime "dateAdded",                               null: false
    t.datetime "dateModified",                            null: false
    t.integer  "modifiedBy",                              null: false
    t.boolean  "allowComment",             default: true, null: false
    t.boolean  "status",                   default: true, null: false
  end

  create_table "mx_post_category", primary_key: "postCatID", force: true do |t|
    t.integer "categoryID", null: false
    t.integer "postID",     null: false
  end

  create_table "mx_recovery_duties", primary_key: "recoveryDutiesID", force: true do |t|
    t.integer  "userID",                       null: false
    t.integer  "apartmentID",                  null: false
    t.string   "duties",                       null: false
    t.string   "firstTeamMemb",                null: false
    t.string   "altTeamMemb",                  null: false
    t.string   "phoneNumber",                  null: false
    t.datetime "dateAdded",                    null: false
    t.datetime "dateModified",                 null: false
    t.boolean  "status",        default: true, null: false
  end

  create_table "mx_resource", primary_key: "resourceID", force: true do |t|
    t.string   "resourceName", limit: 11,                null: false
    t.datetime "dateAdded",                              null: false
    t.datetime "dateModified",                           null: false
    t.boolean  "status",                  default: true, null: false
  end

  create_table "mx_response_duties", id: false, force: true do |t|
    t.integer  "responseDutiesID",                null: false
    t.integer  "userID",                          null: false
    t.integer  "apartmentID",                     null: false
    t.string   "tasks",                           null: false
    t.string   "emergency",                       null: false
    t.string   "resFirstMemb",                    null: false
    t.string   "resAltMemb",                      null: false
    t.string   "phoneNumber",                     null: false
    t.datetime "dateAdded",                       null: false
    t.datetime "dateModified",                    null: false
    t.boolean  "status",           default: true, null: false
  end

  create_table "mx_shut_off", primary_key: "shuttOffID", force: true do |t|
    t.integer  "userID",                  null: false
    t.integer  "apartmentID",             null: false
    t.string   "title",                   null: false
    t.string   "location",    limit: 300, null: false
    t.datetime "dateAdded",               null: false
    t.boolean  "status",                  null: false
  end

  create_table "mx_site_menu", primary_key: "siteMenuID", force: true do |t|
    t.integer  "parentID",                                null: false
    t.string   "menuTitle",                               null: false
    t.text     "synopsis",                                null: false
    t.string   "menuType",     limit: 100,                null: false
    t.string   "seoUri",                                  null: false
    t.string   "menuClass",    limit: 50,                 null: false
    t.datetime "dateModified",                            null: false
    t.integer  "xOrder",                                  null: false
    t.boolean  "status",                   default: true, null: false
  end

  create_table "mx_supplies", primary_key: "suppliesID", force: true do |t|
    t.string   "suppliesName",                null: false
    t.datetime "dateAdded",                   null: false
    t.datetime "dateModified",                null: false
    t.boolean  "status",       default: true, null: false
  end

  create_table "mx_survey", primary_key: "surveyID", force: true do |t|
    t.integer  "userID",                                              null: false
    t.integer  "apartmentID",                                         null: false
    t.integer  "propID",                                              null: false
    t.string   "displayName",             limit: 150,                 null: false
    t.date     "date",                                                null: false
    t.string   "yearBuilt",                                           null: false
    t.string   "numberOfBuildings",       limit: 10,                  null: false
    t.string   "numberOfUnit",                                        null: false
    t.string   "county",                                              null: false
    t.string   "township",                limit: 256,                 null: false
    t.boolean  "isGasBuilding",                                       null: false
    t.boolean  "cooking",                                             null: false
    t.boolean  "heating",                                             null: false
    t.boolean  "hotWater",                                            null: false
    t.boolean  "gasUsage",                                            null: false
    t.string   "gasUsageOthr",            limit: 256,                 null: false
    t.boolean  "floorPlan",                                           null: false
    t.boolean  "sitePlan",                                            null: false
    t.boolean  "petFriendly",                                         null: false
    t.boolean  "pool",                                                null: false
    t.boolean  "poolMaintanance",                                     null: false
    t.boolean  "autoFireDetection",                                   null: false
    t.boolean  "fireProtTypeDirect",                                  null: false
    t.boolean  "fireProtTypeLocal",                                   null: false
    t.boolean  "fireProtTypeMonitored",                               null: false
    t.boolean  "isInspectedAnnual",                                   null: false
    t.boolean  "isFireExtinguishers",                                 null: false
    t.boolean  "isFireExtEachFlr",                                    null: false
    t.boolean  "isFireExtEachOffc",                                   null: false
    t.boolean  "isExtinguishereIdent",                                null: false
    t.boolean  "isFuseCabinClose",                                    null: false
    t.string   "mainShutPanel",                                       null: false
    t.boolean  "emergencyGenerator",                                  null: false
    t.boolean  "isElectRoomAccess",                                   null: false
    t.boolean  "hVACserPro",                                          null: false
    t.string   "hVACserProName",          limit: 256,                 null: false
    t.boolean  "boilerMeetFireCode",                                  null: false
    t.boolean  "isBoilerVentilated",                                  null: false
    t.boolean  "fireExistMarked",                                     null: false
    t.boolean  "doorsWorking",                                        null: false
    t.boolean  "isTestedEmergency",                                   null: false
    t.string   "howOften",                                            null: false
    t.boolean  "isMaterialOutBuilding",                               null: false
    t.string   "whereBuildingMaterial",   limit: 256,                 null: false
    t.boolean  "ventedFireproof",                                     null: false
    t.string   "maintenanceLocation",                                 null: false
    t.boolean  "isMoreShop",                                          null: false
    t.string   "shopSpecification",       limit: 256,                 null: false
    t.boolean  "isCombustibleStoreCabin",                             null: false
    t.string   "occupancyOfRoom",                                     null: false
    t.boolean  "isPosted",                                            null: false
    t.boolean  "kitchenClassB",                                       null: false
    t.datetime "dateAdded",                                           null: false
    t.datetime "dateModified",                                        null: false
    t.boolean  "surveyStatus",                        default: false, null: false
    t.boolean  "status",                              default: true,  null: false
  end

  create_table "mx_telephone_chain", primary_key: "telephoneChainID", force: true do |t|
    t.integer  "userID",                                       null: false
    t.integer  "apartmentID",                                  null: false
    t.string   "employeeName",                                 null: false
    t.string   "employeeHome",                                 null: false
    t.string   "employeePosition",  limit: 100,                null: false
    t.string   "employeeCell",                                 null: false
    t.string   "employeeEmailID",   limit: 100,                null: false
    t.string   "employeeName1",                                null: false
    t.string   "employeeHome1",                                null: false
    t.string   "employeeCell1",                                null: false
    t.string   "employeeName2",     limit: 100,                null: false
    t.string   "employeeHome2",     limit: 100,                null: false
    t.string   "employeeCell2",     limit: 100,                null: false
    t.string   "employeeName3",     limit: 100,                null: false
    t.string   "employeeHome3",     limit: 100,                null: false
    t.string   "employeeCell3",     limit: 100,                null: false
    t.string   "employeeName4",     limit: 100,                null: false
    t.string   "employeeHome4",     limit: 100,                null: false
    t.string   "employeeCell4",     limit: 100,                null: false
    t.string   "employeeName5",     limit: 100,                null: false
    t.string   "employeeHome5",     limit: 100,                null: false
    t.string   "employeeCell5",     limit: 100,                null: false
    t.datetime "dateAdded",                                    null: false
    t.datetime "dateModified",                                 null: false
    t.boolean  "status",                        default: true, null: false
    t.string   "employeePosition1", limit: 100,                null: false
    t.string   "employeePosition2", limit: 100,                null: false
    t.string   "employeePosition3", limit: 100,                null: false
    t.string   "employeePosition4", limit: 100,                null: false
    t.string   "employeePosition5", limit: 100,                null: false
    t.string   "employeeEmailID1",  limit: 100,                null: false
    t.string   "employeeEmailID2",  limit: 100,                null: false
    t.string   "employeeEmailID3",  limit: 100,                null: false
    t.string   "employeeEmailID4",  limit: 100,                null: false
    t.string   "employeeEmailID5",  limit: 100,                null: false
  end

  create_table "mx_user_relation", primary_key: "relationID", force: true do |t|
    t.integer "parentID", null: false
    t.integer "userID",   null: false
  end

  create_table "mx_vendor", primary_key: "vendorID", force: true do |t|
    t.integer  "userID",                      null: false
    t.integer  "apartmentID",                 null: false
    t.string   "resource",                    null: false
    t.string   "compName",                    null: false
    t.string   "contPerson",                  null: false
    t.string   "possition",                   null: false
    t.string   "address",                     null: false
    t.string   "phoneNumber",                 null: false
    t.datetime "dateAdded",                   null: false
    t.datetime "dateModified",                null: false
    t.boolean  "status",       default: true, null: false
  end

  create_table "mx_vendor_apartment", primary_key: "vendorApartmentID", force: true do |t|
    t.integer "vendorID",                   null: false
    t.integer "apartmentID",                null: false
    t.boolean "status",      default: true, null: false
  end

end
