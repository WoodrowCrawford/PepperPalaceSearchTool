using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PepperPalaceSearchToolAPI.Services;

namespace PepperPalaceSearchToolAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SauceController : ControllerBase
    {
        //A private readonly used to get a reference to the SauceService class
        private readonly SauceService _sauceService;

        
        public SauceController(SauceService sauceService)
        {
            _sauceService = sauceService;
        }

        // This endpoint will return a list of all sauces in the database.
        [HttpGet]
        public async Task<ActionResult<IReadOnlyList<SauceModel>>> GetSauces()
        {
            var sauces = await _sauceService.GetSaucesAsync();
            return Ok(sauces);
        }


        // This endpoint will return a single sauce by its ID.
        [HttpGet("{id}")]
        public async Task<ActionResult<IReadOnlyList<SauceModel>>> GetSauceById(int id)
        {
            var sauce = await _sauceService.GetSauceByIdAsync(id);
            if (sauce == null)
            {
                return NotFound();
            }
            return Ok(sauce);
        }
    }
}

