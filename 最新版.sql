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
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS members;
DROP TABLE IF EXISTS admins;
DROP TABLE IF EXISTS stores;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS rolePermissions;

CREATE TABLE members (
    memberId INT PRIMARY KEY IDENTITY(1,1),
	memberPhoto VARCHAR(255) NULL,
    memberName VARCHAR(100) NOT NULL,
    memberAccount VARCHAR(100) UNIQUE,
    memberPassword VARCHAR(100) NOT NULL,
	memberBirthDate DATE NULL,
    memberAddress VARCHAR(255)  NULL,
    memberEmail VARCHAR(100) UNIQUE,
    points INT DEFAULT 0,
    lockStatus VARCHAR(10) DEFAULT '正常'
);


INSERT INTO members (memberName, memberAccount, memberPassword, memberAddress, memberEmail)
VALUES
('陳小明','chenxiaoming', 'mypassword','台北市信義區','chenxiaoming@example.com'),
('林小華','linxiaohua', 'abc123', '新北市板橋區','linxiaohua@example.com'),
('張小美','zhangxiaomei', 'qwerty', '桃園市中壢區','zhangxiaomei@example.com'),
('李小龍','lisaolong', 'iloveyou', '台中市西屯區','lisaolong@example.com'),
('王小強','wangxiaoqiang', 'passpass', '台南市安南區','wangxiaoqiang@example.com'),
('吳小姍','wuxiaoshan', 'letmein', '高雄市前鎮區','wuxiaoshan@example.com'),
('陳小玲','chenxiaoling', '123456789', '基隆市安樂區','chenxiaoling@example.com'),
('林小春','linxiaochun', 'sunshine', '新竹市東區','linxiaochun@example.com'),
('黃小薇','huangxiaowei', 'password', '嘉義市東區','huangxiaowei@example.com'),
('劉小琪','liuxiaoqi', 'welcome', '新北市永和區','liuxiaoqi@example.com');

CREATE TABLE product (
    productId INT PRIMARY KEY IDENTITY(1,1),
    productName VARCHAR(100),
    productType VARCHAR(50),
    productCost INT,
    productPrice INT,
    productExpirydate INT,
    productDescription TEXT,
    productPublished BIT 
    -- 0 表示未上架，1 表示已上架
);

INSERT INTO product (productName, productType, productCost, productPrice, productExpirydate, productDescription, productPublished)
VALUES 
    ('統一麥香奶茶TP375ml', '飲品', 8, 15, 365, '醇厚紅茶結合大麥香氣與乳粉調配，呈現具獨特大麥及焦糖風味的奶茶',1),
    ('統一麥香綠茶TP375ml', '飲品', 8, 15, 365, '選用甜香特色的焙香綠茶葉，萃取醇厚甜香茶汁，搭配大麥焙炒甜香，呈現獨特大麥風味的綠茶',1),
    ('[優鮮沛]蔓越莓綜合果汁500ml', '飲品', 12, 25, 365, '來自北美珍貴『蔓越莓』',1),
    ('金車伯朗咖啡240ml', '飲品', 12, 25, 210, '伯朗咖啡是將適量的咖啡、牛奶、砂糖調合而成的調合咖啡，且伯朗咖啡是由金車公司自行炒豆、萃取，到裝罐全程一貫作業生產的高品質調合咖啡，將最好的品質呈現給消費者，冷熱飲用皆適宜。',1),
    ('[孔雀]原味餅乾75g', '零食', 14, 29, 60, '從小陪伴著我們長大的孔雀餅乾，含有大大的營養，一片片都能帶來小小的滿足幸福感',0),
    ('蝦味先-原味115g', '零食', 16, 35, 60, '香脆可口、老少咸宜，最新烘培技術製成，非油炸品，確保人體健康，新鮮全蝦製成，有鮮蝦的風味、含豐富的鈣質',1),
    ('台酒花雕雞麵(碗)200g', '泡麵', 25, 49, 60, '使用台灣菸酒公司遵循古法釀製的料理花雕酒，搭配濃郁藥膳風味湯頭，香Q的',1),
	  ('維力炸醬麵(碗)90g', '泡麵', 12, 25, '60', '維力炸醬麵是家喻戶曉的老品牌老口味，維力炸醬調之所以好吃好調理，祕訣在於原料完全採用熟成的豆瓣製成豆瓣醬，在穩定的溫溼度控制下，其發酵的時間、溫度是成為美味的最大秘訣。民國六十七年維力炸醬麵問世，一包兩吃，附湯的吃法立刻擄獲消費者的心，為國內「速食乾麵之第一品牌」。',0),
    ('滿漢大餐酸菜牛肉拌麵', '熟食', 50, 109, '3', '堅持選用珍稀牛前腱肉，搭配百年古法秘製酸菜，軟嫩牛肉與香脆酸菜的完美融合，再拌上香氣十足的牛油和辣豆瓣醬，才真正完整了一碗牛肉麵的靈魂！',1),
    ('熱那亞羅勒義大利麵', '熟食', 45, 89, '3', '這道大人小孩都愛的熱那亞羅勒義大利麵，不但能吃到青醬的濃郁口感、蛤蜊的鮮味，蒜味和白酒更有提香的作用。雖然是利用方便取得的九層塔來取代正統的甜羅勒',1)

CREATE TABLE productImage (
    imageId INT PRIMARY KEY IDENTITY(1,1),
    productId INT NOT NULL,
    imageUrl VARCHAR(255),
    FOREIGN KEY (productId) REFERENCES product(productId))

INSERT INTO productImage
VALUES 
    (1, 'https://online.carrefour.com.tw/on/demandware.static/-/Sites-carrefour-tw-m-inner/default/dwc8730829/images/large/1003201300124_NR_00.png'),
    (2, 'https://online.carrefour.com.tw/on/demandware.static/-/Sites-carrefour-tw-m-inner/default/dw29b57d83/images/large/1003306400106_NR_00.png'),
    (3, 'https://img.pchome.com.tw/cs/items/DBAB3ZA59778376/000001_1711795308.jpg'),
    (4, 'https://m.shop.7-11.com.tw/mdz_file/item/21/02/05/1307/13070014958G_intr_l_1_211110145944.jpg'),
    (5, 'https://m.shop.7-11.com.tw/mdz_file/item/22/04/05/1307/13070011857G_intr_l_1_231026190017.jpg'),
    (6, 'https://online.carrefour.com.tw/on/demandware.static/-/Sites-carrefour-tw-m-inner/default/dw2b673091/images/large/0178251_-115g.jpeg'),
    (7, 'https://online.carrefour.com.tw/on/demandware.static/-/Sites-carrefour-tw-m-inner/default/dw3cbc6cdc/images/large/1450000800101_NR_00.jpg'),
    (8, 'https://online.carrefour.com.tw/on/demandware.static/-/Sites-carrefour-tw-m-inner/default/dw4a552c51/images/large/0215698_-90g.jpeg'),   
    (9, 'https://www.7-11.com.tw/freshfoods/6_noodles/images/Noodles_83.png'),
    (10, 'https://www.7-11.com.tw/freshfoods/17_ohlala/images/ohlala_60.png');

CREATE TABLE productReview (
    reviewId INT PRIMARY KEY IDENTITY(1,1),
	memberId INT,
    productId INT,
    stars INT,
    content VARCHAR(255),
    FOREIGN KEY (productId) REFERENCES Product(productId),
    CHECK (stars BETWEEN 1 AND 5),
    CONSTRAINT UC_UserProduct UNIQUE (memberId, productId),
	FOREIGN KEY (memberId) REFERENCES members(memberId)
);

INSERT INTO productReview (memberId, productId, stars, content)
VALUES 
    (1, 1, 5, '麥香奶茶真好喝'),
    (1, 2, 5, '麥香綠茶真好喝'),
    (2, 1, 1, '麥香奶茶真難喝'),
    (2, 2, 1, '麥香綠茶真難喝'),
    (1, 10, 5, '義大利麵萬歲'),
    (6, 7, 5, '花雕雞麵棒棒'),
    (7, 8, 1, '維力真的有點慘'),
    (5, 9, 5, '牛肉麵好好吃'),
    (4, 5, 5, '孔雀就是童年的回憶'),
    (3, 4, 5, '咖啡幫助我期中考第一名');

CREATE TABLE  stores(
	storeId INT IDENTITY(1,1) PRIMARY KEY not null,
	storeName NVARCHAR(10),
	cityNum NVARCHAR(3),
	city NVARCHAR(10),
	area NVARCHAR(10),
	street NVARCHAR(100),
	tel  NVARCHAR(100)
);
INSERT INTO stores
VALUES ('爪哇店','320','桃園市','中壢區','大仁二街１７號１樓','02-1234567'),
('西擴店','100','台北市','中正區','八德路一段４３巷２號','02-7654321'),
  ('溪家家店','207','新北市','萬里區','大鵬里頂社１號','03-1234567'),
  ('櫻花店','150','新北市','永和區','永和路８９號','02-9876543'),
  ('綠野店','220','台北市','大安區','信義路四段１２３號','02-3456789'),
  ('紅蓮店','420','高雄市','鳳山區','文衡路２３４號','07-6543210'),
  ('藍天店','330','新竹市','東區','民族路７８號','03-1357924'),
  ('金龍店','510','台中市','北區','健行路１１１號','04-5678901'),
  ('白雲店','430','台南市','安南區','安中路５６號','06-7890123'),
  ('青山店','410','彰化縣','彰化市','光復路２２２號','04-3210987');

CREATE TABLE storeBuy(
	purchaseId INT IDENTITY(1,1) PRIMARY KEY not null,	
	storeId INT NOT NULL CONSTRAINT stores_buy_fk REFERENCES stores(storeId),
	arrivedDate DATE
);
INSERT INTO storeBuy
VALUES(1,'2024/5/9'),
(1,'2024/5/10'),
(2,'2024/5/3'),
(3,'2024/6/5'),
(3,'2024/5/18'),
(4,'2024/5/16'),
(5,'2024/6/20'),
(5,'2024/6/22'),
(6,'2024/6/17'),
(10,'2024/5/17');

CREATE TABLE buyDetail(
	buyRecId INT IDENTITY(1,1) PRIMARY KEY not null,	
	purchaseId INT NOT NULL CONSTRAINT detail_purchase_fk REFERENCES storeBuy(purchaseId),
	prodId INT CONSTRAINT prod_buy_fk REFERENCES product(productId),
	purchaseNum INT
);
INSERT INTO buyDetail
VALUES(1,1,3),
(1,2,5),
(3,5,10),
(4,9,3),
(4,10,8),
(5,6,7),
(5,3,12),
(6,7,9),
(10,1,3),
(10,4,2);
	

CREATE TABLE inventory(
    inventoryId INT IDENTITY(1,1) PRIMARY KEY not null,
	buyCode NVARCHAR(20),	
	storeId INT NOT NULL CONSTRAINT inv_store_fk REFERENCES stores(storeId),
	productId INT CONSTRAINT inv_prod_fk REFERENCES product(productId),
	invNum INT,
	deliveryDate DATE,
	expDate DATE
);


INSERT INTO inventory
VALUES('000120240512',1,1,6,'2024/5/9','2024/5/12'),
	('000120240513',1,1,10,'2024/5/10','2024/5/13'),
	('000120240513',2,1,23,'2024/5/10','2024/5/13'),
	('000220240517',2,3,25,'2024/5/12','2024/5/17'),
	('000420240517',2,4,21,'2024/5/15','2024/5/17'),
	('000620240518',3,6,14,'2024/5/16','2024/5/18'),
	('000820240518',4,8,3,'2024/5/16','2024/5/18'),
	('000220240513',5,2,17,'2024/5/4','2024/5/13'),
	('000720240524',9,7,15,'2024/5/21','2024/5/24'),
	('000520240518',9,5,14,'2024/5/12','2024/5/19');


CREATE TABLE storeLike(    
    likeId INT IDENTITY(1,1) PRIMARY KEY not null,
    storeId INT NOT NULL CONSTRAINT like_store_fk REFERENCES stores(storeId),
    userId INT CONSTRAINT mem_like_fk REFERENCES members(memberId),
);


INSERT INTO storeLike
VALUES(1,1),
    (1,3),
    (2,1),
    (2,4),
    (3,8),
    (4,10),
    (5,3),
    (5,9),
    (8,8),
    (9,2);

CREATE TABLE groupBuy (
	groupBuyId		INT IDENTITY(1,1),
	productId		INT,
	storeId			INT,
	price			INT,
	targetQuantity	INT,
	nowQuantity		INT,
	orderDate		DATE,
	arrivalDate		DATE,
	endDate			DATE,
	groupBuyStatus	NVARCHAR(30),

	CONSTRAINT PK_groupBuy PRIMARY KEY (groupBuyId),
	CONSTRAINT FK_groupBuy_productId FOREIGN KEY (productId) REFERENCES product (productId),
	CONSTRAINT FK_groupBuy_storeId FOREIGN KEY (storeId) REFERENCES stores (storeId)
);

INSERT INTO groupBuy (productId, storeId, price, targetQuantity, nowQuantity, orderDate, arrivalDate, endDate, groupBuyStatus) VALUES
(1, 1, 14, 10, 10, '2024-06-01', NULL, NULL, '已結單'),
(1, 2, 14, 10, 10, '2024-05-01', '2024-05-10', '2024-05-13', '已結束'),
(1, 3, 14, 10, 10, '2024-05-31', '2024-06-03', '2024-06-06', '已結束'),
(1, 4, 12, 20, 0, '2024-05-10', NULL, NULL, '不成立'),
(1, 5, 14, 15, 0,  '2024-06-15', NULL, NULL, '未開團'),
(2, 6, 14, 10, 0, '2024-05-27', NULL, NULL, '不成立'),
(2, 7, 14, 10, 0, '2024-07-07', NULL, NULL, '開團中'),
(2, 8, 12, 20, 0, '2024-07-08', NULL, NULL, '開團中'),
(2, 9, 11, 30, 0, '2024-07-06', NULL, NULL, '未開團'),
(2, 10, 12, 25,  0,  '2024-07-07', NULL, NULL, '開團中');

CREATE TABLE groupMember (
	groupMemberId	INT IDENTITY(1,1),
	groupBuyId		INT,
	memberId		INT,
	quantity		INT,
	total			INT,
	pickupStatus	NVARCHAR(10),

	CONSTRAINT PK_groupMember PRIMARY KEY (groupMemberId),
	CONSTRAINT FK_groupMember_groupBuyId FOREIGN KEY (groupBuyId) REFERENCES groupBuy (groupBuyId) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_groupMember_memberId FOREIGN KEY (memberId) REFERENCES members (memberId) ON DELETE CASCADE ON UPDATE CASCADE
);

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

CREATE TABLE amountDiscount (
    discountId INT PRIMARY KEY IDENTITY(1,1),
    discountName VARCHAR(100),
    minPurchaseAmount INT,
    discountPercentage INT,
    startDate DATE,
    endDate DATE,
	isActive int
);

CREATE TABLE productDiscount (
    discountId INT PRIMARY KEY IDENTITY(1,1),
    discountName VARCHAR(100),
    productId INT,
    discountPercentage INT,
    startDate DATE,
    endDate DATE,
	isActive int
    FOREIGN KEY (productId) REFERENCES product(productId)
);

INSERT INTO amountDiscount (discountName, minPurchaseAmount, discountPercentage, startDate, endDate,isActive)
VALUES 
    ('新年特惠', 200, 5, '2024-01-01', '2024-01-31',1),
    ('愚人節', 300, 10, '2024-04-01', '2024-04-01',1),
    ('母親節', 400, 15, '2024-05-09', '2024-05-09',1),
    ('夏季狂歡', 200, 5, '2024-06-01', '2024-06-30',1),
    ('週年慶', 500, 25, '2024-07-01', '2024-07-15',1),
    ('父親節', 888, 12, '2024-08-01', '2024-08-08',1),
    ('七夕優惠', 520, 10, '2024-08-14', '2024-08-14',1),
    ('雙十一特惠', 1111, 30, '2024-11-01', '2024-11-11',1),
    ('聖誕快樂', 500, 5, '2024-12-01', '2024-12-25',1),
    ('年終獎金', 1000, 20,'2024-12-26','2024-12-31',1);

INSERT INTO productDiscount (discountName, productId, discountPercentage, startDate, endDate ,isActive)
VALUES 
    ('統一麥香奶茶TP375ml優惠', 1, 5, '2024-05-01', '2024-05-31',1),
    ('統一麥香綠茶TP375ml優惠', 2, 8, '2024-05-01', '2024-05-31',1),
    ('[優鮮沛]蔓越莓綜合果汁500ml優惠', 3, 10, '2024-05-01', '2024-05-31',1),
    ('金車伯朗咖啡240ml優惠', 4, 12, '2024-05-01', '2024-05-31',1),
    ('[孔雀]原味餅乾75g優惠', 5, 8, '2024-05-01', '2024-05-31',1),
    ('蝦味先-原味115g優惠', 6, 10, '2024-05-01', '2024-05-31',1),
    ('台酒花雕雞麵(碗)200g優惠', 7, 15, '2024-05-01', '2024-05-31',1),
    ('維力炸醬麵(碗)90g優惠', 8, 10, '2024-05-01', '2024-05-31',1),
    ('滿漢大餐酸菜牛肉拌麵優惠', 9, 20, '2024-05-01', '2024-05-31',1),
    ('熱那亞羅勒義大利麵優惠', 10, 18, '2024-05-01', '2024-05-31',1);

-- 權限表
CREATE TABLE roles (
    roleId INT PRIMARY KEY,
    roleName VARCHAR(100) UNIQUE,
    roleDescription VARCHAR(255) -- 管理員能做的事情
);

-- 管理員能做的事情
INSERT INTO roles (roleId, roleName, roleDescription)
VALUES
(1, '總管理員', '擁有所有管理員權限'),
(2, '一般管理員', '管理特定項目'),
(3, '店長', '負責管理特定店鋪的日常運營');

-- 管理員表
CREATE TABLE admins (
    adminId INT PRIMARY KEY,
    adminUsername VARCHAR(100) UNIQUE,
    adminPassword VARCHAR(100),
    adminTitle VARCHAR(100),
    roleId INT,  
    storeId INT, 
    FOREIGN KEY (roleId) REFERENCES roles(roleId)
);


INSERT INTO admins (adminId, adminUsername, adminPassword, adminTitle, roleId, storeId)
VALUES
(1, 'aaa123', 'aaa123', '後台總管理員', 1, NULL),
(2, 'bbb123', 'bbb123', '一般管理員', 2, NULL),
(3, 'ccc123', 'ccc123', '店長', 3, 1);



-- 權限表
CREATE TABLE rolePermissions (
    roleId INT,
    moduleName VARCHAR(100),
    createPermission VARCHAR(5),
    readPermission VARCHAR(5),
    updatePermission VARCHAR(5),
    deletePermission VARCHAR(5),
    PRIMARY KEY (roleId, moduleName),
    FOREIGN KEY (roleId) REFERENCES roles(roleId)
);


-- 管理員擁有所有權限
INSERT INTO rolePermissions (roleId, moduleName, createPermission, readPermission, updatePermission, deletePermission)
VALUES
(1, '總管理員', 'true', 'true', 'true', 'true'),
-- 一般管理員的權限
(2, '一般管理員', 'true', 'true', 'true', 'false'),
-- 店長管理其分配店鋪的操作
(3, '店鋪管理', 'true', 'true', 'true', 'true');



CREATE TABLE orders (
    orderId INT PRIMARY KEY IDENTITY(1,1),                -- 訂單編號
    memberId INT NOT NULL,                                -- 會員帳號	
    orderDate DATE NOT NULL,                              -- 訂單日期
    pointUse INT NOT NULL DEFAULT 0,                      -- 點數使用
	amountDiscountId INT,                                -- 產品折扣編號
	productDiscountId INT,
    storeId INT,                                          -- 取貨店鋪
    total DECIMAL(10, 2) NOT NULL,                        -- 訂單總金額
    discountMoney DECIMAL(10, 2) NOT NULL DEFAULT 0,      -- 折扣金額
    status VARCHAR(50) NOT NULL,                          -- 訂單當前狀態
    paymentMethod VARCHAR(50) NOT NULL,                   -- 付款方法
    orderSuccessDate DATE,                                -- 訂單成功日期
	pickupDate DATE,
    unpaidCount INT NOT NULL DEFAULT 0,                   -- 未付款次數
    pointGet INT,                                         -- 獲得點數
    finalAmount DECIMAL(10, 2) NOT NULL,                  -- 最終支付金額	
    FOREIGN KEY (memberId) REFERENCES members(memberId),
    FOREIGN KEY (storeId) REFERENCES stores(storeId),
	FOREIGN KEY (amountDiscountId) REFERENCES amountDiscount(discountId),
	FOREIGN KEY (productDiscountId) REFERENCES amountDiscount(discountId)
);


INSERT INTO orders (memberId,  orderDate, pointUse, amountDiscountId, productDiscountId, storeId, total, discountMoney, status, paymentMethod, orderSuccessDate, pickupDate, unpaidCount, pointGet, finalAmount)
VALUES
   (1, '2024-05-01', 5, 1, 1, 1, 100.00, 15.00, '已送達', '線上支付', '2024-05-04', '2024-05-04', 0, 10, 35.00),
    (2, '2024-05-02', 2, 2, 2, 2, 150.00, 0.00, '已送達', '信用卡', '2024-05-05', '2024-05-05', 0, 15, 135.00),
    (3, '2024-05-03', 3, 3, 3, 3, 200.00, 50.00, '已送達', '現金支付', '2024-05-06', '2024-05-06', 0, 20, 130.00),
    (4, '2024-05-04', 4, 4, 4, 4, 250.00, 37.50, '已送達', '現金支付', '2024-05-07', '2024-05-07', 1, 25, 187.50),
    (5, '2024-05-05', 5, 5, 5, 5, 300.00, 82.50, '運送中', '信用卡', '2024-05-08', '2024-05-08', 0, 30, 217.50),
    (6, '2024-05-06', 6, 6, 6, 6, 350.00, 84.00, '運送中', '現金支付', '2024-05-09', '2024-05-09', 1, 35, 231.00),
    (7, '2024-05-07', 7, 7, 7, 7, 400.00, 140.00, '已發貨', '信用卡', '2024-05-10', '2024-05-10', 1, 40, 260.00),
    (8, '2024-05-08', 8, 8, 8, 8, 450.00, 156.60, '已發貨', '現金支付', '2024-05-11', '2024-05-11', 2, 45, 293.40),
    (9, '2024-05-09', 9, 9, 9, 9, 500.00, 55.00, '已送達', '現金支付', '2024-05-12', '2024-05-12', 0, 50, 445.00),
    (10, '2024-05-10', 10, 10, 10, 10, 550.00, 165.00, '已送達', '現金支付', '2024-05-13', '2024-05-13', 0, 55, 385.00);





--訂單詳情表
CREATE TABLE orderDetails (
    orderDetailId INT PRIMARY KEY IDENTITY(1,1),              --訂單詳情項目編號
    orderId INT NOT NULL,                                     --訂單編號
    productId INT NOT NULL,                                   --產品編號
    quantity INT NOT NULL,                                     --數量
	subTotal DECIMAL(10, 2) NOT NULL,							--單一商品小計
    FOREIGN KEY (orderId) REFERENCES orders(orderId),         
   FOREIGN KEY (productId) REFERENCES Product(productId)
);

INSERT INTO orderDetails (orderId, productId, quantity,subtotal) VALUES
(1, 1, 2, 30.00),
(2, 2, 1, 50.00),
(3, 3, 3, 90.00),
(4, 4, 2, 60.00),
(5, 5, 1, 40.00),
(6, 6, 4, 120.00),
(7, 7, 2, 70.00),
(8, 8, 1, 30.00),
(9, 9, 5, 150.00),
(10, 10, 3, 90.00);
