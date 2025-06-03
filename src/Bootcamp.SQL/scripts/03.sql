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
-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

USE Filmes
SELECT
    Filmes.Nome,
    Filmes.Ano,
    Filmes.Duracao
FROM Filmes
WHERE Filmes.Nome = 'De Volta para o Futuro'


-- Nome                                               Ano         Duracao
-- -------------------------------------------------- ----------- -----------
-- De Volta para o Futuro                                    1985         116

-- (1 rows affected)
