# PepperPalaceSearchTool
A food pairing search tool for Pepper Palace, currently in development. This  is an ASP.NET Core web app used to search for hot sauces and food pairings at Pepper Palace. Includes a  custom made MySQL Database used to fetch items.

## This project demonstrates:
- Building a RESTful Web API with ASP.NET Core
- Database design with MySQL, including many-to-many relationships using junction tables
- Entity Framework Core for database access and ORM
- Dependency Injection and clean separation of concerns
- Swagger / OpenAPI integration
- Full CRUD operations across multiple related entities

## Tech Stack
- ASP.NET Core (.NET 9)
- C#
- MySQL
- Entity Framework Core
- Pomelo MySQL Provider
- Swagger / OpenAPI
- DbSchema (database design)


## Getting Started

### Prerequisites
- .NET SDK 9
- MySQL Server
- VS Code or any C# editor

### Setup
1. Clone the repository
2. Copy `appsettings.Example.json` to `appsettings.json`
3. Add your MySQL connection string to `appsettings.json`
4. Run database migrations or apply the schema from `/Database/PepperPalaceTestDB.sql`
5. Run the API:

   

## Purpose
As a salesperson at Pepper Palace, I learned that I struggled a little when it came to selling products. I created this food search tool to help me find what foods go with what sauce. This can be a perfect tool for others to use to get more familiar with products, and  can also be used as a training tool for other employees! 

***Note: This is just a pure passion project I made to help increase sales output, as well as learn full-stack with database integrations. It is not an official tool created by Pepper Palace!***


