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

ActiveRecord::Schema.define(version: 20161209004231) do

  create_table "atores", force: :cascade do |t|
    t.string   "nome"
    t.string   "sexo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "avaliacoes", force: :cascade do |t|
    t.integer  "filme_id"
    t.integer  "cliente_id"
    t.integer  "nota"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_avaliacoes_on_cliente_id"
    t.index ["filme_id"], name: "index_avaliacoes_on_filme_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "telefone"
    t.string   "endereco"
    t.integer  "pessoa_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.index ["pessoa_id"], name: "index_clientes_on_pessoa_id"
  end

  create_table "elencos", force: :cascade do |t|
    t.integer  "filme_id"
    t.integer  "ator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ator_id"], name: "index_elencos_on_ator_id"
    t.index ["filme_id"], name: "index_elencos_on_filme_id"
  end

  create_table "filmes", force: :cascade do |t|
    t.string   "titulo"
    t.string   "genero"
    t.integer  "avaliacao"
    t.text     "sinopse"
    t.integer  "classificacao_etaria"
    t.string   "diretor"
    t.string   "status"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string   "matricula"
    t.integer  "pessoa_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.index ["pessoa_id"], name: "index_funcionarios_on_pessoa_id"
  end

  create_table "pessoas", force: :cascade do |t|
    t.string   "cpf"
    t.string   "nome"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservas", force: :cascade do |t|
    t.integer  "filme_id"
    t.integer  "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_reservas_on_cliente_id"
    t.index ["filme_id"], name: "index_reservas_on_filme_id"
  end

end
