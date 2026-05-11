using System;

namespace PepperPalaceSearchToolAPI.Services;

public class FoodService
{
    public static List<string> Foods = new List<string> {
        "Faceshovels", "Tacos", "Tortilla Soup", "South western Omelet", "Chili", "Pasta Sauce", "Cream Cheese", "Breakfast Burritos", "Loaded Nachos",
        "Tacos", "Burrito Bowl", "Pita Chips", "Naan & Cook with Chicken and Basmati Rice", "Defrost a Driveway", "Kick up Marinara", "Spoon over Eggs", "Chicken Bowl", "Steak Burrito",
        "Marinara Sauce", "Pasta Dish", "Fish Tacos", "Grilled Shrimp", "Top Tacos", "Seafood", "Shrimp", "Spring Rolls", "Fried Chicken",
        "Wings", "Chicken less Patty Sandwich", "Fried Rice", "Fried Calamari", "Dumplings", "Grilled Chicken", "Marinade Pork", "Tempeh", "Burgers",
        "Chicken Tenders", "Nasal Napalm", "Pretzels", "Salads", "Fries", "Mayo", "Salmon", "Satay Sauce", "Ribs",
        "Pork", "Chicken", "Sweet Potatoes", "Stir Fry", "Egg Rolls", "Grilled Meats", "Baked Beans", "BBQ Chicken Dip", "Pulled Pork",
        "Grilled Chicken", "Ribs", "Chicken Wings", "BBQ Chicken Pizza", "Dipping Sauce", "Wings", "Sliders", "Baked Beans", "Meatloaf",
        "Pasta", "Pizza", "Wings", "Bratwurst", "Mix with BBQ", "Black Beans and Rice", "Chicken bowl", "Steak Tacos", "Chili",
        "Eggs", "Wings", "Chowder", "Bloody Mary", "Grilled Chicken", "Gumbo", "Po Boy", "Rice and Beans", "Fries",
        "Bratwurst", "Sandwiches", "Shrimp Tacos", "Chilaquiles", "Enchiladas", "Steak", "Roasted Chicken", "Buffalo Chicken Dip", "Burgers",
        "Baked Beans", "Brisket", "Dip Breaded Shrimp", "Fish Tacos", "Egg Rolls", "Fried Rice", "Jerk Chicken", "Fish Tacos", "Grilled Shrimp",
        "Pork", "Fish", "Apple Pie", "Cheesecake", "Maple Syrup", "Rice Bowl", "Wraps", "Lentils", "Jamaican Beef Patties",
        "Salsa", "Spring Rolls", "Shrimp", "Roast Beef", "Gumbo", "Chili", "Steak Tips", "Jambalaya", "Grilled Meats",
        "Stews", "Bloody Mary", "Pasta", "Cioppino", "Vinaigrette", "Ramen", "Fried Rice", "Quesadillas", "Pulled Chicken",
        "Chicken", "Pulled Pork", "Beef Tips", "Rice Bowls", "Seafood", "Ceviche", "Oysters", "Bratwurst", "Guacamole",
        "BBQ", "Mashed Potatoes", "Grilled Fish", "Chowders", "Spareribs", "Infused Oil", "Popcorn", "Prime Rib", "Brisket",
        "Sweet Potatoes", "Crab", "Pork Tenderloin", "Turkey", "Fish", "Seafood Boil", "Red Potatoes", "Deviled Eggs", "Roasted Potatoes",
        "Salmon", "Jerk Jackfruit", "Boston Butt", "Pasta", "Roasted Vegetables", "Shrimp Scampi", "Mix with Butter", "Ribs", "Brisket",
        "Eggs", "Venison", "Quail", "Kettle Corn", "Buffalo Mac and Cheese", "Buffalo Pizza", "Buffalo Dip", "Salmon", "Butternut Squash",
        "Buffalo Cauliflower", "Buffalo Dip", "Noodles", "Dip Fries", "Mangoes", "Buffalo Chicken", "Buffalo Fettuccine Alfredo"
    };

   //remove any duplicate foods from the list
   public List<string> GetUniqueFoods()
    {
        return Foods.Distinct().ToList();
    }
}
