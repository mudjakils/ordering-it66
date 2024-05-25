-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2024 at 07:01 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `opd`
--

-- --------------------------------------------------------

--
-- Table structure for table `pizza`
--

CREATE TABLE `pizza` (
  `pizzaId` int(12) NOT NULL,
  `pizzaName` varchar(255) NOT NULL,
  `pizzaPrice` int(12) NOT NULL,
  `pizzaDesc` text NOT NULL,
  `pizzaCategorieId` int(12) NOT NULL,
  `pizzaPubDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pizza`
--

INSERT INTO `pizza` (`pizzaId`, `pizzaName`, `pizzaPrice`, `pizzaDesc`, `pizzaCategorieId`, `pizzaPubDate`) VALUES
(1, 'Margherita', 99, 'A hugely popular margherita, with a deliciously tangy single cheese topping\r\n\r\n', 1, '2024-01-01 00:00:00'),
(2, 'Double Cheese Margherita', 199, 'The ever-popular Margherita - loaded with extra cheese... oodies of it', 1, '2024-01-01 00:00:00'),
(3, 'Farm House\r\n', 149, 'A pizza that goes ballistic on veggies! Check out this mouth watering overload of crunchy, crisp capsicum, succulent mushrooms and fresh tomatoes\r\n\r\n', 1, '2024-01-01 00:00:00'),
(4, 'Peppy Paneer', 249, 'Chunky paneer with crisp capsicum and spicy red pepper - quite a mouthful!\r\n\r\n', 1, '2024-01-01 00:00:00'),
(5, 'Mexican Green Wave\r\n', 149, 'A pizza loaded with crunchy onions, crisp capsicum, juicy tomatoes and jalapeno with a liberal sprinkling of exotic Mexican herbs.\r\n\r\n', 1, '2024-01-01 00:00:00'),
(6, 'Deluxe Veggie\r\n', 319, 'For a vegetarian looking for a BIG treat that goes easy on the spices, this one\'s got it all.. The onions, the capsicum, those delectable mushrooms - with paneer and golden corn to top it all.\r\n\r\n', 1, '2024-01-01 00:00:00'),
(7, 'Veg Extravaganza\r\n', 299, 'A pizza that decidedly staggers under an overload of golden corn, exotic black olives, crunchy onions, crisp capsicum, succulent mushrooms, juicyfresh tomatoes and jalapeno - with extra cheese to go all around.\r\n\r\n', 1, '2024-01-01 00:00:00'),
(8, 'Cheese N Corn\r\n', 199, 'Cheese I Golden Corn', 1, '2024-01-01 00:00:00'),
(9, 'PANEER MAKHANI\r\n', 219, 'Paneer and Capsicum on Makhani Sauce', 1, '2024-01-01 00:00:00'),
(10, 'VEGGIE PARADISE\r\n', 299, 'Goldern Corn, Black Olives, Capsicum & Red Paprika\r\n\r\n', 1, '2024-01-01 00:00:00'),
(11, 'FRESH VEGGIE', 149, 'Onion I Capsicum', 1, '2024-01-01 00:00:00'),
(12, 'Indi Tandoori Paneer\r\n', 349, 'It is hot. It is spicy. It is oh-so-Indian. Tandoori paneer with capsicum I red paprika I mint mayo\r\n\r\n', 1, '2024-01-01 00:00:00'),
(13, 'PEPPER BARBECUE CHICKEN', 199, 'Pepper Barbecue Chicken I Cheese', 2, '2024-01-01 00:00:00'),
(14, 'CHICKEN SAUSAGE', 249, 'Chicken Sausage I Cheese', 2, '2024-01-01 00:00:00'),
(15, 'Chicken Golden Delight\r\n', 249, 'Mmm! Barbeque chicken with a topping of golden corn loaded with extra cheese. Worth its weight in gold!\r\n\r\n', 2, '2024-01-01 00:00:00'),
(16, 'Non Veg Supreme\r\n', 399, 'Bite into supreme delight of Black Olives, Onions, Grilled Mushrooms, Pepper BBQ Chicken, Peri-Peri Chicken, Grilled Chicken Rashers\r\n\r\n', 2, '2024-01-01 00:00:00'),
(17, 'Chicken Dominator', 319, 'Treat your taste buds with Double Pepper Barbecue Chicken, Peri-Peri Chicken, Chicken Tikka & Grilled Chicken Rashers', 2, '2024-01-01 00:00:00'),
(18, 'PEPPER BARBECUE & ONION\r\n', 249, 'Pepper Barbecue Chicken I Onion', 2, '2024-01-01 00:00:00'),
(19, 'CHICKEN FIESTA', 199, 'Grilled Chicken Rashers I Peri-Peri Chicken I Onion I Capsicum', 2, '2024-01-01 00:00:00'),
(20, 'Indi Chicken Tikka', 349, 'The wholesome flavour of tandoori masala with Chicken tikka I onion I red paprika I mint mayo', 2, '2024-01-01 00:00:00'),
(21, 'TOMATO', 99, 'Juicy tomato in a flavourful combination with cheese I tangy sauce', 3, '2024-01-01 00:00:00'),
(22, 'VEG LOADED', 149, 'Tomato | Grilled Mushroom |Jalapeno |Golden Corn | Beans in a fresh pan crust', 3, '2024-01-01 00:00:00'),
(23, 'CHEESY', 99, 'Orange Cheddar Cheese I Mozzarella', 3, '2024-01-01 00:00:00'),
(24, 'CAPSICUM', 99, 'Capsicum', 3, '2024-01-01 00:00:00'),
(25, 'ONION', 99, 'onion', 3, '2024-01-01 00:00:00'),
(26, 'GOLDEN CORN', 139, 'Golden Corn', 3, '2024-01-01 00:00:00'),
(27, 'PANEER & ONION', 149, 'Creamy Paneer | Onion', 3, '2024-01-01 00:00:00'),
(28, 'CHEESE N TOMATO', 149, 'A delectable combination of cheese and juicy tomato', 3, '2024-01-01 00:00:00'),
(29, 'Garlic Breadsticks', 99, 'The endearing tang of garlic in breadstics baked to perfection.', 4, '2024-01-01 00:00:00'),
(30, 'Stuffed Garlic Bread', 99, 'Freshly Baked Garlic Bread stuffed with mozzarella cheese, sweet corns & tangy and spicy jalapeños', 4, '2024-01-01 00:00:00'),
(31, 'Veg Pasta Italiano White', 99, 'Penne Pasta tossed with extra virgin olive oil, exotic herbs & a generous helping of new flavoured sauce.', 4, '2024-01-01 00:00:00'),
(32, 'Non Veg Pasta Italiano White', 99, 'Penne Pasta tossed with extra virgin olive oil, exotic herbs & a generous helping of new flavoured sauce.', 4, '2024-01-01 00:00:00'),
(33, 'Cheese Jalapeno Dip', 35, 'A soft creamy cheese dip spiced with jalapeno.', 4, '2024-01-01 00:00:00'),
(34, 'Cheese Dip', 35, 'A dreamy creamy cheese dip to add that extra tang to your snack.', 4, '2024-01-01 00:00:00'),
(35, 'Lava Cake', 99, 'Filled with delecious molten chocolate inside.', 4, '2024-01-01 00:00:00'),
(36, 'Butterscotch Mousse Cake', 149, 'A Creamy & Chocolaty indulgence with layers of rich, fluffy Butterscotch Cream and delicious Dark Chocolate Cake, topped with crunchy Dark Chocolate morsels - for a perfect dessert treat!', 4, '2024-01-01 00:00:00'),
(37, 'Lipton Ice Tea', 25, ' 250ml', 5, '2024-01-01 00:00:00'),
(38, 'Mirinda', 35, '500ml', 5, '2024-01-01 00:00:00'),
(39, 'PEPSI BLACK CAN', 45, 'PEPSI BLACK CAN', 5, '2024-01-01 00:00:00'),
(40, 'Pepsi\r\n', 52, '500ml', 5, '2024-01-01 00:00:00'),
(41, '7Up', 52, '500ml', 5, '2024-01-01 00:00:00'),
(42, 'Cheese Burst', 249, 'Crust with oodles of yummy liquid cheese filled inside.', 6, '2024-01-01 00:00:00'),
(43, 'Classic Hand Tossed', 249, 'Dominos traditional hand stretched crust, crisp on outside, soft & light inside.', 6, '2024-01-01 00:00:00'),
(44, 'Wheat Thin Crust', 299, 'Presenting the light healthier and delicious light wheat thin crust from Dominos.', 6, '2024-01-01 00:00:00'),
(45, 'Fresh Pan Pizza', 299, 'Tastiest Pan Pizza.Ever.\r\nDomino’s freshly made pan-baked pizza; deliciously soft ,buttery,extra cheesy and delightfully crunchy.', 6, '2024-01-01 00:00:00'),
(46, 'New Hand Tossed', 299, 'Classic Domino\'s crust. Fresh, hand stretched.', 6, '2024-01-01 00:00:00'),
(47, 'BURGER PIZZA- CLASSIC VEG', 129, 'Bite into delight! Witness the epic combination of pizza and burger with our classic Burger Pizza, that looks good and tastes great!', 7, '2024-01-01 00:00:00'),
(48, 'BURGER PIZZA- PREMIUM VEG', 139, 'The good just got better! Treat yourself to the premium taste of the Burger Pizza, that looks good and tastes great with paneer and red paprika.', 7, '2024-01-01 00:00:00'),
(49, 'BURGER PIZZA- CLASSIC NON VEG', 149, 'For all the meat cravers, try the classic non-veg Burger Pizza loaded with the goodness of burger and the greatness of pizza.', 7, '2024-01-01 00:00:00'),
(50, 'Extra Cheese', 35, 'Extra Cheese', 8, '2024-01-01 00:00:00'),
(51, 'veg toppings', 55, 'Black Olives, Crisp Capsicum, Paneer, Mushroom, Golden Corn, Fresh Tomato, Jalapeno, Red Pepper & Babycorn.', 8, '2024-01-01 00:00:00'),
(52, 'Non Veg Toppings', 55, 'Barbeque Chicken, Hot \'n\' Spicy Chicken,Chunky Chicken and Chicken Salami.', 8, '2024-01-01 00:00:00'),
(53, 'Packaged Drinking Water', 20, 'Drinking Water	', 5, '2024-01-01 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`pizzaId`);
ALTER TABLE `pizza` ADD FULLTEXT KEY `pizzaName` (`pizzaName`,`pizzaDesc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pizza`
--
ALTER TABLE `pizza`
  MODIFY `pizzaId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
