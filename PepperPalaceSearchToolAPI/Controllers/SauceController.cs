using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace PepperPalaceSearchToolAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SauceController : ControllerBase
    {
        

        [HttpGet]
        public ActionResult GetSauces()
        {
            var sauces = Services.SauceService.GetSauces();
            return Ok(sauces);

        }
    }
}
