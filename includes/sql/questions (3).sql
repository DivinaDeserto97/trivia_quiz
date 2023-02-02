-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Erstellungszeit: 01. Feb 2023 um 11:29
-- Server-Version: 8.0.31
-- PHP-Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `library`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `topic` enum('music','ch-norris','animals','movies','d-n-d','astronautics','technology','ai','geography','sports','science','informatics','gen-knowledge') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer-1` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer-2` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer-3` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer-4` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer-5` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `questions`
--

INSERT INTO `questions` (`id`, `topic`, `question_text`, `answer-1`, `answer-2`, `answer-3`, `answer-4`, `answer-5`, `correct`) VALUES
(0, 'geography', 'On which continent lies São Paulo?', 'Europe', 'Asia', 'South America', 'Australia', 'North America', 'answer-3'),
(401, 'd-n-d', 'Do you play Dnd?', 'Yes, every friday night!', 'Yes, only once in a while.', 'Yes, On the weekends!', 'No, but I always wanted to.', 'No', 'answer-3'),
(402, 'd-n-d', 'What does DM stand for?\r\n\r\n', 'Dragon Master', 'Dungeon Master', 'Dungeon Maker', 'This term is not used in Dnd', '', 'answer-2'),
(403, 'd-n-d', 'Does PHB stand for Player\'s Handy Book', 'Yes', 'No', ' ', '', '', 'answer-1'),
(404, 'd-n-d', 'Does DMG stand for Dungeon Makers guide?', 'Yes', 'No', '', '', '', 'answer-1'),
(405, 'd-n-d', 'Which of these spells is a zero level wizard spell?', 'Magic missile', 'Heal', 'Orb of Fire', 'Magic missile', 'Detect Magic', 'answer-5'),
(406, 'd-n-d', 'What class, out of this list, is not a class found in the PHB.', 'Figher', 'Bard', 'Cleric', 'Assassin', 'Sorcerer', 'answer-4'),
(407, 'd-n-d', 'Which of the following class\'s does not have access to spells?', 'Ranger', 'Bard', 'Assassin', 'Hexblade', 'Paladin', 'answer-3'),
(408, 'd-n-d', 'Elemenster is the Lord of what dungeon?', 'Underdark', 'Under Mountain', 'The Infanite Abyss', '', '', 'answer-3'),
(409, 'd-n-d', 'How many Hells are there?', '1', '3', '666', 'Its called the Abyss!', 'infinite as new ones are added all the time', 'answer-5'),
(410, 'd-n-d', 'Drizzt Do\'Urn has two scimitars, one name twinkle the other named...', 'Flamesblade', 'Icy death', 'Wizzards Fall', 'Wait, he only uses on scimitar!', '', 'answer-2'),
(411, 'd-n-d', 'You are a twentieth level cleric with a Wisdom of 14. Can you cast 9th level spells?', 'Yes', 'No, You levels not high enough.', 'No, You need more wisdom', 'Only against Undead!', '', 'answer-3'),
(412, 'd-n-d', 'what Edition of Dnd do you play?', '1.0', '4.5', '4.0', '3.0', '5.1e', 'answer-5'),
(413, 'd-n-d', 'At what level does a wizard have 50+ mana?', 'Only sorcerer\'s Use mana!', 'A wizard uses spells per day!', 'Mana? There is no such thing in dnd!', 'At first Level! what a easy question!', '15th', 'answer-3'),
(414, 'd-n-d', 'Ok, you enter a dungeon filled with traps and monsters, what class should you be?', 'Wizard, spells will get me through!', 'Rouge, the sneaky way is the best!', 'Warrior, Grrrrr...', 'Cleric, so I can heal myself!', 'Slaver! Can you say \"Kobold on a stick\"?', 'answer-2'),
(415, 'd-n-d', 'How much, in copper, does a +1 magic enchantment on a longsword cost?', '200', '200000', '80000', '2000', '8000', 'answer-4'),
(416, 'd-n-d', 'Ok now a super easy one, what is an Attack of Opportunity?', 'When you attack a enemy for crossing through you threaed square.', 'ummm... when you take an attack because you brined your DM?', 'When you Attack a creature because it has a lower armor class than you!', '', '', 'answer-1'),
(417, 'd-n-d', 'Druids gain a extraordinary ability that allow them to transform. this is called:', 'Transform', 'Wild shape', 'Polymorph', '', '', 'answer-3'),
(418, 'd-n-d', 'You just found the DECK OF MANY THINGS! What do you do?', 'Put the dangerous artifact down a burry it forever!', 'Pefrom a magic trick!', 'HELL YEA! Draw me 24 cards baby!', 'Sacrifice this character by say you will darw 24 cards.', 'Summon a monster from it using summon monster IV', 'answer-1'),
(419, 'd-n-d', 'You are a first level elf rouge with 1 flaw. Who has more feats, a First level Human fighter or you.', 'The stinkn\' Human!', 'We have the same amount of feats!', 'Um... does eveyone have 2 feat?', 'Me, Me!', '', 'answer-2'),
(420, 'd-n-d', 'Ok, ADnd stands for:\r\n\r\n', 'Association of Dungeons and Dragons', 'Nothing!', 'Advance Dungeons and Dragons', 'None of the above.', '', 'answer-3'),
(421, 'd-n-d', 'Now then, How many races do you have to chose from in dnd? (ALL BOOKS)', '10+', '8', '5', 'Only 6', '4', 'answer-1'),
(422, 'd-n-d', 'Do you think you Know anything about Dnd?', 'FOOLISH MORTAL! I AM THE GM GOD!', 'No, I know nothing!', 'Im just a mear palyer...', '', '', 'answer-1'),
(423, 'd-n-d', 'Ok back to the quiz...\r\nIm a Epic level character, what my level?', '12', '21', '13', '19', '17', 'answer-2'),
(424, 'd-n-d', 'Ok, your a 10th level cleric, Pelor comes to you and tells you you need to change your ways, you...\r\n', 'Shush him away!', 'Duke it out with him!', 'Beg for mercy!', 'Pwn that NoOB!', 'Have a nice chat with him.', 'answer-5'),
(425, 'd-n-d', 'A Nymph is...', 'A Drow', 'A Fey', 'An Elf', 'My Dinner!', 'An Insect', 'answer-2'),
(426, 'd-n-d', 'How long have you been playing Dnd?', '40 years!', '20 years!', 'I stoped playing a while ago!', 'I don\'t Play, I live that!', '0-5 years!', 'answer-4'),
(427, 'd-n-d', 'you are a 10th level cleric with vow of poverty. Which ability have you gained form doing so?', 'Endure Elements!', '+5 on attacks!', 'a suite of bonuses', 'Vow of poverty? Whats That?', 'Nothing until 15th level!', 'answer-3'),
(428, 'd-n-d', 'Why did you take this test?', 'I must know how much I know about dnd!', 'I have no life!', 'A friend told me to!', 'No reason, do I need one?', 'I must prove to someone How much I know about Dnd!', 'answer-4'),
(429, 'd-n-d', 'Ok last real question: Whats the base attack bonus of a 15th level fighter?', ' 15, of course!', '10!', 'ummm... Whats a base attack bonus?', '5!', '30!', 'answer-1'),
(430, 'd-n-d', 'Thank you for taking the Dnd test!', 'Can I have my answers Now?', 'Your very welcome!', 'Whatever Man!', 'wait, Im taking a dnd test?', 'Go away!', 'answer-2');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
