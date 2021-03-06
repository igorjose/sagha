# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
 ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
   inflect.irregular 'orgao', 'orgaos'
   inflect.irregular 'orgao_software', 'orgao_softwares'
   inflect.irregular 'orgao_impressora', 'orgao_impressoras'
   inflect.irregular 'informacao_pessoal', 'informacoes_pessoais'
   inflect.irregular 'cargo', 'cargos'
   inflect.irregular 'equipamento', 'equipamentos'
   inflect.irregular 'orgao_equipamento', 'orgao_equipamentos'
   inflect.irregular 'orgao_sistema', 'orgao_sistemas'
   inflect.irregular 'orgao_sistema_proprio', 'orgao_sistemas_proprios'
   inflect.irregular 'servidor', 'servidores'
   inflect.irregular 'informacao_ged', 'informacoes_ged'
   inflect.irregular 'projeto_ti', 'projetos_ti'
   inflect.irregular 'informacao_site', 'informacao_sites'
   inflect.irregular 'videomonitoramento', 'videomonitoramentos'
   inflect.irregular 'orcamento_ti', 'orcamentos_ti'
   inflect.irregular 'outra_informacao', 'outras_informacoes'
   inflect.irregular 'treinamento_ti', 'treinamentos_ti'
   inflect.irregular 'demanda_videomonitoramento', 'demanda_videomonitoramentos'
#   inflect.uncountable %w( fish sheep )
 end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
