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
-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

USE Filmes
SELECT
    Filmes.Ano,
    COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Filmes.Ano
ORDER BY Quantidade DESC


-- Ano         Quantidade
-- ----------- -----------
--        1997           4
--        1999           2
--        2001           2
--        1995           2
--        1996           1
--        2004           1
--        2006           1
--        2008           1
--        2009           1
--        1954           1
--        1958           1
--        1961           1
--        1962           1
--        1972           1
--        1974           1
--        1977           1
--        1978           1
--        1982           1
--        1984           1
--        1985           1
--        1986           1
--        1994           1

-- (22 rows affected)
