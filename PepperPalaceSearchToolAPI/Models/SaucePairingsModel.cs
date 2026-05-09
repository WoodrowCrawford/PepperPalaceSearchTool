using System;

namespace PepperPalaceSearchToolAPI.Models;

//The sauce pairings model will represent the relationship between sauces and foods. It will have a sauce ID and a food ID.

public class SaucePairingsModel
{
    
    public int SauceId {get; set;}
    public int FoodId {get; set;}
}
