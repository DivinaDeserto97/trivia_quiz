-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Erstellungszeit: 21. Feb 2023 um 15:07
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
(101, 'ch-norris', 'Chuck Norris has credits for everything but ____?', 'Director', 'Actor\r\n', 'Writer\r\n', 'Producer', 'Dancer', 'answer-1'),
(102, 'ch-norris', 'Chuck Norris is a card-carrying member of the ______?', 'PTA', 'CIA', 'NRA', 'FBI', 'DEA', 'answer-3'),
(103, 'ch-norris', 'Chuck was born in what state?', 'Oklahoma', 'Texas', 'Alabama', 'California', 'New York', 'answer-1'),
(104, 'ch-norris', 'Before Chuck struck gold in Hollywood, what was his rise to fame?', 'Cowboy', 'Special Forces', 'Martial artist', 'Police Officer', 'Detective', 'answer-3'),
(105, 'ch-norris', 'How many children does Chuck have?', '2', '3', '4', '5', '6', 'answer-4'),
(106, 'ch-norris', 'Chuck has written several books on _____?', 'NRA', 'Christianity', 'Hurricanes', 'Marriage', 'Teaching', 'answer-2'),
(107, 'ch-norris', 'Chuck is a member of the _________ party?', 'Republican', 'Democratic', 'Independent', 'Communist', 'Anarchy', 'answer-1'),
(108, 'ch-norris', 'What branch of the military did Chuck serve?', 'Air Force', 'Army', 'Navy', 'Coast Guard', 'Ranger', 'answer-1'),
(109, 'ch-norris', 'Why did Chuck make martial arts history in 1990?', 'Ranked as a 5th Degree Brown Belt Grand Master.', 'Ranked as a 7th Degree Yellow Belt Grand Master.', 'Ranked as a 9th Degree Purple Belt Grand Master.', 'Ranked as an 8th Degree Black Belt Grand Master.', 'Ranked as an 8th Degree Green Belt Grand Master.', 'answer-4'),
(110, 'ch-norris', 'Chuck’s acting debut was in?', 'Happy Days', 'The Wrecking Crew', 'Delta Force', 'Rambo', 'Texas Ranger', 'answer-2'),
(111, 'ch-norris', 'Where did Chuck’s family move when he was 12 years old?', 'Boulder, CO', 'New York, NY', 'Torrance, CA', 'Dallas, TX', 'Miami,FL', 'answer-3'),
(112, 'ch-norris', 'What is Chuck Norris’s birth name?', 'Jesus May Norris', 'Juan Dave Norris', 'Carlos Ray Norris', 'Cancun Bay Norris', 'Peter Dawg Norris', 'answer-3'),
(113, 'ch-norris', 'Who talked Chuck into transitioning from martial arts instructor to actor?', 'Steve McQueen', 'David Carradine', 'James Dean', 'Clint Eastwood', 'Richard Gere', 'answer-1'),
(114, 'ch-norris', 'Who did Chuck dedicate his ‘Missing in Action’ films to?', 'President Regan', 'Wieland Norris', 'Aaron Norris', 'Kirk Douglas', 'Mark Wahlberg', 'answer-2'),
(115, 'ch-norris', 'Chuck played Bruce Lee’s nemesis in what movie?', 'Way of the Dragon', 'Night of the Dragon', 'Rain of the Dragon', 'Flight of the Dragon', 'Dragon Heart', 'answer-1'),
(116, 'ch-norris', 'Chuck’s first starring role was in what movie?', 'How the West was Won', 'L.A. Confidential', 'Breaker! Breaker!', 'Gunsmoke', 'Total Bang', 'answer-3'),
(117, 'ch-norris', 'The name of Chuck’s character in ‘Black Tigers?', 'John P. Booker', 'John T. Booker', 'John D. Booker', 'John F. Booker', 'Jason B. Ourne', 'answer-2'),
(118, 'ch-norris', 'What is the original title of the movie “Black Tigers?', 'Bad Guys Wear Black', 'Good Guys Wear Black', 'Good Guys Wear Blue', 'Naughty Guys Wear Black', 'Nice Guys Wear Pink', 'answer-2'),
(119, 'ch-norris', 'Chuck has appeared with _____ in a long-running series of cable TV infomercials?', 'Linda Evangelista', 'Christie Brinkley', 'Cindy Crawford', 'Naomi Campbell', 'Whitney Houston', 'answer-2'),
(120, 'ch-norris', 'What is the product Chuck and Christie promoted?', 'Total Gym', 'Get Rich Quick', 'Belly Burn', 'Strawberry Festive', 'Bee Honey', 'answer-1'),
(121, 'ch-norris', 'Chuck created \"Chun Kuk Do\" based on elements from every combat style he knew plus _______?', 'Judo', 'Aikido', 'Tang Soo Do', 'Taekwondo', 'Tai-Chi', 'answer-3'),
(122, 'ch-norris', 'Chun Kuk Do includes a code of honor and rules to live by. How many rules are there?', '3', '5', '7', '10', '15', 'answer-4'),
(123, 'ch-norris', 'In the movie, ‘Force of One” Chuck plays _______?', 'Matt Logan', 'Jason Bourn', 'Harry Jones', 'John McClane', 'Bruce Wayne', 'answer-1'),
(124, 'ch-norris', 'Chuck played ________ in the “Missing in Action” movies.', 'Colonel Johnathan Braddock', 'Colonel James Braddock', 'Colonel Christian Braddock', 'Colonel Stephan Braddock', 'Colonel Lee Braddock', 'answer-2'),
(125, 'ch-norris', 'In the movie “The Delta Force’ Chuck plays ______?', 'Major Jim McCoy', 'Major Kurt McCoy', 'Major John McCoy', 'Major Scott McCoy', 'Major Daniel McCoy', 'answer-4'),
(126, 'ch-norris', 'Chuck appeared in commercials for what American soft drink?', 'Coke', 'Pepsi', 'Mountain Dew', 'Dr. Pepper', 'Vitamin Water', 'answer-3'),
(127, 'ch-norris', 'Norris is a well-known _______?', 'Philanthropist', 'Captain', 'Criminal', 'Restaurant owner', 'Pilot', 'answer-1'),
(128, 'ch-norris', 'Chuck had his own line of ______?', 'Cars', 'Jeans', 'Hats', 'Shirts', 'Shoes', 'answer-2'),
(129, 'ch-norris', 'How many consecutive years did Chuck hold the title of the World Championship in full contact karate?', '3', '4', '5', '6', '8', 'answer-4'),
(130, 'ch-norris', 'Who does Chuck boast is the most famous partner he ever took on in martial arts?', 'Steve McQueen', 'Clint Eastwood', 'Bruce Lee', 'Jet Li', 'Mike Tyson', 'answer-3'),
(201, 'animals', 'Which order does the guinea pig belong to?', 'Bird\r\n', 'Dogs\r\n', 'Pigs\r\n', 'Rodents\r\n', 'Cats', 'answer-4'),
(202, 'animals', 'What is also a term for \"Orcas\"?\r\n\r\n', 'Dagger whales\r\n', 'Saber whales\r\n', 'Killer whales\r\n', 'Foil whales', 'Sword whales', 'answer-3'),
(203, 'animals', 'Which animal does not exist?', 'Elephant\r\n', 'Elephant seal\r\n', 'Sea ​​giraffe\r\n', 'Sea ​​lion\r\n', 'Leopard seal', 'answer-3'),
(204, 'animals', 'How many arms does an octopus have?', '4', '6', '8', '3', '7', 'answer-3'),
(205, 'animals', 'What is an animal here?', 'Mengo', 'Mango\r\n', 'Manga\r\n', 'Menga\r\n', 'Mungo', 'answer-5'),
(206, 'animals', 'Which of these animals belongs to the camels?', 'Lama\r\n\r\n', 'Zebra\r\n', 'Pony\r\n', 'Wild donkey', 'Sorcerer', 'answer-1'),
(207, 'animals', 'Blue lips, palate and tongue are special features of which dog breed?\r\n', 'Jack Russell Terrier\r\n', 'Afghan Hound\r\n', 'Assassin Hound', 'Basset Hound\r\n', 'Chow chow', 'answer-5'),
(208, 'animals', 'What is not a bird but a disease?', 'the green star\r\n', 'the cabbage raven\r\n', 'the blue tit\r\n', 'the great tit', 'the red tit', 'answer-1'),
(210, 'animals', 'What is the shark\'s dorsal fin called?', 'Rus\r\n', 'Dane\r\n', 'Swede\r\n', 'Fin\r\n', 'Norwegian', 'answer-4'),
(211, 'animals', 'What is a female wild boar called?', 'Saw\r\n', 'Bache\r\n', 'Bream\r\n', 'Sow\r\n', 'Boar', 'answer-2'),
(212, 'animals', 'Which is the fastest land mammal in the world?', 'Cheetah\r\n', 'Tiger\r\n', 'Lion\r\n', 'Jaguar\r\n', 'Ozelot', 'answer-1'),
(213, 'animals', 'When birds look after their eggs by nest warmth, is this called ...?', 'Sleep\r\n', 'Snack\r\n', 'Breeding season\r\n', 'Roasting time\r\n', 'Bedtime', 'answer-3'),
(214, 'animals', 'Which animals did Konrad Lorenz primarily use for his behavioral research?', 'Bird', 'Dolphins\r\n', 'Dogs\r\n', 'Cats\r\n', 'Greylag geese', 'answer-5'),
(215, 'animals', 'Which is not a breed of cat?', 'Persian\r\n', 'Chihuahua\r\n', 'Siam\r\n', 'Abyssinian\r\n', 'House Cat', 'answer-2'),
(216, 'animals', 'Beavers are known for building distinctive...?', 'Dam\r\n', 'Castles\r\n', 'Castlesrock\r\n', 'Churches\r\n', 'Country estates', 'answer-2'),
(217, 'animals', 'Which of the following birds is not a sea or water bird?', 'Alk\r\n', 'Kiwi\r\n', 'Guillemot\r\n', 'Gull\r\n', 'Penguin', 'answer-2'),
(218, 'animals', 'Which insects are also incorrectly called \"white ants\"?', 'Bulldog ants\r\n', 'Red ants in winter plumage\r\n', 'Termites\r\n', 'Grilling\r\n', 'Carpenter ants', 'answer-3'),
(219, 'animals', 'Who has a beak and two wings?', 'Warbler\r\n', 'Hay brake\r\n', 'Herb fly\r\n', 'Flower snake\r\n', 'Fly', 'answer-1'),
(220, 'animals', 'What kind of animal is the lady-in-waiting?', 'Bulfly\r\n', 'Barn owl\r\n', 'Crested chicken\r\n', 'Butterfly fish\r\n', 'Butterfly', 'answer-5'),
(221, 'animals', 'What do bats, moles and dolphins have in common?', 'All are mammals.\r\n', 'All are cold-blooded animals.\r\n', 'All are loners.\r\n', 'All are herd animals.', 'All are animals', 'answer-1'),
(222, 'animals', 'What do butterflies smell with?', 'With the wings\r\n', 'With the nose\r\n', 'With the mouth\r\n', 'With the feelers\r\n', 'With the eye', 'answer-4'),
(223, 'animals', 'Which animal do motorists see on the deer crossing warning signs in Sweden?', 'a Cat\r\n', 'a Bear\r\n', 'a Moose\r\n', 'a Bison\r\n', 'a Husky', 'answer-3'),
(224, 'animals', 'What is a silverback?', 'An adult, strong male gorilla\r\n\r\n', 'The leader of a pride of lions\r\n\r\n', 'Another name for a skunk\r\n\r\n', 'An old graying kangaroo', 'An adult, strong female gorilla', 'answer-1'),
(225, 'animals', 'Which bird family does the magpie belong to?', 'Travel birds\r\n', 'Migratory birds\r\n', 'Birds of prey\r\n', 'Corvids\r\n', 'Tropical birds', 'answer-4'),
(226, 'animals', 'Where do the largest wild brown bears live?', 'Arctic\r\n', 'South America\r\n', 'North America\r\n', 'Asia\r\n', 'Europe', 'answer-3'),
(227, 'animals', 'The \"Black Widow\" is a ...?', 'Snake\r\n', 'Spider\r\n', 'Line\r\n', 'Polyps\r\n', 'Octopus', 'answer-2'),
(228, 'animals', 'Water striders are...?', 'Cat\r\n', 'Birds\r\n', 'Fish\r\n', 'Insects\r\n', 'Mammals', 'answer-4'),
(229, 'animals', 'Which is the most species-rich group of animals?', 'Birds\r\n', 'Insects\r\n', 'Reptiles\r\n', 'Mammals\r\n', 'Fish', 'answer-2'),
(230, 'animals', 'Which cell types belong to the immune system of vertebrates?', 'Hepatocytes\r\n', 'Fibroblasts\r\n', 'Lymphocytes\r\n', 'Ganglion cells\r\n', 'Cells', 'answer-3'),
(231, 'animals', 'What type of fish is there?', 'Powder roach\r\n', 'Comb trout\r\n', 'Mirror carp\r\n', 'Cream pike', 'Coffe pike', 'answer-3'),
(232, 'animals', 'Which of these sea creatures doesn\'t breathe with one lung?', 'Whale shark\r\n', 'Gray seal\r\n', 'Sea ​​otter\r\n', 'Dolphin\r\n', 'Sea Dog', 'answer-1'),
(233, 'animals', 'What do adders mainly eat?', 'Rabbits, young deer\r\n\r\n', 'Fruit and vegetables\r\n\r\n', 'Frogs and small mammals\r\n\r\n', 'Ants and worms', 'Ants', 'answer-3'),
(234, 'animals', 'Where can you find zebras in the wild?', 'Africa\r\n', 'South America\r\n', 'Asia\r\n', 'Australia', 'Europs', 'answer-1'),
(235, 'animals', 'What do you call young pigs?', 'Human\r\n', 'Puppies\r\n', 'Piglet\r\n', 'Foal\r\n', 'Drake', 'answer-3'),
(236, 'animals', 'A baboon living in Africa and Egypt is called ...?', 'Coolman Baboon\r\n', 'Hamadryas Baboon\r\n', 'Scrub baboon\r\n', 'Blossom Baboon\r\n', 'Poncho baboon', 'answer-1'),
(237, 'animals', 'Many animal species have their ecological ...?', 'Door\r\n', 'Corner\r\n', 'Niche\r\n', 'Swath\r\n', 'Broom closet', 'answer-2'),
(238, 'animals', 'The dung beetle family includes the...?', 'quack quack\r\n\r\n', 'quack\r\n\r\n', 'pill turner\r\n', 'dental plumber', 'pill rounder', 'answer-3'),
(239, 'animals', 'What color are the eyes of an albino?', 'Black\r\n', 'Green\r\n', 'Blue\r\n', 'Red\r\n', 'Gray', 'answer-4'),
(240, 'animals', 'What genus do deer belong to?', 'Dogs\r\n', 'Cats\r\n', 'Predators\r\n', 'Ruminant\r\n', 'Bears', 'answer-4'),
(241, 'animals', 'Which animal has nostrils?', 'Snake\r\n', 'Tit\r\n', 'Frog\r\n', 'Horse\r\n', 'Line', 'answer-4'),
(301, 'movies', 'Who directed the film \"Pulp Fiction\"?\r\n', 'Martin Scorsese', 'Quentin Tarantino', 'Steven Spielberg', '', '', 'answer-2'),
(302, 'movies', 'Who did the snake dance in \"From Dusk Till Dawn\"?\r\n', 'Salma Hayek', 'Penelope Cruz', 'Sofia Vergara', '', '', 'answer-1'),
(303, 'movies', 'Who played the lead role in the movie \"The Godfather\"?\r\n', 'Marlon Brando', 'Al Pacino', 'Robert De Niro', '', '', 'answer-1'),
(304, 'movies', 'Who directed the film \"The Shawshank Redemption\"?\r\n', 'Martin Scorsese', 'Frank Darabont', 'Steven Spielberg', '', '', 'answer-2'),
(305, 'movies', 'What is the title of the first Star Wars film, released in 1977?\r\n', 'A New Hope', 'The Empire Strikes Back', 'Return of the Jedi', '', '', 'answer-1'),
(306, 'movies', 'Which actor had his Hollywood breakthrough with the film \"Easy Rider\"? \r\n', 'Marlon Brando', 'Roberto de Niro ', 'Jack Nicholson', '', '', 'answer-3'),
(307, 'movies', 'Who directed the film \"Avatar\"?\r\n', 'Frank Darabont', 'James Cameron', 'Steven Spielberg', '', '', 'answer-2'),
(308, 'movies', 'What is the title of the first Avengers film, released in 2012?', 'Avengers: Infinity War', 'Avengers: Endgame', 'The Avengers', '', '', 'answer-3'),
(309, 'movies', 'What is the name of the ring at the center of the story in \"The Lord of the Rings\"?', 'The One Ring', 'The Ring of Power', 'The Golden Ring', '', '', 'answer-1'),
(310, 'movies', 'Who directed the film \"Interstellar\"?', 'Christopher Nolan', 'Stanley Kubrick', 'George Lucas', '', '', 'answer-1'),
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
(430, 'd-n-d', 'Thank you for taking the Dnd test!', 'Can I have my answers Now?', 'Your very welcome!', 'Whatever Man!', 'wait, Im taking a dnd test?', 'Go away!', 'answer-2'),
(501, 'astronautics', 'What is the primary propulsion method used by most spacecrafts for interplanetary travel?', 'Chemical rockets', 'Nuclear propulsion', 'Solar sails', 'Ion thrusters', '', 'answer-1'),
(502, 'astronautics', 'Which Apollo mission did not land on the Moon?', 'Apollo 11', 'Apollo 12', 'Apollo 13', 'Apollo 14', '', 'answer-3'),
(503, 'astronautics', 'What is the name of the first privately-funded spacecraft to reach orbit?', 'Space Shuttle', 'SpaceX\r\n', 'Apollo\r\n', 'Orion', '', 'answer-2'),
(504, 'astronautics', 'What is the largest planet in our solar system?', 'Earth', 'Jupiter', 'Saturn', 'Uranus', '', 'answer-2'),
(505, 'astronautics', 'Which of the following is not one of the three main components of the International Space Station?', 'Columbus laboratory', 'Kibo laboratory', 'Harmony module', 'Atlantis shuttle', '', 'answer-4'),
(506, 'astronautics', 'What is the name of the first spacecraft to fly by Pluto?', 'New Horizons', 'Pioneer', 'Voyager', 'Mariner', '', 'answer-1'),
(507, 'astronautics', 'What is the name of the first human to orbit the Earth?', 'Neil Armstrong', 'Yuri Gagarin', 'John Glenn', 'Buzz Aldrin', '', 'answer-1'),
(508, 'astronautics', 'What is the term for the study of the behavior, structure, and properties of matter and energy in space?', 'Astrophysics', 'Astrometry', 'Astronomy', 'Aerodynamics\r\n', '', 'answer-1'),
(509, 'astronautics', 'In what year was the first privately-funded spacecraft to transport cargo to the International Space Station launched?', '2005', '2012', '2018', '2020', '', 'answer-2'),
(510, 'astronautics', 'What is the primary method used to study the properties of distant stars and galaxies?', 'Spectroscopy', 'Interferometry', 'Astrometry', 'Photometry', '', 'answer-1'),
(801, 'geography', 'On which continent lies São Paulo?', 'Europe', 'Asia', 'South America', 'Australia', 'North America', 'answer-3'),
(802, 'geography', 'Where would you find the Ore Mountains?', 'Greece and Bulgaria', 'Spain and France', 'Czech Republic and Germany', 'Norway and Sweden', 'Switzerland and Austria', 'answer-3'),
(803, 'geography', 'The Pyrenees-Mediterranean region is located along the border of which two countries?', 'France and Italy', 'Norway and Sweden', 'France and Spain', 'Spain and Portugal', 'Switzerland and Austria', 'answer-3'),
(804, 'geography', 'Where would you find the Tornio River?', 'France and Italy', 'Italy and Slovenia', 'Sweden and Finland', 'Austria and Italy', 'Switzerland and Italy', 'answer-3'),
(805, 'geography', 'Alaska used to be part of Russia.', 'True', 'False', '', '', '', 'answer-1'),
(806, 'geography', 'Victoria is the capital of the Republic of Seychelles.', 'True', 'False', '', '', '', 'answer-1'),
(807, 'geography', 'What port on the Atlantic Ocean is the capital and largest city of Guinea?', 'Baku', 'Dhaka', 'Conakry', 'Bujumbura', '', 'answer-3'),
(809, 'geography', 'What is the name of the capital city of Latvia?', 'Tallinn', 'Lublin', 'Riga', 'Vilnius', '', 'answer-3'),
(810, 'geography', 'Tegucigalpa is the capital and largest city of this country:', 'Bolivia', 'Peru', 'Honduras', '', '', 'answer-3'),
(811, 'geography', 'Where were the Boer Republics located?', 'In the Netherlands', 'They were early Puritan settlements in the eastern North America', 'Across South Africa', 'Minor British isles', 'In Namibia', 'answer-3'),
(812, 'geography', 'Where was the monastic state of the Teutonic Knights located?', 'Seperated spots on modern day German territory', 'Southern France (Provance)', 'Northern Poland, southern Lithuania, part of Latvia and the Russian enclave of Kaliningrad', 'Malta and other islands on the Mediterranean', '', 'answer-3'),
(813, 'geography', 'Which independent country was not a Soviet republic?', 'Georgia', 'Albania', 'Northern Poland, southern Lithuania, part of Latvia and the Russian enclave of Kaliningrad', 'Lithuania', '', 'answer-3'),
(814, 'geography', 'Myanmar is a south-eastern Asian country. Under which name was it known before a military junta took over?', 'Siam', 'Bhutan', 'Burma', 'Noth Vietnam', '', 'answer-3'),
(815, 'geography', 'By the end of the 16th century, a country called Commonwealth of Both Nations covered almost 1 million square kilometers of Europe. Which two countries formed it?', 'Sweden and Denmark', ' Russia and Ukraine', 'Poland and Lithuania', 'Austria and Hungary', '', 'answer-3'),
(816, 'geography', 'The African kingdom of Dahomey was powerful in the XVIII century. Which modern day country did it cover?', 'Burkina Faso', 'DR Congo', 'Benin', 'Ghana', '', 'answer-3'),
(817, 'geography', 'Which of the following oceans is the worlds largest?', 'Indian Ocean', 'Arctic Ocean', 'Pacific Ocean', 'Atlantic Ocean', '', 'answer-3'),
(818, 'geography', 'On which of the Canary Islands is the Mount Teide volcano located?', 'Gran Canaria', 'Fuerteventura', 'Tenerife', 'La Palma', '', 'answer-3'),
(819, 'geography', 'On which of the Philippine islands is the active Taal Volcano located?', 'Mindanao', 'Visayas', 'Luzon', 'La Palma', 'None of these', 'answer-3'),
(820, 'geography', 'What is the name of the dangerous active volcano located in the Western Highlands of Guatemala?', 'Santa Lucia', 'Santa Fernanda', 'Santa Maria', 'Santa Beatrice', 'None of these', 'answer-3'),
(821, 'geography', 'This Russian volcano, located on the Kamchatka Peninsula, is one of the most active volcanoes on the planet:', 'Elbrus', 'Anik Mountain', 'Avachinsky', 'Sikhote-Alin', 'None of these', 'answer-3'),
(822, 'geography', 'The Santorini volcanic islands are part of what European country?', 'Spain', 'Italy', 'Greece', 'Denmark', 'None of these', 'answer-3'),
(823, 'geography', 'What is the name of the largest volcano on Earth in terms of area?', 'Taal Volcano', 'Mauna Kea', 'Mauna Loa', 'Mount Etna', 'None of these', 'answer-3'),
(824, 'geography', 'Luxembourg is bordered by all of the following nations except this one.', 'Belgium', 'France', 'Netherlands', 'Germany', '', 'answer-3'),
(825, 'geography', ' What sea borders Egypt to the east?', 'Black Sea', 'Mediterranean Sea', 'Red Sea', 'Yellow Sea', 'None of these', 'answer-3'),
(826, 'geography', 'The islands of the Pacific are collectively termed Oceania. Oceania is divided into several sub-groupings. In which of these is New Guinea located?', 'Polynesia', 'Micronesia', 'Melanesia', 'None of these', '', 'answer-3'),
(827, 'geography', 'What is the capital city of the country of Papua New Guinea?', 'Madang', 'Wau', 'Port Moresby', 'Lae', 'None of these', 'answer-3'),
(828, 'geography', 'The island of New Guinea was named after the country of Guinea. Which is Guinea located?', 'In the Pacific Ocean', 'Asia', 'Africa', 'South America', 'None of these', 'answer-3'),
(829, 'geography', 'Madagascar is the worlds largest producer and exporter of what product?', 'Sugarcane', 'Rice', 'Vanilla', 'Tapioca', 'None of these', 'answer-3'),
(830, 'geography', 'In what country is the Angel Falls, the highest waterfall on the planet, located?', 'Brazil', 'Argentina', 'Venezuela', 'Colombia', 'None of these', 'answer-3'),
(831, 'geography', 'The national motto of this South American country is Libertad o muerte, Spanish for Liberty or Death:', 'Argentina', 'Brazil', 'Uruguay', 'Venezuela', 'None of these', 'answer-3'),
(832, 'geography', 'Which of the following places in Greece is NOT an island?', 'Alonissos', 'Ithaka', 'Kavala', 'Kythira', '', 'answer-3'),
(1001, 'science', 'What is the largest animal that inhabits the Earth?\r\n', 'The blue whale.', 'Elephant', 'Giraffe', '', '', 'answer-1'),
(1002, 'science', 'Birds evolved from dinosaurs. True or false? ', 'True', 'False', '', '', '', 'answer-1'),
(1003, 'science', 'Which organ of the human body consumes the most energy?', 'The brain', 'The heart', 'The lungs', '', '', 'answer-1'),
(1004, 'science', 'In which galaxy is the Earth located?', 'In the Milky Way', 'In Narnia', 'In Andromeda', '', '', 'answer-1'),
(1005, 'science', 'What is the chemical formula of water?', 'O2H', 'H1C', 'H2O', '', '', 'answer-3'),
(1006, 'science', 'Are humans carnivores, omnivores or herbivores?', 'Hervibores', 'Omnivores', 'Carnivores', '', '', 'answer-2'),
(1007, 'science', 'What is the only natural satellite of the Earth? ', 'The moon', 'The sun', 'The stars', '', '', 'answer-1'),
(1008, 'science', 'What is the age of the universe? ', 'Born yesterday', 'Approximately thirteen billion years', 'Five million years', '', '', 'answer-2'),
(1009, 'science', 'Could you still live if the Earth stopped spinning? Yes or no. ', 'True', 'False', '', '', '', 'answer-2'),
(1010, 'science', 'Tyrannosaurus rex was the largest dinosaur that ever lived. True or False?', 'True', 'False', '', '', '', 'answer-2'),
(1011, 'science', 'What is the death of each member of a species called? ', 'Disappearance', 'Extinction', '', '', '', 'answer-2'),
(1012, 'science', 'What is the closest planet to the Sun?', 'Mercury', 'Saturn', '', '', '', 'answer-1'),
(1013, 'science', 'An electron carries a positive charges?', 'True', 'False', '', '', '', 'answer-2'),
(1014, 'science', 'What are the 206 bones of the human body?', '242', '206', '300', '', '', 'answer-2'),
(1015, 'science', 'What is the strongest bone in the human body?', 'Skull', 'Rib', 'Femur', '', '', 'answer-3'),
(1101, 'informatics', 'Quelle balise utilisera-t-on de préférence pour le titre principal d\'une page html:', 'h1', 'head', 'heading', 'h6', '', 'answer-1'),
(1102, 'informatics', 'Utiliser la balise h1 signifie que l\'on veut que le titre apparaisse plus gros que si l\'on utilisait la balise h2 :', 'vrai', 'faux', '', '', '', 'answer-1'),
(1103, 'informatics', 'Pour mettre en gras une partie de texte dans une page html:', 'On utilise une balise HTML special.', 'on utilise une propriété css.', '', '', '', 'answer-2'),
(1104, 'informatics', 'Les commentaires en HTML commencent par <code>&lt;!--</code> et finissent par <code>--&gt;</code>.', 'vrai', 'faux', '', '', '', 'answer-1'),
(1105, 'informatics', 'En HTML5, la balise <code>&lt;header&gt;</code> a le même rôle que la balise <code>&lt;head&gt;</code> ?', 'vrai', 'faux', '', '', '', 'answer-2'),
(1106, 'informatics', 'On souhaite rédiger une page html avec des énoncés et des corrections.<br>\r\nPour cela, on va utiliser la balise < div>. Quel est l\'attribut de < div> qui permettra de différencier les énoncés des corrections?', 'l\'attribut class=\"\"', 'l\'attribut id=\"\"', 'la balise < strong>', 'la balise < p>', '', 'answer-1'),
(1107, 'informatics', ' Quel est le doctype d\'un document HTML5 ?', '< !doctype html5>', '< !doctype html>', '< !doctype html PUBLIC \"-//W3C//DTD HTML5.0 Strict//EN\">', '', '', 'answer-2'),
(1108, 'informatics', ' Pour créer un lien vers la page d\'accueil de Wikipédia, on écrira:', '< a target=\"http://wikipedia.org\">Wikipédia</a>', '< a href=\"http://wikipedia.org\">', '< a href=\"http://wikipedia.org\">Wikipédia</a>', '', '', 'answer-3'),
(1109, 'informatics', 'Quels éléments sont nécessaires pour créer une liste dont les items ne sont pas numérotés ?', 'ul et li', 'ol et li', 'ul et ol', '', '', 'answer-1'),
(1110, 'informatics', 'Laquelle de ces syntaxes est correcte pour embarquer une image dans la page html?', '< img>src=\"mon-image.jpg\" alt=\"Une image\"< /img>', '< img src=\"mon-image.jpg\" alt=\"Une image\">', '< img href=\"mon-image.jpg\" alt=\"Une image\">', '', '', 'answer-2'),
(1111, 'informatics', 'Le rôle du CSS est de:', 'Mettre en forme les éléments html d\'une page.', 'Définir des formulaires.', 'Créer des sites e-commerce.', '', '', 'answer-1'),
(1112, 'informatics', ' Laquelle de ces pratiques doit être exceptionnelle (c\'est à dire très rarement utilisée):', 'placer le css dans un élément HTML style à l\'intérieur de la balise head de la page.', 'placer le css dans un attribut style de chaque élément html dans la page.', 'placer le css dans un fichier \".css\" séparé', '', '', 'answer-2'),
(1201, 'gen-knowledge', 'What type of rice is risotto usually made from?', 'Carnaroli', 'Vialone Nano', 'Maratelli', 'Baldo', 'Arborio', 'answer-5'),
(1202, 'gen-knowledge', 'Pyrophobia is the fear of what?', 'Sun', 'Water', 'Fire', 'Heights', 'Air', 'answer-3'),
(1203, 'gen-knowledge', 'What is a female elephant called?', 'Trumpet', 'Cow', 'Calf', 'Bull', 'Herd', 'answer-2'),
(1204, 'gen-knowledge', 'What is the most abundant gas in the Earth’s atmosphere?', 'Nitrogen', 'Carbon Dioxide', 'Helium', 'Oxygen', 'Gazprom', 'answer-1'),
(1205, 'gen-knowledge', 'Which colour is the most common on the national flags of the world, featuring on 75% of national flags?', 'Blue', 'Green', 'White', 'Red', 'Yellow', 'answer-4'),
(1206, 'gen-knowledge', 'Name the only nation to appear at every single FIFA World Cup?', 'Argentina', 'Germany', 'Brazil', 'France', 'Spain', 'answer-3'),
(1207, 'gen-knowledge', 'What year was Heinz Tomato Ketchup established?', '1875', '1869', '1905', '1896', '1888', 'answer-2'),
(1208, 'gen-knowledge', 'Who was the first cartoon character to be given a star on the Hollywood Walk of Fame?', 'Mickey Mouse', 'Donald Duck', 'Pop Eye', 'Tom & Jerry', 'Felix the Cat', 'answer-1'),
(1209, 'gen-knowledge', 'Which of these companies was formed first?', 'Microsoft', 'Google', 'Facebook', 'Apple', 'Amazon', 'answer-4'),
(1210, 'gen-knowledge', 'Who was the first man to defeat Muhammad Ali in professional boxing?', 'George Foreman', 'Sonny Liston', 'Leon Spinks', 'Sonny Banks', 'Joe Frazier', 'answer-5'),
(1211, 'gen-knowledge', 'In which country can you not buy Coca Cola? ', 'Dominican Republic', 'Haiti', 'Cuba', 'Puerto Rico', 'Jamaica', 'answer-3'),
(1212, 'gen-knowledge', 'Which painting of Leonardo da Vinci is the most famous one?', 'The Last Supper', 'Mona Lisa', 'Salvator Mundi', 'Vitruvian Man', 'Portrait of a Man in Red Chalk', 'answer-2'),
(1213, 'gen-knowledge', 'Which country is cheese originally from?', 'France', 'Switzerland', 'Italy', 'Netherland', 'No one knows', 'answer-5'),
(1214, 'gen-knowledge', 'Which planet is closest to the sun?', 'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'answer-1'),
(1215, 'gen-knowledge', 'What is a group of spiders called?', 'Arachnids', 'Chelicerata', 'Arthropod', 'Clutter', 'Insecta', 'answer-4'),
(1216, 'gen-knowledge', 'How many bones does a shark have?', 'Between 360-410', 'None', 'Around 200 to 400', '350', '1000', 'answer-2'),
(1217, 'gen-knowledge', 'In Harry Potter, what is the name of The Weasley\'s house?', 'Gryffindor', 'Slytherin', 'Hufflepuff', 'Ravenclaw', 'The Burrow', 'answer-5'),
(1218, 'gen-knowledge', 'What\'s the strongest muscle in the human body?', 'Tongue', 'Heart', 'Masseter', 'Stapedius', 'Gluteus Maximus', 'answer-3'),
(1219, 'gen-knowledge', 'Which city had the first ever fashion week?', 'New York', 'Milan', 'Paris', 'London', 'Tokyo', 'answer-1'),
(1220, 'gen-knowledge', 'Where in Italy is pizza believed to have first been made?', 'Florence', 'Roma', 'Milan', 'Naples', 'Bologna', 'answer-4'),
(10000, 'music', 'Which category of musical instrument is reputed to be the oldest in the world?', 'strings', 'subtractive synthesis', 'wind instruments', 'drums', 'brass', 'answer-3'),
(10001, 'music', 'Which is the national musical instrument of Japan?', 'Sitar (a plucked instrument)', 'Kalimba ', 'Koto (a kind of zither)', 'Bodhran', 'Oboe', 'answer-3'),
(10002, 'music', 'Which rapper married TV star Kim Kardashian?', 'Kanye West', 'Snoop Doggy Dog', '50 Cents', 'LL Cool J', 'Eminem', 'answer-1'),
(10003, 'music', 'Sometimes, fans like to believe that they see secret messages on the covers of record albums. According to a 1969 rumor, secret messages on album covers revealed that which Beatle had died in 1966?', 'Ringo Starr', 'John Coltraine', 'George Harrison', 'Elton John', 'Paul McCartney', 'answer-5'),
(10004, 'music', 'Which controversial and collectable single by The Sex Pistols was banned by the B.B.C', 'God Save the Queen', 'Holidays in the Sun', 'Anarchy in the U.K.', 'Pretty Vacant', '', 'answer-1'),
(10005, 'music', 'In which US city was the Dixieland jazz style developed?', 'New York', 'Chicago', 'New Orleans', 'Detroit', '', 'answer-3'),
(10006, 'music', 'The Boogie genre is closest to these styles:', 'Punk/New Wave', 'Disco/Funk', 'Hard Rock/Heavy Metal', 'Boogie-Woogie', 'Synth-Pop', 'answer-2'),
(10007, 'music', 'the Ramones arrived on the American music scene and are sometimes cited as the first true punk band. In which year did they release their debut album?', '1969', '1985', '2002', '1976', '1995', 'answer-4'),
(10008, 'music', 'Farrokh Bulsara is/was the real name of…', 'Freddie Mercury\'', 'Frank Zappa', 'John Lennon', 'Sam Bankman Freed', 'Greta Thunfisch', 'answer-1'),
(10009, 'music', 'The Hammond Organ has influenced genres from R&B, Jazz, Gospel, Funk to Hard Rock. It was first manufactured in', '1992', '1962', '1893', '1935', '1927', 'answer-4'),
(10010, 'music', 'did Ozzy Osbourne really bite the head off a real bat during a concert?', 'No', 'Yes', 'Half-true', '', '', 'answer-2'),
(10011, 'music', 'What does the name “ukulele” mean in Hawaiian?', 'jumping flea', 'waging dog', 'creepy snail', 'waging tail', 'agile ants', 'answer-1'),
(10012, 'music', 'According to Guinness World Records, Madonna is the best selling female artist of all-time. By combining her unique abilities as a singer, songwriter and performer, she has become the most successful solo act in popular music. Which of her best selling si', 'Hung Up', 'Vogue', 'Like a Prayer', 'Music', '', 'answer-2'),
(10013, 'music', 'Which one of the following chord symbols describes a dominant seventh chord', 'Am7b5', 'G7', 'Cmaj7', 'Dbo7', 'F#o7', 'answer-2'),
(10014, 'music', 'Which early punk band caused a storm in Britain with singles like \'Anarchy in the U.K.\' and \'God Save the Queen\'? Hint ', 'Sex Pistols', 'The Who', 'The Dead Kennedys', 'The Ramones', 'The Stooges', 'answer-1'),
(10015, 'music', 'The first Hammond organ, the Hammond Model A, started production in this year:', '1892', '1901', '1943', '1935', '1985', 'answer-3'),
(10016, 'music', 'Which of the following styles preceded Be Bop?', 'Swing', 'Funk', 'Hip Hop', 'Rockabilly', 'Glam Rock', 'answer-1'),
(10017, 'music', 'What rock icon was the founder of The Society for the Prevention of Cruelty to Long-haired Men?\n', 'Frank Zappa', 'Lou Reed', 'Phil Collins', 'David Bowie', 'Mick Jagger', 'answer-4'),
(10018, 'music', 'Towards the end of the 1970s. Which style originating in Jamaica was mixed with punk to create a genre known as two-tone?', 'Hony tonk', 'Igbo rap', 'Bhangra', 'Ska', 'Reggae', 'answer-4'),
(10019, 'music', 'The “Model-A” was the first Hammond Organ that hit the market. The most legendary Model, that came out 20 years later, was called…', 'Hammond Queen-B', 'Hammond Alpha-Male', 'Hammond FA-18', 'Hammond Model-D', 'Hammond B3', 'answer-5'),
(10020, 'music', 'The saxophone is a popular jazz instrument, but what was its first use?', 'Symphonic', 'Hunting', 'Military', 'Recital', 'Samba', 'answer-3'),
(10021, 'music', 'In the early 21st century, some bands with punk roots were given the label \'emo\' (even if they didn\'t associate themselves with the genre). What made the emo subgenre so controversial? ', 'Animal rights abuses', 'Links to self-harm and suicide', 'Implicit sexism', 'Anarchistic rhetoric', '', 'answer-2'),
(10022, 'music', 'Most famous analogue synthesizers use this method to generate different timbres: ', 'frequency modulation', 'additive synthesis', 'analogue modeling', 'sampling technology', 'subtractive synthesis', 'answer-5'),
(10023, 'music', 'Which one is NOT originally a South American genre of music?', 'Samba', 'Tango', 'Merengue', 'Klezmer', 'Bossa-Nova', 'answer-4'),
(10024, 'music', 'In The Big Lebowski, The Dude can’t stand which band?', 'ABBA', 'Supertramp', 'Simon and Garfunkel', 'The Eagles', 'The Alan Parsons Project', 'answer-5'),
(10025, 'music', 'What was Madonna\'s first top 10 hit?\n', 'Holiday', 'Papa Don’t Preach ', 'Like a Prayer', 'Like a virgin', 'La Isla Fea', 'answer-1'),
(10026, 'music', 'The most famous Hammond Organs generate the frequencies mechanically and convert them to current by a process called… ', 'wavetable synthesis', 'electromagnetic induction', 'frequency modulation (fm)', 'subtractive synthesis', 'stepdown transformation', 'answer-2'),
(10027, 'music', 'Johann Sebastian Bach was a composer and musician of which musical period?', 'Post-Modernism', 'Classical Period', 'Renaissance', 'Barock', 'Romantic Period', 'answer-4'),
(10028, 'music', 'Which city is Techno said to originate from?', 'New York', 'Chicago', 'Detroit', 'Manchester', 'Houston', 'answer-3');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
