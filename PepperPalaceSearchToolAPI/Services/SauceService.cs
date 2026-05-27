using Microsoft.EntityFrameworkCore;
using PepperPalaceSearchToolAPI.Models.DTOs;
namespace PepperPalaceSearchToolAPI.Services;

//The sauce service will handle all sauce logic, like adding, updating, and deleting sauces from the database.


public class SauceService
{
    private readonly PepperPalaceContext _db;

    public SauceService(PepperPalaceContext db)
    {
        _db = db;
    }
    

    //This task will return a list of all sauces in the database, ordered by name.
    public async Task<List<SauceDto>?> GetSaucesAsync()
    {
        return await _db.Sauces
            .AsNoTracking()
            .OrderBy(s => s.SauceName)
            .Where(s => s.SauceName != null)
            .Select(s => new SauceDto(
                s.SauceName,
                s.SauceType.ToString(),
                s.HeatLevel.ToString()))
            .ToListAsync();
    }


    //This task will return a single sauce by its ID.
    public async Task<SauceDto?> GetSauceByIdAsync(int id)
    {
        return await _db.Sauces
            .AsNoTracking()
            .Where(s => s.SauceId == id)
            .Select(s => new SauceDto(
                s.SauceName,
                s.SauceType.ToString(),
                s.HeatLevel.ToString()))
            .FirstOrDefaultAsync();
    }

    //This task will return a list of sauces that match the sauce type
    public async Task<List<SauceDto>> SearchSaucesAsync(string sauceType)
    {
        return await _db.Sauces
            .AsNoTracking()
            .Where(s => s.SauceType.ToString().Contains(sauceType))
            .Select(s => new SauceDto(
                s.SauceName,
                s.SauceType.ToString(),
                s.HeatLevel.ToString()))
            .ToListAsync();
    }

    //This task will return a list of sauces that match the heat level
    public async Task<List<SauceDto>> SearchSaucesByHeatLevelAsync(SauceModel.HeatLevelEnum heatLevel)
    {
        return await _db.Sauces
            .AsNoTracking()
            .Where(s => s.HeatLevel == heatLevel)
            .Select(s => new SauceDto(
                s.SauceName,
                s.SauceType.ToString(),
                s.HeatLevel.ToString()))
            .ToListAsync();

    }
}
