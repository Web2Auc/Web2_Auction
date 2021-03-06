USE [QLBHS]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 6/16/2017 3:48:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[DMID] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[DMID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Daugia]    Script Date: 6/16/2017 3:48:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Daugia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SPID] [int] NULL,
	[f_ID] [int] NULL,
	[tinhtrang] [int] NULL,
	[giadau] [money] NULL,
	[ngay] [datetime] NULL,
 CONSTRAINT [PK_Daugia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSYeuthich]    Script Date: 6/16/2017 3:48:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSYeuthich](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[f_ID] [int] NULL,
	[SPID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hinhanh]    Script Date: 6/16/2017 3:48:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hinhanh](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SPID] [int] NULL,
	[Pics] [image] NULL,
 CONSTRAINT [PK_Hinhanh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/16/2017 3:48:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[SPID] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[Gia] [money] NULL,
	[DMID] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[SoLuocXem] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[SPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 6/16/2017 3:48:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[f_ID] [int] IDENTITY(1,1) NOT NULL,
	[f_Username] [nvarchar](50) NOT NULL,
	[f_Password] [nvarchar](225) NOT NULL,
	[f_Name] [nvarchar](50) NOT NULL,
	[f_Email] [nvarchar](50) NOT NULL,
	[f_DOB] [datetime] NOT NULL,
	[f_Permission] [int] NOT NULL,
	[f_Status] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[f_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([DMID], [TenDM]) VALUES (1, N'Sách Văn Học - Tiểu Thuyết')
INSERT [dbo].[DanhMuc] ([DMID], [TenDM]) VALUES (2, N'Sách Kinh Tế')
INSERT [dbo].[DanhMuc] ([DMID], [TenDM]) VALUES (3, N'Sách Thiếu Nhi')
INSERT [dbo].[DanhMuc] ([DMID], [TenDM]) VALUES (4, N'Sách Kỹ Năng')
INSERT [dbo].[DanhMuc] ([DMID], [TenDM]) VALUES (5, N'Sách Tiếng Anh')
INSERT [dbo].[DanhMuc] ([DMID], [TenDM]) VALUES (8, N'Truyện Tranh - Manga')
INSERT [dbo].[DanhMuc] ([DMID], [TenDM]) VALUES (9, N'Sách Văn Hóa - Du Lịch - Nghệ Thuật')
INSERT [dbo].[DanhMuc] ([DMID], [TenDM]) VALUES (12, N'ff')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (1, N'<h1 class="product_title entry-title">Yesurprise Fashion Silicone Blue Binary DOT Unisex Auction</h1><p class="price"><span class="auction-price" data-auction-id="2340" data-bid="595" data-status="running"><span class="current auction">Current bid:</span> <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>595.00</span></span></p>', N'<div itemprop="description">
	
	<p>Brand, Seller, or Collection Name Yesurprise<br />
Part Number 038277<br />
Model Year 2012<br />
Item Shape rectangle<br />
Display Type Analog and digital<br />
Case material Stainless Steel<br />
Case diameter 3.80 centimeters</p>
	
</div>
	', 74000.0000, 1, CAST(N'2016-01-19 00:00:00.000' AS DateTime), 310)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (2, N'<h1 class="product_title entry-title">Yesurprise Fashion Silicone Rubber Band Blue Binary DOT Unisex</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>19.00</span></p>', N'<div itemprop="description">
	
	<p>Brand, Seller, or Collection Name Yesurprise<br />
Part Number 038277<br />
Model Year 2012<br />
Item Shape rectangle<br />
Display Type Analog and digital<br />
Case material Stainless Steel<br />
Case diameter 3.80 centimeters</p>
	
</div>', 154000.0000, 1, CAST(N'2016-01-04 00:00:00.000' AS DateTime), 123466)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (3, N'<h1 class="product_title entry-title">XOXO Rhinestone Accent Two-Tone Bracelet Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>45.00</span></p>', N'<div itemprop="description">
	
	<p>Experience the XOXO Women&#039;s Rhinestone Accent Two-Tone Bracelet Watch in all its two-tone, rhinestone-accented glory. This lovely timepiece begins with a round 38mm silver-toned metal case, a gold-toned, rhinestone-accented bezel and a textured gold-toned crown. These elements surround a pristine white dial, which is protected by a glass crystal and features gold-toned index hour markers and gold-toned hands powered by analog quartz movement. The dial also features three golden-rimmed decorative sub-dials. A silver-toned metal link bracelet with gold-toned center links straps this watch to the wrist, while a jewelry clasp ensures its secure placement. A classic combo of silver and gold tones gives this watch a transcendent presence on the wrist that you will be glad to show off.</p>
	
</div>', 148000.0000, 1, CAST(N'2015-12-06 00:00:00.000' AS DateTime), 564576)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (4, N'<h1 class="product_title entry-title">XOXO Rhinestone Accent Silver-Tone Bracelet Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>43.00</span></p>', N'<div itemprop="description">
	
	<p>The casual and fashionable XOXO Women&#039;s Rhinestone Accent Silver-Tone Bracelet Watch features a round 38mm silver-toned case with beautiful rhinestones around the bezel. The imitation white Mother-of-pearl dial, which is protected by a glass crystal, features three faux chronograph and silver indexes. The shiny silver-tone, three-link watch band straps this watch to the wrist, while an elegant jewelry clasp makes sure it stays there. This timepiece is also powered by analog-quartz movement and is ideal for everyday wear.</p>
	
</div>', 53900.0000, 1, CAST(N'2015-09-13 00:00:00.000' AS DateTime), 5677654)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (5, N'<h1 class="product_title entry-title">Womans Ironman Sleek 50-Lap Watch w Indiglo</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>314.00</span></p>', N'<div itemprop="description">
	
	<p>Product Features: INDIGLO Night-Light with NightMode Dated Training Log with Best Lap Average Lap and Total Time 100-Hour Chronograph with Lap and Split Times 50-Lap Memory Recall Total Run Timer On-the-Fly Lap or Split Recall Automatic Interval Repetition Counter Three Daily, Weekly, Weekday or Weekend Alarms Two Time Zones On-Screen Prompts Make Setting Easy Forward or Backward Setting 24-Hour Time Month, Day and Date Display Breathable, Co-Molded Resin Strap Durable and Lightweight Resin Case Stainless Steel Top ring Accent Top Pusher for Easy Operation Water-Resistant to 100 Meters T5K0269J , Timex Womans Ironman Sleek 50-Lap Watch , led watches , timex watches , female watches , ladies digital watches , ladies sports watches , ladies watches , watches for women , watches womens , waterproof watches , time , clock</p>
	
</div>
', 44000.0000, 1, CAST(N'2015-07-12 00:00:00.000' AS DateTime), 567465)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (6, N'<h1 class="product_title entry-title">Vince Camuto Swarovski Crystal Bracelet Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>319.00</span></p>', N'<div itemprop="description">
	
	<p>38 mm polished silver-tone stainless-steel case with brushed gold-tone bezel<br />
66 genuine Swarovski crystals set in outer edge of bezel<br />
Silver-tone dial with textured outer zone marked with black roman numeral at all hours; pave remote sweep at 6 o&#039;clock set with 19 Swarovski crystals<br />
Adjustable link gold-tone bracelet with silver-tone pyramid shaped center links and deployment clasp closure<br />
Water-resistant to 33 M (99 feet)</p>
	
</div>', 69300.0000, 2, CAST(N'2015-03-09 00:00:00.000' AS DateTime), 565779)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (7, N'<h1 class="product_title entry-title">Versace Mystique Gold Ion-Plated Coated Date Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>951.00</span></p>', N'<div itemprop="description">
	
	<p>Ronda 5030D Swiss chrono quartz movement<br />
Black leather strap with canvas top and stitching<br />
Luminous hands and hour markers<br />
Rose gold ion-plated coated stainless steel case; black ion-plated coated bezel with tachymeter; chronograph function; sub seconds<br />
Water-resistant to 50 M (165 feet)</p>
	
</div>', 138000.0000, 2, CAST(N'2016-04-22 00:00:00.000' AS DateTime), 345681)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (8, N'<h1 class="product_title entry-title">U.S. Polo Assn. Sport Black Rubber Strap Analog Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>13.99</span></p>', N'<div itemprop="description">
	
	<table id="technicalSpecifications_sections">
<tbody>
<tr>
<td>Band width</td>
<td>24 millimeters</td>
</tr>
<tr>
<td>Band Color</td>
<td>Black</td>
</tr>
<tr>
<td>Dial color</td>
<td>Silver</td>
</tr>
<tr>
<td>Bezel material</td>
<td>Metal</td>
</tr>
<tr>
<td>Bezel function</td>
<td>Stationary</td>
</tr>
<tr>
<td>Calendar</td>
<td>Day and date</td>
</tr>
<tr>
<td>Movement</td>
<td>Analog quartz</td>
</tr>
<tr>
<td>Warranty type</td>
<td>Contact seller of record</td>
</tr>
</tbody>
</table>
	
</div>', 88000.0000, 2, CAST(N'2015-03-24 00:00:00.000' AS DateTime), 234236)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (9, N'<h1 class="product_title entry-title">U.S. Polo Assn. Sport Black Dial Orange Rubber Strap Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>35.00</span></p>', N'<div itemprop="description">
	
	<ul>
<li>Quality Japanese-Quartz movement</li>
<li>Durable mineral crystal</li>
<li>Easy-to-read analog-digital dial</li>
<li>Orange rubber band</li>
<li>Buckle closure</li>
</ul>
	
</div>
', 59000.0000, 2, CAST(N'2014-09-21 00:00:00.000' AS DateTime), 325657)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (10, N'<h1 class="product_title entry-title">U.S. Polo Assn. Classic Silver Dial Black Strap Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>38.00</span></p>', N'<div itemprop="description">
	
	<p>The U.S. Polo Association time wear collection consists of updated classic timepieces geared for a more fashion conscious consumer. The watches are designed with larger cases, special plating and sporty leather, rubber or metal bands to create a fresh look in the market place.</p>
	
</div>', 42000.0000, 2, CAST(N'2016-09-03 00:00:00.000' AS DateTime), 453512)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (11, N'<h1 class="product_title entry-title">Unisex Trendy Touch Screen Digital Silicone Black Red Rainbow</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>3.00</span></p>', N'<div itemprop="description">
	
	<p>&#8211; Style: Casual<br />
&#8211; Features: Alarm, Day &#038; Date, Light<br />
&#8211; Touch screen to activate light<br />
&#8211; Dial type: Digital<br />
&#8211; Dial shape: Rectangle<br />
&#8211; Dial color: Black + Red<br />
&#8211; Dial dimension: 2.9 x 4.2cm/ 1.1 x 1.7in</p>
	
</div>', 7000.0000, 3, CAST(N'2016-06-12 00:00:00.000' AS DateTime), 569873)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (12, N'<h1 class="product_title entry-title">Timex Sports Silver Translucent Blue Resin Strap Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>14.88</span></p>', N'<div itemprop="description">
	
	<p>The Timex Women&#039;s Sports Digital Watch offers a crisp, digital dial with a 24-hour chronograph, 24-hour countdown timer, and a daily alarm. It&#039;s ideal for your daily running, swimming, or jogging routine. Plus, it offers a two time zone setting that makes traveling easy. An Indiglo night-light features allows you to tell time even in low-light conditions while a durable, acrylic window offers protection from scratches and nicks. For a fun pop of color, the durable bezel, case, and watch strap are made from strong, blue resin with a cool translucent look. The watch is equipped with reliable quartz movement and is water-resistant to 165 feet (50 meters).</p>
	
</div>', 54000.0000, 3, CAST(N'2016-05-12 00:00:00.000' AS DateTime), 356769)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (13, N'<h1 class="product_title entry-title">Timex Woman&#8217;s</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>28.00</span></p>', N'<div itemprop="description">
	
	<p>Indiglo® night-light<br />
24-Hour Countdown Timer with Stop and Repeat<br />
24-Hour Stopwatch<br />
24-hour chronograph<br />
Water-resistant to 165 feet (50 M)</p>
	
</div>', 49000.0000, 3, CAST(N'2016-04-22 00:00:00.000' AS DateTime), 345679)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (14, N'<h1 class="product_title entry-title">TAG Heuer Men&#8217;s Aquaracer Black Dial Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>1,404.00</span></p>', N'<div itemprop="description">
	
	<p>Quartz movement<br />
Case diameter: 39 mm<br />
Stainless Steel watch<br />
Durable sapphire crystal protects watch from scratches<br />
Water-resistant to 300 M (984 feet</p>
	
</div>', 54000.0000, 3, CAST(N'2016-01-21 00:00:00.000' AS DateTime), 876544)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (15, N'<h1 class="product_title entry-title">TAG Heuer Men&#8217;s Aquaracer Stainless Steel Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>1,130.00</span></p>', N'<div itemprop="description">
	
	<div id="featurebullets_feature_div" data-feature-name="featurebullets">
<div id="feature-bullets">TAG Heuer Calibre 5 Swiss automatic movement<br />
Unidirectional turning bezel<br />
Date function at 3 o?clock position<br />
Stainless Steel case and bracelet<br />
Water-resistant to 1000 feet (300 M)</div>
</div>', 42000.0000, 3, CAST(N'2016-03-07 00:00:00.000' AS DateTime), 456769)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (16, N'<h1 class="product_title entry-title">Swiss Legend Women&#8217;s watch Karamica</h1><p class="price"><del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>150.00</span></del> <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>129.99</span></ins></p>', N'<div itemprop="description">
	
	<div id="featurebullets_feature_div" data-feature-name="featurebullets">
<div id="feature-bullets">As sophisticated as it is snowy white, this Swiss Legend watch features high-quality functions and a cool ceramic construction.<br />
Swiss Quartz movement with analog display<br />
Scratch-resistant sapphire crystal dial window<br />
White mother-of-pearl dial features date function at three o&#8217;clock window<br />
Water-resistant to 100 m (330 feet)</div>
</div>
	', 50000.0000, 4, CAST(N'2016-04-06 00:00:00.000' AS DateTime), 333591)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (17, N'<h1 class="product_title entry-title">Swatch Women&#8217;s Quartz Rainbow Dial Plastic Watch Auction</h1><p class="price"><span class="auction-price" data-auction-id="2342" data-bid="4" data-status="running"><span class="current auction">Current bid:</span> <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>4.00</span></span></p>', N'<div itemprop="description">
	
	<p>Quartz movement<br />
Case diameter: 33 mm<br />
Casual watch<br />
Plastic<br />
Water-resistant to 30 M (99 feet)</p>
	
</div>', 78000.0000, 4, CAST(N'2016-06-21 00:00:00.000' AS DateTime), 679058)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (18, N'<h1 class="product_title entry-title">Swatch Women&#8217;s Quartz Rainbow Dial Plastic Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>20.00</span></p>', N'<div itemprop="description">
	
	<p>Quartz movement<br />
Case diameter: 33 mm<br />
Casual watch<br />
Plastic<br />
Water-resistant to 30 M (99 feet)</p>
	
</div>', 62000.0000, 4, CAST(N'2016-01-31 00:00:00.000' AS DateTime), 566791)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (19, N'<h1 class="product_title entry-title">Stuhrling Original Men&#8217;s Symphony Blue Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>205.00</span></p>', N'<div itemprop="description">
	
	<p>Quality Mechanical movement with 40 hour power reserve<br />
Blue PVd layered case with double-milled step-design bezel and protective Krysterna crystal on front and back<br />
White skeletonized dial with small seconds subdial<br />
Blue alligator embossed genuine leather strap with blue PVD dual deployment clasp<br />
Water-resistant to 165 feet (50 M)</p>
	
</div>', 42000.0000, 4, CAST(N'2016-02-29 00:00:00.000' AS DateTime), 765766)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (20, N'<h1 class="product_title entry-title">Stuhrling Champion Alpine Automatic Skeleton Strap Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>104.00</span></p>', N'<div itemprop="description">
	
	<p>Polished black pvd layered stainless steel case and blue bezel<br />
Protective krysterna crystal on front and back<br />
Skeleton dial with propeller faceplate and and seconds track along outer dial<br />
Black pvd layered stainless steel mesh bracelet with tang buckle<br />
Water-resistant to 50 M (165 feet)</p>
	
</div>', 62300.0000, 4, CAST(N'2015-12-31 00:00:00.000' AS DateTime), 675787)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (21, N'<h1 class="product_title entry-title">Ritmo Mundo Men&#8217;s White Dial with Rainbow Numbers</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>210.00</span></p>', N'<div itemprop="description">
	
	<p>Polycarbonate and stainless steel automatic<br />
Silver luminous hands, date window at 4 position<br />
Arabic numerals at 3, 6, 9, 12 position; 18 hour power reserve<br />
Case diameter: 52 mm<br />
Water-resistant to 165 feet (50 M)</p>
	
</div>', 157000.0000, 5, CAST(N'2015-09-08 00:00:00.000' AS DateTime), 941581)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (22, N'<h1 class="product_title entry-title">Ritmo Mundo Men&#8217;s White Dial with Rainbow Numbers Auction</h1><p class="price"><span class="auction-price" data-auction-id="2341" data-bid="6038" data-status="running"><span class="current auction">Current bid:</span> <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>6,038.00</span></span></p>', N'<div itemprop="description">
	
	<p>Polycarbonate and stainless steel automatic<br />
Silver luminous hands, date window at 4 position<br />
Arabic numerals at 3, 6, 9, 12 position; 18 hour power reserve<br />
Case diameter: 52 mm<br />
Water-resistant to 165 feet (50 M)</p>
	
</div>', 165000.0000, 5, CAST(N'2015-07-19 00:00:00.000' AS DateTime), 897695)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (23, N'<h1 class="product_title entry-title">Raymond Weil Don Giovanni Cosi Grande Stainless Steel</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>1,165.00</span></p>', N'<div itemprop="description">
	
	<p>Swiss automatic movement<br />
Antireflective-sapphire crystal<br />
Case diameter: 38mm<br />
Stainless-steel case<br />
Water-resistant to 99 feet (30 M)&lt;br /&gt;</p>
	
</div>', 207000.0000, 5, CAST(N'2016-03-21 00:00:00.000' AS DateTime), 885551)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (24, N'<h1 class="product_title entry-title">Timex Women&#8217;s &#8220;Weekender&#8221; Fuchsia Nylon Strap Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>3.00</span></p>', N'<div itemprop="description">
	
	<p>Simple and straightforward, this Timex &#8220;Weekender&#8221; watch features a vivid fuchsia color and classic silver-tone case, making it an ideal go-to casual timepiece.<br />
Quartz movement with analog display<br />
Protective mineral crystal dial window<br />
Features include Indiglo nightlight, 24-hour time, and black second hand<br />
Water-resistant to 30 m (99 feet)</p>
	
</div>', 330000.0000, 5, CAST(N'2015-10-19 00:00:00.000' AS DateTime), 975445)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (25, N'<h1 class="product_title entry-title">Nautica Men&#8217;s N14536 NST Chronograph Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>56.00</span></p>', N'<div itemprop="description">
	
	<p>Introduced in 1994, Nautica Watches for men and women combine distinctive styling, bold colors and unique design. Inspired by sailing, the Nautica brand reflects an energetic lifestyle that appeals to consumers around the globe. Nautica Watches fuse the best of classic American style with the latest in technical innovation.</p>
	
</div>
', 196000.0000, 5, CAST(N'2015-09-20 00:00:00.000' AS DateTime), 879081)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (26, N'<h1 class="product_title entry-title">Mulco Unisex MW5-93503-093 Bluemarine Swiss Watch</h1><p class="price"><del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>19.00</span></del> <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>9.99</span></ins></p>', N'<div itemprop="description">
	
	<p>Swiss movement isa 8172.220<br />
Case diameter: 50 mm<br />
Stainless steel case<br />
Sapphire crystal protects watch from scratches<br />
Water-resistant to 100 M (330 feet)</p>
	
</div>', 95000.0000, 1, CAST(N'2016-06-10 00:00:00.000' AS DateTime), 55)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (27, N'<h1 class="product_title entry-title">Akribos XXIV Diamond Silver Sunray Diamond Dial Quartz Strap Watch</h1>', N'<div itemprop="description">
	
	<p>Silver sunray dial with a Mother of Pearl center and crystal filled circle accents<br />
Diamond marker at 12 o&#8217;clock<br />
72 genuine crystals adorn the bezel<br />
Genuine leather strap with a White satin finish<br />
Water resistant to 50 M (165 feet)</p>
	
</div>', 95000.0000, 1, CAST(N'2016-06-10 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (33, N'<h1 class="product_title entry-title">Michael Kors Camille Stainless Steel White Dial Women&#8217;s Watch</h1><p class="price"><del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>299.00</span></del> <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>199.99</span></ins></p>', N'<div itemprop="description">
	
	<p>Brand:Michael Kors<br />
Model: MK5756<br />
Condition:brand new with tags<br />
Band color: gold<br />
Dial color: white/gold numerals</p>
	
</div>
', 16000.0000, 8, CAST(N'2016-06-15 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (34, N'<h1 class="product_title entry-title">Maurice Lacroix Pontos Mens Watch PT7558-PS101130</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>2,200.00</span></p>', N'<div itemprop="description">
	
	<table id="technicalSpecifications_sections">
<tbody>
<tr>
<td>Band Color</td>
<td>Brown</td>
</tr>
<tr>
<td>Dial color</td>
<td>Silver</td>
</tr>
<tr>
<td>Bezel material</td>
<td>Rose Gold</td>
</tr>
<tr>
<td>Special features</td>
<td>Second hand, Luminous, Water Resistant</td>
</tr>
<tr>
<td>Movement</td>
<td>Mechanical hand wind</td>
</tr>
<tr>
<td>Water resistant depth</td>
<td>50 Meters</td>
</tr>
<tr>
<td>Warranty type</td>
<td>Contact seller of record</td>
</tr>
</tbody>
</table>
	
</div>', 20000.0000, 8, CAST(N'2016-06-15 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (35, N'<h1 class="product_title entry-title">Vernier Women&#8217;s Round Chrono Look Fashion Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>85.00</span></p>', N'<div itemprop="description">
	
	<p>Fashion boyfriend chronograph watch by Vernier is all about stand-out style<br />
Genuine crystal stone hour markers are complimented against a sunray dial pattern<br />
Tortoise resin accents compliment gold tone links<br />
Watch arrives in a Vernier gift box complete with a 5 year manufacturer warranty<br />
Water-resistant, dust and moisture</p>
	
</div>', 14000.0000, 8, CAST(N'2016-06-15 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (36, N'<h1 class="product_title entry-title">Tommy Hilfiger Casual Sport White Silicon Gold-Plated Watch</h1>', N'<div itemprop="description">
	
	<p>Quartz movement<br />
Case Diameter: 40 mm<br />
Gold-plated case, silver sunray dial, white silicone strap<br />
Durable mineral crystal protects watch from scratches<br />
Water-resistant to 30 M (99 feet)</p>
	
</div>', 16000.0000, 8, CAST(N'2016-06-15 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (37, N'<h1 class="product_title entry-title">Breda Women&#8217;s Gold Oversized Boyfriend Two Tone Watch</h1>', N'<div itemprop="description">
	
	<p>Highest Standard Quartz movement<br />
Oversized gold metal bezel<br />
White dial marked with three non-working sub-dials and gold Arabic hour markers; large white and gold hands<br />
Two-Tone three-link band with fold-over-clasp<br />
Water-resistant &#8211; not recommended to take into deep water or shower</p>
	
</div>', 19000.0000, 8, CAST(N'2016-06-15 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (38, N'<h1 class="product_title entry-title">JBW &#8220;Victory&#8221; Sport Silver White Designer Silicone Diamond Watch</h1>', N'<div itemprop="description">
	
	<p>Highest standard Quartz chronograph movement<br />
0.20ctw of diamonds around the bezel<br />
Three functional Mother-Of-Pearl chronograph sub dials; Illuminated hour and minute hands<br />
White trendy silicone band with buckle<br />
Water-resistant to 330 feet (100 M)</p>
	
</div>', 18000.0000, 8, CAST(N'2016-06-15 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (46, N'<h1 class="product_title entry-title">Kate Spade Watches Women&#8217;s Gold Black Skyline Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>158.00</span></p>', N'<div itemprop="description">
	
	<p>Quartz movement<br />
Case diameter: 36 mm<br />
Metal case<br />
Durable mineral crystal protects watch from scratches<br />
Water-resistant to 10 M (33 feet)</p>
	
</div>
', 20000.0000, 3, CAST(N'2016-06-28 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (47, N'<h1 class="product_title entry-title">Juicy Couture Stella Gold Plated Bracelet Watch</h1>', N'<div itemprop="description">
	
	<p>Japanese-quartz movement<br />
40mm gold plated stainless steel round case with rainbow-ombre crystal set bezel<br />
Mineral crystal is scratch resistant and durable<br />
Silver sunray dial with multi-eye subdials<br />
Water-resistant to 30 M (99 feet)<br />
Swarovski crystal markers, multi-eye subdials<br />
Super feminine<br />
Glamorous, irreverent and fun lifestyle brand<br />
Sold over 10 000 times</p>
	
</div>', 21000.0000, 3, CAST(N'2016-06-26 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (48, N'<h1 class="product_title entry-title">Invicta Men&#8217;s 9212 Speedway Collection Chronograph S Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>51.00</span></p>', N'<div itemprop="description">
	
	<p>Assembled by hand with meticulous attention to detail, the S watch #9212 is part of Invicta&#8217;s Speedway collection. This sporty yet elegant timepiece features a two-tone stainless steel bezel, case, and bracelet strap with 23K gold plating for a luxe look. A sleek white chronograph dial showcases gold-tone markers, date display between four and five o&#8217;clock, and white-tipped hands. This watch is water resistant to 660 feet. Speedway Collection</p>
	
</div>
', 70000.0000, 4, CAST(N'2016-06-20 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (49, N'<h1 class="product_title entry-title">Invicta Men&#8217;s 9211 Speedway Collection Chronograph Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>84.00</span></p>', N'<div itemprop="description">
	
	<p>Classically styled and channeling your need for speed, the Invicta Speedway Chronograph watch for men (model 9211) offers a bold accent to both business wear and casual dress. The three chronograph subdials can measure time within intervals of 1/60 of a second and up to 30 minutes of elapsed time, and it features start, stop, and reset functions. The round silver stainless steel watch case measures 43mm (1.69 inches) with engraved units per hour markings on the bezel. It has a white dial background with black-outlined subdials, luminous Tritnite hands (with seconds hand), and small minute indexes. Other features include an anti-reflective mineral crystal, silver stainless steel bracelet band, date function at 4 o&#8217;clock, and water resistance to 200 meters (660 feet).</p>
	
</div>
', 120000.0000, 4, CAST(N'2016-06-26 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (50, N'<h1 class="product_title entry-title">Invicta Men&#8217;s 8932 Pro Diver Collection Silver-Tone Watch</h1><p class="price"><del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>49.99</span></del> <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>44.99</span></ins></p>', N'<div itemprop="description">
	
	<p>Big, bold and masculine, the Invicta Quartz Pro Diver 8932 is an affordable luxury watch with classically styled features. This precisely constructed quartz timepiece for men features a solid stainless steel case that&#039;s 37mm wide, slightly smaller than its 8926 cousin. It has a black face with Tritnite luminous hands and markers and a unidirectional black bezel with white numerals and markings. Other features include anti-reflective mineral crystal, date display at 3 o&#039;clock, and water resistance to 200 meters. The highly polished stainless steel band has a diver buckle with safety clasp.</p>
	
</div>
', 200000.0000, 9, CAST(N'2016-06-14 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (51, N'<h1 class="product_title entry-title">Invicta Men&#8217;s 6620 II Chrome Silver Dial Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>69.00</span></p>', N'<div itemprop="description">
	
	<p>With its polished stainless case and durable flame-fusion crystal, the Invicta Men&#8217;s II Collection Chronograph projects an air of authority and confidence. The watch&#8217;s unidirectional hatched bezel features engraved numbers in five-minute increments, which dovetail attractively with the slender, silver tachymeter. Featuring subdials with 60-second, 30-minute and day-of-the-week functions, the watch&#8217;s dial displays hour indicators in embossed Arabic numerals and minute/second indicators in fine black hatches. Metallic arrow hands, a date window at four o&#8217;clock, and the esteemed Invicta logo at the top center round out this timepiece. This watch arrives in a handsome yellow Invicta gift box and is water resistant to 330 feet.</p>
	
</div>', 120000.0000, 9, CAST(N'2016-06-15 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (52, N'<h1 class="product_title entry-title">Invicta Anatomic Subaqua Collection Chronograph Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>149.00</span></p>', N'<div itemprop="description">
	
	<p>Swiss Quartz Movement<br />
Flame-Fusion Crystal; White Plastic Case with Stainless Steel Back; Black Rubber Strap with White Accents<br />
Chronograph Functions with 60 Second, 30 Minute and 1/10th of a Second Subdials; Date Function<br />
White Transparent Dial with Gold Tone Hands and Hour Markers; Luminous; Unidirectional 18k Gold Ion-Plated Stainless Steel Bezel; Tachymeter on Inner Bezel; 18k Gold Ion-Plated Stainless Steel Screw Down Pushers and Crown with Protective Clasp<br />
Water-resistant to 200 M (660 feet)</p>
	
</div>', 120000.0000, 9, CAST(N'2016-06-27 00:00:00.000' AS DateTime), 9)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (53, N'<h1 class="product_title entry-title">Gucci SYNC XXL YA137101 Swiss ETA quartz Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>350.00</span></p>', N'<div itemprop="description">
	
	<p>High quality Swiss ETA quartz movement<br />
Case diameter: 46 mm<br />
Mineral glass crystal with hard coating<br />
Stainless steel case with black translucent nylon edging<br />
Water-resistant to 50 M (165 feet)</p>
	
</div>', 3000.0000, 12, CAST(N'2016-06-22 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (54, N'<h1 class="product_title entry-title">Geneva Platinum Accented Silicone Link Watch, Large Face</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>130.00</span> &ndash; <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>160.00</span></p>', N'<div itemprop="description">
	
	<p>Brand, Seller, or Collection Name Geneva<br />
Part Number SW-6886<br />
Item Shape Round<br />
Dial window material type Mineral<br />
Display Type Analog<br />
Clasp Buckle</p>
	
</div>', 150000.0000, NULL, CAST(N'2016-06-22 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (55, N'<h1 class="product_title entry-title">Fossil Men&#8217;s JR1422 Nate Chronograph Red Silicone Watch</h1>', N'<div itemprop="description">
	
	<p>Brand:Fossil<br />
Model: JR1422<br />
Condition:brand new with tags<br />
Band color: red<br />
Dial color: black</p>
	
</div>
', 250000.0000, NULL, CAST(N'2016-06-22 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (56, N'<h1 class="product_title entry-title">Fortis Men&#8217;s Flieger Chrono-Alarm Croco Leather Watch Auction</h1>', N'<div itemprop="description">
	
	<p>Automatic Fortis chronograph alarm GMT calibre f 2012 13 ¼&#8221;&#8217; , 39 jewels, 28,800 semi-vibrations per hour<br />
Beautiful cream textured dial with blue hour-markers<br />
Luminous hands; date window<br />
Blue padded crocodile leather strap<br />
Water-resistant to 50 M (165 feet)</p>
	
</div>', 210000.0000, NULL, CAST(N'2016-06-22 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (57, N'<h1 class="product_title entry-title">Fortis Men&#8217;s Flieger Chrono-Alarm Croco Leather Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>199.00</span></p>', N'<div itemprop="description">
	
	<p>Automatic Fortis chronograph alarm GMT calibre f 2012 13 ¼&#039;&#039;&#039; , 39 jewels, 28,800 semi-vibrations per hour<br />
Beautiful cream textured dial with blue hour-markers<br />
Luminous hands; date window<br />
Blue padded crocodile leather strap<br />
Water-resistant to 50 M (165 feet)</p>
	
</div>', 340000.0000, NULL, CAST(N'2016-06-22 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (58, N'<h1 class="product_title entry-title">Elegant Plane Digital Display LED Silicone Wrist Watch Black</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>5.50</span></p>', N'<div itemprop="description">
	
	<p>Keep up with the fashion you could not miss this elegant digital wrist watch! This fashionable digital display led wrist watch offers high precision and elegant appearance. This digital LED wrist watch is very durable and support long time using. This wrist watch provides your schedules never get early or late. The digital wrist watch features LED display, time is directly showed on it. Practical and stylish, this LED digital wrist watch well serves as a foil to your personality!</p>
	
</div>
', 124400.0000, NULL, CAST(N'2016-06-22 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (59, N'<h1 class="product_title entry-title">Ebel Classic Hexagon Black Chronograph Dial Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>2,364.00</span></p>', N'<div itemprop="description">
	
	<p>Automatic movement<br />
Black chronograph dial<br />
Black leather strap<br />
Deployment clasp<br />
Water-resistant to 165 feet (50 M)</p>
	
</div>', 1000.0000, NULL, CAST(N'2016-06-22 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (60, N'<h1 class="product_title entry-title">Ebel Classic Mens Silver dial Black Strap Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>1,194.00</span></p>', N'<div itemprop="description">
	
	<p>Automaitc movement<br />
Silver limited dial<br />
Black leather strap<br />
Pin buckle<br />
Water-resistant to 50 m (165 feet)</p>
	
</div>', 21000.0000, NULL, CAST(N'2016-06-22 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (61, N'<h1 class="product_title entry-title">Tommy Hilfiger Women&#8217;s Casual Sport Stainless Steel Case</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>560.00</span></p>', N'<div itemprop="description">
	
	<p>Quartz movement<br />
Case diameter: 36 mm<br />
Stainless steel plated case, white silicone strap with stainless steel links<br />
Durable mineral crystal protects watch from scratches<br />
Water-resistant to 30 M (99 feet)</p>
	
</div>
', 21900.0000, NULL, CAST(N'2016-06-22 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (62, N'<h1 class="product_title entry-title">Casio STR300 60lap Sport Running Auto LED Light Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>59.00</span></p>', N'<div itemprop="description">
	
	<p>The Casio STR300 Running watch has a 10 Year Battery, the STR300 Runner Series is not only powerful; it&#039;s also eco-friendly too. This long lasting power will translate into years of reliable training data</p>
	
</div>', 12000.0000, NULL, CAST(N'2016-06-22 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (63, N'<h1 class="product_title entry-title">Breitling Men&#8217;s Superocean Chronograph Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>568.00</span></p>', N'<div itemprop="description">
	
	<p>Automatic<br />
Case diameter: 44 mm<br />
Chronogrpah watch<br />
Sapphire<br />
Water-resistant to 500 m (1640 feet)</p>
	
</div>', 12400.0000, NULL, CAST(N'2016-06-22 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (64, N'<h1 class="product_title entry-title">XOXO Rhinestone Accent Gold-Tone Bracelet Watch</h1>', N'<div itemprop="description">
	
	<p>The casual and fashionable XOXO Women&#039;s Rhinestone Accent Gold-Tone Bracelet Watch features a round 38mm gold-toned case with beautiful rhinestones around the bezel. The imitation white Mother-of-pearl dial, which is protected by a glass crystal, features three faux chronograph and silver indexes. The shiny gold-tone, three-link watch band straps this watch to the wrist, while an elegant jewelry clasp makes sure it stays there. This timepiece is also powered by analog-quartz movement and is ideal for everyday wear.</p>
	
</div>
', 5400.0000, NULL, CAST(N'2016-06-22 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (65, N'<h1 class="product_title entry-title">ESS Black Dial Leather Strap Stainless Case Wrist Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>15.00</span></p>', N'<div itemprop="description">
	
	<p>100% brand new<br />
stainless steels watch case<br />
skeleton dial<br />
precision Japanes mechanical movement<br />
come with black gift box</p>
	
</div>', 24700.0000, NULL, CAST(N'2016-06-22 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (66, N'<h1 class="product_title entry-title">Tag Heuer Aquaracer Blue Dial Yellow Stainless Steel Watch</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>150.00</span></p>', N'<div itemprop="description">
	
	<p>Part Number WAK Model Year 2011<br />
Item Shape Round<br />
Dial window material type Sapphire<br />
Display Type Analog</p>
	
</div>', 87000.0000, NULL, CAST(N'2016-06-22 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (67, N'<h1 class="product_title entry-title">Anne Klein Gold-Tone Tortoise Shell Plastic Bracelet</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>587.00</span></p>', N'<div itemprop="description">
	
	<p>The champagne dial and gold-tone accents on this Anne Klein watch are a lovely complement to the plastic tortoise shell bezel and matching bangle bracelet.<br />
Japanese Quartz movement with analog display and sweeping second hand<br />
Protective mineral dial window<br />
Roman numerals at 6 and 12 o&#039;clock and 10 index markers<br />
Water-resistant to 30 m (99 feet)</p>
	
</div>', 9000.0000, NULL, CAST(N'2016-06-22 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SanPham] ([SPID], [TenSP], [MoTa], [Gia], [DMID], [NgayNhap], [SoLuocXem]) VALUES (68, N'<h1 class="product_title entry-title">Anne Klein Silver-Tone White Dial, Red Leather Strap</h1><p class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>324.00</span></p>', N'<div itemprop="description">
	
	<p>White dial with Arabic numerals 12-3-6-9 and 8 index markers<br />
Silver-tone hour hands and sweep second hand<br />
Black printed inside minute track<br />
Red smooth leather strap with silver-tone buckle closure<br />
Water-resistant to 99 feet (30 M)</p>
	
</div>', 1800.0000, NULL, CAST(N'2016-06-22 00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([f_ID], [f_Username], [f_Password], [f_Name], [f_Email], [f_DOB], [f_Permission], [f_Status]) VALUES (1, N'yentu', N'E10ADC3949BA59ABBE56E057F20F883E', N'Từ yến', N'julietsu95@gmail.com', CAST(N'1995-09-04 00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[TaiKhoan] ([f_ID], [f_Username], [f_Password], [f_Name], [f_Email], [f_DOB], [f_Permission], [f_Status]) VALUES (5, N'phuongtu', N'202CB962AC59075B964B07152D234B70', N'phương từ', N'phuongtu@gmail.com', CAST(N'1994-02-13 00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[TaiKhoan] ([f_ID], [f_Username], [f_Password], [f_Name], [f_Email], [f_DOB], [f_Permission], [f_Status]) VALUES (6, N'yentu1', N'4297F44B13955235245B2497399D7A93', N'Từ yến', N'julietsu95@gmail.com', CAST(N'2016-06-11 00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[TaiKhoan] ([f_ID], [f_Username], [f_Password], [f_Name], [f_Email], [f_DOB], [f_Permission], [f_Status]) VALUES (9, N'admin', N'202CB962AC59075B964B07152D234B70', N'Admin', N'Admin', CAST(N'2016-05-09 00:00:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[TaiKhoan] ([f_ID], [f_Username], [f_Password], [f_Name], [f_Email], [f_DOB], [f_Permission], [f_Status]) VALUES (10, N'123', N'E10ADC3949BA59ABBE56E057F20F883E', N'Từ yến', N'julietsu95@gmail.com', CAST(N'2016-06-28 00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[TaiKhoan] ([f_ID], [f_Username], [f_Password], [f_Name], [f_Email], [f_DOB], [f_Permission], [f_Status]) VALUES (11, N'abc', N'4297F44B13955235245B2497399D7A93', N'phương từ', N'julietsu95@gmail.com', CAST(N'2016-03-16 00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[TaiKhoan] ([f_ID], [f_Username], [f_Password], [f_Name], [f_Email], [f_DOB], [f_Permission], [f_Status]) VALUES (12, N'asd', N'4297F44B13955235245B2497399D7A93', N'123', N'1@sa.asd', CAST(N'2016-06-23 00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[TaiKhoan] ([f_ID], [f_Username], [f_Password], [f_Name], [f_Email], [f_DOB], [f_Permission], [f_Status]) VALUES (13, N'yuuyu1205', N'e10adc3949ba59abbe56e057f20f883e', N'Binh Vuong', N'haobinhba91@gmail.com', CAST(N'2010-01-06 00:16:00.000' AS DateTime), 0, NULL)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
