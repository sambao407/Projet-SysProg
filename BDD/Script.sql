USE [master]
GO
/****** Object:  Database [ProjetSysProg]    Script Date: 05/12/2018 13:03:56 ******/
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
/****** Object:  Table [dbo].[Approvisionnement]    Script Date: 05/12/2018 13:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Approvisionnement](
	[FK_Fournisseur] [int] NOT NULL,
	[FK_Reserve] [int] NOT NULL,
	[FK_Congelateur] [int] NOT NULL,
	[FK_Chambre_froide] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chambre_froide]    Script Date: 05/12/2018 13:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chambre_froide](
	[Chambre_froideID] [int] NOT NULL,
	[Nom_Ingredient_Chambre] [nvarchar](50) NOT NULL,
	[Fraicheur_Chambre] [int] NOT NULL,
	[Quantite_Chambre] [int] NOT NULL,
 CONSTRAINT [PK_Chambre_froide] PRIMARY KEY CLUSTERED 
(
	[Chambre_froideID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Congelateur]    Script Date: 05/12/2018 13:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Congelateur](
	[CongelateurID] [int] NOT NULL,
	[Nom_Ingredient_Congelateur] [nvarchar](50) NOT NULL,
	[Fraicheur_Congelateur] [int] NOT NULL,
	[Quantite_Congelateur] [int] NOT NULL,
 CONSTRAINT [PK_Congelateur] PRIMARY KEY CLUSTERED 
(
	[CongelateurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CreationRecette]    Script Date: 05/12/2018 13:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreationRecette](
	[FK_Ingredient] [int] NOT NULL,
	[FK_Recette] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fournisseur]    Script Date: 05/12/2018 13:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fournisseur](
	[FournisseurID] [int] NOT NULL,
	[Produit_livrer] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Fournisseur] PRIMARY KEY CLUSTERED 
(
	[FournisseurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredient]    Script Date: 05/12/2018 13:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredient](
	[IngredientID] [int] NOT NULL,
	[Nom_Ingredient] [nvarchar](50) NOT NULL,
	[Fraicheur_Max] [int] NOT NULL,
	[Lieu_Stockage] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Ingredient] PRIMARY KEY CLUSTERED 
(
	[IngredientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MajStock]    Script Date: 05/12/2018 13:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MajStock](
	[FK_Ingredient] [int] NOT NULL,
	[FK_Chambre_froide] [int] NOT NULL,
	[FK_Congelateur] [int] NOT NULL,
	[FK_Reserve] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recette]    Script Date: 05/12/2018 13:03:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recette](
	[RecetteID] [int] NOT NULL,
	[Nom_Recette] [nvarchar](50) NOT NULL,
	[Type_Recette] [nvarchar](50) NOT NULL,
	[Ingredient1] [nvarchar](50) NOT NULL,
	[Ingredient2] [nvarchar](50) NOT NULL,
	[Ingredient3] [nvarchar](50) NOT NULL,
	[Ingredient4] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Recette] PRIMARY KEY CLUSTERED 
(
	[RecetteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reserve]    Script Date: 05/12/2018 13:03:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserve](
	[ReserveID] [int] NOT NULL,
	[Nom_Ingredient_Reserve] [nvarchar](50) NOT NULL,
	[Fraicheur_Reserve] [int] NOT NULL,
	[Quantite_Reserve] [int] NOT NULL,
 CONSTRAINT [PK_Reserve] PRIMARY KEY CLUSTERED 
(
	[ReserveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Approvisionnement]  WITH CHECK ADD  CONSTRAINT [FK_Approvisionnement_Chambre_froide] FOREIGN KEY([FK_Chambre_froide])
REFERENCES [dbo].[Chambre_froide] ([Chambre_froideID])
GO
ALTER TABLE [dbo].[Approvisionnement] CHECK CONSTRAINT [FK_Approvisionnement_Chambre_froide]
GO
ALTER TABLE [dbo].[Approvisionnement]  WITH CHECK ADD  CONSTRAINT [FK_Approvisionnement_Congelateur] FOREIGN KEY([FK_Congelateur])
REFERENCES [dbo].[Congelateur] ([CongelateurID])
GO
ALTER TABLE [dbo].[Approvisionnement] CHECK CONSTRAINT [FK_Approvisionnement_Congelateur]
GO
ALTER TABLE [dbo].[Approvisionnement]  WITH CHECK ADD  CONSTRAINT [FK_Approvisionnement_Fournisseur] FOREIGN KEY([FK_Fournisseur])
REFERENCES [dbo].[Fournisseur] ([FournisseurID])
GO
ALTER TABLE [dbo].[Approvisionnement] CHECK CONSTRAINT [FK_Approvisionnement_Fournisseur]
GO
ALTER TABLE [dbo].[Approvisionnement]  WITH CHECK ADD  CONSTRAINT [FK_Approvisionnement_Reserve] FOREIGN KEY([FK_Reserve])
REFERENCES [dbo].[Reserve] ([ReserveID])
GO
ALTER TABLE [dbo].[Approvisionnement] CHECK CONSTRAINT [FK_Approvisionnement_Reserve]
GO
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
ALTER TABLE [dbo].[MajStock]  WITH CHECK ADD  CONSTRAINT [FK_MajStock_Chambre_froide] FOREIGN KEY([FK_Chambre_froide])
REFERENCES [dbo].[Chambre_froide] ([Chambre_froideID])
GO
ALTER TABLE [dbo].[MajStock] CHECK CONSTRAINT [FK_MajStock_Chambre_froide]
GO
ALTER TABLE [dbo].[MajStock]  WITH CHECK ADD  CONSTRAINT [FK_MajStock_Congelateur] FOREIGN KEY([FK_Congelateur])
REFERENCES [dbo].[Congelateur] ([CongelateurID])
GO
ALTER TABLE [dbo].[MajStock] CHECK CONSTRAINT [FK_MajStock_Congelateur]
GO
ALTER TABLE [dbo].[MajStock]  WITH CHECK ADD  CONSTRAINT [FK_MajStock_Ingredient] FOREIGN KEY([FK_Ingredient])
REFERENCES [dbo].[Ingredient] ([IngredientID])
GO
ALTER TABLE [dbo].[MajStock] CHECK CONSTRAINT [FK_MajStock_Ingredient]
GO
ALTER TABLE [dbo].[MajStock]  WITH CHECK ADD  CONSTRAINT [FK_MajStock_Reserve] FOREIGN KEY([FK_Reserve])
REFERENCES [dbo].[Reserve] ([ReserveID])
GO
ALTER TABLE [dbo].[MajStock] CHECK CONSTRAINT [FK_MajStock_Reserve]
GO
USE [master]
GO
ALTER DATABASE [ProjetSysProg] SET  READ_WRITE 
GO
