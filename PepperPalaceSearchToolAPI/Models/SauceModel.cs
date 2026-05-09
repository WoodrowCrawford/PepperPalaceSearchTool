using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;


public class SauceModel
{   
    //an enum containing the different types of sauces
    public enum SauceTypeEnum
    {   
        Salsa,
        Seasoning,
        HotSauce,
        WingSauce,
        BBQ,
        Condiments,
        Sauce
    }

    //an enum containing the different heat levels of sauces
    public enum HeatLevelEnum
    {
        None,
        Mild,
        Medium,
        Hot,
        XHot,
        Wild
    }


    public int SauceId {get; set;}
    public string SauceName {get; set;}
    public SauceTypeEnum SauceType {get; set;}
    public HeatLevelEnum HeatLevel {get; set;}

}
