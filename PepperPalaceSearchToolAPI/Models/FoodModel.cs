using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace PepperPalaceSearchToolAPI.Models;

//The food model will represent the different types of food that can be paired with sauces. It will have an ID and a name.

[Table("food")]
public class FoodModel
{
    [Column("food_id")]
    public int FoodID {get; set;}
    
    [Column("food_name")]
    public string FoodName {get; set;}
}
