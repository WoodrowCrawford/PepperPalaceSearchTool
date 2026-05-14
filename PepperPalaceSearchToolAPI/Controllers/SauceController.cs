using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace PepperPalaceSearchToolAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SauceController : ControllerBase
    {
         // This endpoint will return a list of all sauces in the database.
        [HttpGet]
        public async Task<ActionResult> GetSauces(PepperPalaceContext db)
        {
            var sauces = await db.Sauces.ToListAsync();
            return Ok(sauces);
        }


        // This endpoint will return a single sauce by its ID.
        [HttpGet("{id}")]
        public async Task<ActionResult> GetSauceById(PepperPalaceContext db, int id)
        {
            var sauce = await db.Sauces.FindAsync(id);
            if (sauce == null)
            {
                return NotFound();
            }
            return Ok(sauce);
        }
    }
}

