using System.ComponentModel.DataAnnotations.Schema;

namespace PepperPalaceSearchToolAPI.Models;

//The sauce pairings model will represent the relationship between sauces and foods. It will have a sauce ID and a food ID.

[Table("sauce_pairings")]
public class SaucePairingsModel
{
    
    [Column("fk_sauce_id")]
    public int SauceId {get; set;}
    
    [Column("fk_food_id")]
    public int FoodId {get; set;}
}
