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
-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

USE Filmes
SELECT
    Filmes.Nome,
    Filmes.Ano,
    Filmes.Duracao
FROM Filmes
ORDER BY Filmes.Ano


-- Nome                                               Ano         Duracao
-- -------------------------------------------------- ----------- -----------
-- Os Sete Samurais                                          1954         207
-- Um Corpo que Cai                                          1958         128
-- Os Inocentes                                              1961         100
-- [...]
-- (28 rows affected)
