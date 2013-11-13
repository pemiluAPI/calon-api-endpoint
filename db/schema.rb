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

ActiveRecord::Schema.define(version: 20131113120953) do

  create_table "candidates", force: true do |t|
    t.string  "lembaga"
    t.integer "provinsi_id"
    t.integer "dapil_id"
    t.integer "partai_id"
    t.integer "calon_urutan"
    t.string  "calon_id"
    t.string  "nama"
    t.string  "kelamin"
    t.string  "tinggal"
    t.string  "agama"
    t.string  "tempat_lahir"
    t.string  "tanggal_lahir"
  end

  create_table "electoral_districts", force: true do |t|
    t.string  "nama"
    t.string  "singkatan"
    t.integer "provinsi_id"
  end

  create_table "parties", force: true do |t|
    t.string "nama"
    t.string "singkatan"
    t.string "situs"
    t.string "facebook"
    t.string "twitter"
  end

  create_table "provinces", force: true do |t|
    t.string  "nama"
    t.string  "singkatan"
    t.string  "nama_inggris"
    t.integer "kursi"
    t.integer "penduduk"
  end

end
