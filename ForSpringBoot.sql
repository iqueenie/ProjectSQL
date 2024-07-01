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

DROP TABLE IF EXISTS rolePermission;
DROP TABLE IF  EXISTS managementRoles;
DROP TABLE IF EXISTS management;
DROP TABLE IF EXISTS roles
DROP TABLE IF EXISTS actionPermission;


/*DROP����]SPRINGBOOT��TABLE�ذ_�� �A�]�U����*/
INSERT INTO members (memberName, memberAccount, memberPassword, memberAddress, memberEmail)
VALUES
('���p��','chenxiaoming', 'mypassword','�x�_���H�q��','chenxiaoming@example.com'),
('�L�p��','linxiaohua', 'abc123', '�s�_���O����','linxiaohua@example.com'),
('�i�p��','zhangxiaomei', 'qwerty', '��饫���c��','zhangxiaomei@example.com'),
('���p�s','lisaolong', 'iloveyou', '�x������ٰ�','lisaolong@example.com'),
('���p�j','wangxiaoqiang', 'passpass', '�x�n���w�n��','wangxiaoqiang@example.com'),
('�d�p�k','wuxiaoshan', 'letmein', '�������e���','wuxiaoshan@example.com'),
('���p��','chenxiaoling', '123456789', '�򶩥��w�ְ�','chenxiaoling@example.com'),
('�L�p�K','linxiaochun', 'sunshine', '�s�˥��F��','linxiaochun@example.com'),
('���p��','huangxiaowei', 'password', '�Ÿq���F��','huangxiaowei@example.com'),
('�B�p�X','liuxiaoqi', 'welcome', '�s�_���éM��','liuxiaoqi@example.com');

INSERT INTO product (productName, productType, productCost, productPrice, productExpirydate, productDescription, productPublished)
VALUES 
    ('�Τ@��������TP375ml', '���~', 8, 15, 365, '�J�p�������X�j������P�ů��հt�A�e�{��W�S�j���εJ�}����������',1),
    ('�Τ@�������TP375ml', '���~', 8, 15, 365, '��β����S�⪺�H��������A�Ѩ��J�p�������ġA�f�t�j���H�������A�e�{�W�S�j�����������',1),
    ('[�u�A�K]���V����X�G��500ml', '���~', 12, 25, 365, '�Ӧۥ_���öQ�y���V���z',1),
    ('�����B�ԩ@��240ml', '���~', 12, 25, 210, '�B�ԩ@�جO�N�A�q���@�ءB�����B��}�զX�Ӧ����զX�@�ءA�B�B�ԩ@�جO�Ѫ������q�ۦ檣���B�Ѩ��A��������{�@�e�@�~�Ͳ������~��զX�@�ءA�N�̦n���~��e�{�����O�̡A�N�����άҾA�y�C',1),
    ('[�ճ�]����氮75g', '�s��', 14, 29, 60, '�q�p����ۧڭ̪��j���ճ��氮�A�t���j�j����i�A�@��������a�Ӥp�p���������ַP',0),
    ('������-���115g', '�s��', 16, 35, 60, '���ܥi�f�B�Ѥ֫w�y�A�̷s�M���޳N�s���A�D�o���~�A�T�O�H�鰷�d�A�s�A�����s���A���A���������B�t�״I���t��',1),
    ('�x�s���J����(�J)200g', '�w��', 25, 49, 60, '�ϥΥx�W�Ұs���q��`�j�k�C�s���Ʋz���J�s�A�f�t�@���Ŀ��������Y�A��Q��',1),
	  ('���O������(�J)90g', '�w��', 12, 25, '60', '���O�����ѬO�a���媺�ѫ~�P�Ѥf���A���O����դ��ҥH�n�Y�n�ղz�A���Z�b���Ƨ����ĥμ�������ä�s����ä��A�bí�w���ŷëױ���U�A��o�ê��ɶ��B�ū׬O�����������̤j���Z�C���ꤻ�Q�C�~���O�����Ѱݥ@�A�@�]��Y�A�������Y�k�ߨ������O�̪��ߡA���ꤺ�u�t�����Ѥ��Ĥ@�~�P�v�C',0),
    ('���~�j�\�ĵ���ש���', '����', 50, 109, '3', '�����άõ}���e�x�סA�f�t�ʦ~�j�k���s�ĵ�A�n����׻P���ܻĵ檺�����ĦX�A�A�դW����Q�������o�M����ä��A�~�u������F�@�J�����Ѫ��F��I',1),
    ('������ù�Ǹq�j�Q��', '����', 45, 89, '3', '�o�D�j�H�p�ĳ��R��������ù�Ǹq�j�Q�ѡA������Y��C�檺�@���f�P�B��Ī��A���A�[���M�հs�󦳴������@�ΡC���M�O�Q�Τ�K���o���E�h��Ө��N���Ϊ���ù��',1)

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


INSERT INTO stores (storeName, cityNum, city, area, street, tel)
VALUES ('���z��','320','��饫','���c��','�j���G�󢰢�������','02-1234567'),
('���X��','100','�x�_��','������','�K�w���@�q�����Ѣ���','02-7654321'),
  ('�ˮa�a��','207','�s�_��','�U����','�j�P����������','03-1234567'),
  ('��ᩱ','150','�s�_��','�éM��','�éM��������','02-9876543'),
  ('�񳥩�','220','�x�_��','�j�w��','�H�q���|�q��������','02-3456789'),
  ('������','420','������','��s��','��Ÿ���������','07-6543210'),
  ('�Ťѩ�','330','�s�˥�','�F��','���ڸ�������','03-1357924'),
  ('���s��','510','�x����','�_��','�������������','04-5678901'),
  ('�ն���','430','�x�n��','�w�n��','�w����������','06-7890123'),
  ('�C�s��','410','���ƿ�','���ƥ�','���_����������','04-3210987');



INSERT INTO storeBuy (storeId, arrivedDate)
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

INSERT INTO buyDetail (purchaseId, prodId,purchaseNum)
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

INSERT INTO inventory(buyCode,storeId,productId,invNum,deliveryDate,expDate)
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
    (9,2);

INSERT INTO groupBuy (productId, storeId, price, targetQuantity, nowQuantity, orderDate, arrivalDate, endDate, groupBuyStatus) VALUES
(1, 1, 14, 10, 10, '2024-06-01', NULL, NULL, '�w����'),
(1, 2, 14, 10, 10, '2024-05-01', '2024-05-10', '2024-05-13', '�w����'),
(1, 3, 14, 10, 10, '2024-05-31', '2024-06-03', '2024-06-06', '�w����'),
(1, 4, 12, 20, 0, '2024-05-10', NULL, NULL, '������'),
(1, 5, 14, 15, 0,  '2024-07-15', NULL, NULL, '���}��'),
(2, 6, 14, 10, 0, '2024-05-27', NULL, NULL, '������'),
(2, 7, 14, 10, 0, '2024-07-07', NULL, NULL, '�}�Τ�'),
(2, 8, 12, 20, 0, '2024-07-08', NULL, NULL, '�}�Τ�'),
(2, 9, 11, 30, 0, '2024-07-06', NULL, NULL, '���}��'),
(2, 10, 12, 25,  0,  '2024-07-07', NULL, NULL, '�}�Τ�');

INSERT INTO groupMember (groupBuyId, memberId, quantity, total, pickupStatus) VALUES
(1, 1, 3, 42, '�w�q��'),
(1, 2, 3, 42, '�w�q��'),
(1, 3, 4, 56, '�w�q��'),
(2, 4, 3, 42, '�w���f'),
(2, 5, 3, 42, '�w���f'),
(2, 6, 4, 56, '�����f'),
(3, 7, 3, 42, '�����f'),
(3, 8, 3, 42, '�����f'),
(3, 9, 4, 56, '�w���f'),
(3, 10, 0, 0, '�w�R��');

INSERT INTO amountDiscount (discountName, minPurchaseAmount, discountPercentage, startDate, endDate,isActive)
VALUES 
    ('�s�~�S�f', 200, 5, '2024-01-01', '2024-01-31',1),
    ('�M�H�`', 300, 10, '2024-04-01', '2024-04-01',1),
    ('���˸`', 400, 15, '2024-05-09', '2024-05-09',1),
    ('�L�u�g�w', 200, 5, '2024-06-01', '2024-06-30',1),
    ('�g�~�y', 500, 25, '2024-07-01', '2024-07-15',1),
    ('���˸`', 888, 12, '2024-08-01', '2024-08-08',1),
    ('�C�i�u�f', 520, 10, '2024-08-14', '2024-08-14',1),
    ('���Q�@�S�f', 1111, 30, '2024-11-01', '2024-11-11',1),
    ('�t�ϧּ�', 500, 5, '2024-12-01', '2024-12-25',1),
    ('�~�׼���', 1000, 20,'2024-12-26','2024-12-31',1);

INSERT INTO productDiscount (discountName, productId, discountPercentage, startDate, endDate ,isActive)
VALUES 
    ('�Τ@��������TP375ml�u�f', 1, 5, '2024-05-01', '2024-05-31',1),
    ('�Τ@�������TP375ml�u�f', 2, 8, '2024-05-01', '2024-05-31',1),
    ('[�u�A�K]���V����X�G��500ml�u�f', 3, 10, '2024-05-01', '2024-05-31',1),
    ('�����B�ԩ@��240ml�u�f', 4, 12, '2024-05-01', '2024-05-31',1),
    ('[�ճ�]����氮75g�u�f', 5, 8, '2024-05-01', '2024-05-31',1),
    ('������-���115g�u�f', 6, 10, '2024-05-01', '2024-05-31',1),
    ('�x�s���J����(�J)200g�u�f', 7, 15, '2024-05-01', '2024-05-31',1),
    ('���O������(�J)90g�u�f', 8, 10, '2024-05-01', '2024-05-31',1),
    ('���~�j�\�ĵ���ש����u�f', 9, 20, '2024-05-01', '2024-05-31',1),
    ('������ù�Ǹq�j�Q���u�f', 10, 18, '2024-05-01', '2024-05-31',1);

INSERT INTO management (managementAccount, managementPassword)
VALUES 
    ('aaa123', 'aaa123'),
    ('bbb123', 'bbb123'),
    ('ccc123', 'ccc123');

INSERT INTO orders (memberId,  orderDate, pointUse, amountDiscountId, productDiscountId, storeId, total, discountMoney, status, paymentMethod, orderSuccessDate, pickupDate, unpaidCount, pointGet, finalAmount)
VALUES
   (1, '2024-05-01', 5, 1, 1, 1, 100.00, 15.00, '�w�e�F', '�u�W��I', '2024-05-04', '2024-05-04', 0, 10, 35.00),
    (2, '2024-05-02', 2, 2, 2, 2, 150.00, 0.00, '�w�e�F', '�H�Υd', '2024-05-05', '2024-05-05', 0, 15, 135.00),
    (3, '2024-05-03', 3, 3, 3, 3, 200.00, 50.00, '�w�e�F', '�{����I', '2024-05-06', '2024-05-06', 0, 20, 130.00),
    (4, '2024-05-04', 4, 4, 4, 4, 250.00, 37.50, '�w�e�F', '�{����I', '2024-05-07', '2024-05-07', 1, 25, 187.50),
    (5, '2024-05-05', 5, 5, 5, 5, 300.00, 82.50, '�B�e��', '�H�Υd', '2024-05-08', '2024-05-08', 0, 30, 217.50),
    (6, '2024-05-06', 6, 6, 6, 6, 350.00, 84.00, '�B�e��', '�{����I', '2024-05-09', '2024-05-09', 1, 35, 231.00),
    (7, '2024-05-07', 7, 7, 7, 7, 400.00, 140.00, '�w�o�f', '�H�Υd', '2024-05-10', '2024-05-10', 1, 40, 260.00),
    (8, '2024-05-08', 8, 8, 8, 8, 450.00, 156.60, '�w�o�f', '�{����I', '2024-05-11', '2024-05-11', 2, 45, 293.40),
    (9, '2024-05-09', 9, 9, 9, 9, 500.00, 55.00, '�w�e�F', '�{����I', '2024-05-12', '2024-05-12', 0, 50, 445.00),
    (10, '2024-05-10', 10, 10, 10, 10, 550.00, 165.00, '�w�e�F', '�{����I', '2024-05-13', '2024-05-13', 0, 55, 385.00);


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


