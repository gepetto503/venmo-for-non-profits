USE [non_profit_app]
GO
/****** Object:  Table [dbo].[banks]    Script Date: 6/22/2017 1:58:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[banks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[balance] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[categories]    Script Date: 6/22/2017 1:58:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[organizations]    Script Date: 6/22/2017 1:58:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[organizations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[website] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[bio] [text] NULL,
	[large_bio] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[organizations_banks_users]    Script Date: 6/22/2017 1:58:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[organizations_banks_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[bank_id] [int] NULL,
	[organization_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[organizations_categories]    Script Date: 6/22/2017 1:58:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[organizations_categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[organization_id] [int] NULL,
	[category_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[organizations_users]    Script Date: 6/22/2017 1:58:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[organizations_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[organization_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 6/22/2017 1:58:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[bio] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[organizations] ON 

INSERT [dbo].[organizations] ([id], [name], [website], [email], [bio], [large_bio]) VALUES (1, N'Morpheus Youth Project', N'www.morpheusyouth.org', N'info@morpheusyouth.org', N'Transformation through arts and awareness. The purpose of the Morpheus Youth Project is to create an accessible, safe and respectful environment that encourages positive growth and provides creative opportunities through the arts and humanities', N'Transformation through arts and awareness. The purpose of the Morpheus Youth Project is to create an accessible, safe and respectful environment that encourages positive growth and provides creative opportunities through the arts and humanities.  We believe that by investing in our youth through education and encouraging the development of self-awareness, we will provide viable tools and positive options for young people as they mature.  We believe that every young person deserves the opportunity to develop into a positive and productive human being and to potentially become a community mentor for those who follow.  By building confidence and instilling self-awareness, the youth in our programs develop the tools to transform their lives, which may have been unhealthy and self-destructive.')
INSERT [dbo].[organizations] ([id], [name], [website], [email], [bio], [large_bio]) VALUES (2, N'Portland Street Art Alliance', N'www.pdxstreetart.org', N'info@pdxstreetart.org', N'PSAA offers a range of professional and educational services, including mural painting, event signage, live event paintings, auto painting, graphic design, wild pasting, stencil marketing, 3D sidewalk chalk art, customized tours, and more.
', N'Portland is known for its quirky DIY mentality, progressive urban planning, bicycle-friendliness, and livable neighborhoods. Some of Portland''s best street art can be found in its major cultural centers like Alberta, Belmont, Hawthorne, Central Eastside, and Mississippi. In Portland''s neighborhoods you can find art by internationally renowned artists, local legends, and anonymous citizens. Below are some resources to find street art in Portland, network in our community, and learn about its history. But this just scratches the surface of the resources and art out there to discover, so put on your walking shoes, hop on your bike, and explore the streets and hidden spaces of Portland! Street art is always changing, so you never know what''s around the next corner!')
INSERT [dbo].[organizations] ([id], [name], [website], [email], [bio], [large_bio]) VALUES (3, N'Portland Homeless Family Solutions', N'www.pdxhfs.org', N'info@pdxhfs.org', N'Portland Homeless Family Solutions empowers homeless families with children to get back into housing and to stay there long-term.
', N'Portland Homeless Family Solutions empowers homeless families with children to get back into housing and to stay there long-term.  We envision a community where no family experiences homelessness and where every family receives the support and compassion necessary to thrive.
')
INSERT [dbo].[organizations] ([id], [name], [website], [email], [bio], [large_bio]) VALUES (4, N'Pixie Project', N'www.pixieproject.org', N'info@pixieproject.org', N'The Pixie Project is a non-profit animal adoption center and rescue located in the heart of Portland, Oregon.', N'At Pixie, we make animal adoption and rescue a fun, family friendly, and positive experience. Our dedicated staff focuses on finding life-long matches between pet and adopter and takes a hands-on, personal approach to each and every adoption.
Pixie is committed to keeping pets healthy, happy, and in their homes for life. Our on-site clinic offers low-income and homeless pet owners access to vital veterinary care and low-cost spay/neuter surgeries, keeping pets out of shelters and saving lives.')
INSERT [dbo].[organizations] ([id], [name], [website], [email], [bio], [large_bio]) VALUES (5, N'Friends of Trees', N'www.friendsoftrees.org', N'info@friendsoftrees.org', N'Friends of Trees empowers people to improve the natural world around them through a simple solution: Planting Trees. Together.', N'Friends of Trees was founded in 1989 by a local community member who loved trees and started planting them in Portland neighborhoods. Today, Friends of Trees is a nationally recognized, regional leader in improving the urban tree canopy and restoring sensitive natural areas—through programs delivered by thousands of volunteers. Friends of Trees greens our region while building community.')
INSERT [dbo].[organizations] ([id], [name], [website], [email], [bio], [large_bio]) VALUES (6, N'Unite Oregon', N'www.uniteoregon.org', N'info@uniteoregon.org', N'Led by people of color, immigrants and refugees, rural communities, and people experiencing poverty, we work across Oregon to build a unified intercultural movement for justice.', N'Our Values
	•	Inclusivity: We believe in creating welcoming, inclusive spaces that make room for all people to be their full, authentic selves.
	•	Racial Justice: Because of the United States'' history of racism, we believe in putting racial justice front and center in our work.
	•	Social Justice: We believe in sharing power, opportunities, and resources to ensure equitable participation and representation in an increasingly multicultural society.
	•	Empowerment: We believe all people have the potential to become leaders and agents of change.
	•	Stewardship: We believe in stewardship and respect for the environment, both within our own organization and in our broader communities.
	•	Respect: We believe in the fundamental human dignity of all people.
	•	Transparency: We commit to organizational transparency and accountability to our members and to the communities we organize.
	•	Leadership: We believe that the people most affected by injustice should be the individuals and communities leading and advocating for solutions.
	•	Equity: We examine all issues through perspectives of race, economic status, immigration status, and gender to promote equity and inclusion of all.
	•	Vibrancy: We build strong, vibrant connections through the celebration of families, cultures, and communities. We believe that justice is a journey, and our creation of community is what sustains us on that journey.')
SET IDENTITY_INSERT [dbo].[organizations] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [user_name], [password], [name], [email], [bio]) VALUES (2, N'', N'', N'', N'', N'')
INSERT [dbo].[users] ([id], [user_name], [password], [name], [email], [bio]) VALUES (3, N'Ethan', N'password', N'Ethan ', N'email', N'')
SET IDENTITY_INSERT [dbo].[users] OFF
