USE [quanlysanpham]
GO
/****** Object:  Table [dbo].[tbl_reviews]    Script Date: 18/04/2021 2:59:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_reviews](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[rating] [tinyint] NOT NULL,
	[review_body] [varchar](255) NULL,
	[status] [varchar](15) NOT NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_reviews] ADD  DEFAULT ('0') FOR [rating]
GO
ALTER TABLE [dbo].[tbl_reviews] ADD  DEFAULT (NULL) FOR [review_body]
GO
ALTER TABLE [dbo].[tbl_reviews] ADD  DEFAULT ('deactivated') FOR [status]
GO
ALTER TABLE [dbo].[tbl_reviews] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_reviews] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tbl_reviews]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[tbl_customers] ([id])
GO
ALTER TABLE [dbo].[tbl_reviews]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[tbl_products] ([id])
GO
