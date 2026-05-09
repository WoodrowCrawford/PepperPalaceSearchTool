using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

//The sauce model will represent the different types of sauces that can be searched for in the Pepper Palace Search Tool. 
//It will have an ID, a name, a type, and a heat level.

[Table("Sauce")]
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


    [Column("pk_sauce_id")]
    public int SauceId {get; set;}

    [Column("sauce_name")]
    public string SauceName {get; set;}

    [Column("sauce_type")]
    public SauceTypeEnum SauceType {get; set;}
    
    [Column("heat_level")]
    public HeatLevelEnum HeatLevel {get; set;}

}
