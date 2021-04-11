CREATE TABLE [dbo].[Tags] (
    [TagGroupName] NVARCHAR (100)  NULL,
    [TagName]      NVARCHAR (100)  NOT NULL,
    [Description]  NVARCHAR (1000) NULL,
    [Status]       NVARCHAR (100)  NOT NULL,
    [UpdatedAt]    DATETIME2 (7)   CONSTRAINT [DF_Tags_UpdatedAt] DEFAULT (getutcdate()) NOT NULL,
    [UpdatedBy]    NVARCHAR (100)  NULL,
    [CreatedAt]    DATETIME2 (7)   CONSTRAINT [DF_Tags_CreatedAt] DEFAULT (getutcdate()) NOT NULL,
    [CreatedBy]    NVARCHAR (100)  NOT NULL,
    [_ts]          DATETIME2 (7)   CONSTRAINT [DF_Tags__ts] DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED ([TagName] ASC),
    CONSTRAINT [FK_Tags_TagGroups] FOREIGN KEY ([TagGroupName]) REFERENCES [dbo].[TagGroups] ([TagGroupName]) ON DELETE SET NULL ON UPDATE CASCADE
);






GO
CREATE NONCLUSTERED INDEX [IX_Tags_ts]
    ON [dbo].[Tags]([_ts] DESC);


GO
CREATE NONCLUSTERED INDEX [IX_Tags_Status]
    ON [dbo].[Tags]([Status] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Tags_UpdatedAt]
    ON [dbo].[Tags]([UpdatedAt] DESC);


GO
CREATE NONCLUSTERED INDEX [IX_Tags_CreatedAt]
    ON [dbo].[Tags]([CreatedAt] DESC);

