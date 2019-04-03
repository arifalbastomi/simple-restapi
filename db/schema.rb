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

ActiveRecord::Schema.define(version: 2019_04_03_182647) do

  create_table "data", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "nik", limit: 50
    t.string "nama", limit: 50
    t.string "email", limit: 50
    t.string "hp", limit: 15
    t.string "judul", limit: 200
    t.string "link"
    t.datetime "createdate"
    t.string "Status", limit: 15
  end

  create_table "register_t_money", primary_key: "id_merchant", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "jenis_merchant", limit: 15
    t.string "p_fc_ktpsim", limit: 1
    t.text "p_fc_img_ktpsim"
    t.string "p_fc_situ", limit: 1
    t.text "p_fc_img_situ"
    t.string "b_fc_ktpsim", limit: 1
    t.text "b_fc_img_ktpsim"
    t.string "b_fc_siup", limit: 1
    t.text "b_fc_img_siup"
    t.string "b_fc_akta", limit: 1
    t.text "b_fc_img_akta"
    t.string "b_fc_kuasa", limit: 1
    t.text "b_fc_img_kuasa"
    t.string "nama_merchant", limit: 30
    t.string "nama_bd_hukum", limit: 30
    t.string "jenis_usaha", limit: 30
    t.string "web", limit: 35
    t.text "alamat"
    t.string "kota", limit: 30
    t.string "provinsi", limit: 25
    t.string "kode_pos", limit: 10
    t.string "alamat_no_telp", limit: 14
    t.string "jam_buka", limit: 25
    t.string "email_pemilik", limit: 30
    t.string "nama_kontak", limit: 20
    t.string "no_telp_kantor", limit: 14
    t.string "email", limit: 30
    t.string "nama_bank", limit: 25
    t.string "no_rekening", limit: 24
    t.string "atas_nama", limit: 25
    t.string "email_laporan", limit: 30
    t.date "tanggal_daftar"
    t.string "proses_kerjasama", limit: 9
    t.string "settlement", limit: 9
    t.string "mdr_trans_fee", limit: 25
  end

  create_table "seo_user", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "nama", limit: 20
    t.string "email", limit: 30
    t.string "password", limit: 20
    t.datetime "createdate"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
