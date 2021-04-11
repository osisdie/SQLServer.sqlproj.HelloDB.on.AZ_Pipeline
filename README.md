## Prerequisite

- [Download SQL Server Express/Developer Edition](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
  - And the latest Visual Studio / VS Code
    
## Features
---
- Use Built-In Microsoft sqlproj
- Integrate with AZ pipeline for auto build and auto git tagging

## Projects
---

**HElloDB.database** is the primary project wraps all db objects
- dbo: Primary schema
  - Table: all tables
  - Trigger: all triggers
  - View: all views
  - UDF: all user defined functions
  
- security: Access and permission
  - login: all logins
  - user: all users

## Versioning
Whenever any feature, bugfix or necessary to rebuild a new image, make sure you or your builder modify **.version** and **ChangeLog.md** files. 
- Version File: `./deploy/.version`
- Version Format: `#.#.#.#-###`
  - [major version].[minor version].[build version].[revision version]  (ex: `1.0.0.100`)
  - Adding AZ pipeline's build-id in the suffix
    - #**.**#**.**#**-**###  (ex: `1.0.0.0-100`)

- ChangeLog File: `./ChangeLog.md`
- ChangeLog Format: Markdown with date and version number, such as
  ```markdown
  ### 2021-04-01
  * ** HelloDB.database (1.0.0)
    * Created
  ```

- Git Version Tags: `HelloDB/v1.0.0.0-100`


