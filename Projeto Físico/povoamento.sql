-- Script: PROJETO GDI - PLANETAS HABITÁVEIS - POVOAMENTO DE TABELAS
-- Script para povoamento de tabelas do projeto da cadeira de Gerenciamento de Dados e Informação

INSERT INTO BuracoNegro (nome, massa) VALUES ('Messier 82', '2');
INSERT INTO BuracoNegro (nome, massa) VALUES ('ALECAROLx-2344+514', '11');
INSERT INTO BuracoNegro (nome, massa) VALUES ('Centaurus A', '7');
INSERT INTO BuracoNegro (nome, massa) VALUES ('EXO 0706.1+5913', '3');
INSERT INTO BuracoNegro (nome, massa) VALUES ('NGC 1277', '42');
INSERT INTO BuracoNegro (nome, massa) VALUES ('Messier 31', '16');
INSERT INTO BuracoNegro (nome, massa) VALUES ('Mrk 180', '15');
INSERT INTO BuracoNegro (nome, massa) VALUES ('NGC 3894', '23');
INSERT INTO BuracoNegro (nome, massa) VALUES ('PKS 2201+044', '25');

INSERT INTO Galaxia (nome) VALUES ('NGC 4472');
INSERT INTO Galaxia (nome) VALUES ('NGC 4649');
INSERT INTO Galaxia (nome) VALUES ('NGC 4552');
INSERT INTO Galaxia (nome) VALUES ('NGC 5055');
INSERT INTO Galaxia (nome) VALUES ('NGC 3623');
INSERT INTO Galaxia (nome) VALUES ('NGC 628');
INSERT INTO Galaxia (nome) VALUES ('NGC 3034');
INSERT INTO Galaxia (nome) VALUES ('NGC 292');
INSERT INTO Galaxia (nome) VALUES ('M33');

INSERT INTO Galaxia_Eliptica (semieixo_maior, semieixo_menor, dist_focal) VALUES ('57', '44', '30');
INSERT INTO Galaxia_Eliptica (semieixo_maior, semieixo_menor, dist_focal) VALUES ('83', '51', '41');
INSERT INTO Galaxia_Eliptica (semieixo_maior, semieixo_menor, dist_focal) VALUES ('44', '12', '15');

INSERT INTO Galaxia_Espiral (raio) VALUES ('63');
INSERT INTO Galaxia_Espiral (raio) VALUES ('52');
INSERT INTO Galaxia_Espiral (raio) VALUES ('78');

INSERT INTO Galaxia_Irregular (formato) VALUES ('Irr-2');
INSERT INTO Galaxia_Irregular (formato) VALUES ('Irr-2');
INSERT INTO Galaxia_Irregular (formato) VALUES ('Irr-1');

INSERT INTO SistemaSolar (nome, qtd_plan, qtf_est) VALUES ('Apolo', '8', '1');
INSERT INTO SistemaSolar (nome, qtd_plan, qtf_est) VALUES ('Baco', '3', '1');
INSERT INTO SistemaSolar (nome, qtd_plan, qtf_est) VALUES ('Carmenta', '5', '1');
INSERT INTO SistemaSolar (nome, qtd_plan, qtf_est) VALUES ('Fauno', '5', '1');
INSERT INTO SistemaSolar (nome, qtd_plan, qtf_est) VALUES ('Jano', '12', '1');

INSERT INTO Estrela (nome, raio, massa, tipo) VALUES ('Vulcano', '695', '', 'amarela');
INSERT INTO Estrela (nome, raio, massa, tipo) VALUES ('Liber', '521', '', 'amarela');
INSERT INTO Estrela (nome, raio, massa, tipo) VALUES ('Minerva', '895', '', 'amarela');
INSERT INTO Estrela (nome, raio, massa, tipo) VALUES ('Pomona', '568', '', 'amarela');
INSERT INTO Estrela (nome, raio, massa, tipo) VALUES ('Vertumno', '790', '', 'amarela');

INSERT INTO Financiamento (valor) VALUES ('53000000');
INSERT INTO Financiamento (valor) VALUES ('44000000');

INSERT INTO Empresa (cad_financiamento, nome) VALUES ('7111', 'NAZA');
INSERT INTO Empresa (cad_financiamento, nome) VALUES ('7122', 'AZA');

INSERT INTO Pesquisa (titulo, data_inicio, data_fim, descricao) VALUES ('Habita-se', TO_DATE('12/03/2016','DD/MM/YYYY'), TO_DATE('12/03/2034','DD/MM/YYYY'), 'Pesquisa com o objetivo de encontrar planetas habitáveis para o futuro');
INSERT INTO Pesquisa (titulo, data_inicio, data_fim, descricao) VALUES ('Habitat Planet', TO_DATE('01/09/2013','DD/MM/YYYY'), TO_DATE('01/09/2029','DD/MM/YYYY'), 'Pesquisa com o objetivo de encontrar planetas habitáveis próximos a terra');

INSERT INTO Pesquisador (nome, equipe) VALUES ('Ana Bolizzant', 'Alfa');
INSERT INTO Pesquisador (nome, equipe) VALUES ('Trapp Lirrow', 'Alfa');
INSERT INTO Pesquisador (nome, equipe) VALUES ('Rick Business', 'Beta')
INSERT INTO Pesquisador (nome, equipe) VALUES ('Xi Mu', 'Beta')
INSERT INTO Pesquisador (nome, equipe) VALUES ('Eladio Maciot', 'Gama')

INSERT INTO Instituicao (nome, local) VALUES ('UFPE', 'Pernambuco');
INSERT INTO Instituicao (nome, local) VALUES ('UFBA', 'Bahia')
INSERT INTO Instituicao (nome, local) VALUES ('UFRJ', 'Rio de Janeiro')
INSERT INTO Instituicao (nome, local) VALUES ('UFMG', 'Minas Gerais')

INSERT INTO Elemento (formula, nome) VALUES ('N', 'Nitrogênio');
INSERT INTO Elemento (formula, nome) VALUES ('O', 'Oxigênio');
INSERT INTO Elemento (formula, nome) VALUES ('CO2', 'Gás carbônico');
INSERT INTO Elemento (formula, nome) VALUES ('H2S', 'Gás sulfídrico');

INSERT INTO Planeta (nome, massa, raio, niv_radicao, temp_media, amp_termica, dist_terra, pressao) VALUES ('Vesta', '6', '6371', '3', '15', '0.4', '54', '101.325');
INSERT INTO Planeta (nome, massa, raio, niv_radicao, temp_media, amp_termica, dist_terra, pressao) VALUES ('Cupido', '4', '3455', '4', '17', '0.5', '34', '101.325');
INSERT INTO Planeta (nome, massa, raio, niv_radicao, temp_media, amp_termica, dist_terra, pressao) VALUES ('Telure', '5', '5674', '3', '11', '0.5', '76', '101.325');
INSERT INTO Planeta (nome, massa, raio, niv_radicao, temp_media, amp_termica, dist_terra, pressao) VALUES ('Flora', '5', '4567', '5', '13', '0.4', '241', '101.325');
INSERT INTO Planeta (nome, massa, raio, niv_radicao, temp_media, amp_termica, dist_terra, pressao) VALUES ('Juno', '7', '6854', '6', '15', '0.6', '30', '120.325');

INSERT INTO Lua (qtd, nome, massa, dist_planeta, lua_primaria) VALUES ( '1', 'Io', '0.8', '384', 'Io');
INSERT INTO Lua (qtd, nome, massa, dist_planeta, lua_primaria) VALUES ( '3', 'Europa, Ganimedes, Calisto', '1, 0.6, 1,2', '435, 367, 564', 'Europa');
INSERT INTO Lua (qtd, nome, massa, dist_planeta, lua_primaria) VALUES ( '2', 'Temisto, lisiteia', '2, 1', '455, 332', 'Temisto');
INSERT INTO Lua (qtd, nome, massa, dist_planeta, lua_primaria) VALUES ( '1', 'Leda', '1', '354', 'Leda');
INSERT INTO Lua (qtd, nome, massa, dist_planeta, lua_primaria) VALUES ( '1', 'Hismalia', '1', '411', 'Hismalia');

INSERT INTO Trabalha (data_inicio) VALUES (TO_DATE('01/04/2022','DD/MM/YYYY'));
INSERT INTO Trabalha (data_inicio) VALUES (TO_DATE('01/05/2022','DD/MM/YYYY'));

INSERT INTO CompAtmosferica (percentual) VALUES ('78');
INSERT INTO CompAtmosferica (percentual) VALUES ('21');
INSERT INTO CompAtmosferica (percentual) VALUES ('0.035');
INSERT INTO CompAtmosferica (percentual) VALUES ('0.000009');

INSERT INTO Recebe (data_incio, duracao) VALUES (TO_DATE('027/03/2020','DD/MM/YYYY'), '12');
INSERT INTO Recebe (data_incio, duracao) VALUES (TO_DATE('15/12/2018','DD/MM/YYYY'), '12');