using System;

namespace PepperPalaceSearchToolAPI.Services;

//The sauce service will handle all sauce logic, like adding, updating, and deleting sauces from the database.


public static class SauceService
{
    public static List<SauceModel> Sauces {get; set;} = new List<SauceModel>
    {
        new SauceModel {SauceId = 1, SauceName = "Salsa Verde", SauceType = SauceModel.SauceTypeEnum.Salsa, HeatLevel = SauceModel.HeatLevelEnum.Medium},
        new SauceModel {SauceId = 2, SauceName = "Buffalo Wing Sauce", SauceType = SauceModel.SauceTypeEnum.WingSauce, HeatLevel = SauceModel.HeatLevelEnum.Hot},
        new SauceModel {SauceId = 3, SauceName = "BBQ Sauce", SauceType = SauceModel.SauceTypeEnum.BBQ, HeatLevel = SauceModel.HeatLevelEnum.Mild}
    };

    public static List<SauceModel> GetSauces() => Sauces;
}
