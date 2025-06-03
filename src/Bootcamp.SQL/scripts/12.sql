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
-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

USE Filmes
SELECT
    Filmes.Nome,
    Atores.Primeironome,
    Atores.Ultimonome,
    Elencofilme.Papel
FROM Elencofilme
INNER JOIN Atores ON Elencofilme.Idator = Atores.Id
INNER JOIN Filmes ON Elencofilme.Idfilme = Filmes.Id


-- Nome                                               PrimeiroNome         UltimoNome           Papel
-- -------------------------------------------------- -------------------- -------------------- ------------------------------
-- Um Corpo que Cai                                   James                Stewart              John Scottie Ferguson
-- Os Inocentes                                       Deborah              Kerr                 Miss Giddens
-- Lawrence da Arábia                                 Peter                OToole               T.E. Lawrence
-- O Franco Atirador                                  Robert               DeNiro               Michael
-- Blade Runner                                       Harrison             Ford                 Rick Deckard
-- Os Suspeitos                                       Stephen              Baldwin              McManus
-- Boogie Nights - Prazer Sem Limites                 Mark                 Wahlberg             Eddie Adams
-- Noivo Neurótico, Noiva Nervosa                     Woody                Allen                Alvy Singer
-- Princesa Mononoke                                  Claire               Danes                San
-- Um Sonho de Liberdade                              Tim                  Robbins              Andy Dufresne
-- Beleza Americana                                   Kevin                Spacey               Lester Burnham
-- Titanic                                            Kate                 Winslet              Rose DeWitt Bukater
-- Gênio Indomável                                    Robin                Williams             Sean Maguire
-- Amargo pesadelo                                    Jon                  Voight               Ed
-- Trainspotting - Sem Limites                        Ewan                 McGregor             Renton
-- Donnie Darko                                       Maggie               Gyllenhaal           Elizabeth Darko
-- Quem Quer Ser um Milionário?                       Dev                  Patel                Older Jamal
-- Aliens, O Resgate                                  Sigourney            Weaver               Ripley
-- Uma Vida sem Limites                               Kevin                Spacey               Bobby Darin
-- Chinatown                                          Jack                 Nicholson            J.J. Gittes
-- O Grande Truque                                    Christian            Bale                 Alfred Borden

-- (21 rows affected)
