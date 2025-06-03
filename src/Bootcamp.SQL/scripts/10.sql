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
-- 10 - Buscar o nome do filme e o gênero

USE Filmes
SELECT
    Filmes.Nome,
    Generos.Genero
FROM Filmesgenero
INNER JOIN Filmes ON Filmesgenero.Idfilme = Filmes.Id
INNER JOIN Generos ON Filmesgenero.Idgenero = Generos.Id

-- Nome                                               Genero
-- -------------------------------------------------- --------------------
-- Aliens, O Resgate                                  Ação
-- Amargo pesadelo                                    Aventura
-- Lawrence da Arábia                                 Aventura
-- Princesa Mononoke                                  Animação
-- Noivo Neurótico, Noiva Nervosa                     Comédia
-- Os Suspeitos                                       Crime
-- Um Sonho de Liberdade                              Crime
-- Os Sete Samurais                                   Drama
-- De Volta para o Futuro                             Drama
-- Trainspotting - Sem Limites                        Drama
-- Quem Quer Ser um Milionário?                       Drama
-- Os Inocentes                                       Horror
-- Uma Vida sem Limites                               Musical
-- De Olhos Bem Fechados                              Mistério
-- A Viagem de Chihiro                                Mistério
-- Um Corpo que Cai                                   Mistério
-- Beleza Americana                                   Romance
-- Blade Runner                                       Suspense
-- O Franco Atirador                                  Guerra

-- (19 rows affected)
