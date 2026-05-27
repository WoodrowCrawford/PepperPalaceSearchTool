using Microsoft.EntityFrameworkCore;
using PepperPalaceSearchToolAPI.DTOs;

namespace PepperPalaceSearchToolAPI.Services
{
    public class SaucePairingsService
    {
        private readonly PepperPalaceContext _db;

        public SaucePairingsService(PepperPalaceContext db)
        {
            _db = db;
        }

        //This task will return a list of all sauce pairings in the database.
        public async Task<IReadOnlyList<SaucePairingsDto>> GetSaucePairingsAsync()
        {
            // Use a LINQ query to join the SaucePairings, Sauces, and Foods tables and select the relevant data
            var rows = await (
                from sp in _db.SaucePairings.AsNoTracking()                         //the base table that contains the sauce and food pairings
                join s in _db.Sauces.AsNoTracking() on sp.SauceId equals s.SauceId  //join the Sauces table to get the sauce name
                join f in _db.Foods.AsNoTracking() on sp.FoodId equals f.FoodId     //join the Foods table to get the food name
                select new
                {
                    SauceName = s.SauceName,   //select the sauce name
                    FoodName = f.FoodName      //select the food name
                }
            ).ToListAsync();

            // Group the results by sauce name and create a SaucePairingsDto for each group
            return rows
                .GroupBy(x => x.SauceName)
                .Select(g => new SaucePairingsDto(
                    g.Key,
                    g.Select(x => x.FoodName).Distinct().ToArray()
                ))
                .ToList();
        }

        
        //This task will return a list of sauce pairings that match the sauce type
        public async Task<IReadOnlyList<SaucePairingsDto>> SearchSaucePairings(string sauceType)
        {
            // Use a LINQ query to join the SaucePairings, Sauces, and Foods tables and select the relevant data
            var rows = await (
                from sp in _db.SaucePairings.AsNoTracking()                            //the base table that contains the sauce and food pairings  
                join s in _db.Sauces.AsNoTracking() on sp.SauceId equals s.SauceId     //join the Sauces table to get the sauce name
                join f in _db.Foods.AsNoTracking() on sp.FoodId equals f.FoodId        //join the Foods table to get the food name
                where s.SauceType.ToString().Contains(sauceType)                       //filter the results to only include sauces that match the sauce type
                select new
                {
                    SauceName = s.SauceName,    //select the sauce name
                    FoodName = f.FoodName       //select the food name
                }
            ).ToListAsync();

            // Group the results by sauce name and create a SaucePairingsDto for each group
            return rows
                .GroupBy(x => x.SauceName)
                .Select(g => new SaucePairingsDto(
                    g.Key,
                    g.Select(x => x.FoodName).Distinct().ToArray()
                ))
                .ToList();
        }
    }

}