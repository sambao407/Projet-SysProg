USE [master]
GO
/****** Object:  Database [ProjetSysProg]    Script Date: 09/12/2018 05:03:47 ******/
CREATE DATABASE [ProjetSysProg]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjetSysProg', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SAMBASQL\MSSQL\DATA\ProjetSysProg.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjetSysProg_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SAMBASQL\MSSQL\DATA\ProjetSysProg_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ProjetSysProg] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjetSysProg].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjetSysProg] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjetSysProg] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjetSysProg] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjetSysProg] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjetSysProg] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjetSysProg] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjetSysProg] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjetSysProg] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjetSysProg] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjetSysProg] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjetSysProg] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjetSysProg] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjetSysProg] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjetSysProg] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjetSysProg] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjetSysProg] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjetSysProg] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjetSysProg] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjetSysProg] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjetSysProg] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjetSysProg] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjetSysProg] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjetSysProg] SET RECOVERY FULL 
GO
ALTER DATABASE [ProjetSysProg] SET  MULTI_USER 
GO
ALTER DATABASE [ProjetSysProg] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjetSysProg] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjetSysProg] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjetSysProg] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjetSysProg] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProjetSysProg] SET QUERY_STORE = OFF
GO
USE [ProjetSysProg]
GO
/****** Object:  Table [dbo].[CreationRecette]    Script Date: 09/12/2018 05:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreationRecette](
	[FK_Ingredient] [int] NOT NULL,
	[FK_Recette] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fournisseur]    Script Date: 09/12/2018 05:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fournisseur](
	[FournisseurID] [int] IDENTITY(1,1) NOT NULL,
	[Produit_livrer] [nvarchar](50) NOT NULL,
	[Nom_Fournisseur] [nvarchar](50) NULL,
 CONSTRAINT [PK_Fournisseur] PRIMARY KEY CLUSTERED 
(
	[FournisseurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredient]    Script Date: 09/12/2018 05:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredient](
	[IngredientID] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Ingredient] [nvarchar](50) NOT NULL,
	[Fraicheur_Max] [int] NOT NULL,
	[Lieu_Stockage] [nvarchar](50) NOT NULL,
	[Quantite] [int] NULL,
 CONSTRAINT [PK_Ingredient] PRIMARY KEY CLUSTERED 
(
	[IngredientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recette]    Script Date: 09/12/2018 05:03:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recette](
	[RecetteID] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Recette] [nvarchar](50) NOT NULL,
	[Type_Recette] [nvarchar](50) NOT NULL,
	[Ingredient1] [nvarchar](50) NOT NULL,
	[Ingredient2] [nvarchar](50) NOT NULL,
	[Ingredient3] [nvarchar](50) NOT NULL,
	[Ingredient4] [nvarchar](50) NOT NULL,
	[Temps_Cuisson] [int] NOT NULL,
 CONSTRAINT [PK_Recette] PRIMARY KEY CLUSTERED 
(
	[RecetteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Fournisseur] ON 

INSERT [dbo].[Fournisseur] ([FournisseurID], [Produit_livrer], [Nom_Fournisseur]) VALUES (1, N'Reserve', N'SuperU')
INSERT [dbo].[Fournisseur] ([FournisseurID], [Produit_livrer], [Nom_Fournisseur]) VALUES (2, N'Congelateur', N'Intermarche')
INSERT [dbo].[Fournisseur] ([FournisseurID], [Produit_livrer], [Nom_Fournisseur]) VALUES (3, N'Chambre Froide', N'ELeclerc')
SET IDENTITY_INSERT [dbo].[Fournisseur] OFF
SET IDENTITY_INSERT [dbo].[Ingredient] ON 

INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (1, N'Ail', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (2, N'Aubergine', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (3, N'Beurre', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (4, N'Cafe', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (5, N'Camember', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (6, N'Caramel', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (7, N'Carotte', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (8, N'Cêpes', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (9, N'Cerise', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (10, N'Champignon', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (11, N'Chêvre', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (12, N'Chocolat', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (13, N'Citron', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (14, N'Concombre', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (15, N'Corriande', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (16, N'Crème Fleurette', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (17, N'Crème Fraiche', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (18, N'Crème Liquide', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (19, N'Curry', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (20, N'Echalote', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (21, N'Emmental', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (22, N'Endive', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (23, N'Escargot', 30, N'Congelateur', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (24, N'Farine', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (25, N'Feuille de brick', 30, N'Congelateur', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (26, N'Fromage', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (27, N'Gingembre', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (28, N'Jambon', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (29, N'Lait', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (30, N'Lait de coco', 2, N'Chambre Froide', 30)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (31, N'Mascarpone', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (32, N'Mayonnaise', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (33, N'Navets', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (34, N'Oeufs', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (35, N'Oignon', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (36, N'Orange', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (37, N'Pain', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (38, N'Pain de mie', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (39, N'Pain Hamburger', 30, N'Congelateur', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (40, N'Parmesan', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (41, N'Pate brisee', 30, N'Congelateur', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (42, N'Pate lasagne', 30, N'Congelateur', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (43, N'Pate sablee', 30, N'Congelateur', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (44, N'Petit pois', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (45, N'Poire', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (46, N'Poireaux', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (47, N'Poivron', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (48, N'Pomme de terre', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (49, N'Pomme', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (50, N'Poulet', 30, N'Congelateur', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (51, N'Riz', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (52, N'Salade', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (53, N'Sauce Provencale', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (54, N'Steack Hache', 30, N'Congelateur', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (55, N'Sucre', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (56, N'Sucre Cassonnade', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (57, N'Tagliatelles', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (58, N'Thon', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (59, N'Tomate', 2, N'Chambre Froide', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (60, N'Vanille', 0, N'Reserve', 20)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite]) VALUES (61, N'Yaourt Nature', 2, N'Chambre Froide', 20)
SET IDENTITY_INSERT [dbo].[Ingredient] OFF
SET IDENTITY_INSERT [dbo].[Recette] ON 

INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (1, N'Salade chêvre chaud', N'Entree', N'Salade', N'Chèvre chaux', N'Pain', N'Tomates', 15)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (2, N'Gaspacho', N'Entree', N'Tomates', N'Concombre', N'Oignon', N'Ail', 40)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (3, N'Mille feuille aubergine', N'Entree', N'Aubergines', N'Tomates', N'Chêvre', N'Poivron', 45)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (4, N'Brick camembert aux pommes', N'Entree', N'Feuille de brick', N'Camembert', N'Pommes', N'Beurre', 40)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (5, N'Salade dendive au thon', N'Entree', N'Endives', N'Thon', N'Pomme de terre', N'Echalote', 15)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (6, N'Oeuf mimosa au thon', N'Entree', N'Oeufs', N'Thon', N'Mayonnaise', N'Salade', 30)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (7, N'Macédoine de légumes', N'Entree', N'Carottes', N'Petits pois', N'Oeuf', N'Navets', 50)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (8, N'Verrine tomates au thon', N'Entree', N'Tomates', N'Concombre', N'Thon', N'Emmental', 15)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (9, N'Brochette de poulet au curry', N'Entree', N'Poulet', N'Lait de coco', N'Curry', N'Corrande', 25)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (10, N'Muffin jambon fromage', N'Entree', N'Jambon', N'Fromage', N'Farine', N'Yaourt nature', 35)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (11, N'Tagliatelles aux cêpes', N'Plat', N'Tagliatelles', N'cêpes', N'Parmesan', N'Crème fraiche', 25)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (12, N'Croque monsieur', N'Plat', N'Pain de mie', N'Fromage', N'Jambon', N'Beurre', 10)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (13, N'Gratin dauphinois', N'Plat', N'Pomme de terre', N'Crème liquide', N'Ail', N'Lait', 20)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (14, N'Hamburger', N'Plat', N'Pain hamburger', N'Steack haché', N'Tomates', N'Salade', 20)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (15, N'Lasagne', N'Plat', N'Pate lasagne', N'Oignon', N'Steack haché', N'Sauce provencale', 30)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (16, N'Aile de poulet farçie', N'Plat', N'Poulet', N'Poireaux', N'Carotte', N'Oignon', 25)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (17, N'Cari de poulet', N'Plat', N'Poulet', N'Oignon', N'Tomates', N'Gingembre', 40)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (18, N'Champignon à la bourgignon', N'Plat', N'Champignons', N'Escargots', N'Ail', N'Beurre', 35)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (19, N'Tomate farcies', N'Plat', N'Tomates', N'Steack haché', N'Oignon', N'Riz', 50)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (20, N'Porc caramel', N'Plat', N'Porc', N'Sucre', N'Oignon', N'Riz', 35)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (21, N'Tiramisu café', N'Mascarpone', N'Sucre', N'cêpes', N'Oeuf', N'Café', 20)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (22, N'Crème brulée', N'Dessert', N'Oeuf', N'Crème fleurette', N'Sucre cassonnade', N'Sucre', 50)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (23, N'Riz au lait', N'Dessert', N'Riz', N'Lait', N'Vanille', N'Sucre', 40)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (24, N'Tarte aux pommes', N'Dessert', N'Pâte sablée', N'Pommes', N'Sucre', N'Oeuf', 45)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (25, N'Lasagne', N'Dessert', N'Pâte brisée', N'Citron', N'Sucre', N'Oeuf', 50)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (26, N'Ile flottante', N'Dessert', N'Lait', N'Oeuf', N'Vanille', N'Caramel', 35)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (27, N'Crumble pomme', N'Dessert', N'Pommes', N'Sucre', N'Beurre', N'Farine', 35)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (28, N'Mousse au chocolat', N'Dessert', N'Chocolat', N'Beurre', N'Oeuf', N'Sucre', 25)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (29, N'Profiterolle chocolat', N'Dessert', N'Oeuf', N'Chocolat', N'Sucre', N'Beurre', 50)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Temps_Cuisson]) VALUES (30, N'Salade de fruit', N'Dessert', N'Poire', N'Pomme', N'Cerise', N'Orange', 15)
SET IDENTITY_INSERT [dbo].[Recette] OFF
ALTER TABLE [dbo].[CreationRecette]  WITH CHECK ADD  CONSTRAINT [FK_CreationRecette_Ingredient] FOREIGN KEY([FK_Ingredient])
REFERENCES [dbo].[Ingredient] ([IngredientID])
GO
ALTER TABLE [dbo].[CreationRecette] CHECK CONSTRAINT [FK_CreationRecette_Ingredient]
GO
ALTER TABLE [dbo].[CreationRecette]  WITH CHECK ADD  CONSTRAINT [FK_CreationRecette_Recette] FOREIGN KEY([FK_Recette])
REFERENCES [dbo].[Recette] ([RecetteID])
GO
ALTER TABLE [dbo].[CreationRecette] CHECK CONSTRAINT [FK_CreationRecette_Recette]
GO
USE [master]
GO
ALTER DATABASE [ProjetSysProg] SET  READ_WRITE 
GO
