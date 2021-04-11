CREATE TABLE [dbo].[TagGroups] (
    [TagGroupName] NVARCHAR (100)  NOT NULL,
    [Description]  NVARCHAR (1000) NULL,
    [Status]       NVARCHAR (100)  NOT NULL,
    [UpdatedAt]    DATETIME2 (7)   CONSTRAINT [DF_TagGroups_UpdatedAt] DEFAULT (getutcdate()) NOT NULL,
    [UpdatedBy]    NVARCHAR (100)  NULL,
    [CreatedAt]    DATETIME2 (7)   CONSTRAINT [DF_TagGroups_CreatedAt] DEFAULT (getutcdate()) NOT NULL,
    [CreatedBy]    NVARCHAR (100)  NOT NULL,
    [_ts]          DATETIME2 (7)   CONSTRAINT [DF_TagGroups__ts] DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [PK_TagGroups] PRIMARY KEY CLUSTERED ([TagGroupName] ASC)
);






GO
CREATE NONCLUSTERED INDEX [IX_TagGroups_ts]
    ON [dbo].[TagGroups]([_ts] DESC);


GO
CREATE NONCLUSTERED INDEX [IX_TagGroups_CreatedAt]
    ON [dbo].[TagGroups]([CreatedAt] DESC);


GO
CREATE NONCLUSTERED INDEX [IX_TagGroups_UpdatedAt]
    ON [dbo].[TagGroups]([UpdatedAt] DESC);


GO
CREATE NONCLUSTERED INDEX [IX_TagGroups_Status]
    ON [dbo].[TagGroups]([Status] ASC);

