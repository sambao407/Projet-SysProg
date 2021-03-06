USE [master]
GO
/****** Object:  Database [ProjetSysProg]    Script Date: 16/12/2018 23:14:07 ******/
CREATE DATABASE [ProjetSysProg]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjetSysProg', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ProjetSysProg.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjetSysProg_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ProjetSysProg_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
/****** Object:  Table [dbo].[Fournisseur]    Script Date: 16/12/2018 23:14:07 ******/
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
/****** Object:  Table [dbo].[Ingredient]    Script Date: 16/12/2018 23:14:07 ******/
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
	[ID_Recette] [int] NULL,
 CONSTRAINT [PK_Ingredient] PRIMARY KEY CLUSTERED 
(
	[IngredientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recette]    Script Date: 16/12/2018 23:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recette](
	[RecetteID] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Recette] [nvarchar](50) NOT NULL,
	[Type_Recette] [nvarchar](50) NOT NULL,
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

INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (64, N'Tomate', 2, N'Chambre Froide', 20, 2)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (65, N'Concombre', 30, N'Chambre Froide', 20, 2)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (66, N'Oignon', 2, N'Reserve', 20, 2)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (67, N'Ail', 30, N'Reserve', 20, 2)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (68, N'Jambon', 2, N'Chambre Froide', 20, 10)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (69, N'Fromage', 30, N'Chambre Froide', 20, 10)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (70, N'Farine', 2, N'Reserve', 20, 10)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (71, N'Yaourt nature', 30, N'Chambre Froide', 20, 10)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (72, N'Poulet', 2, N'Congelateur', 20, 16)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (73, N'Poireaux', 30, N'Chambre Froide', 20, 16)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (74, N'Carotte', 2, N'Chambre Froide', 20, 16)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (75, N'Oignon', 30, N'Reserve', 20, 16)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (76, N'Pain de mie', 2, N'Reserve', 20, 12)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (77, N'Fromage', 30, N'Chambre Froide', 20, 12)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (78, N'Jambon', 2, N'Chambre Froide', 20, 12)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (79, N'Beurre', 30, N'Chambre Froide', 20, 12)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (80, N'Carottes', 2, N'Chambre Froide', 20, 7)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (81, N'Petit pois', 30, N'Reserve', 20, 7)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (82, N'Oeuf', 2, N'Chambre Froide', 20, 7)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (83, N'Navets', 30, N'Chambre Froide', 20, 7)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (84, N'Riz', 2, N'Reserve', 20, 23)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (85, N'Lait', 30, N'Chambre Froide', 20, 23)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (86, N'Vanille', 2, N'Reserve', 20, 23)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (87, N'Sucre', 30, N'Reserve', 20, 23)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (88, N'Poire', 2, N'Chambre Froide', 20, 30)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (89, N'Pomme', 30, N'Chambre Froide', 20, 30)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (90, N'Cerise', 2, N'Chambre Froide', 20, 30)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (91, N'Orange', 30, N'Chambre Froide', 20, 30)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (92, N'Chocolat', 2, N'Reserve', 20, 28)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (93, N'Beurre', 30, N'Chambre Froide', 20, 28)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (94, N'Oeuf', 2, N'Chambre Froide', 20, 28)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (95, N'Sucre', 30, N'Reserve', 20, 28)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (96, N'Pain Hamburger', 30, N'Congelateur', 20, 14)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (97, N'Salade', 2, N'Chambre Froide', 20, 14)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (98, N'Steack Hache', 30, N'Congelateur', 20, 14)
INSERT [dbo].[Ingredient] ([IngredientID], [Nom_Ingredient], [Fraicheur_Max], [Lieu_Stockage], [Quantite], [ID_Recette]) VALUES (99, N'Tomate', 2, N'Chambre Froide', 20, 14)
SET IDENTITY_INSERT [dbo].[Ingredient] OFF
SET IDENTITY_INSERT [dbo].[Recette] ON 

INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (1, N'Salade chêvre chaud', N'Entree', 15)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (2, N'Gaspacho', N'Entree', 40)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (3, N'Mille feuille aubergine', N'Entree', 45)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (4, N'Brick camembert aux pommes', N'Entree', 40)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (5, N'Salade dendive au thon', N'Entree', 15)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (6, N'Oeuf mimosa au thon', N'Entree', 30)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (7, N'Macédoine de légumes', N'Entree', 50)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (8, N'Verrine tomates au thon', N'Entree', 15)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (9, N'Brochette de poulet au curry', N'Entree', 25)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (10, N'Muffin jambon fromage', N'Entree', 35)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (11, N'Tagliatelles aux cêpes', N'Plat', 25)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (12, N'Croque monsieur', N'Plat', 10)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (13, N'Gratin dauphinois', N'Plat', 20)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (14, N'Hamburger', N'Plat', 20)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (15, N'Lasagne', N'Plat', 30)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (16, N'Aile de poulet farçie', N'Plat', 25)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (17, N'Cari de poulet', N'Plat', 40)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (18, N'Champignon à la bourgignon', N'Plat', 35)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (19, N'Tomate farcies', N'Plat', 50)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (20, N'Porc caramel', N'Plat', 35)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (21, N'Tiramisu café', N'Dessert', 20)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (22, N'Crème brulée', N'Dessert', 50)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (23, N'Riz au lait', N'Dessert', 40)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (24, N'Tarte aux pommes', N'Dessert', 45)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (25, N'Lasagne', N'Dessert', 50)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (26, N'Ile flottante', N'Dessert', 35)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (27, N'Crumble pomme', N'Dessert', 35)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (28, N'Mousse au chocolat', N'Dessert', 25)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (29, N'Profiterolle chocolat', N'Dessert', 50)
INSERT [dbo].[Recette] ([RecetteID], [Nom_Recette], [Type_Recette], [Temps_Cuisson]) VALUES (30, N'Salade de fruit', N'Dessert', 15)
SET IDENTITY_INSERT [dbo].[Recette] OFF
/****** Object:  StoredProcedure [dbo].[Check_Stock]    Script Date: 16/12/2018 23:14:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Check_Stock]
(
	@Recette nvarchar(50)
)

AS 

SELECT * FROM Recette
WHERE Nom_Recette = @Recette
GO
USE [master]
GO
ALTER DATABASE [ProjetSysProg] SET  READ_WRITE 
GO
