using System;
using Microsoft.EntityFrameworkCore;
using PepperPalaceSearchToolAPI.Models;


namespace PepperPalaceSearchToolAPI;

/// <summary>
/// The PepperPalaceContext will represent the database context for the application.
/// It will have DbSet properties for each of the models, and it will be used to interact with the database.
/// </summary>

public class PepperPalaceContext: DbContext
{
   
    public PepperPalaceContext(DbContextOptions<PepperPalaceContext> options) : base(options){}

    public DbSet<SauceModel> Sauces {get; set;}
    public DbSet<FoodModel> Foods {get; set;}
    public DbSet<SaucePairingsModel> SaucePairings {get; set;}

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        // Configure the SaucePairingsModel to have a composite key of SauceId and FoodId
        modelBuilder.Entity<SaucePairingsModel>().HasKey(sp => new { sp.SauceId, sp.FoodId });
        modelBuilder.Entity<SauceModel>().HasKey(s => s.SauceId);
        modelBuilder.Entity<FoodModel>().HasKey(f => f.FoodID);
    }

}
