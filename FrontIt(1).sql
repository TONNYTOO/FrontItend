-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 08, 2024 at 11:21 AM
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
-- Database: `FrontIt`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(500) NOT NULL,
  `product_cost` int(50) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `product_images_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_desc`, `product_cost`, `product_category`, `product_images_name`) VALUES
(1, 'Infinix Zero Ultra\r\n', 'A flagship device featuring a 6.8-inch AMOLED display, 180W fast charging, and a 200MP main camera for stunning photography.', 23000, 'Phones', 'phone1.jpg'),
(2, 'iPhone 14', 'pple\'s latest smartphone featuring a powerful A15 Bionic chip, stunning Super Retina XDR display, and advanced camera system.', 45999, 'Phones', 'phone2.jpg'),
(3, 'Samsung Galaxy S23', 'Apple\'s latest smartphone featuring a powerful A15 Bionic chip, stunning Super Retina XDR display, and advanced camera system.', 45999, 'Phones', 'phone3.jpg'),
(4, 'OnePlus 11', ' Fast and smooth smartphone with a Fluid AMOLED display, Snapdragon 8 Gen 2 processor, and impressive battery life.', 30999, 'Phones', 'phone4.jpg'),
(5, 'Xiaomi 13', 'Premium smartphone with a 120Hz AMOLED display, Snapdragon 8 Gen 2 chipset, and advanced camera features.', 23999, 'Phones', 'phone5.jpg'),
(6, ' Sony Xperia 1 IV', 'A multimedia powerhouse with a 4K HDR OLED display, pro-grade camera capabilities, and robust audio features.', 24999, 'Phones', 'phone6.jpg'),
(7, 'Motorola Edge 40', 'Stylish phone featuring a 144Hz pOLED display, powerful battery, and a capable camera system.', 44999, 'Phones', 'phone2.jpg'),
(8, 'Oppo Find X5 Pro', 'Flagship smartphone with a 6.7-inch AMOLED display, powerful camera system, and fast charging technology.\r\n', 19999, 'Phones', 'phone4.jpg'),
(9, 'Vivo X80 Pro', 'High-end smartphone with a Zeiss-branded camera system, AMOLED display, and fast charging support.', 23999, 'Phones', 'phone5.jpg'),
(10, 'Ring Video Doorbell Pro 2', 'High-definition smart doorbell with advanced motion detection and two-way audio.', 20000, 'Electronics', 'screen1.jpg'),
(11, 'Microsoft Surface Pro 9', 'Versatile 2-in-1 laptop with a detachable keyboard, touchscreen, and powerful performance for productivity.\r\n', 59999, 'Electronics', 'screen3,jpg'),
(12, 'LG OLED55CXPUA', '55-inch 4K OLED TV with stunning picture quality and smart features.', 70999, 'Electronics', 'screen2.jpg'),
(13, 'Canon EOS R10', 'Mirrorless camera with 24.2 MP sensor, fast autofocus, and 4K video recording capabilities.\r\n', 30999, 'Electronics', 'screen5.jpg'),
(14, 'Sony WH-1000XM4', 'Industry-leading noise-canceling wireless headphones with superior sound quality.', 9999, 'Electronics', 'screen4.jpg'),
(15, ' Dell XPS 13', 'Sleek ultrabook with an InfinityEdge display and powerful Intel processors.', 99999, 'Electronics', 'screen6.jpg'),
(16, 'Hydrating Face Cream', 'A rich cream that deeply hydrates the skin.', 30, 'Beauty', 'bed1.jpg'),
(17, 'Nourishing Hair Mask', 'Restores shine and softness to dry hair.', 25, 'Beauty', 'bed2.jpg'),
(18, 'Revitalizing Eye Serum', 'Reduces dark circles and puffiness around the eyes.', 36, 'Beauty', 'bed3.jpg'),
(19, 'Moisturizing Lip Balm', 'Keeps lips soft and hydrated all day.', 6, 'Beauty', 'bed5.jpg'),
(20, 'Exfoliating Body Scrub', 'Gently removes dead skin cells for smooth skin.', 20, 'Beauty', 'bed6.jpg'),
(21, 'Calming Face Mist', 'Refreshes and soothes the skin with natural ingredients.', 16, 'Beauty', 'bed8.jpg'),
(22, 'Brightening Vitamin C Serum', 'Boosts skin radiance and evens tone.', 50, 'Beauty', 'bed9.jpg'),
(23, 'Soothing Aloe Vera Gel', 'Relieves sunburn and hydrates the skin.', 13, 'Beauty', 'bed10.jpg'),
(24, 'Luxury Bath Bombs', 'Fizzing bath bombs for a relaxing bath experience.', 15, 'Beauty', 'bed11.jpg'),
(25, 'Fragrant Body Lotion', 'Moisturizes and leaves a subtle fragrance on the skin.', 22, 'Beauty', 'bed12.jpg'),
(26, 'Sneaker X1', 'Lightweight and comfortable sneakers for everyday wear.', 60, 'shoes', 'advert1.jpg'),
(27, 'Running Pro', 'High-performance running shoes for serious athletes.', 90, 'shoes', 'advert.jpg'),
(28, 'Casual Slip-Ons', 'Easy to wear slip-on shoes for casual outings.', 40, 'shoes', 'adevert1.jpg'),
(29, 'Formal Leather Shoes', 'Stylish leather shoes perfect for formal occasions.', 120, 'shoes', 'appl.jpg'),
(30, 'Hiking Boots', 'Durable boots designed for outdoor hiking adventures.', 100, 'shoes', 'appl.jpg'),
(31, 'Sandals', 'Comfortable sandals for hot summer days.', 30, 'shoes', 'appl2.jpg'),
(32, 'Basketball High Tops', 'Supportive high-top shoes for basketball players.', 110, 'shoes', 'appl3.jpg'),
(33, 'Winter Boots', 'Insulated boots to keep your feet warm in winter.', 80, 'shoes', 'appl4.jpg'),
(34, 'Flip Flops', 'Casual flip flops for the beach or pool.', 20, 'shoes', 'appl5.jpg'),
(35, 'Sneaker X2', 'Updated version of our popular sneaker line.', 65, 'shoes', 'bath2.jpg'),
(36, 'Testing', 'Testing the product', 6578, 'electronics', 'HOME'),
(37, 'Testing', 'Testing the product', 6578, 'electronics', 'HOME'),
(40, 'Sport Shoes', 'Sport wear', 6549, 'shoes', '1690613464474.webp'),
(41, 'Sport Shoes', 'Sport wear', 6549, 'shoes', '1690613464474.webp'),
(42, 'Sport Shoes', 'Sport wear', 6549, 'shoes', '1690613464474.webp'),
(43, 'Floral Maxi Dress', 'A flowing maxi dress adorned with vibrant floral patterns, perfect for summer outings. Features adjustable straps and a cinched waist.', 1200, 'dresses', 'istockphoto-1253551842-1024x1024.jpg'),
(44, ' Classic Little Black Dress', 'Timeless little black dress with a fitted silhouette and subtle lace detailing. Ideal for cocktail parties and evening events.', 900, 'dresses', 'istockphoto-186738839-612x612.jpg'),
(45, 'Bohemian Off-Shoulder Dress', 'A relaxed off-shoulder dress with a boho vibe, featuring an elastic waistband and tiered ruffles. Perfect for festivals and casual outings.', 1546, 'dresses', 'istockphoto-1336388629-612x612.jpg'),
(46, ' Chic A-Line Dress', 'A sophisticated A-line dress with a structured bodice and flared skirt, made from breathable fabric. Great for office wear or brunch dates.', 658, 'dresses', 'istockphoto-94144877-612x612.jpg'),
(47, 'Elegant Wrap Dress', 'A versatile wrap dress that flatters all body types, featuring a deep V-neck and tie waist. Suitable for both day and night.', 450, 'dresses', 'istockphoto-1934573346-612x612.jpg'),
(48, 'Vintage Polka Dot Dress', 'A retro-inspired dress with playful polka dots, complete with a Peter Pan collar and a flared skirt. Perfect for tea parties or casual outings.', 600, 'dresses', 'istockphoto-2170129525-612x612.jpg'),
(49, 'Summer Striped Sundress', 'A lightweight sundress featuring cheerful stripes, ideal for sunny days. Has adjustable spaghetti straps and a flared hem.', 890, 'dresses', 'photo-1629737166947-7b5b5ad11622.avif'),
(50, 'Edgy Leather Midi Dress', ' A bold leather midi dress with a fitted bodice and a flared skirt, adding an edgy touch to any outfit. Perfect for night outs.', 900, 'dresses', 'photo-1653490344913-03783e66b6cd.avif'),
(51, 'Lace Overlay Evening Gown', 'An exquisite evening gown with intricate lace overlay and a fitted silhouette. Perfect for formal events and galas.', 1000, 'dresses', 'premium_photo-1676236306466-25ba882070b3.avif'),
(52, 'Casual T-Shirt Dress', 'A comfortable t-shirt dress made from soft cotton, featuring a relaxed fit and side pockets. Perfect for lounging or running errands.', 1200, 'dresses', 'premium_photo-1674718918254-8f96b77c12d8.avif'),
(53, 'Classic Leather Tote', 'A timeless leather tote bag with a spacious interior and minimalist design. Perfect for work or everyday use.', 550, 'handbags', 'istockphoto-91737151-612x612.jpg'),
(54, 'Chic Crossbody Bag', 'A stylish crossbody bag featuring a quilted design and gold-tone hardware. Ideal for hands-free convenience on the go.', 600, 'handbags', 'istockphoto-673170526-612x612.jpg'),
(55, 'Bohemian Fringe Bag', 'A unique fringe handbag made from soft suede, perfect for adding a boho flair to any outfit.', 700, 'handbags', 'istockphoto-841722676-612x612.jpg'),
(56, 'Elegant Evening Clutch', 'A sleek evening clutch with a metallic finish and intricate beadwork. Perfect for formal events and parties.', 1200, 'handbags', 'istockphoto-842340736-612x612.jpg'),
(57, 'Functional Backpack Purse', 'A versatile backpack purse made from durable nylon, featuring multiple compartments for organization and style.', 1000, 'handbags', 'istockphoto-842343442-612x612.jpg'),
(58, 'Vintage-Inspired Satchel', 'A classic satchel bag with a structured silhouette and antique brass accents, offering a blend of style and functionality.', 800, 'handbags', 'istockphoto-1367497881-612x612.jpg'),
(59, 'Sporty Mini Messenger Bag', 'A compact messenger bag with an adjustable strap and sporty design. Perfect for casual outings and running errands.', 500, 'handbags', 'istockphoto-1525574900-612x612.jpg'),
(60, 'Luxurious Velvet Handbag', 'An elegant velvet handbag with a unique texture and gold chain strap, ideal for adding a touch of luxury to your outfit.', 900, 'handbags', 'istockphoto-1525596898-1024x1024.jpg'),
(61, 'Colorful Canvas Beach Bag', 'A fun and vibrant canvas bag, perfect for beach days or picnics, featuring ample space and durable handles.', 560, 'handbags', 'istockphoto-1553810014-612x612.webp'),
(62, 'Modern Bucket Bag', 'A trendy bucket bag with a drawstring closure and stylish design. Great for both casual and dressy occasions.', 1250, 'handbags', 'istockphoto-1771506693-612x612.jpg'),
(63, 'Cozy Fleece Socks', 'Ultra-soft fleece socks designed for warmth and comfort, perfect for lounging at home on chilly days.', 250, 'socks', 'istockphoto-470066880-612x612.jpg'),
(64, 'Colorful Ankle Socks', 'A vibrant pack of ankle socks featuring fun patterns and colors, adding a pop of style to any outfit.', 200, 'socks', 'istockphoto-898684328-612x612.jpg'),
(65, 'Athletic Compression Socks', 'Performance socks designed with compression technology for support during workouts and long runs.', 150, 'socks', 'istockphoto-1753765856-612x612.jpg'),
(66, 'Classic Dress Socks', 'Elegant dress socks made from premium cotton, perfect for formal occasions and office wear. Available in various colors.', 200, 'socks', 'istockphoto-524424507-612x612.jpg'),
(67, 'Funny Novelty Socks', 'Whimsical socks featuring quirky designs and sayings, sure to bring a smile to your face. Great for gifting!', 400, 'socks', 'istockphoto-926260538-612x612.jpg'),
(68, 'Warm Wool Hiking Socks', 'Thick wool socks designed for outdoor activities, providing warmth and moisture-wicking properties for hiking adventures.', 500, 'socks', 'istockphoto-1216001560-612x612.jpg'),
(69, 'Low-Cut Sports Socks', 'Breathable low-cut sports socks with arch support and cushioned soles, ideal for everyday wear or athletic activities.', 450, 'socks', 'istockphoto-694785062-612x612.jpg'),
(70, ' Elegant Cashmere Blend Socks', 'Luxurious cashmere blend socks that offer ultimate softness and warmth, perfect for cozying up during winter.', 230, 'socks', 'istockphoto-465145701-612x612.jpg'),
(71, 'Funky Striped Crew Socks', ' Fun crew socks featuring bold stripes and bright colors, perfect for adding a playful touch to your wardrobe.', 200, 'socks', 'istockphoto-518428533-1024x1024.jpg'),
(72, 'Bamboo Comfort Socks', 'Eco-friendly socks made from bamboo fibers, offering natural moisture-wicking and odor-resistant properties.', 450, 'socks', 'istockphoto-1062826636-612x612.jpg'),
(73, 'Classic Baseball Cap', 'A timeless baseball cap made from durable cotton, featuring an adjustable strap for a perfect fit. Great for casual outings.', 500, 'cap', 'istockphoto-991343104-612x612.jpg'),
(74, 'Trucker Hat', 'A stylish trucker hat with a mesh back for breathability, perfect for outdoor activities and sunny days.', 700, 'cap', 'istockphoto-1480922000-612x612.jpg'),
(75, ' Vintage Snapback Cap', 'A retro-inspired snapback cap with an embroidered logo, offering a cool look for any casual outfit.', 658, 'cap', 'istockphoto-1453988945-612x612.jpg'),
(76, 'Lightweight Bucket Hat', 'A packable bucket hat made from lightweight fabric, ideal for beach trips or hiking adventures.', 345, 'cap', 'istockphoto-2167283107-612x612.jpg'),
(77, 'Stylish Fedora', 'A chic fedora made from felt, perfect for dressing up any outfit. Features a decorative band for added flair', 450, 'cap', 'istockphoto-1597536291-612x612.jpg'),
(78, 'Sports Visor', 'A functional sports visor with UV protection, designed for athletes and outdoor enthusiasts. Adjustable for comfort.', 1200, 'cap', 'istockphoto-185248743-612x612.jpg'),
(79, 'Embroidered Beanie', 'A cozy knitted beanie featuring an embroidered design, perfect for keeping warm during winter months.', 450, 'cap', 'premium_photo-1675989087109-f8a00bfea7d1.avif'),
(80, 'Graphic Dad Hat', 'A relaxed dad hat with a fun graphic print, perfect for a laid-back style and easy to wear.', 560, 'cap', 'istockphoto-182241866-612x612.jpg'),
(81, 'Sun Protection Cap', 'A wide-brimmed cap designed for sun protection, featuring moisture-wicking fabric and a removable chin strap.', 560, 'cap', 'istockphoto-2167283107-612x612.jpg'),
(82, 'Fashionable Wool Cap', 'A stylish wool cap with a cozy lining, perfect for adding warmth and style during colder months.', 670, 'cap', 'istockphoto-518911049-612x612.jpg'),
(83, ' Classic Leather Belt', 'A timeless leather belt with a sleek design, perfect for both casual and formal outfits. Features a durable metal buckle.\r\nCost: $35.00', 670, 'belts', 'istockphoto-1173641122-612x612.webp'),
(84, 'Woven Fabric Belt', 'A stylish woven fabric belt that adds texture to your look. Adjustable and lightweight, great for everyday wear.', 800, 'belts', 'istockphoto-610220134-612x612.webp'),
(85, ' Suede Dress Belt', 'An elegant suede belt that complements dress pants and suits. Offers a sophisticated touch to any formal attire.', 900, 'belts', 'photo-1679759022456-a7eae2257ba2.avif'),
(86, 'Casual Canvas Belt', ' A durable canvas belt with a vibrant color palette, perfect for shorts and casual outfits. Features a metal buckle.', 1000, 'belts', 'istockphoto-1297005315-612x612.webp'),
(87, 'Double Ring Belt', 'A trendy double ring belt made from vegan leather, perfect for cinching waistlines and adding a fashionable touch.', 120, 'belts', 'photo-1664286022075-8e997e95bd17.avif'),
(88, 'Tactical Web Belt', 'A sturdy tactical belt designed for outdoor activities, featuring a quick-release buckle and adjustable length', 1200, 'belts', 'photo-1585856331452-87ea5a04c21c.avif'),
(89, 'Metallic Statement Belt', 'A bold metallic belt that adds a striking accent to any outfit. Ideal for dressy occasions and night outs.', 1900, 'belts', 'photo-1664286074240-d7059e004dff.avif'),
(90, 'Braided Leather Belt', 'A fashionable braided leather belt with a vintage look, suitable for both casual and semi-formal wear.', 1270, 'belts', 'photo-1667284152823-0b07a791fb79.avif'),
(91, ' Elastic Stretch Belt', 'A comfortable elastic belt designed for all-day wear, featuring a stylish buckle and adjustable fit.', 1200, 'belts', 'premium_photo-1726769202190-ad2a3f2f360b.avif'),
(92, 'Reversible Belt', 'A versatile reversible belt that offers two looks in one. Features a smooth finish and a classic buckle.', 1200, 'belts', 'photo-1664286074176-5206ee5dc878.avif'),
(93, 'Classic Chinos', 'Timeless chinos made from soft cotton, offering a tailored fit and versatile style. Perfect for both casual and semi-formal occasions.', 2000, 'trouser', 'istockphoto-1127836763-612x612.jpg'),
(94, 'Slim Fit Jeans', 'Stylish slim fit jeans crafted from durable denim, featuring a flattering cut and subtle stretch for comfort.', 1900, 'trouser', 'photo-1511105612320-2e62a04dd044.avif'),
(95, 'Casual Cargo Pants', 'Comfortable cargo pants with multiple pockets and a relaxed fit, ideal for outdoor activities and everyday wear.', 1200, 'trouser', 'istockphoto-1405084101-612x612.jpg'),
(96, 'Tailored Dress Pants', 'Elegant tailored dress pants made from high-quality fabric, perfect for office wear or formal events.', 1500, 'trouser', 'istockphoto-1427279036-1024x1024.jpg'),
(97, 'Stretchy Jogger Pants', 'Soft and stretchy jogger pants with an elastic waistband, perfect for lounging or casual outings.', 1280, 'trouser', 'istockphoto-1314274760-1024x1024.webp'),
(98, 'Wide-Leg Trousers', 'Fashionable wide-leg trousers made from lightweight fabric, offering a relaxed fit and chic silhouette.', 1000, 'trouser', 'photo-1560243563-062bfc001d68.avif'),
(99, 'High-Waisted Culottes', 'Trendy high-waisted culottes with a flowy design, perfect for pairing with fitted tops for a stylish look.', 1900, 'trouser', 'photo-1624378441864-6eda7eac51cb.avif'),
(100, 'Professional Slim Leg Trousers', 'Sleek slim leg trousers designed for the office, featuring a comfortable waistband and classic cut.', 1300, 'trouser', 'premium_photo-1690366911138-bd50985e0379.avif'),
(101, ' Casual Linen Pants', 'Lightweight linen pants ideal for warm weather, offering breathability and a relaxed fit for ultimate comfort.', 1250, 'trouser', 'istockphoto-1292675705-612x612.jpg'),
(102, 'Printed Palazzo Pants', 'Eye-catching palazzo pants with bold prints, perfect for making a statement while staying comfortable.', 2500, 'trouser', 'photo-1541840031508-326b77c9a17e.avif');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `gender`, `phone`, `password`) VALUES
(1, 'wale', 'wale@gmail.com', 'female', '02546977', '00023'),
(2, 'Yun Ming', 'ming.yun@gmail.com', 'male', '+865896325', '7896'),
(3, 'Man', 'zxcv@yahoo.com', 'female', '023659874', '00002'),
(4, 'Man', 'weman@gmail.com', 'male', '0754545896', '012547'),
(5, 'user', 'user.g@mail.com', 'female', '0752636984', '01203'),
(7, 'lip', 'pilo@gmail.com', 'male', '0745485698', '0000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
