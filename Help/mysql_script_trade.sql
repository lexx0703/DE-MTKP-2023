


create table Role
(
  RoleID int primary key auto_increment,
  RoleName varchar(100) not null
);

create table User
(
  UserID int primary key auto_increment,
  UserSurname varchar(100) not null,
  UserName varchar(100) not null,
  UserPatronymic varchar(100) not null,
  UserLogin text not null,
  UserPassword text not null,
  UserRole int not null,
  foreign key (UserRole) references Role(RoleID) 
);


create table Product
(
  ProductArticleNumber nvarchar(100) primary key,
  ProductName text not null,
  ProductDescription text not null,
  ProductCategory text not null,
  ProductPhoto blob not null,
  ProductManufacturer text not null,
  ProductCost decimal(19,4) not null,
  ProductDiscountAmount tinyint null,
  ProductQuantityInStock int not null,
  ProductStatus text not null
);

create table Order1
(
  OrderID int primary key auto_increment,
  OrderStatus text not null,
  OrderDeliveryDate datetime not null,
  OrderPickupPoint text not null
);

create table OrderProduct
(
  OrderID int not null,
  ProductArticleNumber nvarchar(100)  not null,
  Primary key (OrderID,ProductArticleNumber),
  foreign key (OrderID) references Order1(OrderID),
  foreign key (ProductArticleNumber) references Product(ProductArticleNumber)
);