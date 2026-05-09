using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace PepperPalaceSearchToolAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SauceController : ControllerBase
    {
        

        [HttpGet]
        // This endpoint will return a list of all sauces in the database.
        public async Task<ActionResult> GetSauces(PepperPalaceContext db)
        {
            var sauces = await db.Sauces.ToListAsync();
            return Ok(sauces);
        }

        [HttpPost]
        public async Task<ActionResult> CreateSauce(PepperPalaceContext db, SauceModel sauce)
        {
            db.Sauces.Add(sauce);
            await db.SaveChangesAsync();
            return CreatedAtAction(nameof(GetSauces), new { id = sauce.SauceId }, sauce);
        }
    }
}
