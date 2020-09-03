-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-09-03 17:31:11
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `goods`
--

-- --------------------------------------------------------

--
-- 表的结构 `banner`
--

CREATE TABLE `banner` (
  `id` int(8) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `banner`
--

INSERT INTO `banner` (`id`, `name`, `img`) VALUES
(1, 'D0001', '1b4dc936a1d606309642af39175ce0c1.jpeg'),
(2, 'D0002', '4e40bff1724c85a1d77f8b781480700f.jpeg'),
(3, 'D0003', '7b133ff1c7dae9e142ceb17175447f6e.jpeg'),
(4, 'D0004', 'aba8718f0f989055e68d65805d0b75ae.jpeg'),
(5, 'D0005', 'feff80d28ba81fce6df82554167b77f2.jpeg'),
(6, 'D0006', 'fffe4a4f58a2cbbf17195c5f10b562ca.jpeg');

-- --------------------------------------------------------

--
-- 表的结构 `daygoods`
--

CREATE TABLE `daygoods` (
  `id` int(8) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(5) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage` int(5) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `daygoods`
--

INSERT INTO `daygoods` (`id`, `name`, `price`, `img`, `storage`, `description`) VALUES
(1, '新品手机', 3999, '1b97596eef20a1c00bd0fbc6ae22e0a0.jpg', 99, '超级牛逼的手机'),
(2, '小米手环', 299, '4c16b6624afc5bb4f450c740fc27e870.jpg', 99, '万能的手环'),
(3, '小米保温杯', 225, '6fa8eadd5783884f2ca96a000ba659c6.jpg', 99, '美女专用'),
(4, '小米键鼠套装', 689, '8b15c188945e120f16f38d9fbed9c1cb.jpg', 99, '极客专用，畅享舒畅'),
(5, '小米多功能手表', 499, '9e1de866b687092eb208db5f9ed26a8a.jpg', 99, '简约大气，高大帅气'),
(6, '小米加湿器', 735, 'b825f522b4b026b5eb976197829685eb.jpg', 99, '白色尽享丝滑'),
(7, '小米保温杯', 225, '6fa8eadd5783884f2ca96a000ba659c6.jpg', 99, '美女专用'),
(8, '小米键鼠套装', 689, '8b15c188945e120f16f38d9fbed9c1cb.jpg', 99, '极客专用，畅享舒畅'),
(9, '小米多功能手表', 499, '9e1de866b687092eb208db5f9ed26a8a.jpg', 99, '简约大气，高大帅气'),
(10, '小米加湿器', 735, 'b825f522b4b026b5eb976197829685eb.jpg', 99, '白色尽享丝滑');

-- --------------------------------------------------------

--
-- 表的结构 `domdpy1`
--

CREATE TABLE `domdpy1` (
  `id` int(8) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `storage` int(5) NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `domdpy1`
--

INSERT INTO `domdpy1` (`id`, `name`, `price`, `img`, `storage`, `detail`) VALUES
(1, '健身器材', 2689, '{\"small\":\"8b96d6a83fa465ff713e73f5a272c1d9.jpg\",\"display\":[\"1a00f2750c946251ecefc8f51ef7884d.jpg@base@tagimgScale&Fwebp&h166&w166\",\"9671c5f0d7dfd10240847a550e99d0d9.jpg@base@tagimgScale&Fwebp&h166&w166\",\"fshop_2e62a247052dd7676e17902718a6a1f0.jpeg@base@tagimgScale&Fwebp&h166&w166\",\"fshop_914d9cf62a71022669e922260d9b7043.jpeg@base@tagimgScale&Fwebp&h166&w166\",\"fshop_a21c36d3a1d6e7827f483e3dfc1ae8eb.jpeg@base@tagimgScale&Fwebp&h166&w166\",\"fshop_b97d0aed7b01e0730c1b240ec36b7e33.jpeg@base@tagimgScale&Fwebp&h166&w166\"],\"detail\":[\"img.gif\",\"img-660ffe2d4f7e1.jpg\",\"img-ac4f25ea0372e.jpg\",\"img-d24358236f2ab.gif\"]}', 88, '还原赛艇体验，锻炼全身80%+肌肉，私教在线直播带练'),
(2, '雪花秀滋阴套盒', 709, '{\"small\":\"a46f5f0cf4b8162877742eb296b03628.jpg\",\"display\":[\"3cf31256cf0b2c769b1012da8572894a.jpg@base@tagimgScale&Fwebp&h166&w166\",\"6461ee20357f6ed54497bd913dc9d980.jpg@base@tagimgScale&Fwebp&h166&w166\",\"6461ee20357f6ed54497bd913dc9d980.jpg@base@tagimgScale&Fwebp&h1080&w1080\",\"a6c68bb3c35e29782bcd51e0df1cf0ae.jpg@base@tagimgScale&Fwebp&h166&w166\",\"df231a949550b08344d36d320f94ff78.jpg@base@tagimgScale&Fwebp&h166&w166\",\"eace2cb24da7a4d8ad7a1a15e871aa2b.jpg@base@tagimgScale&Fwebp&h166&w166\"],\"detail\":[\"2ad69e9fa61666d339db517a7a8156ef.jpg\",\"28e15f14c6318e9ab77fde01f7b16bcf.jpg\",\"39f2ce37451c01a391e7f5d5b35b1737.jpg\",\"41db22dbaf32012cc0f94b1dd1cf42b2.jpg\"]}', 94, '为肌肤补充所需能量，深入肌底、滋养肌肤、柔肤亮白'),
(3, '家居螺丝刀套组', 500, '{\"small\":\"2772ac4351f2532b81ce81070ccc6a3e.jpg\",\"display\":[\"0b484f549e4251be275b930bd0c4fada.jpg@base@tagimgScale&Fwebp&h166&w166\",\"0b484f549e4251be275b930bd0c4fada.jpg@base@tagimgScale&Fwebp&h1080&w1080\",\"3aeb8fd1824a504bb4bf55b0e42853b9.jpg@base@tagimgScale&Fwebp&h166&w166\",\"30ed8211479e54b7868a5b71c108c0db.jpg@base@tagimgScale&Fwebp&h166&w166\",\"dc013ab5e5185e524240d8df1cc8fe4e.jpg@base@tagimgScale&Fwebp&h166&w166\",\"fa06ddedb48b485bd69ff4693ced3e32.jpg@base@tagimgScale&Fwebp&h166&w166\"],\"detail\":[\"5d542ab231f17adcf720e19369ab7782.jpg\",\"6d5f78b41369125e03da9f4bc5029139.jpg\",\"14691ba6458f6d871bd674556c90ad2c.jpg\",\"34961b7cb02b1617bbe9dc068155cf73.png\"]}', 89, '全铝机身,67mm长输出轴,手自一体双模式,3LED无影灯'),
(4, '全棉色织抗菌件套', 5000, '{\"small\":\"2e2292f8e0daaa87a6a647068587a15a.jpg\",\"display\":[\"4db4e6fc99931760618ab8fa79d7b916.jpg@base@tagimgScale&Fwebp&h166&w166\",\"39f68e4276e95d18ec482af04a8a0fb7.jpg@base@tagimgScale&Fwebp&h166&w166\",\"94e053ce846cb8329c16a589456e0a63.jpg@base@tagimgScale&Fwebp&h166&w166\",\"45293a4e21063a2d2f843a6f5ce5ea57.jpg@base@tagimgScale&Fwebp&h166&w166\",\"cdb3ec74b360c2e0ad13f57e280c4bbf.jpg@base@tagimgScale&Fwebp&h1080&w1080\",\"d4f7aa592a58a804a09c08ecbe3746b9.jpg@base@tagimgScale&Fwebp&h166&w166\"],\"detail\":[\"2fe9a96108d6935124ab17e0db4a51a4.jpg\",\"6c0bea0bcea436c7fb8369de38142dd1.jpg\",\"30a1b02d7bf54263820c310e94ae2df0.jpg\",\"703a81bbcdbffaa32b643cd1551f05b2.jpg\"]}', 94, '术，色织升级工艺，亲肤透气，水洗不褪色'),
(5, '云米智能空调', 1680, '{\"small\":\"cf83268804741e4740a8dda7c0c33772.jpg\",\"display\":[\"1f324f2a566f9ebed4fc079686b49036.jpg@base@tagimgScale&Fwebp&h166&w166\",\"37d5e55f9f16f2102e06528be6a6037f.jpg@base@tagimgScale&Fwebp&h166&w166\",\"37d5e55f9f16f2102e06528be6a6037f.jpg@base@tagimgScale&Fwebp&h1080&w1080\",\"98aca8664eb57c55725a79fbfef38a06.jpg@base@tagimgScale&Fwebp&h166&w166\",\"c45d223e508e4c8218712398d552cb86.jpg@base@tagimgScale&Fwebp&h166&w166\",\"f869dc1cdad9c1980fe31372c35d6420.jpg@base@tagimgScale&Fwebp&h166&w166\"],\"detail\":[\"2f06394221d0aa2c775cc06470e54069.jpg\",\"3dde60f1fa933d75aa23ad23f76bffb6.jpg\",\"266effd0041871b83f33784687119fd5.jpg\",\"4783797cf9b9e6bbdf9a305f08582704.jpg\"]}', 94, '快速冷暖|低噪音运营|独立除湿|大1匹/1.5匹'),
(6, '玻尿酸补水保湿面膜', 20, '{\"small\":\"4618538d6793997c82922ac1bb5019e1.jpg\",\"display\":[\"0e0affab7a0681fbaaf7cbbfda146578.jpg@base@tagimgScale&Fwebp&h166&w166\",\"0e0affab7a0681fbaaf7cbbfda146578.jpg@base@tagimgScale&Fwebp&h1080&w1080\",\"60d8d5093911f56d1899b41af3eda65c.jpg@base@tagimgScale&Fwebp&h166&w166\",\"772ef79c838d5a13343fe5fa900968db.jpg@base@tagimgScale&Fwebp&h166&w166\",\"d0b5ef956a95a10bb8da2cc966fd1110.jpg@base@tagimgScale&Fwebp&h166&w166\",\"de06b06102eee667d6432aa0edee3668.jpg@base@tagimgScale&Fwebp&h166&w166\"],\"detail\":[\"0b1482b0bbec55075c09c3eb7243685a.jpg\",\"1ffb07aff93a792e2e450219bb268f99.jpg\",\"9f6ba940f7271e1416353a400564709b.jpg\",\"18a143ca0f54ddee256d4f876794d42f.jpg\"]}', 99, '洗护开学焕新季好物满199减50 满299减10025ml*10片，双分子玻尿酸 补水保湿'),
(7, '真空保鲜箱', 3000, '{\"small\":\"0a89861d9fd843a82b7eced757cbaa5a.jpg\",\"display\":[\"2930c6bdaa396cbe9e2a363e3ed3e8ae.jpg@base@tagimgScale&Fwebp&h166&w166\",\"8441117bcde38330b84dd8882b801750.jpg@base@tagimgScale&Fwebp&h166&w166\",\"8441117bcde38330b84dd8882b801750.jpg@base@tagimgScale&Fwebp&h1080&w1080\",\"9547212a65775001489147b054853b48.jpg@base@tagimgScale&Fwebp&h166&w166\",\"a3137fe63678abcf13c5b5a936fa3d1d.jpg@base@tagimgScale&Fwebp&h166&w166\",\"c28a971b4be5e95b6570526a419d46c3.jpg@base@tagimgScale&Fwebp&h166&w166\"],\"detail\":[\"ca98d49bd7c4aaca397f39b225f03202.jpg\",\"d3101c98839ff846084c5c106c43ec5c.jpg\",\"e619a4a7776eb5a913a6d9db591ed954.jpg\",\"e1263adbd86651520869039b9b502b42.jpg\"]}', 97, '自动抽真空 保鲜防潮 负压防尘 负离子抑菌'),
(8, '智能晾衣机', 999, '{\"small\":\"049b07b5e0e5f6939ac4de09d47e5eb4.jpg\",\"display\":[\"7c3e40b7535ad2f27513c8f867135e09.jpg@base@tagimgScale&Fwebp&h166&w166\",\"9ee0a24aefbf2183b3e8a3d3e9c75947.jpg@base@tagimgScale&Fwebp&h166&w166\",\"c37b6dab1b461d4c6338d78ab898076c.jpg@base@tagimgScale&Fwebp&h166&w166\",\"c37b6dab1b461d4c6338d78ab898076c.jpg@base@tagimgScale&Fwebp&h1080&w1080\",\"f1d55d29078b70eaa695094d72ce0c31.jpg@base@tagimgScale&Fwebp&h166&w166\",\"f04619446bc3e5fef83edcc7a91122fe.jpg\"],\"detail\":[\"0ba84a99043c3a54a0c2c3c267965b25.jpg\",\"1d450b6908aec2992dccebec6b6bc501.jpg\",\"3b3866e43bfdf310790cee665f3be6ff.jpg\",\"6a063c896b1cbbb8818e0586bf313d09.jpg\"]}', 98, '持续暖风烘干，30KG承重，一键升降，大小户型适用，包安装'),
(9, '米家新风机', 999, '{\"small\":\"e17b02a8b1a034f7e7ee0661aa2eeeef.jpg\",\"display\":[\"3fa9d3f1d9d00f92a4f039d929fbc8b6.jpg\",\"263d81677c1086764f35c8586ad06df9.jpg@base@tagimgScale&Fwebp&h166&w166\",\"4639469c2eca33d8881cc06fc9756cf4.jpg\",\"ae569c4da9ebf9473c243a2a621ebff1.jpg@base@tagimgScale&Fwebp&h166&w166\",\"ae569c4da9ebf9473c243a2a621ebff1.jpg@base@tagimgScale&Fwebp&h1080&w1080\",\"b2434a661ece5b8cbbc65d5540446417.jpg\"],\"detail\":[\"0d380071ba958e4ed4a2bd056a976d64.jpg\",\"1ddc5e3c8ae2399f12aa2c29096bfeb1.jpg\",\"9061e34dad59f9e7018f6370912acdd5.jpg\",\"9159e301f668f4ff2f87ec0c852c777c.jpg\"]}', 99, '便捷、双离心风机、极低风噪、柔和进风'),
(10, '按摩筋膜枪', 699, '{\"small\":\"2429b3e019709795d728ba9944502a68.jpg\",\"display\":[\"4c0a2af3504500d3fe1d9a44cc251cf6.jpg@base@tagimgScale&Fwebp&h166&w166\",\"5d73dba6ac042bcc34744b9fdc27e1d1.jpg@base@tagimgScale&Fwebp&h166&w166\",\"5d73dba6ac042bcc34744b9fdc27e1d1.jpg@base@tagimgScale&Fwebp&h1080&w1080\",\"56cea22da45b8a247d01fefd97959db4.jpg@base@tagimgScale&Fwebp&h166&w166\",\"2052c5a2b306ec0e9966ee15043366e5.jpg@base@tagimgScale&Fwebp&h166&w166\",\"03461f7bef61d309e8f4cee2f87cf92e.jpg@base@tagimgScale&Fwebp&h166&w166\"],\"detail\":[\"4e6c10baa499fadb2002641a1e7fabad.jpg\",\"4e03655efa7bbb22a58b660fd09f5bb8.jpg\",\"7bea370117100f0826fcb90870d42b90.jpg\",\"12eacbc85aeb49567c28817784e731f0.jpg\"]}', 99, '3档4头专业按摩，80天长效续航，60W强劲电机，深度按摩');

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE `goods` (
  `id` int(8) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(5) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`id`, `name`, `price`, `img`, `storage`) VALUES
(1, 'F0001', 100, '0c3eb048faed32c90b6df52b0b34d730.png@base@tagimgScale&Fwebp', 99),
(2, 'F0002', 200, '2e5da2ef5f90db74f0f62e14f0260395.png@base@tagimgScale&Fwebp', 99),
(3, 'F0003', 300, '3db804f0ec53700c340d6a061977c0ca.png@base@tagimgScale&Fwebp', 99),
(4, 'F0004', 400, '7f259eb4930920c18b8d30169ac12036.png@base@tagimgScale&Fwebp', 99),
(5, 'F0005', 500, '8d5768af79bc8171cb129c5634dbea8a.png@base@tagimgScale&Fwebp', 99),
(6, 'F0006', 600, '20c26c9c1d2e134cc7a7d205403e2ab0.png@base@tagimgScale&Fwebp', 99),
(7, 'F0007', 700, '39a432d33af84f854b6400be8f54ca65.png@base@tagimgScale&Fwebp', 99),
(8, 'F0008', 900, '67ea506991444b0e45c9ad919f75b143.png@base@tagimgScale&Fwebp', 99),
(9, 'F0009', 1000, '74d24dbb3f4917a57bc242d44e0ba61c.png@base@tagimgScale&Fwebp', 99),
(10, 'F0010', 1100, '99ffe65a2ce4f9e2234582e4692a5cc5.png@base@tagimgScale&Fwebp', 99),
(11, 'F0011', 1200, '639b31834d08d85c4de02e5a2fc426d6.png@base@tagimgScale&Fwebp', 99),
(12, 'F0012', 1300, '817c7aa2caa285c382e050492bcbb651.png@base@tagimgScale&Fwebp', 99),
(13, 'F0013', 1400, '1585b70150ad90a3606ff3df0a1d4d32.png@base@tagimgScale&Fwebp', 99),
(14, 'F0014', 1500, '48625d9db6c116a98212b4cfa7d204a1.png@base@tagimgScale&Fwebp', 99),
(15, 'F0015', 1600, '99345858e7a031746e75f54073d54ca1.png@base@tagimgScale&Fwebp', 99),
(16, 'F0016', 1700, 'ab6190902e91d8dae0e83ca6f2c61673.png@base@tagimgScale&Fwebp', 99),
(17, 'F0017', 1800, 'b9347a5b5df39155e20a4899216ba681.png@base@tagimgScale&Fwebp', 99),
(18, 'F0018', 1900, 'bfe4e87c19da2ab0394a197c56b31e5f.png@base@tagimgScale&Fwebp', 99),
(19, 'F0019', 2000, 'c63230c666bb47042af54995bc5b07dd.png@base@tagimgScale&Fwebp', 99),
(20, 'F0020', 2100, 'cd27872a911c51ab459f6766a8029d4b.png@base@tagimgScale&Fwebp', 99);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(8) NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `phone`, `password`) VALUES
(8, '13888888888', 'e10adc3949ba59abbe56e057f20f883e');

--
-- 转储表的索引
--

--
-- 表的索引 `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `daygoods`
--
ALTER TABLE `daygoods`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `domdpy1`
--
ALTER TABLE `domdpy1`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `daygoods`
--
ALTER TABLE `daygoods`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `domdpy1`
--
ALTER TABLE `domdpy1`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
