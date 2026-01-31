-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2024 at 10:47 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nutritionfoodrecommendationonbasisofdailyactivitydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bmiwise_diet_requirement`
--

CREATE TABLE `bmiwise_diet_requirement` (
  `id` int(11) NOT NULL,
  `bmi_result` varchar(256) NOT NULL,
  `calories` varchar(256) NOT NULL,
  `protein` varchar(256) NOT NULL,
  `fat` varchar(256) NOT NULL,
  `carbs` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bmiwise_diet_requirement`
--

INSERT INTO `bmiwise_diet_requirement` (`id`, `bmi_result`, `calories`, `protein`, `fat`, `carbs`) VALUES
(1, 'Normal (Healthy weight)', '35', '25', '18', '22'),
(2, 'Very Severely Underweight', '40', '25', '25', '10'),
(3, 'Severely Underweight', '35', '25', '12', '28'),
(4, 'Underweight', '45', '25', '10', '20'),
(5, 'Overweight', '30', '30', '8', '32'),
(6, 'Moderately Obese', '41', '39', '10', '20'),
(7, 'Severely Obese', '21', '15', '10', '54');

-- --------------------------------------------------------

--
-- Table structure for table `login_admin`
--

CREATE TABLE `login_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_admin`
--

INSERT INTO `login_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `register_user`
--

CREATE TABLE `register_user` (
  `id` int(11) NOT NULL,
  `profile_pic` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `mobile_no` varchar(256) NOT NULL,
  `email_id` varchar(256) NOT NULL,
  `weight` varchar(256) NOT NULL,
  `dob` varchar(256) NOT NULL,
  `gender` varchar(256) NOT NULL,
  `marrital_status` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register_user`
--

INSERT INTO `register_user` (`id`, `profile_pic`, `name`, `mobile_no`, `email_id`, `weight`, `dob`, `gender`, `marrital_status`, `username`, `password`) VALUES
(1, '1707421250663.png', 'Nikhil Shende', '8208187488', 'nikdroid23@gmail.com', '78', '11-11-1996', 'Male', 'unmarried', 'asdasd', 'asdasd'),
(2, '1707421184030.png', 'Tushar Shende ', '7276366717', 'tushar@gmail.com', '80', '5-2-1994', 'Male', 'Married', 'tushar23@', 'tushar23@'),
(4, '1707421184030.png', 'Mountreach Solution Pvt Ltd ', '8208187488', 'mountreachsolution@mountreachsolution.com', '78', '9-2-1996', 'Male', 'Unmarried', 'mountreach23', 'mountreach23');

-- --------------------------------------------------------

--
-- Table structure for table `request_for_diet_according_to_diet_type_and_bodytype`
--

CREATE TABLE `request_for_diet_according_to_diet_type_and_bodytype` (
  `id` int(11) NOT NULL,
  `diettype` varchar(256) NOT NULL,
  `what_to_eat` varchar(256) NOT NULL,
  `what_to_avoid` varchar(256) NOT NULL,
  `recommended_video` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_for_diet_according_to_diet_type_and_bodytype`
--

INSERT INTO `request_for_diet_according_to_diet_type_and_bodytype` (`id`, `diettype`, `what_to_eat`, `what_to_avoid`, `recommended_video`) VALUES
(1, 'SugarMaleLess606', '1. Overnight oats made with rolled oats, almond milk, chia seeds, and topped with sliced bananas and almonds\n2. Scrambled tofu with spinach, tomatoes, and bell peppers\n3. Glass of water or herbal tea', 'Avoid Oils\nAvoid Added Sugar\nLess Salt', 'https://youtu.be/SdxnHXDBOV4?si=ju1qyFiL0NkM5p5d'),
(2, 'SugarFemaleLess606', '1. Greek yogurt or soy yogurt with mixed berries\n1. Handful of trail mix (nuts and dried fruit)\n1. Water or herbal tea', 'Avoid Oils\nAvoid Added Sugar\nLess Salt', 'https://youtu.be/SdxnHXDBOV4?si=ju1qyFiL0NkM5p5d'),
(3, 'SugarMaleGreat605', '1. Lentil soup or chickpea salad with mixed greens, cherry tomatoes, cucumbers, and a lemon-tahini dressing\n2. Whole grain pita bread or brown rice\n3. Water with lemon slices', 'f', 'https://youtu.be/SdxnHXDBOV4?si=ju1qyFiL0NkM5p5d'),
(4, 'SugarFemaleGreat605', '1. Hummus with carrot and celery sticks\n2. Sliced apple with almond butter\n3. Water or herbal tea', 'h', 'https://youtu.be/SdxnHXDBOV4?si=ju1qyFiL0NkM5p5d'),
(5, 'BPMaleLess606', '1. Grilled tofu or tempeh with roasted sweet potatoes and steamed broccoli\n2. Quinoa pilaf with mixed vegetables\n3. Glass of water with lemon', 'j', 'https://youtu.be/Dl1vMBCBjJE?si=O8wUlNV8IePrJ4Kk'),
(6, 'BPFemaleLess606', 'Masala roasted chickpeas (chana) or roasted makhana (fox nuts)\nVegetable cutlets or steamed dhokla (gram flour snack)\nHerbal tea or green tea', 'l', 'https://youtu.be/Dl1vMBCBjJE?si=O8wUlNV8IePrJ4Kk'),
(7, 'BPMaleGreat605', 'Vegetable upma (savory semolina dish) with a side of coconut chutney\nSprouted moong dal (green gram) salad with tomatoes, cucumbers, and lemon juice\nGlass of water or herbal tea', 'n', 'https://youtu.be/Dl1vMBCBjJE?si=O8wUlNV8IePrJ4Kk'),
(8, 'BPFemaleGreat605', 'Fresh fruit such as apple, orange, or guava\nRoasted peanuts or almonds\nButtermilk (lassi) or coconut water', 'p', 'https://youtu.be/Dl1vMBCBjJE?si=O8wUlNV8IePrJ4Kk'),
(9, 'SugarandBPMaleLess606', 'Chickpea (chana) curry with spinach, served with brown rice or whole wheat roti\nCucumber-tomato salad with lemon juice and chaat masala\nGlass of chaas (spiced buttermilk)', 'r', 'https://youtu.be/KTmM-FAAXO8?si=Fi2f0m0i3ijQaIrc'),
(10, 'SugarandBPFemaleLess606', 'Grilled fish (salmon or tilapia) with roasted vegetables and quinoa\nGarden salad with mixed greens, cherry tomatoes, and balsamic vinaigrette\nGlass of buttermilk or green tea', 't', 'https://youtu.be/KTmM-FAAXO8?si=Fi2f0m0i3ijQaIrc'),
(11, 'SugarandBPMaleGreat605', 'Nariyal Pani: Fresh coconut water for hydration and electrolytes.\nMixed Nuts: A handful of mixed nuts like almonds, cashews, and walnuts for energy.', 'v', 'https://youtu.be/KTmM-FAAXO8?si=Fi2f0m0i3ijQaIrc'),
(12, 'SugarandBPFemaleGreat605', 'Fruit Chaat: Mixed fruit salad with a sprinkle of chaat masala and lemon juice.\nRoasted Makhana: Fox nuts roasted with a pinch of salt and pepper.', 'x', 'https://youtu.be/KTmM-FAAXO8?si=Fi2f0m0i3ijQaIrc'),
(13, 'WeightGainMaleLess606', 'Dal Tadka: Yellow lentil curry tempered with cumin seeds, garlic, and ghee.\nBaingan Bharta: Smoky roasted eggplant mash cooked with tomatoes, onions, and spices.\nChapati: Whole wheat flatbread.\nKheer: Rice pudding made with milk, rice, and sweetened wit', 'z', 'https://youtu.be/Y8icki2KnBQ?si=wJK0nDg7Vy9UzqZP'),
(14, 'WeightGainFemaleLess606', 'Grilled chicken salad with mixed greens and vinaigrette dressing\nBoiled eggs with a sprinkle of black pepper and sea salt\nHerbal tea or warm water with lemon', 'Avoid Oils\nAvoid Added Sugar\nLess Salt', 'https://youtu.be/Y8icki2KnBQ?si=wJK0nDg7Vy9UzqZP'),
(15, 'WeightGainMaleGreat605', 'Fruit chaat (mixed fruit salad with spices)\nSprouts chaat with chopped onions, tomatoes, and lemon juice\nHerbal tea or warm turmeric milk (haldi doodh)', 'Avoid Oils\nAvoid Added Sugar\nLess Salt', 'https://youtu.be/Y8icki2KnBQ?si=wJK0nDg7Vy9UzqZP'),
(16, 'WeightGainFemaleGreat605', 'Tofu or paneer (cottage cheese) tikka masala with mixed vegetables\nQuinoa pulao with peas and carrots\nRaita (yogurt dip) with cucumber and mint\nGlass of warm turmeric milk (haldi doodh)', 'ff', 'https://youtu.be/Y8icki2KnBQ?si=wJK0nDg7Vy9UzqZP'),
(17, 'WeightLossMaleLess606', 'Idli Sambar: Steamed rice cakes (idli) served with lentil-based vegetable stew (sambar) and coconut chutney.\nFresh Fruit: A serving of seasonal fruits such as banana, papaya, or apple.\nHerbal Tea: Tulsi tea or ginger tea for added freshness.', 'hh', 'https://youtu.be/YfdbPp4q33w?si=GbaJusoS2qKRuF1S'),
(18, 'WeightLossFemaleLess606', 'Scrambled eggs with sautéed vegetables (bell peppers, onions, spinach)\nWhole wheat toast with avocado slices\nFreshly squeezed orange juice or herbal tea', 'jj', 'https://youtu.be/YfdbPp4q33w?si=GbaJusoS2qKRuF1S'),
(19, 'WeightLossMaleGreat605', 'Paneer tikka (grilled cottage cheese) with roasted vegetables\nQuinoa pulao with mixed vegetables\nRaita (yogurt dip) with cucumber and mint\nGlass of water with lemon', 'll', 'https://youtu.be/YfdbPp4q33w?si=GbaJusoS2qKRuF1S'),
(20, 'WeightLossFemaleGreat605', 'Fresh fruit such as apple, orange, or guava\nRoasted peanuts or almonds\nButtermilk (lassi) or coconut water', 'nn', 'https://youtu.be/YfdbPp4q33w?si=GbaJusoS2qKRuF1S'),
(21, 'OlderPeopleMaleLess606', 'Mixed vegetable curry (such as mixed vegetable sabzi) with whole wheat roti or brown rice\nDal (lentil curry) with a side of cucumber-tomato salad\nGlass of buttermilk or chaas', 'pp', 'https://youtu.be/g5HeVRgcGD8?si=4OvJ2byOKQ2nryNp'),
(22, 'OlderPeopleFemaleLess606', 'Chickpea (chana) curry with spinach, served with brown rice or whole wheat roti\nCucumber-tomato salad with lemon juice and chaat masala\nGlass of chaas (spiced buttermilk)', 'rr', 'https://youtu.be/g5HeVRgcGD8?si=4OvJ2byOKQ2nryNp'),
(23, 'OlderPeopleMaleGreat605', 'Cottage cheese (paneer) tikka with mint chutney\nSliced cucumber and carrots with hummus\nHerbal tea or iced tea with lemon', 'tt', 'https://youtu.be/g5HeVRgcGD8?si=4OvJ2byOKQ2nryNp'),
(24, 'OlderPeopleFemaleGreat605', '1. Greek yogurt or soy yogurt with mixed berries\n1. Handful of trail mix (nuts and dried fruit)\n1. Water or herbal tea', 'vv', 'https://youtu.be/g5HeVRgcGD8?si=4OvJ2byOKQ2nryNp'),
(25, 'PregnancyFemaleLess606', 'Mixed vegetable curry (such as mixed vegetable sabzi) with whole wheat roti or brown rice\nDal (lentil curry) with a side of cucumber-tomato salad\nGlass of buttermilk or chaas', 'xx', 'https://youtu.be/_dVuHFdUN0c?si=VpXprEnYFl9nOYGu'),
(26, 'PregnancyFemaleGreat605', 'yy', 'zz', 'https://youtu.be/_dVuHFdUN0c?si=VpXprEnYFl9nOYGu'),
(27, '', 'vjvhhchv', 'jvjvjvjv', 'hchchc');

-- --------------------------------------------------------

--
-- Table structure for table `request_for_diet_according_to_steps`
--

CREATE TABLE `request_for_diet_according_to_steps` (
  `id` int(11) NOT NULL,
  `userStepsCountStatus` varchar(256) NOT NULL,
  `what_to_eat` varchar(256) NOT NULL,
  `what_to_avoid` varchar(256) NOT NULL,
  `recommended_video` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_for_diet_according_to_steps`
--

INSERT INTO `request_for_diet_according_to_steps` (`id`, `userStepsCountStatus`, `what_to_eat`, `what_to_avoid`, `recommended_video`) VALUES
(1, 'Active', 'Give your body the nutrients it needs by eating a variety of nutrient-packed food, including whole grains, lean protein, fruits and vegetables, and low-fat or fat-free dairy.', 'dfdfddfsfksdksdklkgkgjgjjglsgjskgjkgjlksjgklfjgkgjksfjgksfjgsfjkgfkgsfgjksfgjklgjkgjlksjklgsgjfsjgksfgjflkgjfksjgksfjgfskgjfsklgjsgjkfsgjklsfgjklgjfklgjfkgjsfkgjsfkjglsfkjglksjgklsfjglkfgjsfkgjsk Eat less food high in solid fats, added sugars, and sodium (', 'https://youtu.be/gjYVS8m91UU?si=AwsBh8KxiVcL_GOt'),
(2, 'Average', '1) eat at least 5 portions of a variety of fruit and vegetables every day\n\n2) 32 percent of our calories comes from animal foods, 57 percent from processed plant foods, and only 11 percent from whole grains, beans, fruits, vegetables, and nuts. ', 'Avoid Oils\r\nAvoid Added Sugar\r\nLess Salt', 'https://youtu.be/gjYVS8m91UU?si=AwsBh8KxiVcL_GOt'),
(3, 'NonActive', 'Breakfast\r\nStart the day with a breakfast that will provide you just enough energy to fuel your morning. A Mediterranean-type of breakfast might consist of a bowl of steel-cut oats mixed with Greek yogurt, a handful of raspberries and a tablespoon or two o', 'Don\'t Try to eat more unprocessed foods.\r\nLess Sugar\r\nLess Salt\r\nLess Oil\r\nLess Stress\r\n', 'https://youtu.be/gjYVS8m91UU?si=AwsBh8KxiVcL_GOt');

-- --------------------------------------------------------

--
-- Table structure for table `suggestiona_ccording_steps`
--

CREATE TABLE `suggestiona_ccording_steps` (
  `id` int(11) NOT NULL,
  `steps` varchar(256) NOT NULL,
  `breakfast` varchar(256) NOT NULL,
  `Mid-Morning Snack` varchar(256) NOT NULL,
  `Lunch` varchar(256) NOT NULL,
  `Afternoon Snack` varchar(256) NOT NULL,
  `Dinner` varchar(256) NOT NULL,
  `Evening Snack` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suggestiona_ccording_steps`
--

INSERT INTO `suggestiona_ccording_steps` (`id`, `steps`, `breakfast`, `Mid-Morning Snack`, `Lunch`, `Afternoon Snack`, `Dinner`, `Evening Snack`) VALUES
(1, '5000-6000', '1. Overnight oats made with rolled oats, almond milk, chia seeds, and topped with sliced bananas and almonds\n2. Scrambled tofu with spinach, tomatoes, and bell peppers\n3. Glass of water or herbal tea', '1. Greek yogurt or soy yogurt with mixed berries\n1. Handful of trail mix (nuts and dried fruit)\n1. Water or herbal tea', '1. Lentil soup or chickpea salad with mixed greens, cherry tomatoes, cucumbers, and a lemon-tahini dressing\n2. Whole grain pita bread or brown rice\n3. Water with lemon slices', '1. Hummus with carrot and celery sticks\n2. Sliced apple with almond butter\n3. Water or herbal tea', '1. Grilled tofu or tempeh with roasted sweet potatoes and steamed broccoli\n2. Quinoa pilaf with mixed vegetables\n3. Glass of water with lemon', '1. Cottage cheese or cottage cheese alternative with pineapple chunks\r\n2. Air-popped popcorn sprinkled with nutritional yeast\r\n3. Herbal tea or water'),
(2, '5000-6000', 'Vegetable upma (savory semolina dish) with a side of coconut chutney\nSprouted moong dal (green gram) salad with tomatoes, cucumbers, and lemon juice\nGlass of water or herbal tea', 'Fresh fruit such as apple, orange, or guava\nRoasted peanuts or almonds\nButtermilk (lassi) or coconut water', 'Mixed vegetable curry (such as mixed vegetable sabzi) with whole wheat roti or brown rice\nDal (lentil curry) with a side of cucumber-tomato salad\nGlass of buttermilk or chaas', 'Masala roasted chickpeas (chana) or roasted makhana (fox nuts)\nVegetable cutlets or steamed dhokla (gram flour snack)\nHerbal tea or green tea', 'Paneer tikka (grilled cottage cheese) with roasted vegetables\nQuinoa pulao with mixed vegetables\nRaita (yogurt dip) with cucumber and mint\nGlass of water with lemon', 'Fruit chaat (mixed fruit salad with spices)\nSprouts chaat with chopped onions, tomatoes, and lemon juice\nHerbal tea or warm turmeric milk (haldi doodh)'),
(3, '5000-6000', 'Veggie oats upma (made with rolled oats, mixed vegetables, and spices)\nSliced avocado on whole wheat toast\nHerbal tea or green tea', 'Greek yogurt with honey and mixed berries\r\nHandful of mixed nuts (almonds, walnuts, cashews)\r\nCoconut water or buttermilk (lassi)', 'Chickpea (chana) curry with spinach, served with brown rice or whole wheat roti\nCucumber-tomato salad with lemon juice and chaat masala\nGlass of chaas (spiced buttermilk)', 'Sprouts salad with chopped onions, tomatoes, and a squeeze of lemon\r\nRoasted chickpeas (chana) with Indian spices\r\nHerbal tea or masala chai', 'Tofu or paneer (cottage cheese) tikka masala with mixed vegetables\nQuinoa pulao with peas and carrots\nRaita (yogurt dip) with cucumber and mint\nGlass of warm turmeric milk (haldi doodh)', 'Fruit chaat (mixed fruit salad with chaat masala)\r\nBaked sweet potato fries with a sprinkle of cumin powder\r\nHerbal tea or warm water with lemon'),
(4, '5000-6000 non-veg', 'Scrambled eggs with sautéed vegetables (bell peppers, onions, spinach)\nWhole wheat toast with avocado slices\nFreshly squeezed orange juice or herbal tea', 'Grilled chicken skewers with mint yogurt dip\r\nHandful of mixed nuts (almonds, walnuts, pistachios)\r\nFresh coconut water or lemon water', 'Grilled fish (salmon or tilapia) with roasted vegetables and quinoa\nGarden salad with mixed greens, cherry tomatoes, and balsamic vinaigrette\nGlass of buttermilk or green tea', 'Cottage cheese (paneer) tikka with mint chutney\nSliced cucumber and carrots with hummus\nHerbal tea or iced tea with lemon', 'Chicken curry with brown rice or whole wheat roti\r\nStir-fried broccoli and bell peppers with tofu\r\nRaita (yogurt dip) with cucumber and mint\r\nGlass of warm turmeric milk (haldi doodh)', 'Grilled chicken salad with mixed greens and vinaigrette dressing\nBoiled eggs with a sprinkle of black pepper and sea salt\nHerbal tea or warm water with lemon'),
(5, '5000-6000 Brahmins', 'Idli Sambar: Steamed rice cakes (idli) served with lentil-based vegetable stew (sambar) and coconut chutney.\nFresh Fruit: A serving of seasonal fruits such as banana, papaya, or apple.\nHerbal Tea: Tulsi tea or ginger tea for added freshness.', 'Nariyal Pani: Fresh coconut water for hydration and electrolytes.\nMixed Nuts: A handful of mixed nuts like almonds, cashews, and walnuts for energy.', 'Rajma Chawal: Kidney bean curry (rajma) served with steamed basmati rice.\r\nPalak Paneer: Spinach and cottage cheese curry for added protein and nutrients.\r\nKachumber Salad: Cucumber, tomato, and onion salad with lemon juice and chaat masala.\r\nChaas: Spiced', 'Fruit Chaat: Mixed fruit salad with a sprinkle of chaat masala and lemon juice.\nRoasted Makhana: Fox nuts roasted with a pinch of salt and pepper.', 'Dal Tadka: Yellow lentil curry tempered with cumin seeds, garlic, and ghee.\nBaingan Bharta: Smoky roasted eggplant mash cooked with tomatoes, onions, and spices.\nChapati: Whole wheat flatbread.\nKheer: Rice pudding made with milk, rice, and sweetened wit', 'Chana Sundal: Boiled chickpeas tempered with mustard seeds, curry leaves, and grated coconut.\r\nHerbal Tea: Chamomile tea or green tea for relaxation before bedtime');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion_according_to_bmi`
--

CREATE TABLE `suggestion_according_to_bmi` (
  `id` int(11) NOT NULL,
  `bmi_result` varchar(256) NOT NULL,
  `6_to_7AM` varchar(256) NOT NULL,
  `8_to_9AM` varchar(256) NOT NULL,
  `11_to_12AM` varchar(256) NOT NULL,
  `1_to_2PM` varchar(256) NOT NULL,
  `6_to_7PM` varchar(256) NOT NULL,
  `8_to_9PM` varchar(256) NOT NULL,
  `10PM` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suggestion_according_to_bmi`
--

INSERT INTO `suggestion_according_to_bmi` (`id`, `bmi_result`, `6_to_7AM`, `8_to_9AM`, `11_to_12AM`, `1_to_2PM`, `6_to_7PM`, `8_to_9PM`, `10PM`) VALUES
(1, 'Very Severely Underweight', 'Fruit juice(1 medium glass) skim milk with whole grain cereal(medium bowl).', 'Fruits salad(medium bowl) Buttermilk(1 glass).', 'Honey toast (2 slices) fruited yogurt(low fat)', 'Roti-1,Rajmah 1/2 cup ,Curd 1/2 cup', 'Vegetable soup (small bowl).', 'Roti-1,Mixed vegetable sabji 1/2 cup,salad curd 1/2 cup.', '1 cup skim milk'),
(2, 'Normal (Healthy weight)', '1 Smoothie, ', 'Whole Grain Cereal, 2 Eggs', 'Nut Butter Sandwich,Greek Yogurt with Granola, Cheese and Crackers\r\n', 'Quinoa Salad,Chicken or Tofu Stir-Fry,Bean Burrito', 'Trail Mix,Hummus and Veggie Sticks,Energy Bars', 'Salmon with Sweet Potato, Pasta with Meat Sauce, Vegetable Curry with Rice', 'Greek Yogurt Parfai'),
(3, 'Overweight', 'Fruit juice(1 medium glass) skim milk with whole grain cereal(medium bowl).', 'Fruits salad(medium bowl) Buttermilk(1 glass).', 'Honey toast (2 slices) fruited yogurt(low fat)', 'Roti-1,Rajmah 1/2 cup ,Curd 1/2 cup', 'Vegetable soup (small bowl).', 'Roti-1,Mixed vegetable sabji 1/2 cup,salad curd 1/2 cup.', '1 cup skim milk'),
(4, 'Severely Obese', '1 Smoothie, ', 'Whole Grain Cereal, 2 Eggs', 'Nut Butter Sandwich,Greek Yogurt with Granola, Cheese and Crackers\r\n', 'Quinoa Salad,Chicken or Tofu Stir-Fry,Bean Burrito', 'Trail Mix,Hummus and Veggie Sticks,Energy Bars', 'Salmon with Sweet Potato, Pasta with Meat Sauce, Vegetable Curry with Rice', 'Greek Yogurt Parfai');

-- --------------------------------------------------------

--
-- Table structure for table `weekly_diet_according_5000steps`
--

CREATE TABLE `weekly_diet_according_5000steps` (
  `id` int(11) NOT NULL,
  `steps` varchar(256) NOT NULL,
  `Monday` varchar(256) NOT NULL,
  `Tuesday` varchar(256) NOT NULL,
  `Wednesday` varchar(256) NOT NULL,
  `Thursday` varchar(256) NOT NULL,
  `Friday` varchar(256) NOT NULL,
  `Saturday` varchar(256) NOT NULL,
  `Sunday` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weekly_diet_according_5000steps`
--

INSERT INTO `weekly_diet_according_5000steps` (`id`, `steps`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`) VALUES
(1, '5000-6000', 'Breakfast:\n\nVegetable poha (flattened rice) cooked with onions, peas, carrots, and peanuts.\nFreshly squeezed orange juice.\nLunch:\n\nRajma (kidney bean) curry with jeera (cumin) rice.\nCucumber raita (yogurt dip).\nSalad with cucumber, tomato, and carry', 'Breakfast:\r\n\r\nUpma (semolina porridge) with mixed vegetables and a dash of lemon juice.\r\nHerbal tea.\r\nLunch:\r\n\r\nDal tadka (tempered lentil soup) with brown rice.\r\nStir-fried cabbage with cumin seeds.\r\nButtermilk.\r\nDinner:\r\n\r\nVegetable biryani (spiced rice ', 'Breakfast:\r\n\r\nMoong dal cheela (lentil pancakes) with mint chutney.\r\nFresh fruit salad.\r\nLunch:\r\n\r\nChana masala (spicy chickpea curry) with whole wheat paratha.\r\nOnion-tomato salad.\r\nDinner:\r\n\r\nBhindi masala (okra curry) with chapati.\r\nSteamed broccoli.', 'Breakfast:\r\n\r\nVegetable uttapam (savory pancake made with fermented batter) with coconut chutney.\r\nHerbal tea.\r\nLunch:\r\n\r\nBaingan bharta (smoky roasted eggplant mash) with quinoa.\r\nKachumber salad.\r\nDinner:\r\n\r\nPaneer tikka (grilled cottage cheese) with min', 'Breakfast:\r\n\r\nMasala omelette with whole wheat toast.\r\nFreshly squeezed orange juice.\r\nLunch:\r\n\r\nVegetable pulao (spiced rice dish with mixed vegetables) with cucumber raita.\r\nSteamed green beans.\r\nDinner:\r\n\r\nAloo gobi (potato and cauliflower curry) with c', 'Breakfast:\n\nRagi dosa (fermented crepe made from finger millet) with coconut chutney.\nHerbal tea.\nLunch:\n\nSambar (lentil-based vegetable stew) with brown rice.\nStir-fried spinach with garlic.\nDinner:\n\nMushroom matar (mushroom and green pea curry)', 'Breakfast:\r\n\r\nDhokla (steamed fermented rice cake) with green chutney.\r\nFresh fruit salad.\r\nLunch:\r\n\r\nKadhi pakora (gram flour dumplings in spiced yogurt gravy) with jeera rice.\r\nStir-fried bell peppers with onions.\r\nDinner:\r\n\r\nVegetable korma (mixed veget'),
(2, '2000-6000', 'Breakfast:\r\n\r\nVegetable oats porridge cooked with carrots, peas, and beans.\r\nHerbal tea or green tea.\r\nLunch:\r\n\r\nMixed dal (lentil) curry with jeera (cumin) rice.\r\nCucumber-tomato salad with lemon juice.\r\nDinner:\r\n\r\nPalak paneer (spinach and cottage cheese', 'Breakfast:\n\nVegetable upma (savory semolina porridge) with a side of coconut chutney.\nFreshly squeezed orange juice.\nLunch:\n\nRajma (kidney bean) curry with brown rice.\nStir-fried broccoli with garlic.\nDinner:\n\nVegetable biryani (spiced rice dish ', 'Breakfast:\r\n\r\nRagi (finger millet) idli with sambar (lentil-based vegetable stew) and coconut chutney.\r\nHerbal tea or tulsi tea.\r\nLunch:\r\n\r\nChana masala (spicy chickpea curry) with whole wheat paratha.\r\nOnion-tomato salad with chaat masala.\r\nDinner:\r\n\r\nBhi', 'Breakfast:\r\n\r\nVegetable dalia (broken wheat porridge) with mixed vegetables and a dash of lemon juice.\r\nFresh fruit salad.\r\nLunch:\r\n\r\nDal tadka (tempered lentil soup) with quinoa.\r\nStir-fried cabbage with mustard seeds.\r\nDinner:\r\n\r\nPaneer tikka (grilled co', 'Breakfast:\r\n\r\nMasala omelette with whole wheat toast.\r\nHerbal tea or ginger tea.\r\nLunch:\r\n\r\nSambar (lentil-based vegetable stew) with brown rice.\r\nStir-fried spinach with garlic.\r\nDinner:\r\n\r\nAloo gobi (potato and cauliflower curry) with chapati.\r\nBeetroot ', 'Breakfast:\r\n\r\nVegetable uttapam (savory pancake made with fermented batter) with coconut chutney.\r\nFreshly squeezed orange juice.\r\nLunch:\r\n\r\nKadhi pakora (gram flour dumplings in spiced yogurt gravy) with jeera rice.\r\nCucumber-tomato salad with lemon juice', 'Breakfast:\r\n\r\nDhokla (steamed fermented rice cake) with green chutney.\r\nHerbal tea or masala chai.\r\nLunch:\r\n\r\nVegetable pulao (spiced rice dish with mixed vegetables) with cucumber raita.\r\nStir-fried bell peppers with onions.\r\nDinner:\r\n\r\nMix dal khichdi (r'),
(3, 'Active', 'Breakfast:\n\nMasala oats cooked with mixed vegetables and spices.\nFresh fruit salad with a sprinkle of chaat masala.\nHerbal tea or green tea.  \n      \nMid-Morning Snack:\n\nGreek yogurt with honey and sliced almonds.           \n    \n    \n    Lunch:\n\nChickpea ', 'Breakfast:\n\nVegetable moong dal cheela (lentil pancakes) with mint chutney.\nFreshly squeezed orange juice.\nMid-Morning Snack:\n\nMixed nuts (almonds, walnuts, cashews).\nLunch:\n\nRajma (kidney bean) curry with quinoa.\nStir-fried cabbage with mustard ', 'Breakfast:\r\n\r\nVegetable moong dal cheela (lentil pancakes) with mint chutney.\r\nFreshly squeezed orange juice.\r\nMid-Morning Snack:\r\n\r\nMixed nuts (almonds, walnuts, cashews).\r\nLunch:\r\n\r\nRajma (kidney bean) curry with quinoa.\r\nStir-fried cabbage with mustard ', 'Breakfast:\r\n\r\nVegetable uttapam (savory pancake made with fermented batter) with coconut chutney.\r\nFresh fruit salad.\r\nMid-Morning Snack:\r\n\r\nCottage cheese (paneer) cubes with cherry tomatoes.\r\nLunch:\r\n\r\nBaingan bharta (smoky roasted eggplant mash) with wh', 'Breakfast:\r\n\r\nVegetable poha (flattened rice) cooked with mixed vegetables and peanuts.\r\nHerbal tea or ginger tea.\r\nMid-Morning Snack:\r\n\r\nGreek yogurt with mixed berries.\r\nLunch:\r\n\r\nSambar (lentil-based vegetable stew) with brown rice.\r\nStir-fried okra (bh', 'Breakfast:\r\n\r\nDhokla (steamed fermented rice cake) with mint chutney.\r\nFreshly squeezed orange juice.\r\nMid-Morning Snack:\r\n\r\nMixed nuts (cashews, almonds, pistachios).\r\nLunch:\r\n\r\nVegetable pulao (spiced rice dish with mixed vegetables) with cucumber raita.', 'Breakfast:\r\n\r\nVegetable idli sambar with coconut chutney.\r\nHerbal tea or masala chai.\r\nMid-Morning Snack:\r\n\r\nCottage cheese (paneer) cubes with cherry tomatoes.\r\nLunch:\r\n\r\nMix dal khichdi (rice and lentil porridge) with ghee.\r\nStir-fried bell peppers with '),
(4, 'Average', 'one more weekly diet plan for indian people who walks around 10000 steps daily \r\nfor vegeterian', 'Breakfast:\r\n\r\nVegetable upma (savory semolina porridge) with a side of coconut chutney.\r\nFreshly squeezed orange juice.\r\nMid-Morning Snack:\r\n\r\nGreek yogurt with honey and sliced almonds.\r\nLunch:\r\n\r\nRajma (kidney bean) curry with brown rice.\r\nStir-fried cab', 'Breakfast:\r\n\r\nRagi (finger millet) dosa with coconut chutney.\r\nHerbal tea or tulsi tea.\r\nMid-Morning Snack:\r\n\r\nMixed nuts (almonds, walnuts, cashews).\r\nLunch:\r\n\r\nChana masala (spicy chickpea curry) with whole wheat paratha.\r\nOnion-tomato salad with chaat m', 'Breakfast:\r\n\r\nVegetable moong dal cheela (lentil pancakes) with mint chutney.\r\nFresh fruit salad.\r\nMid-Morning Snack:\r\n\r\nApple slices with almond butter.\r\nLunch:\r\n\r\nSambar (lentil-based vegetable stew) with brown rice.\r\nStir-fried spinach with garlic.\r\nAft', 'Breakfast:\r\n\r\nMasala oats cooked with mixed vegetables and spices.\r\nHerbal tea or green tea.\r\nMid-Morning Snack:\r\n\r\nCarrot and cucumber sticks with hummus.\r\nLunch:\r\n\r\nVegetable pulao (spiced rice dish with mixed vegetables) with cucumber raita.\r\nStir-fried', 'Breakfast:\r\n\r\nDhokla (steamed fermented rice cake) with mint chutney.\r\nFreshly squeezed orange juice.\r\nMid-Morning Snack:\r\n\r\nRoasted chickpeas (chana) with Indian spices.\r\nLunch:\r\n\r\nMix dal khichdi (rice and lentil porridge) with ghee.\r\nStir-fried bell pep', 'Breakfast:\r\n\r\nVegetable idli sambar with coconut chutney.\r\nHerbal tea or masala chai.\r\nMid-Morning Snack:\r\n\r\nGreek yogurt with honey and sliced almonds.\r\nLunch:\r\n\r\nBaingan bharta (smoky roasted eggplant mash) with whole wheat paratha.\r\nCucumber raita.\r\nAft'),
(5, 'NonActivie', 'Breakfast:\r\n\r\nVegetable oats cooked with mixed vegetables and spices.\r\nHerbal tea or ginger tea.\r\nMid-Morning Snack:\r\n\r\nFresh fruit salad with a sprinkle of chaat masala.\r\nLunch:\r\n\r\nDal tadka (tempered lentil soup) with jeera (cumin) rice.\r\nCucumber-tomato', 'Breakfast:\n\nVegetable upma (savory semolina porridge) with a side of coconut chutney.\nFreshly squeezed orange juice.\nMid-Morning Snack:\n\nGreek yogurt with honey and sliced almonds.\nLunch:\n\nRajma (kidney bean) curry with brown rice.\nStir-fried cab', 'Breakfast:\r\n\r\nRagi (finger millet) dosa with coconut chutney.\r\nHerbal tea or tulsi tea.\r\nMid-Morning Snack:\r\n\r\nMixed nuts (almonds, walnuts, cashews).\r\nLunch:\r\n\r\nChana masala (spicy chickpea curry) with whole wheat paratha.\r\nOnion-tomato salad with chaat m', 'Breakfast:\r\n\r\nVegetable moong dal cheela (lentil pancakes) with mint chutney.\r\nFresh fruit salad.\r\nMid-Morning Snack:\r\n\r\nApple slices with almond butter.\r\nLunch:\r\n\r\nSambar (lentil-based vegetable stew) with brown rice.\r\nStir-fried spinach with garlic.\r\nAft', 'Breakfast:\r\n\r\nMasala oats cooked with mixed vegetables and spices.\r\nHerbal tea or green tea.\r\nMid-Morning Snack:\r\n\r\nCarrot and cucumber sticks with hummus.\r\nLunch:\r\n\r\nVegetable pulao (spiced rice dish with mixed vegetables) with cucumber raita.\r\nStir-fried', 'Breakfast:\r\n\r\nDhokla (steamed fermented rice cake) with mint chutney.\r\nFreshly squeezed orange juice.\r\nMid-Morning Snack:\r\n\r\nRoasted chickpeas (chana) with Indian spices.\r\nLunch:\r\n\r\nMix dal khichdi (rice and lentil porridge) with ghee.\r\nStir-fried bell pep', 'Breakfast:\r\n\r\nVegetable idli sambar with coconut chutney.\r\nHerbal tea or masala chai.\r\nMid-Morning Snack:\r\n\r\nGreek yogurt with honey and sliced almonds.\r\nLunch:\r\n\r\nBaingan bharta (smoky roasted eggplant mash) with whole wheat paratha.\r\nCucumber raita.\r\nAft'),
(6, '0', 'Breakfast:\nVegetable oats cooked with mixed vegetables and spices.\nHerbal tea or ginger tea.\nMid-Morning Snack:\nFresh fruit salad with a sprinkle of chaat masala.\nLunch:\nDal tadka (tempered lentil soup) with jeera (cumin) rice.\nCucumber-tomato salad', 'Breakfast:\r\nVegetable upma (savory semolina porridge) with a side of coconut chutney.\r\nFreshly squeezed orange juice.\r\nMid-Morning Snack:\r\nGreek ogurt with honey and sliced almonds.\r\nLunch:\r\nRajma (kidney bean) curry with brown rice.\r\nStir-fried cabbage wi', 'Breakfast:\r\nRagi (finger millet) dosa with coconut chutney.\r\nHerbal tea or tulsi tea.\r\nMid-Morning Snack:\r\nMixed nuts (almonds, walnuts, cashews).\r\nLunch:\r\nChana masala (spicy chickpea curry) with whole wheat paratha.\r\nOnion-tomato salad with chaat masala.', 'Breakfast:\r\nVegetable moong dal cheela (lentil pancakes) with mint chutney.\r\nFresh fruit salad.\r\nMid-Morning Snack:\r\nApple slices with almond butter.\r\nLunch:\r\nSambar (lentil-based vegetable stew) with brown rice.\r\nStir-fried spinach with garlic.\r\nAfternoon', 'Breakfast:\r\n\r\nMasala oats cooked with mixed vegetables and spices.\r\nHerbal tea or green tea.\r\nMid-Morning Snack:\r\n\r\nCarrot and cucumber sticks with hummus.\r\nLunch:\r\n\r\nVegetable pulao (spiced rice dish with mixed vegetables) with cucumber raita.\r\nStir-fried', 'Breakfast:\r\n\r\nDhokla (steamed fermented rice cake) with mint chutney.\r\nFreshly squeezed orange juice.\r\nMid-Morning Snack:\r\n\r\nRoasted chickpeas (chana) with Indian spices.\r\nLunch:\r\n\r\nMix dal khichdi (rice and lentil porridge) with ghee.\r\nStir-fried bell pep', 'Breakfast:\r\n\r\nVegetable idli sambar with coconut chutney.\r\nHerbal tea or masala chai.\r\nMid-Morning Snack:\r\n\r\nGreek yogurt with honey and sliced almonds.\r\nLunch:\r\n\r\nBaingan bharta (smoky roasted eggplant mash) with whole wheat paratha.\r\nCucumber raita.\r\nAft');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bmiwise_diet_requirement`
--
ALTER TABLE `bmiwise_diet_requirement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_admin`
--
ALTER TABLE `login_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_user`
--
ALTER TABLE `register_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_for_diet_according_to_diet_type_and_bodytype`
--
ALTER TABLE `request_for_diet_according_to_diet_type_and_bodytype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_for_diet_according_to_steps`
--
ALTER TABLE `request_for_diet_according_to_steps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestiona_ccording_steps`
--
ALTER TABLE `suggestiona_ccording_steps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestion_according_to_bmi`
--
ALTER TABLE `suggestion_according_to_bmi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weekly_diet_according_5000steps`
--
ALTER TABLE `weekly_diet_according_5000steps`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bmiwise_diet_requirement`
--
ALTER TABLE `bmiwise_diet_requirement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login_admin`
--
ALTER TABLE `login_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `register_user`
--
ALTER TABLE `register_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `request_for_diet_according_to_diet_type_and_bodytype`
--
ALTER TABLE `request_for_diet_according_to_diet_type_and_bodytype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `request_for_diet_according_to_steps`
--
ALTER TABLE `request_for_diet_according_to_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `suggestiona_ccording_steps`
--
ALTER TABLE `suggestiona_ccording_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `suggestion_according_to_bmi`
--
ALTER TABLE `suggestion_according_to_bmi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `weekly_diet_according_5000steps`
--
ALTER TABLE `weekly_diet_according_5000steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
