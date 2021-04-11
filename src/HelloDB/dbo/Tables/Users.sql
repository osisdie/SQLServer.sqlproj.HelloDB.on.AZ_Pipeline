CREATE TABLE [dbo].[Users] (
    [UserId]      VARCHAR (100)   NOT NULL,
    [Email]       NVARCHAR (100)  NOT NULL,
    [Name]        NVARCHAR (100)  NOT NULL,
    [Description] NVARCHAR (1000) NULL,
    [Status]      NVARCHAR (100)  NOT NULL,
    [UpdatedAt]   DATETIME2 (7)   CONSTRAINT [DF_Users_UpdatedAt] DEFAULT (getutcdate()) NOT NULL,
    [UpdatedBy]   NVARCHAR (100)  NULL,
    [CreatedAt]   DATETIME2 (7)   CONSTRAINT [DF_Users_CreatedAt] DEFAULT (getutcdate()) NOT NULL,
    [CreatedBy]   NVARCHAR (100)  NOT NULL,
    [_deleted]    BIT             CONSTRAINT [DF_Users__deleted] DEFAULT ((0)) NOT NULL,
    [_ts]         DATETIME2 (7)   CONSTRAINT [DF_Users__ts] DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([UserId] DESC)
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Users_Email]
    ON [dbo].[Users]([Email] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Users_ts]
    ON [dbo].[Users]([_ts] DESC);


GO
CREATE NONCLUSTERED INDEX [IX_Users_CreatedAt]
    ON [dbo].[Users]([CreatedAt] DESC);


GO
CREATE NONCLUSTERED INDEX [IX_Users_UpdatedAt]
    ON [dbo].[Users]([UpdatedAt] DESC);


GO
CREATE NONCLUSTERED INDEX [IX_Users_Status]
    ON [dbo].[Users]([Status] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Users_Name]
    ON [dbo].[Users]([Name] ASC);

