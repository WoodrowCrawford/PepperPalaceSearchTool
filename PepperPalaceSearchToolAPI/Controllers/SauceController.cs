using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PepperPalaceSearchToolAPI.Models.DTOs;
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


        // This endpoint will return a single sauce by its ID.
        [HttpGet("{id}")]
        public async Task<ActionResult<SauceDto?>> GetSauceById(int id)
        {
            var sauce = await _sauceService.GetSauceByIdAsync(id);
            if (sauce == null)
            {
                return NotFound("Sauce not found.");
            }
            
            return Ok($" Sauce name:{sauce.SauceName}, Sauce type:{sauce.SauceType}, Heat level:{sauce.HeatLevel}");
        }


        // This endpoint will return a list of all sauces in the database.
        [HttpGet("all")]
        public async Task<ActionResult<IEnumerable<SauceDto>?>> GetSauces()
        {
            var sauces = await _sauceService.GetSaucesAsync();

            if (sauces == null || !sauces.Any())
            {
                return NotFound("No sauces found.");
            }

            return Ok(sauces.Select(s => $" Sauce name:{s.SauceName}, Sauce type:{s.SauceType}, Heat level:{s.HeatLevel}"));
        }


        

        // This endpoint will return a list of sauces that match the sauce type
        [HttpGet("searchBySauceType")]
        public async Task<ActionResult<IEnumerable<SauceDto?>>> SearchSauces([FromQuery] string sauceType)
        {
            var sauces = await _sauceService.SearchSaucesAsync(sauceType);

            if (sauces == null || !sauces.Any())
            {
                return NotFound("No sauces found.");
            }

            return Ok(sauces.Select(s => $" Sauce name:{s.SauceName}"));
        }



        // This endpoint will return a list of sauces that match the heat level
        [HttpGet("searchByHeatLevel")]
        public async Task<ActionResult<IEnumerable<SauceDto?>>> SearchSaucesByHeatLevel([FromQuery] string heatLevel)
        {
            // Check if the provided heat level is valid
            if (!Enum.TryParse<SauceModel.HeatLevelEnum>(heatLevel, true, out var parsedHeatLevel))
            {
                return BadRequest("Invalid heat level.");
            }

            var sauces = await _sauceService.SearchSaucesByHeatLevelAsync(parsedHeatLevel);

            if (sauces == null || !sauces.Any())
            {
                return NotFound("No sauces found.");
            }

            return Ok(sauces.Select(s => $" Sauce name:{s.SauceName}"));
        }
    
    }

}

