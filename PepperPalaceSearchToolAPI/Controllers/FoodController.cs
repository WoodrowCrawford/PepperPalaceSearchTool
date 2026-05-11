using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PepperPalaceSearchToolAPI.Models;

namespace PepperPalaceSearchToolAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FoodController : ControllerBase
    {
        // This endpoint will return a list of all foods in the database.
        [HttpGet]
        public async Task<ActionResult<IEnumerable<FoodModel>>> GetFoods(PepperPalaceContext db)
        {
            var foods = await db.Foods.ToListAsync();
            return Ok(foods);
        }



        // This endpoint will return a single food by its ID.
        [HttpGet("{id}")]
        public async Task<ActionResult<FoodModel>> GetFoodById(PepperPalaceContext db, int id)
        {
            var food = await db.Foods.FindAsync(id);
            if (food == null)
            {
                return NotFound();
            }
            return Ok(food);
        }


        [HttpGet("search")]
        public async Task<ActionResult<IEnumerable<FoodModel>>> SearchFoods(PepperPalaceContext db, [FromQuery] string name)
        {
            var foods = await db.Foods.Where(f => f.FoodName.Contains(name)).ToListAsync();
            return Ok(foods);
        }
    }
}
