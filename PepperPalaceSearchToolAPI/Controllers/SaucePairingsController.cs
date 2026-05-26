using System;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PepperPalaceSearchToolAPI.Models;
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



        [HttpGet]
        public async Task<ActionResult<IReadOnlyList<SaucePairingsModel>>> GetSaucePairings()
        {
            var saucePairings = await _saucePairingsService.GetSaucePairingsAsync();
            return Ok(saucePairings);
        }
    }
}