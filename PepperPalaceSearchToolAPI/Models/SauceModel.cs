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
        Salsa, //1
        Seasoning, //2
        HotSauce, //3
        WingSauce, //4
        BBQ, //5
        Condiments, //6
        Sauce //7
    }

    //an enum containing the different heat levels of sauces
    public enum HeatLevelEnum
    {
        None, //1
        Mild, //2
        Medium, //3
        Hot, //4
        X_Hot, //5
        Wild //6
    }


    [Column("pk_sauce_id")]
    public int SauceId {get;}

    [Column("sauce_name")]
    public string SauceName {get; set;}

    [Column("sauce_type")]
    public SauceTypeEnum SauceType {get; set;}

    [Column("heat_level")]
    public HeatLevelEnum HeatLevel {get; set;}

}
