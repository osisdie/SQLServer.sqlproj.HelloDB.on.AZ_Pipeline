CREATE TABLE [dbo].[Users_Roles_Map] (
    [UserId]    VARCHAR (100)  NOT NULL,
    [TagName]   NVARCHAR (100) NOT NULL,
    [CreatedAt] DATETIME2 (7)  CONSTRAINT [DF_Users_Roles_Map_CreatedAt] DEFAULT (getutcdate()) NOT NULL,
    [CreatedBy] NVARCHAR (100) NOT NULL,
    [_ts]       DATETIME2 (7)  CONSTRAINT [DF_Users_Roles_Map__ts] DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [PK_Users_Roles_Map] PRIMARY KEY CLUSTERED ([UserId] ASC, [TagName] ASC),
    CONSTRAINT [FK_Users_Roles_Map_Tags] FOREIGN KEY ([TagName]) REFERENCES [dbo].[Tags] ([TagName]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Users_Roles_Map_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE CASCADE ON UPDATE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_Users_Roles_Map_ts]
    ON [dbo].[Users_Roles_Map]([_ts] DESC);


GO
CREATE NONCLUSTERED INDEX [IX_Users_Roles_Map_CreatedAt]
    ON [dbo].[Users_Roles_Map]([CreatedAt] DESC);

