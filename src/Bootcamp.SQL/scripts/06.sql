-- ################################################################################
--  Copyright (c) 2025  Claudio André <portfolio-2025br at claudioandre.slmail.me>
--     ____              __                                _       _________  __
--    / __ )____  ____  / /__________ _____ ___  ____     | |     / / ____/ |/ /
--   / __  / __ \/ __ \/ __/ ___/ __ `/ __ `__ \/ __ \    | | /| / / __/  |   /
--  / /_/ / /_/ / /_/ / /_/ /__/ /_/ / / / / / / /_/ /    | |/ |/ / /___ /   |
-- /_____/\____/\____/\__/\___/\__,_/_/ /_/ /_/ .___/     |__/|__/_____//_/|_|
--                                           /_/
--
-- This program comes with ABSOLUTELY NO WARRANTY; express or implied.
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, as expressed in version 2, seen at
-- https://www.gnu.org/licenses/gpl-2.0.html
-- ################################################################################
-- Scripts SQL
-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

USE Filmes
SELECT
    Filmes.Nome,
    Filmes.Ano,
    Filmes.Duracao
FROM Filmes
WHERE Filmes.Duracao > 100 AND Filmes.Duracao < 150
ORDER BY Filmes.Duracao


-- Nome                                               Ano         Duracao
-- -------------------------------------------------- ----------- -----------
-- Os Suspeitos                                              1995         106
-- Amargo pesadelo                                           1972         109
-- Donnie Darko                                              2001         113
-- De Volta para o Futuro                                    1985         116
-- Blade Runner                                              1982         117
-- Uma Vida sem Limites                                      2004         118
-- Quem Quer Ser um Milionário?                              2008         120
-- Beleza Americana                                          1999         122
-- A Viagem de Chihiro                                       2001         125
-- Gênio Indomável                                           1997         126
-- Um Corpo que Cai                                          1958         128
-- Chinatown                                                 1974         130
-- O Grande Truque                                           2006         130
-- Princesa Mononoke                                         1997         134
-- Aliens, O Resgate                                         1986         137
-- Um Sonho de Liberdade                                     1994         142

-- (16 rows affected)
