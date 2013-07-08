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

ActiveRecord::Schema.define(version: 20130708160753) do

  create_table "cargos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "demanda_videomonitoramentos", force: true do |t|
    t.integer  "qtd_camera"
    t.string   "obj_videomonitoramento"
    t.string   "infra_monitoramento"
    t.boolean  "previsto_orcamento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orgao_id"
  end

  create_table "desktops", force: true do |t|
    t.integer  "qtd_funcionando"
    t.integer  "qtd_extra"
    t.integer  "qtd_defeito"
    t.string   "descricao_defeito"
    t.integer  "qtd_emprestado"
    t.string   "lugar_emprestado"
    t.integer  "qtd_garantia"
    t.boolean  "tem_contrato_locacao"
    t.integer  "qtd_alugados"
    t.string   "descricao_locacao"
    t.boolean  "tem_contrato_manutencao"
    t.integer  "qtd_manutencao"
    t.string   "descricao_manutencao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orgao_id"
  end

  create_table "equipamentos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "informacao_sites", force: true do |t|
    t.boolean  "possui_site"
    t.string   "responsavel_tecnico"
    t.text     "servicos_oferecidos"
    t.string   "local_hospedado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orgao_id"
  end

  create_table "informacoes_ged", force: true do |t|
    t.boolean  "processo_digitalizacao"
    t.integer  "numero_digitalizacao"
    t.boolean  "documentos_indexados"
    t.boolean  "hospedado_sepog"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orgao_id"
  end

  create_table "informacoes_pessoais", force: true do |t|
    t.integer  "cargo_id"
    t.string   "nome"
    t.string   "telefone"
    t.string   "celular_cooperativo"
    t.string   "celular_pessoal"
    t.string   "email_cooperativo"
    t.string   "email_pessoal"
    t.string   "tipo_contratacao"
    t.string   "empresa"
    t.date     "vigencia_contrato"
    t.boolean  "pode_renovar"
    t.string   "nivel_escolaridade"
    t.text     "mini_curriculo"
    t.text     "experiencia"
    t.text     "cursos"
    t.text     "certificacoes"
    t.text     "conhecimentos_adicionais"
    t.text     "observacoes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orgao_id"
  end

  create_table "orcamentos_ti", force: true do |t|
    t.integer  "orcamento_ti"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orgao_id"
  end

  create_table "orgao_equipamentos", force: true do |t|
    t.integer  "orgao_id"
    t.integer  "equipamento_id"
    t.integer  "qtd_funcionando"
    t.integer  "qtd_defeito"
    t.text     "descricao_defeito"
    t.integer  "qtd_extra"
    t.integer  "qtd_emprestado"
    t.integer  "qtd_alugado"
    t.integer  "qtd_garantia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orgao_impressoras", force: true do |t|
    t.integer  "orgao_id"
    t.string   "tipo"
    t.integer  "funcionando"
    t.integer  "defeituosas"
    t.text     "detalhes_defeituosas"
    t.integer  "extras"
    t.integer  "emprestadas"
    t.text     "detalhes_emprestadas"
    t.integer  "proprias"
    t.integer  "alugadas"
    t.integer  "em_garantia"
    t.boolean  "tem_contrato_locacao"
    t.boolean  "tem_contrato_manutencao"
    t.text     "detalhes_contrato_manutencao"
    t.text     "detalhes_contrato_locacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orgao_impressoras", ["orgao_id", "tipo"], name: "index_orgao_impressoras_on_orgao_id_and_tipo", unique: true

  create_table "orgao_sistemas", force: true do |t|
    t.integer  "orgao_id"
    t.string   "nivel_implantacao"
    t.integer  "qtd_consulta"
    t.integer  "qtd_cadastro"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sistema_id"
  end

  create_table "orgao_sistemas_proprios", force: true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.string   "desenvolvedor"
    t.string   "manutencao"
    t.boolean  "cod_fonte"
    t.text     "descricao_cod_fonte"
    t.string   "lugar_hospedado"
    t.integer  "nr_usuario"
    t.string   "linguagem"
    t.string   "banco"
    t.boolean  "tem_licenca"
    t.boolean  "terceiros_acessando"
    t.string   "responsavel_banco"
    t.string   "nivel_confidencialidade"
    t.string   "nivel_integracao"
    t.boolean  "existe_padroes"
    t.boolean  "existe_ambiente_homologacao"
    t.boolean  "existe_backup_diferenciado"
    t.boolean  "existe_backup"
    t.text     "descricao_backup"
    t.string   "linguagem_banco"
    t.text     "descricao_documentos"
    t.boolean  "possui_manual"
    t.text     "descricao_manual"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "possui_documentos"
    t.integer  "orgao_id"
  end

  create_table "orgao_softwares", force: true do |t|
    t.integer  "orgao_id"
    t.integer  "software_id"
    t.integer  "quantidade"
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

  create_table "outras_informacoes", force: true do |t|
    t.boolean  "recursos_suficientes"
    t.text     "justificar_recursos"
    t.string   "grau_satisfacao"
    t.text     "principais_necessidades"
    t.text     "duvidas_levantamento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orgao_id"
  end

  create_table "projetos_ti", force: true do |t|
    t.string   "nome_projeto"
    t.text     "descricao"
    t.string   "gerente_projeto"
    t.string   "coordenador_tecnico"
    t.string   "valor"
    t.string   "prazo"
    t.boolean  "previsto_orcamento"
    t.text     "observacao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orgao_id"
  end

  create_table "servidores", force: true do |t|
    t.string   "modelo"
    t.string   "fabricante"
    t.string   "sistema_operacional"
    t.string   "arquitetura"
    t.string   "dominio"
    t.string   "processador"
    t.string   "ram"
    t.string   "hd"
    t.string   "hostname"
    t.text     "descricao"
    t.string   "servicos"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orgao_id"
  end

  create_table "sistemas", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "softwares", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orgao_id"
  end

  create_table "treinamentos_ti", force: true do |t|
    t.string   "treinamento"
    t.string   "empresa"
    t.integer  "qtd_pessoa"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orgao_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
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
    t.integer  "orgao_id"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "videomonitoramentos", force: true do |t|
    t.boolean  "possui_cameras"
    t.string   "pertencente_a"
    t.boolean  "atual_videomonitoramento"
    t.boolean  "previsto_videomonitoramento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orgao_id"
  end

end
