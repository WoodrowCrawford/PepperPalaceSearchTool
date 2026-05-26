using Microsoft.EntityFrameworkCore;
using PepperPalaceSearchToolAPI.Models;

namespace PepperPalaceSearchToolAPI.Services;

public class FoodService
{
	private readonly PepperPalaceContext _db;

	public FoodService(PepperPalaceContext db)
	{
		_db = db;
	}


    //This task will return a list of all foods in the database, ordered by name.
	public async Task<IReadOnlyList<FoodModel>> GetFoodsAsync()
	{
		return await _db.Foods
			.AsNoTracking()
			.OrderBy(f => f.FoodName)
			.ToListAsync();
	}


    //This task will return a single food by its ID.
    public async Task<IReadOnlyList<FoodModel?>> GetFoodByIdAsync(int id)
    {
        return await _db.Foods
            .AsNoTracking()
            .Where(f => f.FoodID == id)
            .ToListAsync();
    }

    //This task will return a list of foods that match the search term.
    public async Task<IReadOnlyList<FoodModel>> SearchFoodsAsync(string name)
    {
        return await _db.Foods
            .AsNoTracking()
            .Where(f => f.FoodName.Contains(name))
            .ToListAsync();
    }
}
