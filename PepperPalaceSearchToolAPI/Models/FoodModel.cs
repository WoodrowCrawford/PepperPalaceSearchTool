using System;
using System.ComponentModel.DataAnnotations.Schema;
using PepperPalaceSearchToolAPI.Services;

namespace PepperPalaceSearchToolAPI.Models;

//The food model will represent the different types of food that can be paired with sauces. It will have an ID and a name.

[Table("food")]
public class FoodModel
{
    [Column("pk_food_id")]
    public int FoodID {get;}

    [Column("food_name")]
    public string FoodName {get; set;}


    
}
