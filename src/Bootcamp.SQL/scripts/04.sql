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
-- 4 - Buscar os filmes lançados em 1997

USE Filmes
SELECT
    Filmes.Nome,
    Filmes.Ano,
    Filmes.Duracao
FROM Filmes
WHERE Filmes.Ano = 1997


-- Nome                                               Ano         Duracao
-- -------------------------------------------------- ----------- -----------
-- Boogie Nights - Prazer Sem Limites                        1997         155
-- Princesa Mononoke                                         1997         134
-- Titanic                                                   1997         194
-- Gênio Indomável                                           1997         126

-- (4 rows affected)
