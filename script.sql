USE [master]
GO
/****** Object:  Database [PhoneBook]    Script Date: 20/10/2018 20:42:15 ******/
CREATE DATABASE [PhoneBook]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PhoneBook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PhoneBook.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PhoneBook_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PhoneBook_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PhoneBook] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PhoneBook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PhoneBook] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PhoneBook] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PhoneBook] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PhoneBook] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PhoneBook] SET ARITHABORT OFF 
GO
ALTER DATABASE [PhoneBook] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PhoneBook] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PhoneBook] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PhoneBook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PhoneBook] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PhoneBook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PhoneBook] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PhoneBook] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PhoneBook] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PhoneBook] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PhoneBook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PhoneBook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PhoneBook] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PhoneBook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PhoneBook] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PhoneBook] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PhoneBook] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PhoneBook] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PhoneBook] SET  MULTI_USER 
GO
ALTER DATABASE [PhoneBook] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PhoneBook] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PhoneBook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PhoneBook] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PhoneBook] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PhoneBook] SET QUERY_STORE = OFF
GO
USE [PhoneBook]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [PhoneBook]
GO
/****** Object:  UserDefinedTableType [dbo].[PhoneNumberList]    Script Date: 20/10/2018 20:42:15 ******/
CREATE TYPE [dbo].[PhoneNumberList] AS TABLE(
	[PHONE_NUMBER] [int] NULL
)
GO
/****** Object:  Table [dbo].[City]    Script Date: 20/10/2018 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_CIty] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 20/10/2018 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](255) NOT NULL,
	[LastName] [nvarchar](225) NOT NULL,
	[Street] [nvarchar](255) NOT NULL,
	[CityID] [int] NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhoneNumber]    Script Date: 20/10/2018 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhoneNumber](
	[PhoneNumberID] [int] IDENTITY(1,1) NOT NULL,
	[PhoneNumber] [nvarchar](255) NOT NULL,
	[ContactID] [int] NOT NULL,
	[PhoneTypeId] [int] NOT NULL,
 CONSTRAINT [PK_PhoneNumber] PRIMARY KEY CLUSTERED 
(
	[PhoneNumberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhoneType]    Script Date: 20/10/2018 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhoneType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PhoneType] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_PhoneType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_City_CityID] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_City_CityID]
GO
ALTER TABLE [dbo].[PhoneNumber]  WITH CHECK ADD  CONSTRAINT [FK_Contact_ContactID] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[PhoneNumber] CHECK CONSTRAINT [FK_Contact_ContactID]
GO
ALTER TABLE [dbo].[PhoneNumber]  WITH CHECK ADD  CONSTRAINT [FK_PhoneType_PhoneTypeId] FOREIGN KEY([PhoneTypeId])
REFERENCES [dbo].[PhoneType] ([Id])
GO
ALTER TABLE [dbo].[PhoneNumber] CHECK CONSTRAINT [FK_PhoneType_PhoneTypeId]
GO
/****** Object:  StoredProcedure [dbo].[AddPhone]    Script Date: 20/10/2018 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddPhone]
	@ContactId		AS INT,
	@PhoneNubmer	AS NVARCHAR(255),
	@PhoneTypeId	AS INT
AS
BEGIN
	INSERT INTO PhoneNumber(ContactID, PhoneNumber, PhoneTypeId)
	VALUES(@ContactId, @PhoneNubmer, @PhoneTypeId)
END
GO
/****** Object:  StoredProcedure [dbo].[autoComplete]    Script Date: 20/10/2018 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[autoComplete]
	@searchString AS NVARCHAR(255)
AS
BEGIN
	SELECT CONCAT( contact.FirstName, ' ' , contact.LastName)
	FROM Contact AS contact
	WHERE contact.FirstName LIKE @searchString OR
		  contact.LastName LIKE @searchString 
END
GO
/****** Object:  StoredProcedure [dbo].[autoCompleteForSearch]    Script Date: 20/10/2018 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[autoCompleteForSearch]
	@searchStringforAutoComplete AS NVARCHAR(255)
AS
BEGIN
	SELECT contact.FirstName
	FROM Contact AS contact
	WHERE contact.FirstName LIKE @searchStringforAutoComplete + '%' OR
		  contact.LastName LIKE @searchStringforAutoComplete + '%' 

END
GO
/****** Object:  StoredProcedure [dbo].[deleteContact]    Script Date: 20/10/2018 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deleteContact]
	@ContactIdToDelete	AS INT
AS
BEGIN

	DELETE phone
	FROM PhoneNumber AS phone
	WHERE phone.ContactID = @ContactIdToDelete

	DELETE contact 
	FROM Contact as contact
	WHERE contact.ContactID = @ContactIdToDelete

END
GO
/****** Object:  StoredProcedure [dbo].[deletePhoneFromContact]    Script Date: 20/10/2018 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deletePhoneFromContact]
	@phonedIdToDelete	AS INT
AS
BEGIN

	DELETE phone
	FROM PhoneNumber AS phone
	WHERE phone.PhoneNumberID = @phonedIdToDelete

END
GO
/****** Object:  StoredProcedure [dbo].[DeletePhonesFromContact]    Script Date: 20/10/2018 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[DeletePhonesFromContact]
  @List AS dbo.PhoneNumberList READONLY
AS
BEGIN
  SET NOCOUNT ON;

  DELETE phonenumber 
	FROM PhoneNumber as phonenumber
	WHERE phonenumber.PhoneNumberID IN (Select * from @List)
  END
GO
/****** Object:  StoredProcedure [dbo].[getAllciteis]    Script Date: 20/10/2018 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[getAllciteis]
		
AS
BEGIN
	SELECT city.CityID AS ID,
		   city.City   AS [Name]
	FROM City AS city
END 
GO
/****** Object:  StoredProcedure [dbo].[getAllPhoneType]    Script Date: 20/10/2018 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getAllPhoneType]
AS
BEGIN
	SELECT	phoneType.Id		AS Id,
			phoneType.PhoneType	AS [Type]
	FROM PhoneType AS phoneType 
END
GO
/****** Object:  StoredProcedure [dbo].[Save]    Script Date: 20/10/2018 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Save]
	@Id				AS INT,
	@FirstName		AS NVARCHAR(255),
	@LastName		AS NVARCHAR(255),
	@Street			AS NVARCHAR(255), 
	@CityId			AS INT,
	@Result			AS INT OUTPUT
AS
BEGIN
	DECLARE @IdToReturn AS INT = @Id
	
	IF(@Id > 0)
	BEGIN
		UPDATE contact
		SET contact.FirstName = @FirstName,
			contact.LastName  = @LastName,
			contact.Street	  = @Street,
			contact.CityID	  = @CityId
		FROM Contact AS contact
		WHERE contact.ContactID = @Id
		
	END
	ELSE
	BEGIN
		INSERT INTO Contact(FirstName, LastName, Street, CityID)
		VALUES(@FirstName, @LastName,  @Street, @CityId)		
		SET @IdToReturn = SCOPE_IDENTITY() -- GET THE Contact Latest Id (After The Insert) 
	END
	
	SET @Result = @IdToReturn
END
GO
/****** Object:  StoredProcedure [dbo].[searchContact]    Script Date: 20/10/2018 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[searchContact] 
	@SearchString	AS NVARCHAR(255) 
AS
BEGIN
	SELECT	contact.ContactID	AS Id,
			contact.FirstName	AS FirstName,
			contact.LastName	AS LastName,
			contact.Street		AS Street,
			
			city.CityID			AS Id,
			city.City			AS [Name],

			phone.PhoneNumberID	AS Id,
			phone.PhoneNumber	AS PhoneNumber,

			phoneType.Id		AS Id,
			phoneType.PhoneType	AS [Type]

			
	FROM Contact	AS contact	
	INNER JOIN PhoneNumber	AS phone  ON phone.ContactID = contact.ContactID
	INNER JOIN PhoneType AS phoneType ON phoneType.Id = phone.PhoneTypeId
	INNER JOIN City	AS city	ON city.CityID = contact.CityID
	WHERE contact.FirstName LIKE '%' + @SearchString + '%' OR
		  contact.LastName LIKE '%' + @SearchString + '%' OR
		  contact.Street LIKE '%' + @SearchString + '%' OR
		  city.City LIKE  '%' + @SearchString + '%' OR
		  phone.PhoneNumber LIKE  '%' + @SearchString + '%' 
	
END 
GO
USE [master]
GO
ALTER DATABASE [PhoneBook] SET  READ_WRITE 
GO
