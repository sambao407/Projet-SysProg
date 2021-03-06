USE [master]
GO
/****** Object:  Database [ProjetSysProg]    Script Date: 04/12/2018 13:39:41 ******/
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
/****** Object:  Table [dbo].[Approvisionnement]    Script Date: 04/12/2018 13:39:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Approvisionnement](
	[FournisseurID] [int] NOT NULL,
	[ChambreFroideID] [int] NOT NULL,
	[ReserveID] [int] NOT NULL,
	[CongelateurID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chambre_Froide]    Script Date: 04/12/2018 13:39:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chambre_Froide](
	[ChambreFroideID] [int] IDENTITY(1,1) NOT NULL,
	[IngrdChambreName] [varchar](50) NOT NULL,
	[Fraicheur_Chambre] [int] NOT NULL,
	[Quantite_Chambre] [int] NOT NULL,
 CONSTRAINT [Chambre_Froide_PK] PRIMARY KEY CLUSTERED 
(
	[ChambreFroideID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Congelateur]    Script Date: 04/12/2018 13:39:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Congelateur](
	[CongelateurID] [int] IDENTITY(1,1) NOT NULL,
	[Fraicheur_Congelateur] [int] NOT NULL,
	[Quantite_Congelateur] [int] NOT NULL,
	[IngrdCongelateurName] [varchar](50) NOT NULL,
 CONSTRAINT [Congelateur_PK] PRIMARY KEY CLUSTERED 
(
	[CongelateurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Creation_Recette]    Script Date: 04/12/2018 13:39:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Creation_Recette](
	[IngredientID] [int] NOT NULL,
	[RecetteID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuisinier]    Script Date: 04/12/2018 13:39:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuisinier](
	[CuisinierID] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Cuisinier] [varchar](50) NOT NULL,
	[Poste] [varchar](50) NOT NULL,
 CONSTRAINT [Cuisinier_PK] PRIMARY KEY CLUSTERED 
(
	[CuisinierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fournisseur]    Script Date: 04/12/2018 13:39:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fournisseur](
	[FournisseurID] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Fournisseur] [varchar](50) NOT NULL,
	[Produit_Livrer] [varchar](50) NOT NULL,
 CONSTRAINT [Fournisseur_PK] PRIMARY KEY CLUSTERED 
(
	[FournisseurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredient]    Script Date: 04/12/2018 13:39:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredient](
	[IngredientID] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Ingredient] [varchar](50) NOT NULL,
	[Fraicheur_Ingredient] [int] NOT NULL,
	[Lieu_Stock] [varchar](50) NOT NULL,
 CONSTRAINT [Ingredient_PK] PRIMARY KEY CLUSTERED 
(
	[IngredientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recette]    Script Date: 04/12/2018 13:39:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recette](
	[RecetteID] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Recette] [varchar](50) NOT NULL,
	[Ingredient1] [varchar](50) NOT NULL,
	[Ingredient2] [varchar](50) NOT NULL,
	[Ingredient3] [varchar](50) NOT NULL,
 CONSTRAINT [Recette_PK] PRIMARY KEY CLUSTERED 
(
	[RecetteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reserve]    Script Date: 04/12/2018 13:39:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserve](
	[ReserveID] [int] IDENTITY(1,1) NOT NULL,
	[Fraicheur_Reserve] [int] NOT NULL,
	[Quantite_Reserve] [int] NOT NULL,
	[IngrdReserveName] [varchar](50) NOT NULL,
 CONSTRAINT [Reserve_PK] PRIMARY KEY CLUSTERED 
(
	[ReserveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Approvisionnement]  WITH CHECK ADD  CONSTRAINT [FK_Chambre_Froide] FOREIGN KEY([ChambreFroideID])
REFERENCES [dbo].[Chambre_Froide] ([ChambreFroideID])
GO
ALTER TABLE [dbo].[Approvisionnement] CHECK CONSTRAINT [FK_Chambre_Froide]
GO
ALTER TABLE [dbo].[Approvisionnement]  WITH CHECK ADD  CONSTRAINT [FK_Congelateur] FOREIGN KEY([CongelateurID])
REFERENCES [dbo].[Congelateur] ([CongelateurID])
GO
ALTER TABLE [dbo].[Approvisionnement] CHECK CONSTRAINT [FK_Congelateur]
GO
ALTER TABLE [dbo].[Approvisionnement]  WITH CHECK ADD  CONSTRAINT [FK_Fournisseur] FOREIGN KEY([FournisseurID])
REFERENCES [dbo].[Fournisseur] ([FournisseurID])
GO
ALTER TABLE [dbo].[Approvisionnement] CHECK CONSTRAINT [FK_Fournisseur]
GO
ALTER TABLE [dbo].[Approvisionnement]  WITH CHECK ADD  CONSTRAINT [FK_Reserve] FOREIGN KEY([ReserveID])
REFERENCES [dbo].[Reserve] ([ReserveID])
GO
ALTER TABLE [dbo].[Approvisionnement] CHECK CONSTRAINT [FK_Reserve]
GO
ALTER TABLE [dbo].[Creation_Recette]  WITH CHECK ADD  CONSTRAINT [FK_Ingredient] FOREIGN KEY([IngredientID])
REFERENCES [dbo].[Ingredient] ([IngredientID])
GO
ALTER TABLE [dbo].[Creation_Recette] CHECK CONSTRAINT [FK_Ingredient]
GO
ALTER TABLE [dbo].[Creation_Recette]  WITH CHECK ADD  CONSTRAINT [FK_Recette] FOREIGN KEY([RecetteID])
REFERENCES [dbo].[Recette] ([RecetteID])
GO
ALTER TABLE [dbo].[Creation_Recette] CHECK CONSTRAINT [FK_Recette]
GO
USE [master]
GO
ALTER DATABASE [ProjetSysProg] SET  READ_WRITE 
GO
