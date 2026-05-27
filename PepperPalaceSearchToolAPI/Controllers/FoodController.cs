using Microsoft.AspNetCore.Mvc;
using PepperPalaceSearchToolAPI.Models;
using PepperPalaceSearchToolAPI.Services;

namespace PepperPalaceSearchToolAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FoodController : ControllerBase
    {
        //A private readonly used to get a reference to the FoodService class
        private readonly FoodService _foodService;

        public FoodController(FoodService foodService)
        {
            _foodService = foodService;
        }

        // This endpoint will return a list of all foods in the database.
        [HttpGet]
        public async Task<ActionResult<IReadOnlyList<FoodModel>>> GetFoods()
        {
            var foods = await _foodService.GetFoodsAsync();
            return Ok(foods);
        }



        // This endpoint will return a single food by its ID.
        [HttpGet("{id}")]
        public async Task<ActionResult<IReadOnlyList<FoodModel>>> GetFoodById(int id)
        {
            var food = await _foodService.GetFoodByIdAsync(id);
            if (food == null)
            {
                return NotFound();
            }
            return Ok(food);
        }


        [HttpGet("search")]
        public async Task<ActionResult<IReadOnlyList<FoodModel>>> SearchFoods([FromQuery] string name)
        {
            var foods = await _foodService.SearchFoodsAsync(name);
            return Ok(foods);
        }
    }
}
