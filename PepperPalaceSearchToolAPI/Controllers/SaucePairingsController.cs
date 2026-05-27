using System;
using Microsoft.AspNetCore.Mvc;
using PepperPalaceSearchToolAPI.DTOs;
using PepperPalaceSearchToolAPI.Services;

namespace PepperPalaceSearchToolAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class SaucePairingsController : ControllerBase
    {
        readonly SaucePairingsService _saucePairingsService;

        public SaucePairingsController(SaucePairingsService saucePairingsService)
        {
            _saucePairingsService = saucePairingsService;
        }


        //this task will return a list of all sauce pairings in the database.
        [HttpGet("all")]
        public async Task<ActionResult<IReadOnlyList<SaucePairingsDto?>>> GetSaucePairings()
        {
            var saucePairings = await _saucePairingsService.GetSaucePairingsAsync();
            if (saucePairings == null || !saucePairings.Any())
            {
                return NotFound("No sauce pairings found.");
            }

            return Ok(saucePairings.Select(sp => $" Sauce name:{sp.SauceName} can be paired with the following foods: {string.Join(", ", sp.FoodPairing)}"));
        }

        //this task will return a list of sauce pairings that match the sauce type
        [HttpGet("getSaucePairingsBySauceType")]
        public async Task<ActionResult<IReadOnlyList<SaucePairingsDto?>>> SearchSaucePairings([FromQuery] string sauceType)
        {
            var saucePairings = await _saucePairingsService.SearchSaucePairings(sauceType);
            if (saucePairings == null || !saucePairings.Any())
            {
                return NotFound($"No sauce pairings found for sauce type: {sauceType}");
            }

            return Ok(saucePairings.Select(sp => $" Sauce name:{sp.SauceName} can be paired with the following foods: {string.Join(", ", sp.FoodPairing)}"));
        }
        
    }
}