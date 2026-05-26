using System;
using Microsoft.EntityFrameworkCore;
using PepperPalaceSearchToolAPI.Models;

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
        public async Task<IReadOnlyList<SaucePairingsModel>> GetSaucePairingsAsync()
        {
            return await _db.SaucePairings
                .AsNoTracking()
                .ToListAsync();
                
        }
    }

}