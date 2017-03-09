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

ActiveRecord::Schema.define(version: 20170308231922) do

  PRAGMA FOREIGN_KEYS = ON;
  create_table "abilities", force: :cascade do |t|
    t.string   "domain",     :index=>{:name=>"index_abilities_on_domain_and_ability", :with=>["ability"]}
    t.string   "ability"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       :index=>{:name=>"index_roles_on_name"}
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "abilities_roles", force: :cascade do |t|
    t.integer  "ability_id", :index=>{:name=>"fk__abilities_roles_ability_id"}, :foreign_key=>{:references=>"abilities", :name=>"fk_abilities_roles_ability_id", :on_update=>:no_action, :on_delete=>:no_action}
    t.integer  "role_id",    :index=>{:name=>"fk__abilities_roles_role_id"}, :foreign_key=>{:references=>"roles", :name=>"fk_abilities_roles_role_id", :on_update=>:no_action, :on_delete=>:no_action}
    t.datetime "created_at"
    t.datetime "updated_at"
  end
  add_index "abilities_roles", ["ability_id", "role_id"], :name=>"index_abilities_roles_on_ability_id_and_role_id"

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "email"
    t.string   "identidade"
    t.string   "cpf"
    t.string   "profissao"
    t.string   "referencias_comerciais"
    t.string   "referencias_bancarias"
    t.string   "logradouro"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
    t.text     "observacoes"
    t.datetime "created_at",             :null=>false
    t.datetime "updated_at",             :null=>false
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string   "nome_fantasia"
    t.string   "contato"
    t.string   "email"
    t.string   "logradouro"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
    t.string   "telefone"
    t.string   "fax"
    t.string   "cnpj"
    t.string   "inscricao_estadual"
    t.string   "refenrecias_bancarias"
    t.text     "observacoes"
    t.datetime "created_at",            :null=>false
    t.datetime "updated_at",            :null=>false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.integer  "user_id",         :index=>{:name=>"index_funcionarios_on_user_id"}
    t.date     "data_nascimento"
    t.string   "rg"
    t.string   "cpf"
    t.decimal  "salario"
    t.date     "data_admissao"
    t.date     "data_demissao"
    t.string   "dia_pagamento"
    t.string   "telefone"
    t.string   "celular"
    t.string   "logradouro"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
    t.datetime "created_at",      :null=>false
    t.datetime "updated_at",      :null=>false
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "descricao"
    t.integer  "unidade"
    t.integer  "fornecedor_id",    :index=>{:name=>"index_produtos_on_fornecedor_id"}, :foreign_key=>{:references=>"fornecedors", :name=>"fk_produtos_fornecedor_id", :on_update=>:no_action, :on_delete=>:no_action}
    t.string   "fabricante"
    t.decimal  "preco_custo"
    t.decimal  "margem_lucro"
    t.decimal  "custo_medio"
    t.decimal  "preco_venda"
    t.string   "estoque_atual"
    t.string   "estoque_minimo"
    t.text     "observacoes"
    t.string   "cst"
    t.decimal  "aliquota_ipi"
    t.string   "codigo_ipi"
    t.decimal  "aliquota_icms"
    t.decimal  "base_calculo"
    t.string   "peso_bruto"
    t.string   "peso_liquido"
    t.date     "precisao_chegada"
    t.datetime "created_at",       :null=>false
    t.datetime "updated_at",       :null=>false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  :default=>"", :null=>false, :index=>{:name=>"index_users_on_email", :unique=>true}
    t.string   "encrypted_password",     :default=>"", :null=>false
    t.string   "reset_password_token",   :index=>{:name=>"index_users_on_reset_password_token", :unique=>true}
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default=>0, :null=>false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "locale"
    t.boolean  "locked",                 :default=>false
    t.string   "name"
    t.string   "confirmation_token",     :index=>{:name=>"index_users_on_confirmation_token", :unique=>true}
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts",        :default=>0, :null=>false
    t.string   "unlock_token"
    t.datetime "locked_at"
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.integer "role_id", :index=>{:name=>"fk__roles_users_role_id"}, :foreign_key=>{:references=>"roles", :name=>"fk_roles_users_role_id", :on_update=>:no_action, :on_delete=>:no_action}
    t.integer "user_id", :index=>{:name=>"fk__roles_users_user_id"}, :foreign_key=>{:references=>"users", :name=>"fk_roles_users_user_id", :on_update=>:no_action, :on_delete=>:no_action}
  end
  add_index "roles_users", ["role_id", "user_id"], :name=>"index_roles_users_on_role_id_and_user_id"

  create_table "transportadoras", force: :cascade do |t|
    t.string   "nome"
    t.string   "logradouro"
    t.string   "numero"
    t.string   "complemento"
    t.string   "cidade"
    t.string   "estado"
    t.string   "telfone"
    t.string   "cnpj"
    t.string   "inscricao_estadual"
    t.datetime "created_at",         :null=>false
    t.datetime "updated_at",         :null=>false
  end

end
