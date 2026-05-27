using System;


namespace PepperPalaceSearchToolAPI.DTOs
{
    public record SaucePairingsDto(
        string SauceName,
        string[] FoodPairing
    );
}