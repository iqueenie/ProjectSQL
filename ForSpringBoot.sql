DROP TABLE IF EXISTS buyDetail;
DROP TABLE IF EXISTS groupMember;
DROP TABLE IF EXISTS groupBuy;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS orderDetails;
DROP TABLE IF EXISTS productImage;
DROP TABLE IF EXISTS storeLike;
DROP TABLE IF EXISTS productReview;
DROP TABLE IF EXISTS storeBuy;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS productDiscount;
DROP TABLE IF EXISTS amountDiscount;
DROP TABLE IF EXISTS holidayDiscount;
DROP TABLE IF EXISTS admins;

DROP TABLE IF EXISTS rolePermission;
DROP TABLE IF  EXISTS managementRoles;
DROP TABLE IF EXISTS management;
DROP TABLE IF EXISTS roles
DROP TABLE IF EXISTS actionPermission;

DROP TABLE IF EXISTS fobiddenWord;
DROP TABLE IF EXISTS lotteryRecords;
DROP TABLE IF EXISTS awards;
DROP TABLE IF EXISTS MemberActionLog;
DROP TABLE IF EXISTS ProductFavorite;

DROP TABLE IF EXISTS stores;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS members;


/*DROP後先跑SPRINGBOOT把TABLE建起來 再跑下面的*/
INSERT INTO management (managementAccount, managementPassword)
VALUES 
    ('aaa123', 'aaa123'),
    ('bbb123', 'bbb123'),
    ('ccc123', 'ccc123'),
	('ddd123', 'ddd123'),
	('eee123', 'eee123'),
	('fff123', 'fff123'),
	('ggg123', 'ggg123'),
	('hhh123', 'hhh123'),
	('iii123', 'iii123'),
	('jjj123', 'jjj123'),
	('kkk123', 'kkk123'),
	('lll123', 'lll123');  --前面3個是L



INSERT INTO members (memberName, memberAccount, memberPassword, memberAddress,memberBirthDate, memberEmail,points,lockStatus,registrationDate)
VALUES
('陳小明', 'chenxiaoming', 'mypassword', '台北市信義區','1997-07-01', 'chenxiaoming@example.com','0','正常','2022-02-03'),
('林小華', 'linxiaohua', 'abc123', '新北市板橋區','1992-04-08', 'linxiaohua@example.com','0','正常', '2022-2-06'),
('張小美', 'zhangxiaomei', 'qwerty', '桃園市中壢區','1982-05-09', 'zhangxiaomei@example.com','0','正常', '2023-03-25'),
('李小龍', 'lisaolong', 'iloveyou', '台中市西屯區','1999-02-03', 'lisaolong@example.com','0','正常', '2023-04-11'),
('王小強', 'wangxiaoqiang', 'passpass', '台南市安南區','1992-03-21', 'wangxiaoqiang@example.com','0','正常', '2023-05-17'),
('吳小姍', 'wuxiaoshan', 'letmein', '高雄市前鎮區','1990-01-03', 'wuxiaoshan@example.com','0','正常', '2023-05-26'),
('陳小玲', 'chenxiaoling', '123456789', '基隆市安樂區','1992-04-03', 'chenxiaoling@example.com','0','正常', '2024-05-01'),
('林小春', 'linxiaochun', 'sunshine', '新竹市東區','1987-11-13', 'linxiaochun@example.com','0','正常', '2024-06-11'),
('黃小薇', 'huangxiaowei', 'password', '嘉義市東區','1991-07-30', 'huangxiaowei@example.com','0','正常', '2024-07-09'),
('劉小琪', 'liuxiaoqi', 'welcome', '新北市永和區','1994-02-02', 'liuxiaoqi@example.com','0','正常', '2023-08-22'),
('陳小芳', 'chenxiaofang', 'flower123', '台北市中山區','1995-08-15', 'chenxiaofang@example.com','0','正常', '2023-09-16'),
('李小明', 'lixiaoming', 'welcome123', '新北市新店區','1998-09-20', 'lixiaoming@example.com','0','正常', '2023-09-23'),
('王小妮', 'wangxiaoni', 'mypass123', '台中市北區','1993-06-12', 'wangxiaoni@example.com','0','正常', '2024-01-18'),
('張小華', 'zhangxiaohua', 'sunflower', '台南市南區','1990-03-25', 'zhangxiaohua@example.com','0','正常', '2024-01-04'),
('林小明', 'linxiaoming2', 'abcxyz', '新竹市北區','1985-12-08', 'linxiaoming2@example.com','0','正常', '2024-02-12'),
('王小強', 'wangxiaoqiang2', 'qazwsx', '高雄市楠梓區','1996-04-30', 'wangxiaoqiang2@example.com','0','正常', '2024-02-22'),
('陳小美', 'chenxiaomei2', 'p@ssw0rd', '基隆市仁愛區','1988-07-17', 'chenxiaomei2@example.com','0','正常', '2024-03-05'),
('林小菁', 'linxiaojing', 'ilovecoding', '桃園市桃園區','1991-09-03', 'linxiaojing@example.com','0','正常', '2024-04-14'),
('張小翔', 'zhangxiaoxiang', 'letmeinnow', '彰化市彰化區','1983-11-21', 'zhangxiaoxiang@example.com','0','正常', '2023-09-28'),
('吳小婷', 'wuxiaoting', 'myp@ssword', '嘉義市西區','1994-02-18', 'wuxiaoting@example.com','0','正常', '2023-10-22'),
('李小芳', 'lixiaofang', 'summer456', '台北市大安區','1996-08-20', 'lixiaofang@example.com','0','正常', '2023-11-03'),
('王小明', 'wangxiaoming3', 'welcome456', '新北市蘆洲區','1999-07-12', 'wangxiaoming3@example.com','0','正常', '2023-12-08'),
('張小強', 'zhangxiaoqiang', 'mypassword456', '台中市北屯區','1993-05-25', 'zhangxiaoqiang@example.com','0','正常', '2023-12-11'),
('林小雲', 'linxiaoyun', 'cloudyday', '台中市南區','1997-10-18', 'linxiaoyun@example.com','0','正常', '2024-07-22'),
('陳小華', 'chenxiaohua', 'flowerpower', '高雄市三民區','1990-12-25', 'chenxiaohua@example.com','0','正常', '2024-05-11'),
('蕭景鴻', 'linxia444', 'cloud77', '台北市信義','1997-10-18', 'linxiaoyun666@example.com','0','正常', '2024-07-26'),
('楊貽婷', 'linx777', 'cloud2222', '彰化市社頭鄉','1994-10-18', 'linxiao1111@example.com','0','正常', '2024-07-28');

INSERT INTO stores (storeName, cityNum, city, area, street,detail, tel)
VALUES 
('爪哇店','320','桃園市','中壢區','大仁二街','１７號１樓','02-1234567'),
('西擴店','100','臺北市','中正區','八德路一段','４３巷２號','02-7654321'),
  ('溪家家店','207','新北市','萬里區','大鵬里頂社','１號','03-1234567'),
  ('櫻花店','234','新北市','永和區','永和路','８９號','02-9876543'),
  ('綠野店','106','臺北市','大安區','信義路四段','１２３號','02-3456789'),
  ('紅蓮店','830','高雄市','鳳山區','文衡路','２３４號','07-6543210'),
  ('藍天店','300','新竹市','東區','民族路','７８號','03-1357924'),
  ('金龍店','404','臺中市','北區','健行路','１１１號','04-5678901'),
  ('白雲店','709','臺南市','安南區','安中路','５６號','06-7890123'),
  ('青山店','500','彰化縣','彰化市','光復路','２２２號','04-3210987'),
  ('快樂店','700','臺南市','中西區','公園路','１０號','06-1234567'),
('幸福店','802','高雄市','苓雅區','四維一路','２號','07-2345678'),
('希望店','600','嘉義市','東區','林森西路','３３號','05-3456789'),
('美麗店','403','臺中市','西區','中美街','５０號','04-4567890'),
('和平店','704','臺南市','北區','中山北路','１００號','06-5678901'),
('光明店','300','新竹市','北區','中正路','２０號','03-6789012'),
('繁榮店','621','嘉義縣','民雄鄉','文化路','７０號','05-7890123'),
('富貴店','220','新北市','板橋區','縣民大道一段','１００號','02-8901234'),
('文化店','302','新竹縣','竹北市','自強南路','１０號','03-9012345'),
('昌盛店','360','苗栗縣','苗栗市','中正路','３２號','037-123456'),
('偉大店','900','屏東縣','屏東市','民生路','５０號','08-1234567'),
('成功店','103','臺北市','大同區','長安西路','１號','02-3456789'),
('榮耀店','640','雲林縣','斗六市','民生路','６０號','05-4567890'),
('勇敢店','950','臺東縣','臺東市','中興路','５０號','089-123456'),
('進步店','970','花蓮縣','花蓮市','中山路','８０號','03-5678901'),
('智慧店','880','澎湖縣','馬公市','中正路','３０號','06-6789012'),
('奇蹟店','265','宜蘭縣','羅東鎮','中山路三段','７０號','03-7890123'),
('夢想店','946','屏東縣','恆春鎮','南灣路','２０號','08-8901234'),
('愛心店','351','苗栗縣','頭份市','中正路','１５號','037-901234'),
('海洋店','202','基隆市','中正區','信一路','５號','02-24681234'),
('山海店','209','連江縣','南竿鄉','仁愛村','８號','0836-22567'),
('綠田店','540','南投縣','南投市','中興路','１００號','049-2233445'),
('金門店','890','金門縣','金城鎮','民生路','１２３號','082-345678'),
('旭光店','100','臺北市','中正區','愛國西路一段','１號','02-8765432'),
('健康店','100','臺北市','中正區','羅斯福路二段','８８號','02-9876543'),
('有機店','100','臺北市','中正區','忠孝西路一段','１１１號','02-6543210'),
('清心店','100','臺北市','中正區','中華路二段','３３３號','02-1234567'),
('微笑店','100','臺北市','中正區','中華路二段','２３３號','02-1234588');


-- 插入角色名稱
INSERT INTO roles (rolesName)
VALUES 
    ('總管理員'), 
    ('一般管理員'), 
    ('店長');


INSERT INTO managementRoles (managementId,rolesId,storeId)
VALUES 
    (1, 1,null),  -- managementId = 1, rolesId = 1 (總管理員)
    (2, 2,null),  -- managementId = 2, rolesId = 2 (一般管理員)
    (3, 3,1),     -- managementId = 3, rolesId = 3 (店長) --storeId (店鋪)
	(4,3,2),   
	(5,3,3),
	(6,3,4),
	(7,3,5),
	(8,3,6),
	(9,3,7),
	(10,3,8),
	(11,3,9),
	(12,3,10);

	/*跑品宏的一鍵新增商品*/

/*
INSERT INTO product (productName, productType, productCost, productPrice, productExpirydate, productDescription, productPublished, productQuantity)
VALUES 
    ('統一麥香奶茶TP375ml', '飲品', 8, 15, 365, '醇厚紅茶結合大麥香氣與乳粉調配，呈現具獨特大麥及焦糖風味的奶茶',1 ,500),
    ('統一麥香綠茶TP375ml', '飲品', 8, 15, 365, '選用甜香特色的焙香綠茶葉，萃取醇厚甜香茶汁，搭配大麥焙炒甜香，呈現獨特大麥風味的綠茶',1, 400),
    ('[優鮮沛]蔓越莓綜合果汁500ml', '飲品', 12, 25, 365, '來自北美珍貴『蔓越莓』',1, 300),
    ('金車伯朗咖啡240ml', '飲品', 12, 25, 210, '伯朗咖啡是將適量的咖啡、牛奶、砂糖調合而成的調合咖啡，且伯朗咖啡是由金車公司自行炒豆、萃取，到裝罐全程一貫作業生產的高品質調合咖啡，將最好的品質呈現給消費者，冷熱飲用皆適宜。',1 , 250),
    ('[孔雀]原味餅乾75g', '零食', 14, 29, 60, '從小陪伴著我們長大的孔雀餅乾，含有大大的營養，一片片都能帶來小小的滿足幸福感', 0, 260),
    ('蝦味先-原味115g', '零食', 16, 35, 60, '香脆可口、老少咸宜，最新烘培技術製成，非油炸品，確保人體健康，新鮮全蝦製成，有鮮蝦的風味、含豐富的鈣質', 1, 990),
    ('台酒花雕雞麵(碗)200g', '泡麵', 25, 49, 60, '使用台灣菸酒公司遵循古法釀製的料理花雕酒，搭配濃郁藥膳風味湯頭，香Q的', 1, 580),
	  ('維力炸醬麵(碗)90g', '泡麵', 12, 25, '60', '維力炸醬麵是家喻戶曉的老品牌老口味，維力炸醬調之所以好吃好調理，祕訣在於原料完全採用熟成的豆瓣製成豆瓣醬，在穩定的溫溼度控制下，其發酵的時間、溫度是成為美味的最大秘訣。民國六十七年維力炸醬麵問世，一包兩吃，附湯的吃法立刻擄獲消費者的心，為國內「速食乾麵之第一品牌」。', 0, 710),
    ('滿漢大餐酸菜牛肉拌麵', '熟食', 50, 109, '3', '堅持選用珍稀牛前腱肉，搭配百年古法秘製酸菜，軟嫩牛肉與香脆酸菜的完美融合，再拌上香氣十足的牛油和辣豆瓣醬，才真正完整了一碗牛肉麵的靈魂！', 1, 870),
    ('熱那亞羅勒義大利麵', '熟食', 45, 89, '3', '這道大人小孩都愛的熱那亞羅勒義大利麵，不但能吃到青醬的濃郁口感、蛤蜊的鮮味，蒜味和白酒更有提香的作用。雖然是利用方便取得的九層塔來取代正統的甜羅勒', 1, 660)
*/




INSERT INTO storeBuy (storeId, arrivedDate,checkToInv)
VALUES(1,'2024/5/9',1),
(1,'2024/5/10',1),
(2,'2024/5/3',1),
(3,'2024/6/5',1),
(3,'2024/5/18',1),
(4,'2024/5/16',1),
(5,'2024/6/20',1),
(5,'2024/6/22',1),
(6,'2024/6/17',1),
(10,'2024/5/17',1),
(5,'2024/7/8',1),
(6,'2024/7/8',1),
(5,'2024/7/9',1),
(6,'2024/7/9',1),
(5,'2024/7/10',1),
(4,'2024/7/11',1),
(7,'2024/7/11',1),
(8,'2024/7/12',1),
(10,'2024/7/13',1),
/*8/2後刪掉換下面那段*/
(11,'2024/7/31',1),
(12,'2024/8/1',1),
(13,'2024/8/2',0),
(14,'2024/8/2',0),
(15,'2024/8/3',0),
(16,'2024/8/4',0),
(17,'2024/8/5',0);

/*8/2預報後再加*/
/*
(12,'2024/8/5',1),
(15,'2024/8/6',1),
(11,'2024/8/7',0),
(12,'2024/8/7',0),
(13,'2024/8/8',0),
(14,'2024/8/9',0),
(15,'2024/8/10',0);
*/


INSERT INTO buyDetail (purchaseId, prodId,purchaseNum)
VALUES
(11,2,3),
(12,6,7),
(13,6,9),
(14,9,11),
(15,10,10),
(16,1,3),
(17,3,2),
(18,2,5),
(19,3,9),
(1,1,3),
(2,2,5),
(3,5,10),
(4,9,3),
(4,10,8),
(5,6,7),
(5,3,12),
(6,7,9),
(7,7,9),
(8,1,3),
(9,1,3),
(10,1,3),
(10,4,2),
(20,2,3),
(20,5,8),
(21,6,7),
(21,1,4),
(22,7,8),
(22,5,7),
(23,5,8),
(23,1,10),
(24,3,11),
(25,1,3),
(25,4,2),
(26,2,3),
(26,5,8);



INSERT INTO inventory(buyCode,storeId,productId,invNum,deliveryDate,expDate)
VALUES
/*8/2完換下面那段*/
	('000120240802',1,1,6,'2023/8/3','2024/8/2'),
	('000220240802',1,2,2,'2023/8/3','2024/8/2'),
	('000620240802',1,6,4,'2024/6/3','2024/8/2'),
	('000820240802',1,8,3,'2024/6/3','2024/8/2'),
	('001020240802',1,10,6,'2024/7/30','2024/8/2'),
	('000220240802',2,2,3,'2023/8/3','2024/8/2'),
	('000720240802',2,7,7,'2024/6/3','2024/8/2'),
	('000320240802',2,3,5,'2023/8/3','2024/8/2'),
	('000920240802',2,9,3,'2024/7/30','2024/8/2'),
	('000420240802',2,4,1,'2024/1/5','2024/8/2'),
	('000620240802',3,6,4,'2024/6/3','2024/8/2'),
	('000820240802',4,8,3,'2024/6/3','2024/8/2'),
	('000220240802',5,2,7,'2023/8/3','2024/8/2'),
	('001020240802',5,10,6,'2024/7/30','2024/8/2'),
	('000720240802',9,7,5,'2024/6/3','2024/8/2'),
	('000520240802',9,5,4,'2024/6/3','2024/8/2'),
	('000520240802',22,5,1,'2024/6/3','2024/8/2'),
	('000320240802',34,3,8,'2023/8/3','2024/8/2'),
	('000420240802',34,4,9,'2024/1/5','2024/8/2'),
	('000620240802',35,6,2,'2024/6/3','2024/8/2'),
	('000820240802',35,8,3,'2024/6/3','2024/8/2'),
	('001020240802',35,10,6,'2024/7/30','2024/8/2'),
	('000220240802',36,2,5,'2023/8/3','2024/8/2'),
	('000720240802',36,7,7,'2024/6/3','2024/8/2'),
	('000920240802',37,9,9,'2024/7/30','2024/8/2'),
	('001020240802',38,10,1,'2024/7/30','2024/8/2'),
/*8/7用的
	('000120240807',1,1,6,'2023/8/5','2024/8/7'),
	('000220240807',1,2,2,'2023/8/5','2024/8/7'),
	('000620240807',1,6,4,'2024/6/8','2024/8/7'),
	('000820240807',1,8,3,'2024/6/8','2024/8/7'),
	('001020240807',1,10,6,'2024/8/4','2024/8/7'),
	('000220240807',2,2,3,'2023/8/8','2024/8/7'),
	('000720240807',2,7,7,'2024/6/8','2024/8/7'),
	('000320240807',2,3,5,'2023/8/8','2024/8/7'),
	('000920240807',2,9,3,'2024/8/4','2024/8/7'),
	('000420240807',2,4,1,'2024/1/10','2024/8/7'),
	('000620240807',3,6,4,'2024/6/8','2024/8/7'),
	('000820240807',4,8,3,'2024/6/8','2024/8/7'),
	('000220240807',5,2,7,'2023/8/8','2024/8/7'),
	('001020240807',5,10,6,'2024/8/4','2024/8/7'),
	('000720240807',9,7,5,'2024/6/8','2024/8/7'),
	('000520240807',9,5,4,'2024/6/8','2024/8/7'),
	('000520240807',22,5,1,'2024/6/8','2024/8/7'),
	('000320240807',34,3,8,'2023/8/8','2024/8/7'),
	('000420240807',34,4,9,'2024/1/10','2024/8/7'),
	('000620240807',35,6,2,'2024/6/8','2024/8/7'),
	('000820240807',35,8,3,'2024/6/8','2024/8/7'),
	('001020240807',35,10,6,'2024/8/4','2024/8/7'),
	('000220240807',36,2,5,'2023/8/8','2024/8/7'),
	('000720240807',36,7,7,'2024/6/8','2024/8/7'),
	('000920240807',37,9,9,'2024/8/4','2024/8/7'),
	('001020240807',38,10,1,'2024/8/4','2024/8/7'),
*/
	('001520240822', 1, 15, 10, '2024/7/23', '2024/8/22'),
	('001520240822', 2, 15, 20, '2024/7/23', '2024/8/22'),
	('001520240822', 3, 15, 20, '2024/7/23', '2024/8/22'),
	('001520240822', 4, 15, 10, '2024/7/23', '2024/8/22'),
	('001520240822', 5, 15, 20, '2024/7/23', '2024/8/22'),
	('001520240822', 6, 15, 10, '2024/7/23', '2024/8/22'),
	('001520240822', 7, 15, 30, '2024/7/23', '2024/8/22'),
	('001520240822', 8, 15, 20, '2024/7/23', '2024/8/22'),
	('001520240822', 9, 15, 10, '2024/7/23', '2024/8/22'),
	('001520240822', 10, 15, 30, '2024/7/23', '2024/8/22'),
	('001520240822', 11, 15, 20, '2024/7/23', '2024/8/22'),
	('001520240822', 12, 15, 10, '2024/7/23', '2024/8/22'),
	('001520240822', 13, 15, 20, '2024/7/23', '2024/8/22'),
	('001520240822', 14, 15, 10, '2024/7/23', '2024/8/22'),
	('001520240822', 15, 15, 30, '2024/7/23', '2024/8/22'),
	('001520240822', 16, 15, 10, '2024/7/23', '2024/8/22'),
	('001520240822', 17, 15, 10, '2024/7/23', '2024/8/22'),
	('001520240822', 18, 15, 20, '2024/7/23', '2024/8/22'),
	('001520240822', 19, 15, 20, '2024/7/23', '2024/8/22'),
	('001520240822', 20, 15, 10, '2024/7/23', '2024/8/22'),
	('001520240822', 21, 15, 10, '2024/7/23', '2024/8/22'),
	('001520240822', 22, 15, 20, '2024/7/23', '2024/8/22'),
	('001520240822', 23, 15, 30, '2024/7/23', '2024/8/22'),
	('001520240822', 24, 15, 30, '2024/7/23', '2024/8/22'),
	('001520240822', 25, 15, 10, '2024/7/23', '2024/8/22'),
	('001520240822', 26, 15, 10, '2024/7/23', '2024/8/22'),
	('001520240822', 27, 15, 40, '2024/7/23', '2024/8/22'),
	('001520240822', 28, 15, 20, '2024/7/23', '2024/8/22'),
	('001520240822', 29, 15, 10, '2024/7/23', '2024/8/22'),
	('001520240822', 30, 15, 20, '2024/7/23', '2024/8/22'),
	('001520240822', 31, 15, 20, '2024/7/23', '2024/8/22'),
	('001520240822', 32, 15, 30, '2024/7/23', '2024/8/22'),
	('001520240822', 33, 15, 10, '2024/7/23', '2024/8/22'),
	('001520240822', 34, 15, 20, '2024/7/23', '2024/8/22'),
	('001520240822', 35, 15, 20, '2024/7/23', '2024/8/22'),
	('001520240822', 36, 15, 10, '2024/7/23', '2024/8/22'),
	('001520240822', 37, 15, 30, '2024/7/23', '2024/8/22'),
	('001520240822', 38, 15, 10, '2024/7/23', '2024/8/22'),
	('001120250801', 37, 11, 10, '2024/8/1', '2025/8/1'),
	('001220240830', 38, 12, 20, '2024/7/31', '2024/8/30'),
	('001220240803', 2, 12, 20, '2024/7/31', '2024/8/30'),
	('001220240803', 5, 12, 10, '2024/7/31', '2024/8/30'),
	('001320240802', 22, 13, 10, '2024/7/30', '2024/8/2'),
	('001420250729', 34, 14, 30, '2024/7/29', '2025/7/29'),
	('001420250729', 35, 14, 10, '2024/7/29', '2025/7/29'),
	('001320240802', 36, 13, 30, '2024/7/30', '2024/8/2'),
	('001320240802', 34, 13, 20, '2024/7/30', '2024/8/2'),
	('001320240802', 35, 13, 10, '2024/7/30', '2024/8/2'),
	('001120250801', 34, 11, 10, '2024/8/1', '2025/8/1'),
	('000120240810',1,1,6,'2023/8/11','2024/8/10'),
	('000220240810',1,2,2,'2023/8/11','2024/8/10'),
	('000220240810',2,2,3,'2023/8/11','2024/8/10'),
	('000720240810',2,7,7,'2024/6/11','2024/8/10'),
	('000320240810',2,3,5,'2023/8/11','2024/8/10'),
	('000420240810',2,4,1,'2024/1/13','2024/8/10'),
	('000620240810',3,6,4,'2024/6/11','2024/8/10'),
	('000820240810',4,8,3,'2024/6/11','2024/8/10'),
	('000220240810',5,2,7,'2023/8/11','2024/8/10');


INSERT INTO storeLike(storeId,userId)
VALUES(1,1),
    (1,3),
    (2,1),
    (2,4),
    (3,8),
    (4,10),
    (5,3),
    (5,9),
    (8,8),
    (9,2),
	(9,3),
	(9,9),
	(10,5),
	(11,5),
	(11,6),
	(12,7);

INSERT INTO groupBuy (productId, storeId, price, targetQuantity, nowQuantity, orderDate, arrivalDate, endDate, groupBuyStatus) VALUES
(1, 1, 14, 10, 10, '2024-06-01', NULL, NULL, '已結單'),
(1, 2, 14, 10, 10, '2024-05-01', '2024-05-10', '2024-05-13', '已結束'),
(1, 3, 14, 10, 10, '2024-05-31', '2024-06-03', '2024-06-06', '已結束'),
(1, 4, 12, 20, 0, '2024-05-10', NULL, NULL, '不成立'),
(1, 5, 14, 15, 0,  '2024-07-15', NULL, NULL, '未開團'),
(2, 6, 14, 10, 0, '2024-05-27', NULL, NULL, '不成立'),
(2, 7, 14, 10, 0, '2024-07-07', NULL, NULL, '開團中'),
(2, 8, 12, 20, 0, '2024-07-08', NULL, NULL, '開團中'),
(2, 9, 11, 30, 0, '2024-07-06', NULL, NULL, '未開團'),
(2, 10, 12, 25,  0,  '2024-07-07', NULL, NULL, '開團中');

INSERT INTO groupMember (groupBuyId, memberId, quantity, total, pickupStatus) VALUES
(1, 1, 3, 42, '已訂購'),
(1, 2, 3, 42, '已訂購'),
(1, 3, 4, 56, '已訂購'),
(2, 4, 3, 42, '已取貨'),
(2, 5, 3, 42, '已取貨'),
(2, 6, 4, 56, '未取貨'),
(3, 7, 3, 42, '未取貨'),
(3, 8, 3, 42, '未取貨'),
(3, 9, 4, 56, '已取貨'),
(3, 10, 0, 0, '已刪除');

INSERT INTO amountDiscount (discountName, minPurchaseAmount, discountPercentage, startDate, endDate,isActive ,discountDescription, discountImage)
VALUES 
   ('新年特惠', 200, 5, '2024-01-01', '2024-01-31', 0, '新年特惠來襲！消費滿200元即享95折優惠。快來參加我們的特別活動，為您的新年增添更多喜悅。這個優惠僅限於新年期間，不容錯過這個絕佳機會！此外，購物滿額還有更多驚喜等著您，趕快行動吧！祝您新年快樂，購物愉快！', null),
    ('愚人節', 300, 10, '2024-04-01', '2024-04-05', 0, '愚人節特惠來啦！消費滿300元即可享受9折優惠，這不是開玩笑哦！趕快來參加我們的愚人節特別活動，享受超值折扣，讓您的購物更加划算。這個優惠活動僅限於愚人節期間，機會難得，千萬不要錯過！祝您愚人節快樂，購物愉快！', null),
    ('母親節', 400, 15, '2024-05-09', '2024-05-10', 0, '母親節特惠來臨！消費滿400元即可享受85折優惠，給您的母親最特別的禮物。這是感謝所有母親辛勤付出的機會，趕快來參加我們的母親節特別活動，享受超值折扣，讓您的購物更加划算。這個優惠活動僅限於母親節期間，機會難得，千萬不要錯過！祝所有的母親節日快樂！', null),
    ('夏季狂歡', 200, 5, '2024-06-01', '2024-06-30', 0, '夏季狂歡特惠來了！消費滿200元即可享受95折優惠，這是您享受夏日購物樂趣的絕佳機會。我們為您準備了豐富多樣的商品，讓您的夏天更加精彩。活動期間內，所有消費滿額的顧客都可以參加，千萬不要錯過這個超值優惠。趕快來我們的店鋪，享受這個專屬於夏季的特別折扣吧！', null),
    ('週年慶', 1000, 20, '2024-07-01', '2024-07-05', 0, '周年慶特惠活動開始啦！為了感謝您的支持，我們推出了消費滿1000元享受8折的超值優惠。這是我們一年一度的盛大慶典，歡迎您前來參加。不論是購買日常用品還是特別禮品，這個優惠都將讓您享受到更多的實惠。活動期間內，所有滿額消費的顧客均可享受，千萬不要錯過這個難得的機會，趕快來我們的店鋪，一同慶祝吧！', null),
    ('父親節', 888, 12, '2024-07-15', '2024-08-09', 1, '父親節特惠活動來啦！為了感謝偉大的父親們，我們特別推出了消費滿888元享受88折的專屬優惠。這是一個表達感謝和愛意的絕佳時機，不論是購買父親喜愛的產品還是挑選一份特別的禮物，這個優惠都將讓您獲得更多的價值。在活動期間，凡是在我們店鋪消費滿888元的顧客，都可以享受這個優惠。讓我們一同慶祝這個特別的日子，感謝父親們無私的付出和愛。趕快來我們的店鋪，挑選一份精心準備的禮物，讓父親感受到您的心意與感謝。活動僅限一段時間，千萬不要錯過這個表達愛的機會，快來參加吧！', null),
    ('七夕優惠', 520, 10, '2024-08-14', '2024-09-14', 0, '在七夕這個充滿愛意的節日裡，EZBUY商店特別推出了限時優惠活動，讓您的購物體驗更加愉快。
活動期間，凡購物滿520元，即可享受9折優惠，這是我們對您一直以來支持的感謝。 
此次優惠涵蓋了我們店內多種類別的商品，包括飲品、生活用品、熟食等。
無論是為自己挑選心儀的商品，還是為親友準備精美的禮物，這次優惠都是您不容錯過的機會。 
立即來EZBUY商店選購，享受這次獨特的七夕優惠吧！讓我們共同度過一個浪漫且充滿驚喜的節日。', null),
    ('雙十一特惠', 1111, 20, '2024-11-01', '2024-11-11', 0, '雙十一特惠來啦！為了回饋廣大顧客，我們推出了消費滿1111元享受8折的超值優惠。這是一年一度的購物狂歡節，不論是添購心儀商品還是準備禮物，這個優惠都能讓您省更多。機會難得，趕快來享受吧！', null),
    ('聖誕快樂', 500, 5, '2024-12-01', '2024-12-25', 0, '聖誕快樂特惠來啦！在這個充滿喜悅和分享的季節，我們特別推出消費滿500元即可享受5折優惠的超值活動。讓您的聖誕購物更加愉快，為家人朋友準備驚喜禮物同時也能享受大折扣。立即行動，不要錯過這次限時優惠！', null),
    ('年終獎金', 1000, 20, '2024-12-26', '2024-12-31', 0, '年終獎金大優惠來襲！為了感謝您一年的支持，我們特別推出消費滿1000元即可享受8折優惠的活動。趁這個機會，為自己或家人添購心儀的商品，享受超值折扣。活動期間有限，快來EZBUY商店，讓我們一起迎接新年的到來吧！', null);

INSERT INTO productDiscount (discountName, productId, discountPercentage, startDate, endDate ,isActive)
VALUES 
    ('統一麥香奶茶TP375ml優惠', 1, 5, '2024-05-01', '2024-08-31',1),
    ('統一麥香綠茶TP375ml優惠', 2, 8, '2024-05-01', '2024-08-31',1),
    ('[優鮮沛]蔓越莓綜合果汁500ml優惠', 3, 10, '2024-05-01', '2024-08-31',1),
    ('金車伯朗咖啡240ml優惠', 4, 12, '2024-05-01', '2024-08-31',1),
    ('[孔雀]原味餅乾75g優惠', 5, 8, '2024-05-01', '2024-05-31',1),
    ('蝦味先-原味115g優惠', 6, 10, '2024-05-01', '2024-08-31',1),
    ('台酒花雕雞麵(碗)200g優惠', 7, 15, '2024-05-01', '2024-05-31',1),
    ('維力炸醬麵(碗)90g優惠', 8, 10, '2024-05-01', '2024-05-31',1),
    ('滿漢大餐酸菜牛肉拌麵優惠', 9, 20, '2024-05-01', '2024-08-31',1),
    ('熱那亞羅勒義大利麵優惠', 10, 18, '2024-05-01', '2024-05-31',1);

INSERT INTO holidayDiscount (discountName, discountInfo, isActive, discountImage)
VALUES 
	('飲品優惠', '限時折扣，立即享受！', 1, null),	
	('零食優惠', '好吃到停不下來！', 1, null),	
	('泡麵優惠', '便宜美味，方便速食', 1, null),	
	('熟食優惠', '熟食帶來溫暖的滿足', 1, null),
	('菸酒優惠', '菸酒適量，怡情自得', 1, null),
	('生活用品優惠', '居家必備，便利生活', 1, null),
	('護理用品優惠', '健康守護，安心之選', 1, null);

INSERT INTO awards (name, points, probability) 
VALUES 
    ('點數1點', 1, 0.5),
    ('點數3點', 3, 0.3),
    ('點數5點', 5, 0.15),
    ('點數10點', 10, 0.05);

INSERT INTO orders (memberId, orderDate, pointUse, amountDiscountId, productDiscountId, storeId, total, discountMoney, status, paymentMethod, orderSuccessDate, pickupDate, unpaidCount, pointGet, finalAmount,logisticsId,logisticStatus)
VALUES
    (1, '2024-01-01', 5, 1, 1, 1, 1000, 30, '待收貨', '信用卡', '2024-01-04', '2024-01-08', 0, 10, 970,null,null),
    (2, '2024-02-02', 2, 2, 2, 2, 1050, 20, '待發貨', '信用卡', '2024-02-05', '2024-02-09', 0, 10, 1030,null,null),
    (3, '2024-03-03', 3, 3, 3, 3, 1020, 15, '訂單已完成', '現金支付', '2024-03-06', '2024-03-11', 0, 10, 1005,null,null),
    (4, '2024-04-04', 4, 4, 4, 4, 1015, 40, '待收貨', '現金支付', '2024-04-07', '2024-04-12', 1, 10, 975,null,null),
    (5, '2024-05-05', 5, 5, 5, 5, 1005, 50, '不成立', '信用卡', '2024-05-08', '2024-05-13', 0, 10, 955,null,null),
    (6, '2024-01-06', 6, 6, 6, 6, 1040, 25, '運送中', '現金支付', '2024-01-09', '2024-01-13', 1, 10, 1015,null,null),
    (7, '2024-02-07', 7, 7, 7, 7, 980, 10, '已發貨', '信用卡', '2024-02-10', '2024-02-14', 1, 10, 970,null,null),
    (8, '2024-03-08', 8, 8, 8, 8, 1035, 35, '已發貨', '現金支付', '2024-03-11', '2024-03-15', 2, 10, 1000,null,null),
    (9, '2024-04-09', 9, 9, 9, 9, 1010, 20, '已送達', '現金支付', '2024-04-12', '2024-04-16', 0, 10, 990,null,null),
    (10, '2024-05-10', 10, 10, 10, 10, 960, 25, '已送達', '現金支付', '2024-05-13', '2024-05-17', 0, 10, 935,null,null),
	(1, '2024-06-09', 1, 2, 3, 3, 1005, 20, '已送達', '現金支付', '2024-05-13', '2024-06-14', 0, 10, 985,null,null),
	(2, '2024-06-10', 2, 3, 4, 4, 1085, 15, '待發貨', '現金支付', '2024-05-13', '2024-06-17', 0, 10, 1100,null,null),
	(1, '2024-07-01', 1, 2, 3, 3, 1045, 20, '已送達', '現金支付', '2024-07-05', '2024-07-07', 0, 10, 1065,null,null),
	(2, '2024-07-10', 2, 3, 4, 4, 1085, 15, '待收貨', '現金支付', '2024-07-06', '2024-07-08', 0, 10, 1070,null,null);

INSERT INTO orderDetails (orderId, productId, quantity, subtotal)
VALUES
    (1, 1, 10, 150),
    (1, 5, 10, 250),    
    (2, 2, 20, 200),
    (2, 6, 10, 300),    
    (3, 3, 15, 250),
    (3, 5, 15, 375),    
    (4, 4, 10, 325),
    (4, 6, 15, 415),   
    (5, 3, 10, 325),
    (5, 5, 10, 520),  
    (6, 7, 10, 225),
    (6, 9, 10, 300),  
    (7, 8, 20, 350),
    (7, 10, 10, 150),   
    (8, 7, 15, 450),
    (8, 10, 15, 315),   
    (9, 8, 10, 315),
    (9, 9, 15, 425), 
    (10, 8, 10, 350),
    (10, 10, 10, 450),
    (11, 1, 10, 225),
    (11, 2, 10, 225),
    (11, 5, 10, 300), 
    (12, 8, 20, 125),
    (12, 10, 10, 150),
    (13, 2, 10, 275),
    (13, 6, 10, 325),   
    (14, 7, 20, 265),
    (14, 9, 10, 220);

INSERT INTO productReview (productId, memberId, stars, reviewContent, reviewTime) VALUES
(1, 3, 5, '這個產品真的很棒,超乎我的預期!', '2024/7/15 09:23:11'),
(1, 7, 4, '整體來說不錯,但還有改進的空間。', '2024/7/02 14:45:30'),
(1, 6, 5, '絕對物超所值,強烈推薦!', '2024/7/20 18:12:55'),
(1, 9, 3, '品質很好,就是價格稍微偏高。', '2024/7/05 11:37:42'),
(1, 5, 4, '會再次購買。', '2024/7/18 16:50:23'),
(1, 8, 5, '使用體驗非常好,會再次購買。', '2024/7/25 17:40:13'),

(2, 3, 4, '功能齊全,但使用說明可以更清楚。', '2024/7/22 10:15:37'),
(2, 6, 4, '設計很時尚,朋友們都很喜歡。', '2024/7/08 13:28:49'),
(2, 4, 3, '質量還行,但不如預期的好。', '2024/7/25 17:40:12'),
(2, 8, 5, '客戶服務很棒,解決了我的問題。', '2024/7/10 09:55:28'),
(2, 10, 4, '整體滿意,希望未來有更多顏色選擇。', '2024/7/28 15:07:36'),

(3, 2, 5, '非常實用的產品,每天都在使用。', '2024/7/18 11:30:45'),
(3, 5, 1, '性價比高,推薦給朋友們。', '2024/8/05 16:22:18'),
(3, 9, 5, '包裝很精美,很適合送禮。', '2024/8/22 19:05:33'),
(3, 7, 3, '超出預期,會考慮再買一個。', '2024/9/25 14:59:02'),

(4, 4, 4, '功能很強大,就是要多加練習。', '2024/7/25 08:40:27'),
(4, 8, 5, '外觀設計很漂亮,放在家裡很搭。', '2024/8/12 13:53:39'),
(4, 1, 3, '可以使用,但感覺有點小貴。', '2024/8/28 18:15:54'),
(4, 6, 5, '很耐用,使用了很久還是很好。', '2024/9/15 10:38:07'),
(4, 10, 4, '整體不錯,希望續航能再提升。', '2024/9/30 16:50:21'),

(5, 5, 5, '太喜歡了,和描述的一模一樣。', '2024/7/20 09:58:33'),
(5, 9, 4, '質量很好,就是味道有點重。', '2024/8/07 15:10:46'),
(5, 2, 5, '效果顯著,會回購的產品。', '2024/8/24 18:33:01'),
(5, 7, 4, '使用方便,但說明書可以更詳細。', '2024/9/12 11:45:19'),
(5, 1, 1, '很滿意這次的購物體驗。', '2024/9/29 14:07:32'),
(5, 3, 1, '使用體驗非常好,會再次購買。', '2024/7/18 16:50:23'),
(5, 4, 5, '會再次購買。', '2024/7/23 10:25:41'),

(6, 6, 4, '功能齊全,適合送長輩使用。', '2024/7/23 10:25:41'),
(6, 10, 3, '品質很好,用了很久都沒問題。', '2024/8/10 16:38:54'),
(6, 3, 1, '整體不錯,但有些小細節可以改進。', '2024/8/27 19:50:07'),
(6, 8, 3, '顏色很漂亮,和網站圖片一樣。', '2024/9/14 12:03:22'),
(6, 1, 4, '使用體驗非常好,會再次購買。', '2024/7/18 16:50:23'),
(6, 2, 5, '使用體驗非常好,實用性強,但價格稍高。', '2024/7/18 16:50:23'),
(6, 4, 5, '會再次購買。', '2024/7/17 11:12:48'),

(7, 7, 5, '非常滿意,超出我的期望值。', '2024/7/17 11:12:48'),
(7, 1, 2, '品質不錯,但送貨時間可以再快點。', '2024/8/04 14:25:01'),
(7, 5, 1, '很適合我的需求,會推薦給朋友。', '2024/8/21 18:37:16'),

(8, 8, 4, '整體來說不錯,但有一些小瑕疵。', '2024/7/28 09:30:22'),
(8, 2, 5, '太棒了,和我想像中的一模一樣。', '2024/8/15 13:42:35'),
(8, 6, 3, '功能還行,但感覺有點貴。', '2024/8/31 17:54:50'),
(8, 10, 3, '很耐用,用了很久都沒有問題。', '2024/9/17 11:07:05'),
(8, 4, 4, '外觀很漂亮,但重量稍重。', '2024/10/02 15:19:20'),

(9, 9, 3, '非常好用,每天都離不開它。', '2024/7/21 10:45:36'),
(9, 1, 3, '整體滿意,希望未來有更多功能。', '2024/9/13 12:22:19'),
(9, 5, 2, '超出預期,會考慮再買一個。', '2024/9/29 16:34:34'),

(10, 10, 4, '功能很強大,但需要時間熟悉。', '2024/7/24 08:20:11'),
(10, 4, 5, '設計很人性化,使用起來很舒適。', '2024/8/11 13:32:24'),
(10, 8, 4, '可以使用,但感覺不太耐用。', '2024/8/28 17:44:39'),
(10, 2, 4, '非常滿意,會推薦給身邊的人。', '2024/9/15 10:56:54'),
(10, 6, 4, '整體不錯,但包裝可以再環保一些。', '2024/10/01 15:09:09'),


(11, 1, 5, '太棒了,超乎我的預期!', '2024/7/19 09:40:25'),
(11, 5, 4, '品質很好,就是價格稍高。', '2024/8/06 14:52:38'),
(11, 9, 5, '使用體驗非常好,會回購。', '2024/8/23 19:04:53'),
(11, 3, 4, '功能齊全,但使用說明可以更清楚。', '2024/9/10 11:17:08'),
(11, 7, 5, '很滿意這次的購物體驗。', '2024/9/27 16:29:23'),
(11, 6, 2, '整體不錯,但包裝可以再環保一些。', '2024-10-01 15:09:09'),

(12, 2, 4, '整體來說不錯,但還有改進空間。', '2024/7/26 10:35:30'),
(12, 6, 5, '非常實用的產品,每天都在使用。', '2024/8/13 15:47:43'),
(12, 10, 4, '質量還行,但不如預期的好。', '2024/8/30 18:59:58'),
(12, 4, 5, '超出預期,會考慮再買一個。', '2024/9/16 12:12:13'),
(12, 8, 4, '功能很強大,就是要多加練習。', '2024/10/02 17:24:28'),
(12, 9, 1, '使用體驗非常好,會回購。', '2024-08-23 19:04:53'),

(13, 3, 5, '絕對物超所值,強烈推薦!', '2024/7/22 11:50:40'),
(13, 7, 1, '整體滿意,希望未來有更多顏色選擇。', '2024/8/09 16:02:53'),
(13, 1, 1, '包裝很精美,很適合送禮。', '2024/8/26 19:15:08'),
(13, 5, 2, '品質不錯,但送貨稍慢。', '2024/9/12 11:27:23'),

(14, 4, 4, '設計很時尚,朋友們都很喜歡。', '2024/7/25 08:15:45'),
(14, 8, 5, '效果顯著,會回購的產品。', '2024/8/12 13:27:58'),
(14, 2, 3, '可以使用,但感覺有點小貴。', '2024/8/29 17:40:13'),
(14, 6, 5, '很耐用,使用了很久還是很好。', '2024/9/15 10:52:28'),
(14, 10, 4, '整體不錯,希望續航能再提升。', '2024/10/01 15:04:43'),
(14, 7, 4, '使用方便,但說明書可以更詳細。', '2024/9/10 12:07:33'),
(14, 1, 5, '絕對物超所值,強烈推薦!', '2024-07-20 18:12:55'),


(15, 5, 5, '非常滿意,超出我的期望值。', '2024/7/20 09:30:50'),
(15, 9, 4, '品質很好,就是味道有點重。', '2024/8/07 14:43:03'),
(15, 3, 5, '很適合我的需求,會推薦給朋友。', '2024/8/24 18:55:18'),
(15, 7, 4, '使用方便,但說明書可以更詳細。', '2024/9/10 12:07:33'),

(16, 8, 5, '很實用的產品,值得購買。', '2024/9/13 11:22:38'),
(16, 2, 2, '外觀很漂亮,但重量稍重。', '2024/9/29 16:34:53'),

(17, 7, 5, '非常好用,每天都離不開它。', '2024/7/18 11:00:59'),
(17, 1, 4, '品質不錯,但顏色和圖片稍有差異。', '2024/8/05 15:13:12'),
(17, 5, 3, '超出預期,會考慮再買一個。', '2024/8/22 19:25:27'),
(17, 9, 1, '整體滿意,希望未來有更多功能。', '2024/9/08 12:37:42'),
(17, 3, 5, '非常滿意,會推薦給身邊的人。', '2024/9/24 16:49:57'),
(17, 6, 1, '絕對物超所值,強烈推薦!', '2024/7/21 10:31:09'),
(17, 2, 2, '品質很好,就是價格稍高。', '2024/8/08 14:43:22'),
(17, 4, 5, '使用體驗非常好,會回購。', '2024/8/25 18:55:37'),

(18, 8, 4, '功能很強大,但需要時間熟悉。', '2024/7/28 09:16:04'),
(18, 2, 5, '設計很人性化,使用起來很舒適。', '2024/8/15 13:28:17'),
(18, 6, 3, '可以使用,但感覺不太耐用。', '2024/8/31 17:40:32'),

(19, 9, 5, '絕對物超所值,強烈推薦!', '2024/7/21 10:31:09'),
(19, 3, 4, '品質很好,就是價格稍高。', '2024/8/08 14:43:22'),
(19, 7, 5, '使用體驗非常好,會回購。', '2024/8/25 18:55:37'),
(19, 1, 4, '功能齊全,但使用說明可以更清楚。', '2024/9/11 12:07:52'),
(19, 5, 5, '很滿意這次的購物體驗。', '2024/9/27 16:20:07'),

(20, 1, 5, '這個產品真的很棒,超乎我的預期!', '2024/7/22 10:22:30'),
(20, 2, 4, '整體來說不錯,但還有改進的空間。', '2024/8/10 13:12:50'),
(20, 3, 5, '絕對物超所值,強烈推薦!', '2024/8/29 15:47:12'),
(20, 4, 1, '品質很好,就是價格稍微偏高。', '2024/9/08 09:36:17'),
(20, 5, 5, '使用體驗非常好,會再次購買。', '2024/9/30 11:22:45'),

(21, 6, 4, '功能齊全,但使用說明可以更清楚。', '2024/7/24 10:18:40'),
(21, 7, 1, '設計很時尚,朋友們都很喜歡。', '2024/8/15 13:52:22'),
(21, 8, 3, '質量還行,但不如預期的好。', '2024/8/28 17:29:09'),
(21, 9, 5, '客戶服務很棒,解決了我的問題。', '2024/9/14 09:13:56'),
(21, 10, 4, '整體滿意,希望未來有更多顏色選擇。', '2024/9/25 16:05:32'),
(21, 1, 5, '顏色很漂亮,和網站圖片一樣。', '2024-09-14 12:03:22'),
(21, 2, 4, '實用性強,但價格稍高。', '2024-09-30 17:15:35'),
(21, 5, 5, '使用很方便,很滿意。', '2024-10-10 13:20:11'),

(22, 1, 5, '非常實用的產品,每天都在使用。', '2024/7/27 11:45:13'),
(22, 2, 2, '性價比高,推薦給朋友們。', '2024/8/09 16:37:21'),
(22, 3, 5, '包裝很精美,很適合送禮。', '2024/8/26 19:54:32'),
(22, 4, 2, '品質不錯,但送貨稍慢。', '2024/9/12 12:42:16'),
(22, 5, 3, '超出預期,會考慮再買一個。', '2024/9/30 14:20:05'),

(23, 8, 3, '可以使用,但感覺有點小貴。', '2024/8/30 18:55:23'),
(23, 9, 5, '很耐用,使用了很久還是很好。', '2024/9/18 10:42:36'),
(23, 1, 4, '整體不錯,希望續航能再提升。', '2024/9/29 15:21:49'),

(24, 1, 5, '太喜歡了,和描述的一模一樣。', '2024/7/23 09:22:14'),
(24, 2, 4, '質量很好,就是味道有點重。', '2024/8/06 14:33:58'),
(24, 3, 5, '效果顯著,會回購的產品。', '2024/8/24 18:42:09'),
(24, 4, 4, '使用方便,但說明書可以更詳細。', '2024/9/12 12:16:27'),

(25, 6, 4, '功能齊全,適合送長輩使用。', '2024/7/25 10:31:22'),
(25, 7, 5, '品質很好,用了很久都沒問題。', '2024/8/13 15:32:44'),
(25, 8, 4, '整體不錯,但有些小細節可以改進。', '2024/8/31 17:20:11'),
(25, 9, 5, '顏色很漂亮,和網站圖片一樣。', '2024/9/14 12:55:13'),
(25, 10, 4, '實用性強,但價格稍高。', '2024/9/30 17:45:02'),
(25, 4, 4, '整體來說不錯,但還有改進空間。', '2024/7/28 10:45:36'),
(25, 1, 5, '非常實用的產品,每天都在使用。', '2024/8/14 15:23:09'),

(26, 1, 5, '非常滿意,超出我的期望值。', '2024/7/30 11:23:50'),
(26, 3, 1, '很適合我的需求,會推薦給朋友。', '2024/8/23 19:11:22'),
(26, 4, 4, '使用起來很方便,但說明書有點難懂。', '2024/9/10 11:22:44'),
(26, 5, 1, '客服態度很好,解決了我的疑問。', '2024/9/27 16:53:11'),

(27, 4, 4, '整體來說不錯,但還有改進空間。', '2024/7/28 10:45:36'),
(27, 1, 5, '非常實用的產品,每天都在使用。', '2024/8/14 15:23:09'),
(27, 8, 4, '質量還行,但不如預期的好。', '2024/8/31 18:39:45'),
(27, 6, 5, '超出預期,會考慮再買一個。', '2024/9/17 10:52:59'),
(27, 2, 4, '功能很強大,就是要多加練習。', '2024/10/02 17:13:23'),
(27, 9, 5, '功能齊全,但使用說明可以更清楚。', '2024-08-26 19:32:32'),
(27, 3, 4, '太棒了,和我想像中的一模一樣。', '2024-09-13 12:23:45'),
(27, 7, 5, '很適合我的需求,會推薦給朋友。', '2024-09-30 16:34:58'),

(28, 1, 5, '絕對物超所值,強烈推薦!', '2024/7/24 11:12:11'),
(28, 2, 4, '整體滿意,希望未來有更多顏色選擇。', '2024/8/12 13:50:34'),
(28, 3, 5, '包裝很精美,很適合送禮。', '2024/8/29 15:38:17'),
(28, 4, 4, '品質不錯,但送貨稍慢。', '2024/9/14 09:51:25'),

(29, 6, 4, '設計很時尚,朋友們都很喜歡。', '2024/7/25 10:02:48'),
(29, 7, 5, '效果顯著,會回購的產品。', '2024/8/12 13:27:54'),
(29, 8, 3, '可以使用,但感覺有點小貴。', '2024/8/29 17:40:21'),
(29, 9, 5, '很耐用,使用了很久還是很好。', '2024/9/18 10:55:44'),
(29, 10, 4, '整體不錯,希望續航能再提升。', '2024/9/30 15:25:29'),

(30, 1, 5, '太喜歡了,和描述的一模一樣。', '2024/7/27 09:55:43'),
(30, 2, 4, '質量很好,就是味道有點重。', '2024/8/06 15:12:38'),
(30, 3, 5, '效果顯著,會回購的產品。', '2024/8/23 18:45:01'),
(30, 4, 4, '使用方便,但說明書可以更詳細。', '2024/9/12 12:11:36'),
(30, 5, 5, '很滿意這次的購物體驗。', '2024/9/30 16:20:55'),

(31, 6, 4, '功能齊全,適合送長輩使用。', '2024/7/29 10:19:32'),
(31, 7, 5, '品質很好,用了很久都沒問題。', '2024/8/13 16:01:07'),
(31, 8, 4, '整體不錯,但有些小細節可以改進。', '2024/8/31 18:39:59'),
(31, 9, 5, '顏色很漂亮,和網站圖片一樣。', '2024/9/14 13:09:21'),

(32, 3, 5, '很適合我的需求,會推薦給朋友。', '2024/8/23 19:07:36'),
(32, 4, 4, '使用起來很方便,但說明書有點難懂。', '2024/9/10 11:44:12'),
(32, 5, 5, '客服態度很好,解決了我的疑問。', '2024/9/27 16:23:14'),

(33, 6, 4, '整體來說不錯,但還有改進空間。', '2024/7/28 09:55:31'),
(33, 7, 5, '非常實用的產品,每天都在使用。', '2024/8/14 14:21:09'),
(33, 8, 4, '質量還行,但不如預期的好。', '2024/8/31 18:24:22'),
(33, 9, 5, '超出預期,會考慮再買一個。', '2024/9/17 10:43:54'),
(33, 10, 4, '功能很強大,就是要多加練習。', '2024/10/02 17:07:41'),
(33, 5, 1, '品質很好,就是價格稍高。', '2024-08-06 14:52:38'),
(33, 1, 1, '使用體驗非常好,會回購。', '2024-08-23 19:04:53'),
(33, 2, 1, '功能齊全,但使用說明可以更清楚。', '2024-09-10 11:17:08'),
(33, 3, 1, '很滿意這次的購物體驗。', '2024-09-27 16:29:23'),

(34, 1, 5, '絕對物超所值,強烈推薦!', '2024/7/24 10:22:30'),
(34, 2, 4, '整體滿意,希望未來有更多顏色選擇。', '2024/8/12 12:45:36'),
(34, 3, 5, '包裝很精美,很適合送禮。', '2024/8/29 15:37:12'),
(34, 4, 4, '品質不錯,但送貨稍慢。', '2024/9/14 09:28:16'),
(34, 5, 1, '客戶服務很棒,解決了我的問題。', '2024/9/30 16:32:48'),
(34, 6, 4, '功能很強大,但需要時間熟悉。', '2024-07-24 08:20:11'),
(34, 7, 5, '設計很人性化,使用起來很舒適。', '2024-08-11 13:32:24'),
(34, 8, 3, '可以使用,但感覺不太耐用。', '2024-08-28 17:44:39'),
(34, 9, 5, '非常滿意,會推薦給身邊的人。', '2024-09-15 10:56:54'),
(34, 10, 4, '整體不錯,但包裝可以再環保一些。', '2024-10-01 15:09:09');

insert into memberActionlog 
VALUES
('查看商品頁','linxiaohua', 2, 1,'統一麥香奶茶TP375ml','2024-07-01 09:55:17'),
('收藏成功','linxiaohua', 2, 1,'統一麥香奶茶TP375ml','2024-07-01 09:58:25'),
('已收藏過此商品','linxiaohua', 2, 1,'統一麥香奶茶TP375ml','2024-07-01 15:55:25');
