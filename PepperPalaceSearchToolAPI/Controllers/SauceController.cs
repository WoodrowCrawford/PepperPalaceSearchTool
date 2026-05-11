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
        


        // This endpoint will create a new sauce in the database.
        [HttpPost]
        public async Task<ActionResult> CreateSauce(PepperPalaceContext db, SauceModel sauce)
        {
            db.Sauces.Add(sauce);
            await db.SaveChangesAsync();

            //check to see if the name of the sauce is already in the database, if it is return a bad request
            var existingSauce = await db.Sauces.FirstOrDefaultAsync(s => s.SauceName == sauce.SauceName);
            if (existingSauce != null)
            {
                return BadRequest("A sauce with that name already exists.");
            }

            return CreatedAtAction(nameof(GetSauceById), new { id = sauce.SauceId }, sauce);
        }


        [HttpDelete("{id}")]
        public async Task<ActionResult> DeleteSauce(PepperPalaceContext db, int id)
        {
            //find the sauce in the database
            var sauce = await db.Sauces.FindAsync(id);

            //if the sauce is not found, return a not found response
            if (sauce == null)
            {
                return NotFound();
            }

            //if the sauce is found, remove it from the database and save changes
            db.Sauces.Remove(sauce);

            //save changes to the database
            await db.SaveChangesAsync();
            return NoContent();
        }
    }
}

