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

ActiveRecord::Schema.define(version: 20130610175509) do

  create_table "desktops", force: true do |t|
    t.string   "descricao_defeito"
    t.integer  "qtd_funcionando"
    t.integer  "qtd_defeito"
    t.integer  "qtd_extra"
    t.integer  "qtd_manutencao"
    t.integer  "qtd_emprestado"
    t.integer  "qtd_garantia"
    t.integer  "qtd_vigencia_contrato"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orgaos", force: true do |t|
    t.string   "nome"
    t.string   "tipo"
    t.string   "vinculo"
    t.string   "endereco"
    t.string   "bairro"
    t.integer  "cep"
    t.string   "telefone"
    t.string   "secretario"
    t.string   "email_secretario"
    t.string   "nome_secretaria"
    t.string   "telefone_secretaria"
    t.string   "email_secretaria"
    t.string   "atribuicoes_orgao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "softwares", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
