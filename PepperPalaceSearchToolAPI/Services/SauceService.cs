using System;
using Microsoft.EntityFrameworkCore;
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
    public async Task<IReadOnlyList<SauceModel>> GetSaucesAsync()
    {
        return await _db.Sauces
            .AsNoTracking()
            .OrderBy(s => s.SauceName)
            .ToListAsync();
    }


    //This task will return a single sauce by its ID.
    public async Task<SauceModel?> GetSauceByIdAsync(int id)
    {
        return await _db.Sauces
            .AsNoTracking()
            .FirstOrDefaultAsync(s => s.SauceId == id);
    }
}
