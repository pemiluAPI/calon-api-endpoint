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

ActiveRecord::Schema.define(version: 20140307104747) do

  create_table "candidates", id: false, force: true do |t|
    t.string  "id"
    t.string  "lembaga"
    t.string  "id_provinsi"
    t.string  "id_dapil"
    t.string  "id_partai"
    t.integer "urutan"
    t.string  "nama"
    t.string  "jenis_kelamin"
    t.string  "agama"
    t.string  "tempat_lahir"
    t.string  "tanggal_lahir"
    t.string  "foto_url"
    t.integer "tahun"
    t.string  "status_perkawinan"
    t.string  "nama_pasangan"
    t.string  "jumlah_anak"
    t.string  "kelurahan_tinggal"
    t.string  "kecamatan_tinggal"
    t.string  "kab_kota_tinggal"
    t.string  "provinsi_tinggal"
  end

  create_table "electoral_districts", id: false, force: true do |t|
    t.string  "id"
    t.string  "nama"
    t.string  "nama_lengkap"
    t.string  "id_provinsi"
    t.string  "nama_lembaga"
    t.integer "jumlah_kursi"
    t.integer "jumlah_penduduk"
  end

  create_table "parties", id: false, force: true do |t|
    t.string "id"
    t.string "nama"
    t.string "nama_lengkap"
    t.string "url_situs"
    t.string "url_facebook"
    t.string "url_twitter"
    t.string "url_logo_small"
    t.string "url_logo_medium"
  end

  create_table "provinces", force: true do |t|
    t.string  "nama"
    t.string  "nama_lengkap"
    t.string  "nama_inggris"
    t.integer "jumlah_kursi"
    t.integer "jumlah_penduduk"
  end

  create_table "riwayat_organisasi_dprs", force: true do |t|
    t.string "id_calon"
    t.string "ringkasan"
  end

  create_table "riwayat_pekerjaan_dprs", force: true do |t|
    t.string "id_calon"
    t.string "ringkasan"
  end

  create_table "riwayat_pendidikan_dprs", force: true do |t|
    t.string "id_calon"
    t.string "ringkasan"
  end

end
