USE [quanlysanpham]
GO
/****** Object:  Table [dbo].[tbl_orders]    Script Date: 18/04/2021 2:59:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[amount] [decimal](6, 2) NOT NULL,
	[status] [varchar](15) NULL,
	[created_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_orders] ADD  DEFAULT ('pending') FOR [status]
GO
ALTER TABLE [dbo].[tbl_orders] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_orders]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[tbl_customers] ([id])
GO
