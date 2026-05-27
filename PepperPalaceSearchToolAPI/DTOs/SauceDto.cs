using System;
using Microsoft.EntityFrameworkCore;

namespace PepperPalaceSearchToolAPI.Models.DTOs
{
    //A record that represents a sauce in the database. It will have a name, type, and heat level.
    public record SauceDto(
        string SauceName,
        string SauceType,
        string HeatLevel
    );
    
}