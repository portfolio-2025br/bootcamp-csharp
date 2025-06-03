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
-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

USE Filmes
SELECT
    Primeironome,
    Ultimonome,
    Genero
FROM Atores
WHERE Genero = 'M'


-- PrimeiroNome         UltimoNome           Genero
-- -------------------- -------------------- ------
-- James                Stewart              M
-- Peter                OToole               M
-- Robert               DeNiro               M
-- Harrison             Ford                 M
-- Stephen              Baldwin              M
-- Jack                 Nicholson            M
-- Mark                 Wahlberg             M
-- Woody                Allen                M
-- Tim                  Robbins              M
-- Kevin                Spacey               M
-- Robin                Williams             M
-- Jon                  Voight               M
-- Ewan                 McGregor             M
-- Christian            Bale                 M
-- Dev                  Patel                M
-- David                Aston                M

-- (16 rows affected)
