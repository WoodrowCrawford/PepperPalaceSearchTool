using System;

namespace PepperPalaceSearchToolAPI.Services;

//The sauce service will handle all sauce logic, like adding, updating, and deleting sauces from the database.


public static class SauceService
{


    public static List<SauceModel> Sauces {get; set;} = new List<SauceModel>{};

    public static List<SauceModel> GetSauces() => Sauces;
}
