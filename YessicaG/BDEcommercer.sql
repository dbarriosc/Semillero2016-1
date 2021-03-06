USE [Ecommerce]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[IdCategory] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](30) NOT NULL,
	[DescriptionCate] [nchar](100) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[IdCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CheckIc]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckIc](
	[IdCheck] [int] IDENTITY(1,1) NOT NULL,
	[CheckNumber] [int] NOT NULL,
	[CheckBank] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Check] PRIMARY KEY CLUSTERED 
(
	[IdCheck] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[City]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityCode] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](30) NOT NULL,
	[StateCode] [tinyint] NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryCode] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](30) NOT NULL,
	[Iso_Code] [nchar](15) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CountryTax]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryTax](
	[IdCountrytax] [tinyint] IDENTITY(1,1) NOT NULL,
	[CountryCode] [tinyint] NOT NULL,
	[IdTax] [int] NOT NULL,
 CONSTRAINT [PK_CountryTax] PRIMARY KEY CLUSTERED 
(
	[IdCountrytax] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CreditCard]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCard](
	[IdCreditCard] [int] IDENTITY(1,1) NOT NULL,
	[CreditCardNumber] [int] NOT NULL,
	[ExpirationDate] [date] NOT NULL,
	[IdUser] [int] NOT NULL,
 CONSTRAINT [PK_CreditCard] PRIMARY KEY CLUSTERED 
(
	[IdCreditCard] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Evaluation]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluation](
	[IdEvaluation] [tinyint] IDENTITY(1,1) NOT NULL,
	[Score] [nchar](10) NOT NULL,
	[IdUser] [int] NOT NULL,
 CONSTRAINT [PK_Evaluation] PRIMARY KEY CLUSTERED 
(
	[IdEvaluation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventE]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventE](
	[IdEvent] [int] NOT NULL,
	[DescriptionE] [nchar](100) NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[IdEvent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Factory]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factory](
	[IdFactory] [int] NOT NULL,
	[Name] [nchar](50) NOT NULL,
	[CountryCode] [tinyint] NOT NULL,
	[IdEvaluation] [tinyint] NOT NULL,
 CONSTRAINT [PK_Factory] PRIMARY KEY CLUSTERED 
(
	[IdFactory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FactoryEvaluation]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactoryEvaluation](
	[IdFactoryEvaluation] [tinyint] IDENTITY(1,1) NOT NULL,
	[IdFactory] [int] NOT NULL,
	[IdEvaluation] [tinyint] NOT NULL,
 CONSTRAINT [PK_FactoryEvaluation] PRIMARY KEY CLUSTERED 
(
	[IdFactoryEvaluation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Offer]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offer](
	[IdOffer] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](100) NOT NULL,
	[DescriptionO] [nchar](150) NULL,
	[DateStart] [date] NOT NULL,
	[DateEnd] [date] NOT NULL,
	[PercentageOffer] [float] NOT NULL,
	[IdProduct] [int] NOT NULL,
 CONSTRAINT [PK_Offer] PRIMARY KEY CLUSTERED 
(
	[IdOffer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[IdOrderDetail] [int] NOT NULL,
	[IdOrder] [int] NOT NULL,
	[IdProduct] [int] NOT NULL,
	[IdTax] [int] NULL,
	[QuantityTotal] [int] NOT NULL,
	[SubTotal] [float] NOT NULL,
	[Observation] [nchar](100) NOT NULL,
	[Discount] [float] NULL,
	[Dateorder] [date] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[IdOrderDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderP]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderP](
	[IdOrder] [int] NOT NULL,
	[DateOrder] [date] NOT NULL,
	[IdStatus] [tinyint] NOT NULL,
	[IdPayment] [int] NOT NULL,
	[Total] [float] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[IdOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[IdPayment] [int] NOT NULL,
	[DatePayment] [date] NULL,
	[IdPaymentType] [int] NULL,
	[Amount] [float] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[IdPayment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentType]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentType](
	[IdPaymentType] [int] NOT NULL,
	[IdCreditcard] [int] NULL,
	[IdPaypal] [int] NULL,
	[IdCheck] [int] NULL,
 CONSTRAINT [PK_PaymentType] PRIMARY KEY CLUSTERED 
(
	[IdPaymentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paypal]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paypal](
	[IdPaypal] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
 CONSTRAINT [PK_Paypal] PRIMARY KEY CLUSTERED 
(
	[IdPaypal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IdProduct] [int] NOT NULL,
	[Name] [nchar](30) NOT NULL,
	[DescriptionPro] [nchar](200) NULL,
	[IdCategory] [int] NOT NULL,
	[IdEvaluation] [tinyint] NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[ImageP] [image] NOT NULL,
	[RegistrationDate] [date] NOT NULL,
	[DateOfExpiry] [date] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductEvaluation]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductEvaluation](
	[IdProductEvaluation] [tinyint] IDENTITY(1,1) NOT NULL,
	[IdProduct] [int] NOT NULL,
	[IdEvaluation] [tinyint] NULL,
 CONSTRAINT [PK_ProductEvaluation] PRIMARY KEY CLUSTERED 
(
	[IdProductEvaluation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductUser]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductUser](
	[IdProductUser] [int] IDENTITY(1,1) NOT NULL,
	[IdProduct] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
 CONSTRAINT [PK_ProductUser] PRIMARY KEY CLUSTERED 
(
	[IdProductUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoleE]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleE](
	[IdRole] [tinyint] IDENTITY(1,1) NOT NULL,
	[TypeR] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shipment]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipment](
	[IdShipment] [int] NOT NULL,
	[IdOrder] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
	[IdFactory] [int] NOT NULL,
	[IdStatus] [tinyint] NOT NULL,
	[ShipmentDate] [date] NOT NULL,
	[ArrivalDate] [date] NOT NULL,
 CONSTRAINT [PK_Shipment] PRIMARY KEY CLUSTERED 
(
	[IdShipment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[State]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateCode] [tinyint] NOT NULL,
	[Name] [nchar](30) NOT NULL,
	[CountryCode] [tinyint] NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StatusE]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusE](
	[IdStatus] [tinyint] NOT NULL,
	[DescriptionS] [nchar](20) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[IdStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tax]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tax](
	[IdTax] [int] NOT NULL,
	[CountryCode] [tinyint] NOT NULL,
	[TaxPercent] [float] NOT NULL,
 CONSTRAINT [PK_Tax] PRIMARY KEY CLUSTERED 
(
	[IdTax] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TypeId]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeId](
	[IdTypeId] [tinyint] IDENTITY(1,1) NOT NULL,
	[TypeT] [nchar](10) NOT NULL,
 CONSTRAINT [PK_TypeId] PRIMARY KEY CLUSTERED 
(
	[IdTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserEcommerce]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserEcommerce](
	[IdUser] [int] NOT NULL,
	[IdTypeId] [tinyint] NOT NULL,
	[UserName] [nchar](20) NOT NULL,
	[PasswordUser] [nchar](40) NOT NULL,
	[Name] [nchar](250) NOT NULL,
	[LastName] [nchar](250) NOT NULL,
	[Email] [nchar](50) NOT NULL,
	[PhoneNumber] [nchar](30) NOT NULL,
	[IdRole] [tinyint] NOT NULL,
	[CountryCode] [tinyint] NOT NULL,
	[FactoryName] [nchar](10) NULL,
	[IdCreditCard] [int] NULL,
	[IdPayPal] [int] NULL,
	[IdStatus] [tinyint] NOT NULL,
	[PostalCode] [tinyint] NOT NULL,
	[Adress] [nchar](70) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserEvent]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserEvent](
	[IdEventUser] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
	[IdEvent] [int] NOT NULL,
	[DateLogin] [date] NOT NULL,
	[DateLogout] [date] NOT NULL,
	[ProcedureUser] [nchar](100) NOT NULL,
	[Likes] [nchar](100) NULL,
 CONSTRAINT [PK_UserEvent] PRIMARY KEY CLUSTERED 
(
	[IdEventUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[IdRole] [tinyint] NOT NULL,
	[IdUserRole] [tinyint] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[IdUserRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_State] FOREIGN KEY([StateCode])
REFERENCES [dbo].[State] ([StateCode])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_State]
GO
ALTER TABLE [dbo].[CountryTax]  WITH CHECK ADD  CONSTRAINT [FK_CountryTax_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[CountryTax] CHECK CONSTRAINT [FK_CountryTax_Country]
GO
ALTER TABLE [dbo].[CountryTax]  WITH CHECK ADD  CONSTRAINT [FK_CountryTax_Tax] FOREIGN KEY([IdTax])
REFERENCES [dbo].[Tax] ([IdTax])
GO
ALTER TABLE [dbo].[CountryTax] CHECK CONSTRAINT [FK_CountryTax_Tax]
GO
ALTER TABLE [dbo].[CreditCard]  WITH CHECK ADD  CONSTRAINT [FK_CreditCard_UserEcommerce] FOREIGN KEY([IdUser])
REFERENCES [dbo].[UserEcommerce] ([IdUser])
GO
ALTER TABLE [dbo].[CreditCard] CHECK CONSTRAINT [FK_CreditCard_UserEcommerce]
GO
ALTER TABLE [dbo].[Evaluation]  WITH CHECK ADD  CONSTRAINT [FK_Evaluation_UserEcommerce] FOREIGN KEY([IdUser])
REFERENCES [dbo].[UserEcommerce] ([IdUser])
GO
ALTER TABLE [dbo].[Evaluation] CHECK CONSTRAINT [FK_Evaluation_UserEcommerce]
GO
ALTER TABLE [dbo].[Factory]  WITH CHECK ADD  CONSTRAINT [FK_Factory_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[Factory] CHECK CONSTRAINT [FK_Factory_Country]
GO
ALTER TABLE [dbo].[FactoryEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_FactoryEvaluation_Evaluation] FOREIGN KEY([IdEvaluation])
REFERENCES [dbo].[Evaluation] ([IdEvaluation])
GO
ALTER TABLE [dbo].[FactoryEvaluation] CHECK CONSTRAINT [FK_FactoryEvaluation_Evaluation]
GO
ALTER TABLE [dbo].[FactoryEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_FactoryEvaluation_Factory] FOREIGN KEY([IdFactory])
REFERENCES [dbo].[Factory] ([IdFactory])
GO
ALTER TABLE [dbo].[FactoryEvaluation] CHECK CONSTRAINT [FK_FactoryEvaluation_Factory]
GO
ALTER TABLE [dbo].[Offer]  WITH CHECK ADD  CONSTRAINT [FK_Offer_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[Offer] CHECK CONSTRAINT [FK_Offer_Product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[OrderP] ([IdOrder])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Tax] FOREIGN KEY([IdTax])
REFERENCES [dbo].[Tax] ([IdTax])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Tax]
GO
ALTER TABLE [dbo].[OrderP]  WITH CHECK ADD  CONSTRAINT [FK_Order_Payment] FOREIGN KEY([IdPayment])
REFERENCES [dbo].[Payment] ([IdPayment])
GO
ALTER TABLE [dbo].[OrderP] CHECK CONSTRAINT [FK_Order_Payment]
GO
ALTER TABLE [dbo].[OrderP]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[StatusE] ([IdStatus])
GO
ALTER TABLE [dbo].[OrderP] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_PaymentType] FOREIGN KEY([IdPaymentType])
REFERENCES [dbo].[PaymentType] ([IdPaymentType])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_PaymentType]
GO
ALTER TABLE [dbo].[PaymentType]  WITH CHECK ADD  CONSTRAINT [FK_PaymentType_Check] FOREIGN KEY([IdCheck])
REFERENCES [dbo].[CheckIc] ([IdCheck])
GO
ALTER TABLE [dbo].[PaymentType] CHECK CONSTRAINT [FK_PaymentType_Check]
GO
ALTER TABLE [dbo].[PaymentType]  WITH CHECK ADD  CONSTRAINT [FK_PaymentType_CreditCard] FOREIGN KEY([IdCreditcard])
REFERENCES [dbo].[CreditCard] ([IdCreditCard])
GO
ALTER TABLE [dbo].[PaymentType] CHECK CONSTRAINT [FK_PaymentType_CreditCard]
GO
ALTER TABLE [dbo].[PaymentType]  WITH CHECK ADD  CONSTRAINT [FK_PaymentType_Paypal] FOREIGN KEY([IdPaypal])
REFERENCES [dbo].[Paypal] ([IdPaypal])
GO
ALTER TABLE [dbo].[PaymentType] CHECK CONSTRAINT [FK_PaymentType_Paypal]
GO
ALTER TABLE [dbo].[Paypal]  WITH CHECK ADD  CONSTRAINT [FK_Paypal_UserEcommerce] FOREIGN KEY([IdUser])
REFERENCES [dbo].[UserEcommerce] ([IdUser])
GO
ALTER TABLE [dbo].[Paypal] CHECK CONSTRAINT [FK_Paypal_UserEcommerce]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([IdCategory])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[ProductEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_ProductEvaluation_Evaluation] FOREIGN KEY([IdEvaluation])
REFERENCES [dbo].[Evaluation] ([IdEvaluation])
GO
ALTER TABLE [dbo].[ProductEvaluation] CHECK CONSTRAINT [FK_ProductEvaluation_Evaluation]
GO
ALTER TABLE [dbo].[ProductEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_ProductEvaluation_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[ProductEvaluation] CHECK CONSTRAINT [FK_ProductEvaluation_Product]
GO
ALTER TABLE [dbo].[ProductUser]  WITH CHECK ADD  CONSTRAINT [FK_ProductUser_Product1] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[ProductUser] CHECK CONSTRAINT [FK_ProductUser_Product1]
GO
ALTER TABLE [dbo].[ProductUser]  WITH CHECK ADD  CONSTRAINT [FK_ProductUser_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[UserEcommerce] ([IdUser])
GO
ALTER TABLE [dbo].[ProductUser] CHECK CONSTRAINT [FK_ProductUser_User]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Factory] FOREIGN KEY([IdFactory])
REFERENCES [dbo].[Factory] ([IdFactory])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Factory]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Order] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[OrderP] ([IdOrder])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Order]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[StatusE] ([IdStatus])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Status]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[UserEcommerce] ([IdUser])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_User]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_Country]
GO
ALTER TABLE [dbo].[UserEcommerce]  WITH CHECK ADD  CONSTRAINT [FK_User_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[UserEcommerce] CHECK CONSTRAINT [FK_User_Country]
GO
ALTER TABLE [dbo].[UserEcommerce]  WITH CHECK ADD  CONSTRAINT [FK_User_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[StatusE] ([IdStatus])
GO
ALTER TABLE [dbo].[UserEcommerce] CHECK CONSTRAINT [FK_User_Status]
GO
ALTER TABLE [dbo].[UserEcommerce]  WITH CHECK ADD  CONSTRAINT [FK_User_TypeId] FOREIGN KEY([IdTypeId])
REFERENCES [dbo].[TypeId] ([IdTypeId])
GO
ALTER TABLE [dbo].[UserEcommerce] CHECK CONSTRAINT [FK_User_TypeId]
GO
ALTER TABLE [dbo].[UserEvent]  WITH CHECK ADD  CONSTRAINT [FK_UserEvent_Event] FOREIGN KEY([IdEvent])
REFERENCES [dbo].[EventE] ([IdEvent])
GO
ALTER TABLE [dbo].[UserEvent] CHECK CONSTRAINT [FK_UserEvent_Event]
GO
ALTER TABLE [dbo].[UserEvent]  WITH CHECK ADD  CONSTRAINT [FK_UserEvent_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[UserEcommerce] ([IdUser])
GO
ALTER TABLE [dbo].[UserEvent] CHECK CONSTRAINT [FK_UserEvent_User]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[RoleE] ([IdRole])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[UserEcommerce] ([IdUser])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO
/****** Object:  StoredProcedure [dbo].[CreateCategory]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateCategory]

@name nchar(30),
@description nchar(100)

AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
insert into Category (Name,DescriptionCate)
values
(@name,@description);



END



GO
/****** Object:  StoredProcedure [dbo].[CreateCheck]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateCheck]
	@checknumber int,
	@checkbank nchar (50)
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into CheckIc
	(CheckNumber,CheckBank)
	values (@checknumber,@checkbank);

END



GO
/****** Object:  StoredProcedure [dbo].[CreateCity]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateCity]
@name nchar(30),
@stateCode tinyint 
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into City
	(Name,StateCode)
	values (@name,@stateCode)

END


GO
/****** Object:  StoredProcedure [dbo].[CreateCountry]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateCountry]
@countryCode tinyint, 
@name nchar(30), 
@iso_Code nchar (15)

AS
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO Country
	(CountryCode, Name, Iso_Code)
	VALUES (@countryCode,@name,@iso_Code)

END

GO
/****** Object:  StoredProcedure [dbo].[CreateCountryTax]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateCountryTax]
	
@idCountrytax tinyint, 
@countryCode tinyint, 
@idTax int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Insert into CountryTax ( CountryCode, IdTax)
values (@countryCode,@idTax)
END


GO
/****** Object:  StoredProcedure [dbo].[CreateCreditCard]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateCreditCard]

@creditCardNumber int, 
@expirationDate date,
@idUser int

AS
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO  CreditCard (CreditCardNumber, ExpirationDate,idUser)
	VALUES (@creditCardNumber,@expirationDate,@idUser)
	
END

GO
/****** Object:  StoredProcedure [dbo].[CreateEvaluation]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateEvaluation]
@idEvaluation tinyint, 
@score nchar (10),
@idUser int 
AS
BEGIN
	
	SET NOCOUNT ON;
	Insert into  EvaEvaluation(IdEvaluation, Score,IdUser)
	values (@idEvaluation,@score,@idUser)
	
END


GO
/****** Object:  StoredProcedure [dbo].[CreateEvent]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateEvent]
@idEvent int,
@descriptionE nchar (100)
AS
BEGIN
	
	SET NOCOUNT ON;
insert  into EventE (IdEvent, DescriptionE)
values (@idEvent,@descriptionE)
	
END


GO
/****** Object:  StoredProcedure [dbo].[CreateFactory]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateFactory]
@idFactory int,
@name nchar (50),
@countryCode tinyint, 
@idEvaluation tinyint
AS
BEGIN
	
	SET NOCOUNT ON;
insert  into Factory (IdFactory, Name, CountryCode, IdEvaluation)
values (@idFactory,@name,@countryCode,@idEvaluation)
	
END


GO
/****** Object:  StoredProcedure [dbo].[CreateFactoryEvaluation]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateFactoryEvaluation]
@idFactoryEvaluation tinyint,
@idFactory int,
@idEvaluation tinyint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Insert into factoryEvaluation (IdFactory, IdEvaluation )
values (@idFactory,@idEvaluation)

END


GO
/****** Object:  StoredProcedure [dbo].[CreateOffer]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateOffer]
@name nchar(100), 
@descriptionO nchar(100),
@dateStart date,
@dateEnd date,
@percentageOffer float,
@idProduct int
AS
BEGIN
	
	SET NOCOUNT ON;
insert into Offer( Name, DescriptionO, DateStart, DateEnd, PercentageOffer, IdProduct) 
values (@name,@descriptionO,@dateStart,@dateEnd,@percentageOffer,@idProduct)

END


GO
/****** Object:  StoredProcedure [dbo].[CreateOrderDetail]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateOrderDetail]
@idOrderDetail int, 
@idOrder int, 
@idProduct int, 
@idTax int, 
@quantityTotal int, 
@subTotal float, 
@observation nchar (100) , 
@discount float,
@dateOrder date
AS
BEGIN
	
SET NOCOUNT ON;
insert into OrderDetail( IdOrderDetail, IdOrder, IdProduct, IdTax, QuantityTotal, SubTotal, Observation, Discount,Dateorder)
values (@idOrderDetail,@idOrder,@idProduct,@idTax,@quantityTotal,@subTotal,@observation,@discount,@dateOrder)
END

GO
/****** Object:  StoredProcedure [dbo].[CreateOrderP]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateOrderP]
@idOrder int, 
@dateOrder date, 
@idStatus tinyint, 
@idPayment int, 
@total float

AS
BEGIN
	SET NOCOUNT ON;

  Insert into OrderP (IdOrder, DateOrder, IdStatus, IdPayment, Total)
  values (@idOrder,@dateOrder,@idStatus,@idPayment,@total)

END


GO
/****** Object:  StoredProcedure [dbo].[CreatePayment]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreatePayment]
@idPayment int, 
@datePayment date, 
@idPaymentType int, 
@amount float

AS
BEGIN
	
	SET NOCOUNT ON;
insert into Payment(IdPayment, DatePayment, IdPaymentType, Amount)
values (@idPayment,@datePayment,@idPaymentType,@amount)
	
END


GO
/****** Object:  StoredProcedure [dbo].[CreatePaymentType]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreatePaymentType]
@idPaymentType int, 
@idCreditcard int, 
@idPaypal int, 
@idCheck int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Insert into PaymentType(IdCreditcard, IdPaypal, IdCheck)
values (@idCreditcard,@idPaypal,@idCheck)
END


GO
/****** Object:  StoredProcedure [dbo].[CreatePaypal]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreatePaypal]
@idPaypal int,
@idUser int
AS
BEGIN
	
SET NOCOUNT ON;
insert into Paypal (IdPaypal, IdUser) 
values(@idPaypal,@idUser)
	
END


GO
/****** Object:  StoredProcedure [dbo].[CreateProduct]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateProduct]
@idProduct int, 
@name nchar(30), 
@descriptionPro nchar(30), 
@idCategory int, 
@idEvaluation tinyint, 
@quantity int, 
@unitPrice float,
@imageP image,
@registrationDate date,
@dateOfExpiry date
AS
BEGIN
	
SET NOCOUNT ON;
Insert into Product (IdProduct, Name, DescriptionPro, IdCategory,IdEvaluation, Quantity, UnitPrice,ImageP,RegistrationDate,DateOfExpiry)
values (@idProduct,@name,@descriptionPro,@idCategory,@idEvaluation,@quantity,@unitPrice,@imageP,@registrationDate,@dateOfExpiry)
END


GO
/****** Object:  StoredProcedure [dbo].[CreateProductEvaluation]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateProductEvaluation]
@idProductEvaluation tinyint, 
@idProduct int,
@idEvaluation tinyint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Insert into ProductEvaluation (IdProduct, IdEvaluation)
values (@idProduct,@idEvaluation)
END


GO
/****** Object:  StoredProcedure [dbo].[CreateProductUser]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateProductUser]
@idProductUser int,
@idProduct int,
@idUser int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Insert into ProductUser (IdProduct, IdUser)
values(@idProduct,@idUser)
END


GO
/****** Object:  StoredProcedure [dbo].[CreateRole]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateRole]
@idRole tinyint, 
@typeR nchar(20)
AS
BEGIN
	
SET NOCOUNT ON;
insert into RoleE (IdRole, TypeR  )
values (@idRole,@typeR)
END


GO
/****** Object:  StoredProcedure [dbo].[CreateShipment]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateShipment]
@idShipment int,
@idOrder int,
@idUser int, 
@idFactory int, 
@idStatus tinyint, 
@shipmentDate date, 
@arrivalDate date
AS
BEGIN
	
SET NOCOUNT ON;
insert into Shipment (IdShipment, IdOrder, IdUser, IdFactory, IdStatus, ShipmentDate, ArrivalDate)
values (@idShipment,@idOrder,@idUser,@idFactory,@idStatus,@shipmentDate,@arrivalDate)
END


GO
/****** Object:  StoredProcedure [dbo].[CreateState]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateState]
@stateCode tinyint,
@name nchar(30), 
@countryCode tinyint
AS
BEGIN
	
SET NOCOUNT ON;
insert into State  (StateCode, Name, CountryCode )
values (@stateCode,@name,@countryCode)
END


GO
/****** Object:  StoredProcedure [dbo].[CreateStatus]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateStatus]

@idStatus tinyint, 
@descriptionS nchar (20)
AS
BEGIN
	
SET NOCOUNT ON;
Insert into StatusE (IdStatus, DescriptionS)
values (@idStatus,@descriptionS)
END


GO
/****** Object:  StoredProcedure [dbo].[CreateTax]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateTax]
@idTax int, 
@countryCode tinyint,
@taxPercent float

AS
BEGIN
	
SET NOCOUNT ON;
insert into Tax(IdTax, CountryCode, TaxPercent)
values (@idTax,@countryCode,@taxPercent)
END


GO
/****** Object:  StoredProcedure [dbo].[CreateTypeId]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateTypeId]
@idTypeId tinyint, 
@typeT nchar (10)

AS
BEGIN
		
SET NOCOUNT ON;

insert into TypeId (IdTypeId, TypeT)
values (@idTypeId,@typeT)
END


GO
/****** Object:  StoredProcedure [dbo].[CreateUserEcommerce]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateUserEcommerce]
@idUser int,
@idTypeId tinyint, 
@userName nchar(20), 
@passwordUser nchar(40),
@name nchar (250), 
@lastName nchar(250),
@email nchar (50), 
@phoneNumber nchar(30), 
@idRole tinyint, 
@countryCode tinyint, 
@factoryName nchar (10), 
@idCreditCard int, 
@idPayPal int, 
@idStatus tinyint, 
@postalCode tinyint, 
@adress nchar (70)
AS
BEGIN
		
SET NOCOUNT ON;

Insert into UserEcommerce (IdUser, IdTypeId, UserName, PasswordUser, Name, LastName,  Email, PhoneNumber, IdRole, CountryCode, FactoryName, IdCreditCard, IdPayPal, IdStatus, PostalCode, Adress)
values 
(@idUser,@idTypeId,@userName,@passwordUser,@name,@lastName,@email,@phoneNumber,@idRole,@countryCode,@factoryName,@idCreditCard,@idPayPal,@idStatus,@postalCode,@adress)
END


GO
/****** Object:  StoredProcedure [dbo].[CreateUserEvent]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateUserEvent]
@idEventUser int, 
@idUser int,
@idEvent int,
@dateLogin date, 
@dateLogout date, 
@procedureUser nchar(100),
@likes nchar(100)


AS
BEGIN
		
SET NOCOUNT ON;

Insert into UserEvent (IdEventUser, IdUser, IdEvent, DateLogin, DateLogout, ProcedureUser, Likes) 
values (@idEventUser,@idUser,@idEvent,@dateLogin,@dateLogout,@procedureUser,@likes)

END


GO
/****** Object:  StoredProcedure [dbo].[CreateUseRole]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateUseRole]
@idRole tinyint,
@idUserRole tinyint,
@idUser int

AS
BEGIN
		
SET NOCOUNT ON;
Insert into UserRole(IdRole, IdUserRole, IdUser) values
(@idRole,@idUserRole,@idUser)

END


GO
/****** Object:  StoredProcedure [dbo].[DeleteCategory]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCategory] 
	@idcategory int
AS
BEGIN
	
	SET NOCOUNT ON;

  delete from Category
  where IdCategory=@idcategory;
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteCheck]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCheck]
@idCheck int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   delete from CheckIc 
   where IdCheck=@idCheck
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteCity]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCity]
	@CityCode int
AS
BEGIN
	
	SET NOCOUNT ON;

  delete from City
  where CityCode=@CityCode
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteCountry]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCountry]
@countryCode tinyint

AS
BEGIN
	
	SET NOCOUNT ON;
	delete from Country
	where CountryCode=@countryCode
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteCountryTax]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCountryTax]
	
@idCountrytax tinyint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Delete CountryTax
where IdCountrytax = @idCountrytax
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteCreditCard]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCreditCard]
@idCreditCard int

AS
BEGIN
	
	SET NOCOUNT ON;
	Delete  CreditCard 
	where  IdCreditCard=@idCreditCard
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteEvaluation]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteEvaluation]
@idEvaluation tinyint


AS
BEGIN
	
	SET NOCOUNT ON;
Delete from Evaluation
where IdEvaluation=@idEvaluation
	
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteEvent]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteEvent]
@idEvent int

AS
BEGIN
	
	SET NOCOUNT ON;
Delete from EventE
where IdEvent=@idEvent
	
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteFactory]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteFactory]
@idFactory int

AS
BEGIN
	
	SET NOCOUNT ON;
	Delete from Factory 
where IdFactory=@idFactory
	
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteFactoryEvaluation]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteFactoryEvaluation]
@idFactoryEvaluation tinyint


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Delete FactoryEvaluation
where IdFactoryEvaluation=@idFactoryEvaluation
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteOffer]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteOffer]
@idOffer int

AS
BEGIN
	
	SET NOCOUNT ON;

Delete from Offer
where IdOffer=@idOffer

END


GO
/****** Object:  StoredProcedure [dbo].[DeleteOrderDetail]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteOrderDetail]
@idOrderDetail int

AS
BEGIN
	
SET NOCOUNT ON;
Delete from OrderDetail
where IdOrderDetail=@idOrderDetail

END


GO
/****** Object:  StoredProcedure [dbo].[DeleteOrderP]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteOrderP]
@idOrder int

AS
BEGIN
	SET NOCOUNT ON;

Delete from OrderP
where IdOrder =@idOrder

END


GO
/****** Object:  StoredProcedure [dbo].[DeletePayment]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeletePayment]
@idPayment int 

AS
BEGIN
	
SET NOCOUNT ON;
Delete from Payment
where IdPayment=@idPayment
	
END


GO
/****** Object:  StoredProcedure [dbo].[DeletePaymentType]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeletePaymentType]
@idPaymentType int


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Delete from PaymentType
where IdPaymentType=@idPaymentType
END


GO
/****** Object:  StoredProcedure [dbo].[DeletePaypal]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeletePaypal]
@idPaypal int 

AS
BEGIN
	
SET NOCOUNT ON;
Delete from Paypal
where IdPaypal=@idPaypal
	
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteProduct]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteProduct]
@idProduct int

AS
BEGIN
	
SET NOCOUNT ON;
Delete from Product
where IdProduct=@idProduct

END


GO
/****** Object:  StoredProcedure [dbo].[DeleteProductEvaluation]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteProductEvaluation]
@idProductEvaluation tinyint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Delete from ProductEvaluation
where IdProductEvaluation=@idProductEvaluation
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteProductUser]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteProductUser]
@idProductUser int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Delete from ProductUser
where IdProductUser=@idProductUser
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteRole]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteRole]
@idRole tinyint

AS
BEGIN
	
SET NOCOUNT ON;
Delete from RoleE where IdRole=@idRole
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteShipment]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteShipment]
@idShipment int

AS
BEGIN
	
SET NOCOUNT ON;
Delete from Shipment where IdShipment= @idShipment
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteState]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteState]
@stateCode tinyint

AS
BEGIN
	
SET NOCOUNT ON;
Delete from State
where StateCode=  @stateCode
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteStatus]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteStatus]

@idStatus tinyint

AS
BEGIN
	
SET NOCOUNT ON;
Delete from StatusE
where IdStatus=  @idStatus
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteTax]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteTax]
@idTax int


AS
BEGIN
	
delete from Tax
where IdTax=@idTax
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteTypeId]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteTypeId]
@idTypeId tinyint

AS
BEGIN
	SET NOCOUNT ON;
delete from TypeId
where IdTypeId=@idTypeId
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteUserEcommerce]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteUserEcommerce]
@idUser int

AS
BEGIN
		
SET NOCOUNT ON;

Delete from UserEcommerce
where IdUser=@idUser

END


GO
/****** Object:  StoredProcedure [dbo].[DeleteUserEvent]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteUserEvent]
@idEventUser int


AS
BEGIN
		
SET NOCOUNT ON;

Delete from UserEvent
where IdEventUser=@idEventUser

END


GO
/****** Object:  StoredProcedure [dbo].[DeleteUseRole]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteUseRole]
@idUserRole tinyint

AS
BEGIN
		
SET NOCOUNT ON;
Delete from UserRole
where IdUserRole=@idUserRole

END


GO
/****** Object:  StoredProcedure [dbo].[ReadCategory]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadCategory]
@idcategory int

AS
BEGIN
	
	SET NOCOUNT ON;

 Select IdCategory,Name,DescriptionCate from Category 
 where IdCategory=@idcategory;
END



GO
/****** Object:  StoredProcedure [dbo].[ReadCheck]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadCheck]
@idCheck int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Select IdCheck, CheckNumber, CheckBank from CheckIc
where  IdCheck=@idCheck
end


GO
/****** Object:  StoredProcedure [dbo].[ReadCity]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadCity]
@cityCode int
	
AS
BEGIN
	
	SET NOCOUNT ON;

 Select CityCode, Name,StateCode from City 
 where CityCode=@cityCode
END


GO
/****** Object:  StoredProcedure [dbo].[ReadCountry]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadCountry]
@countryCode tinyint
AS
BEGIN
	
	SET NOCOUNT ON;
	select CountryCode, Name, Iso_Code from Country
	where  CountryCode=@countryCode
END


GO
/****** Object:  StoredProcedure [dbo].[ReadCountryTax]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadCountryTax]
	
@idCountrytax tinyint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Select IdCountrytax, CountryCode, IdTax from CountryTax
where IdCountrytax = @idCountrytax
END


GO
/****** Object:  StoredProcedure [dbo].[ReadCreditCard]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadCreditCard]
@idCreditCard int
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT  IdCreditCard, CreditCardNumber, ExpirationDate, IdUser FROM CreditCard
	WHERE  IdCreditCard=@idCreditCard
END


GO
/****** Object:  StoredProcedure [dbo].[ReadEvaluation]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadEvaluation]
@idEvaluation tinyint


AS
BEGIN
	
	SET NOCOUNT ON;
select IdEvaluation, Score,IdUser from Evaluation
where IdEvaluation=@idEvaluation
	
END

GO
/****** Object:  StoredProcedure [dbo].[ReadEvent]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadEvent]
@idEvent int

AS
BEGIN
	
	SET NOCOUNT ON;
Select IdEvent, DescriptionE from EventE
where IdEvent=@idEvent
	
END


GO
/****** Object:  StoredProcedure [dbo].[ReadFactory]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadFactory]
@idFactory int
AS
BEGIN
	
	SET NOCOUNT ON;
	select IdFactory, Name, CountryCode, IdEvaluation from Factory
where IdFactory=@idFactory
	
END


GO
/****** Object:  StoredProcedure [dbo].[ReadFactoryEvaluation]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadFactoryEvaluation]
@idFactoryEvaluation tinyint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Select IdFactoryEvaluation, IdFactory, IdEvaluation from FactoryEvaluation
where IdFactoryEvaluation=@idFactoryEvaluation
END


GO
/****** Object:  StoredProcedure [dbo].[ReadOffer]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadOffer]
@idOffer int
AS
BEGIN
	
	SET NOCOUNT ON;
select IdOffer, Name, DescriptionO, DateStart, DateEnd, PercentageOffer, IdProduct from Offer
where IdOffer=@idOffer
END


GO
/****** Object:  StoredProcedure [dbo].[ReadOrderDetail]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadOrderDetail]
@idOrderDetail int
AS
BEGIN
	
SET NOCOUNT ON;
select IdOrderDetail, IdOrder, IdProduct, IdTax, QuantityTotal, SubTotal, Observation, Discount,Dateorder from OrderDetail
where IdOrderDetail = @idOrderDetail
END


GO
/****** Object:  StoredProcedure [dbo].[ReadOrderP]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadOrderP]
@idOrder int

AS
BEGIN
	SET NOCOUNT ON;

 select IdOrder, DateOrder, IdStatus, IdPayment, Total from OrderP 
 where IdOrder=@idOrder 

END


GO
/****** Object:  StoredProcedure [dbo].[ReadPayment]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadPayment]
@idPayment int

AS
BEGIN
	
SET NOCOUNT ON;
select IdPayment, DatePayment, IdPaymentType, Amount from Payment
where IdPayment=@idPayment
	
END


GO
/****** Object:  StoredProcedure [dbo].[ReadPaymentType]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadPaymentType]
@idPaymentType int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select IdPaymentType, IdCreditcard, IdPaypal, IdCheck from PaymentType
	where IdPaymentType=@idPaymentType
END


GO
/****** Object:  StoredProcedure [dbo].[ReadPaypal]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadPaypal]
@idPaypal int
AS
BEGIN
	
SET NOCOUNT ON;
select IdPaypal, IdUser from Paypal
where IdPaypal = @idPaypal
END


GO
/****** Object:  StoredProcedure [dbo].[ReadProduct]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadProduct]
@idProduct int

AS
BEGIN
	
SET NOCOUNT ON;
select IdProduct, Name, DescriptionPro, IdCategory,IdEvaluation, Quantity, UnitPrice,ImageP,RegistrationDate,DateOfExpiry from Product 
where IdProduct=@idProduct
END


GO
/****** Object:  StoredProcedure [dbo].[ReadProductEvaluation]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadProductEvaluation]
@idProductEvaluation tinyint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Select IdProductEvaluation, IdProduct, IdEvaluation from ProductEvaluation
where IdProductEvaluation=@idProductEvaluation
END


GO
/****** Object:  StoredProcedure [dbo].[ReadProductUser]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadProductUser]
@idProductUser int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Select IdProductUser, IdProduct, IdUser from ProductUser
where IdProductUser=@idProductUser
END


GO
/****** Object:  StoredProcedure [dbo].[ReadRole]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadRole]
@idRole tinyint
AS
BEGIN
	
SET NOCOUNT ON;
select IdRole, TypeR from RoleE
where IdRole=@idRole
END


GO
/****** Object:  StoredProcedure [dbo].[ReadShipment]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadShipment]
@idShipment int
AS
BEGIN
	
SET NOCOUNT ON;
select IdShipment, IdOrder, IdUser, IdFactory, IdStatus, ShipmentDate, ArrivalDate from Shipment
where IdShipment=@idShipment
END


GO
/****** Object:  StoredProcedure [dbo].[ReadState]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadState]
@stateCode tinyint
AS
BEGIN
	
SET NOCOUNT ON;
select StateCode, Name, CountryCode from State
where StateCode=@stateCode
END


GO
/****** Object:  StoredProcedure [dbo].[ReadStatus]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadStatus]

@idStatus tinyint
AS
BEGIN
	
SET NOCOUNT ON;
select IdStatus, DescriptionS from StatusE
where IdStatus=@idStatus
END


GO
/****** Object:  StoredProcedure [dbo].[ReadTax]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadTax]
@idTax int

AS
BEGIN
	
select IdTax, CountryCode, TaxPercent from tax 
where IdTax=@idTax
END


GO
/****** Object:  StoredProcedure [dbo].[ReadTypeId]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadTypeId]
@idTypeId tinyint

AS
BEGIN
		
SET NOCOUNT ON;

select IdTypeId, TypeT from TypeId
where IdTypeId=@idTypeId;
END


GO
/****** Object:  StoredProcedure [dbo].[ReadUserEcommerce]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadUserEcommerce]
@idUser int
AS
BEGIN
		
SET NOCOUNT ON;

Select IdUser, IdTypeId, UserName, PasswordUser, Name,LastName,Email, PhoneNumber, IdRole, CountryCode, FactoryName, IdCreditCard, IdPayPal, IdStatus, PostalCode, Adress from UserEcommerce
where IdUser =@idUser
END


GO
/****** Object:  StoredProcedure [dbo].[ReadUserEvent]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadUserEvent]
@idEventUser int


AS
BEGIN
		
SET NOCOUNT ON;

select IdEventUser, IdUser, IdEvent, DateLogin, DateLogout, ProcedureUser, Likes from UserEvent 
where IdEventUser=@idEventUser

END


GO
/****** Object:  StoredProcedure [dbo].[ReadUseRole]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadUseRole]

@idUserRole tinyint


AS
BEGIN
		
SET NOCOUNT ON;
Select IdRole, IdUserRole, IdUser from UserRole
where IdUserRole= @idUserRole

END


GO
/****** Object:  StoredProcedure [dbo].[UpdateCategory]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCategory]
@idcategory int,
@name nchar (30),
@description nchar(100)


AS
BEGIN
	SET NOCOUNT ON;

   Update Category set Name=@name,DescriptionCate=@description
   where IdCategory= @idcategory;

END



GO
/****** Object:  StoredProcedure [dbo].[UpdateCheck]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCheck]
@idCheck int,
@checkNumber int, 
@checkBank nchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    update CheckIc set CheckNumber = @checkNumber, CheckBank =@checkBank
	where IdCheck=@idCheck
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateCity]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCity]
@cityCode int, 
@name nchar (30),
@stateCode tinyint
AS
BEGIN
	SET NOCOUNT ON;

   Update City set Name=@name, Statecode=@stateCode
   where CityCode= @cityCode

END


GO
/****** Object:  StoredProcedure [dbo].[UpdateCountry]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCountry]
@countryCode tinyint, 
@name nchar (30), 
@iso_Code nchar (30)

AS
BEGIN
	
	SET NOCOUNT ON;
	UPDATE Country SET  Name=@name, Iso_Code=@iso_Code
	WHERE CountryCode =@countryCode
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateCountryTax]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCountryTax]
	
@idCountrytax tinyint, 
@countryCode tinyint, 
@idTax int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
update CountryTax set  CountryCode =@countryCode, IdTax=@idTax
where IdCountrytax = @idCountrytax
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateCreditCard]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCreditCard]
@idCreditCard int, 
@creditCardNumber int, 
@expirationDate date,
@idUser int
AS
BEGIN
	
	SET NOCOUNT ON;
	UPDATE  CreditCard SET CreditCardNumber=@creditCardNumber,ExpirationDate=@expirationDate,IdUser=@idUser
	WHERE  IdCreditCard=@idCreditCard
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateEvaluation]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateEvaluation]
@idEvaluation tinyint, 
@score nchar (10),
@idUser int


AS
BEGIN
	
	SET NOCOUNT ON;
Update Evaluation set Score=@score, IdUser=@idUser
where IdEvaluation=@idEvaluation
	
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateEvent]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateEvent]
@idEvent int, 
@description nchar (100)

AS
BEGIN
	
	SET NOCOUNT ON;
Update EventE set  DescriptionE=@description
where IdEvent=@idEvent
	
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateFactory]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateFactory]
@idFactory int,
@name nchar (50),
@countryCode tinyint, 
@idEvaluation tinyint


AS
BEGIN
	SET NOCOUNT ON;

   Update Factory set  Name =@name, CountryCode= @countryCode, IdEvaluation =@idEvaluation
   where IdFactory= @idFactory

END


GO
/****** Object:  StoredProcedure [dbo].[UpdateFactoryEvaluation]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateFactoryEvaluation]
@idFactoryEvaluation tinyint,
@idFactory int,
@idEvaluation tinyint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Update FactoryEvaluation set IdFactory = @idFactory, IdEvaluation=@idEvaluation
where IdFactoryEvaluation=@idFactoryEvaluation
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateOffer]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateOffer]
@idOffer int,
@name nchar(100), 
@descriptionO nchar(100),
@dateStart date,
@dateEnd date,
@percentageOffer float,
@idProduct int
AS
BEGIN
	
	SET NOCOUNT ON;
Update Offer set Name=@name,DescriptionO=@descriptionO,DateStart=@dateStart,DateEnd=@dateEnd,IdProduct=@idProduct
where IdOffer=@idOffer
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateOrderDetail]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateOrderDetail]
@idOrderDetail int, 
@idOrder int, 
@idProduct int, 
@idTax int, 
@quantityTotal int, 
@subTotal float, 
@observation nchar (100) , 
@discount float
AS
BEGIN
	
SET NOCOUNT ON;
update  OrderDetail set IdOrder =@idOrder, IdProduct=@idProduct, IdTax=@idTax, QuantityTotal=@quantityTotal, SubTotal=@subTotal, Observation=@observation, Discount=@discount
where IdOrderDetail=@idOrderDetail

END


GO
/****** Object:  StoredProcedure [dbo].[UpdateOrderP]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateOrderP]
@idOrder int, 
@dateOrder date, 
@idStatus tinyint, 
@idPayment int, 
@total float

AS
BEGIN
	SET NOCOUNT ON;

   Update OrderP set  DateOrder = @dateOrder, IdStatus =@idStatus, IdPayment =@idPayment, Total=@total
   where IdOrder=@idOrder

END


GO
/****** Object:  StoredProcedure [dbo].[UpdatePayment]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdatePayment]
@idPayment int, 
@datePayment date, 
@idPaymentType int, 
@amount float

AS
BEGIN
	
	SET NOCOUNT ON;
update Payment set DatePayment=@datePayment, IdPaymentType=@idPaymentType, Amount=@amount
where IdPayment=@idPayment
	
END


GO
/****** Object:  StoredProcedure [dbo].[UpdatePaymentType]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdatePaymentType]
@idPaymentType int, 
@idCreditcard int, 
@idPaypal int, 
@idCheck int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Update PaymentType set  IdCreditcard =@idCreditcard, IdPaypal=@idPaypal, IdCheck=@idCheck
where IdPaymentType=@idPaymentType
END


GO
/****** Object:  StoredProcedure [dbo].[UpdatePaypal]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdatePaypal]
@idPaypal int,
@idUser int
AS
BEGIN
	
SET NOCOUNT ON;
update Paypal set  IdUser=@idUser
where IdPaypal = @idPaypal
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateProduct]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateProduct]
@idProduct int, 
@name nchar(30), 
@descriptionPro nchar(30), 
@idCategory int, 
@idEvaluation tinyint, 
@quantity int, 
@unitPrice float,
@imageP image,
@registrationDate date,
@dateOfExpiry date

AS
BEGIN
	
SET NOCOUNT ON;
Update  Product set IdProduct=@idProduct,Name=@name, DescriptionPro=@descriptionPro, IdCategory=@idCategory, IdEvaluation=@idEvaluation, Quantity=@quantity, UnitPrice=@unitPrice, ImageP=@imageP, RegistrationDate=@registrationDate,DateOfExpiry=@dateOfExpiry
where IdProduct=@idProduct
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateProductEvaluation]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateProductEvaluation]
@idProductEvaluation tinyint, 
@idProduct int,
@idEvaluation tinyint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Update ProductEvaluation set IdProduct= @idProductEvaluation, IdEvaluation=@idEvaluation
where IdProductEvaluation=@idProductEvaluation
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateProductUser]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateProductUser]
@idProductUser int,
@idProduct int,
@idUser int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Update ProductUser set IdProduct=@idProduct, IdUser=@idUser
where IdProductUser=@idProductUser
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateRole]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateRole]
@idRole tinyint, 
@typeR nchar(20)
AS
BEGIN
	
SET NOCOUNT ON;
update RoleE set TypeR =@typeR
where IdRole=@idRole
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateShipment]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateShipment]
@idShipment int,
@idOrder int,
@idUser int, 
@idFactory int, 
@idStatus tinyint, 
@shipmentDate date, 
@arrivalDate date
AS
BEGIN
	
SET NOCOUNT ON;
Update Shipment set IdOrder =@idOrder, IdUser=@idUser, IdFactory=@idFactory, IdStatus=@idStatus, ShipmentDate=@shipmentDate, ArrivalDate=@arrivalDate
where IdShipment=@idShipment
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateState]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateState]
@stateCode tinyint, 
@name nchar(30), 
@countryCode tinyint
AS
BEGIN
	
SET NOCOUNT ON;
UPDATE State SET  Name= @name,CountryCode=@countryCode
WHERE StateCode=@stateCode
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateStatus]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateStatus]

@idStatus tinyint, 
@descriptionS nchar (20)
AS
BEGIN
	
SET NOCOUNT ON;
Update StatusE set DescriptionS=@descriptionS
where IdStatus=@idStatus
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateTax]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateTax]
@idTax int, 
@countryCode tinyint,
@taxPercent float

AS
BEGIN
	
SET NOCOUNT ON;
update Tax set CountryCode =@countryCode, TaxPercent=@taxPercent
where Idtax= @idTax
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateTypeId]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateTypeId]
@idTypeId tinyint,
@typeT nchar (10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
update TypeId set TypeT= @typeT
where IdTypeId =@idTypeId
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateUserEcommerce]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateUserEcommerce]
@idUser int,
@idTypeId tinyint, 
@userName nchar(20), 
@passwordUser nchar(40),
@name nchar (250), 
@lastName nchar (250), 
@email nchar (50), 
@phoneNumber nchar(30), 
@idRole tinyint, 
@countryCode tinyint, 
@factoryName nchar (10), 
@idCreditCard int, 
@idPayPal int, 
@idStatus tinyint, 
@postalCode tinyint, 
@adress nchar (70)
AS
BEGIN
		
SET NOCOUNT ON;

Update UserEcommerce set IdUser =@idUser, IdTypeId=@idTypeId, UserName=@userName,PasswordUser=@passwordUser, Name=@name,LastName=@lastName, Email=@email, PhoneNumber=@phoneNumber,IdRole=@idRole, CountryCode=@countryCode, FactoryName=@factoryName,IdCreditCard=@idCreditCard, IdPayPal=@idPayPal, IdStatus=@idStatus, PostalCode=@postalCode, Adress=@adress
where IdUser =@idUser
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateUserEvent]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateUserEvent]
@idEventUser int, 
@idUser int,
@idEvent int,
@dateLogin date, 
@dateLogout date, 
@procedureUser nchar(100),
@likes nchar(100)


AS
BEGIN
		
SET NOCOUNT ON;
update UserEvent set IdUser=@idUser, IdEvent=@idEvent, DateLogin=@dateLogin, DateLogout=@dateLogout, ProcedureUser=@procedureUser, Likes=  @likes
where IdEventUser=@idEventUser

END


GO
/****** Object:  StoredProcedure [dbo].[UpdateUserRole]    Script Date: 3/30/2016 7:49:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateUserRole]
@idRole tinyint,
@idUserRole tinyint,
@idUser int

AS
BEGIN
		
SET NOCOUNT ON;
Update UserRole set IdRole =@idRole,IdUser=@idUser
where IdUserRole= @idUserRole

END


GO
