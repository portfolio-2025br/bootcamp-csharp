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
-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

USE Filmes
SELECT
    Primeironome,
    Ultimonome,
    Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY Primeironome


-- PrimeiroNome         UltimoNome           Genero
-- -------------------- -------------------- ------
-- Ali                  Astin                F
-- Claire               Danes                F
-- Deborah              Kerr                 F
-- Kate                 Winslet              F
-- Maggie               Gyllenhaal           F
-- Sigourney            Weaver               F

-- (6 rows affected)
