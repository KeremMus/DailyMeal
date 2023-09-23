struct Meal {
    var name: String
    var nutrition: Nutrition
    var ingredients: [String]
    var difficulty: Difficulty
    var type: MealType
    var dessertPref: DessertType
    
    enum Difficulty{
        case basic, medium, complicated
    }
    
    enum DessertType{
        case milkPudding, sirupedDessert, noDessert
    }
    
    enum Nutrition {
        case highProtein, highCarb, balanced
    }
    
    enum MealType {
        case breakfast, lunch, dinner
    }
}

let mealList: [Meal] = [
    Meal(name: "Greek Yogurt Parfait", nutrition: .highProtein, ingredients: ["Greek yogurt", "Granola", "Mixed berries", "Honey"], difficulty: .basic, type: .breakfast, dessertPref: .noDessert),
    
    Meal(name: "Scrambled Eggs with Spinach and Feta", nutrition: .highProtein, ingredients: ["Eggs", "Fresh spinach", "Feta cheese", "Salt", "Pepper", "Olive oil"], difficulty: .basic, type: .breakfast, dessertPref: .noDessert),
    
    Meal(name: "Oatmeal with Banana and Almond Butter", nutrition: .highCarb, ingredients: ["Rolled oats", "Banana", "Almond butter", "Chia seeds", "Milk or water"], difficulty: .basic, type: .breakfast, dessertPref: .noDessert),
    
    Meal(name: "Classic Pancakes", nutrition: .highCarb, ingredients: ["All-purpose flour", "Baking powder", "Salt", "Milk", "Egg", "Butter", "Maple syrup", "Mixed berries"], difficulty: .basic, type: .breakfast, dessertPref: .noDessert),
    
    Meal(name: "Avocado Toast with Poached Egg", nutrition: .balanced, ingredients: ["Whole-grain bread", "Avocado", "Egg", "Cherry tomatoes", "Sesame seeds", "Salt", "Pepper"], difficulty: .basic, type: .breakfast, dessertPref: .noDessert),
    
    Meal(name: "Chicken Caesar Salad", nutrition: .highProtein, ingredients: ["Chicken breast", "Romaine lettuce", "Parmesan cheese", "Caesar dressing", "Croutons"], difficulty: .basic, type: .lunch, dessertPref: .noDessert),
    
    Meal(name: "Spaghetti Bolognese", nutrition: .highCarb, ingredients: ["Spaghetti", "Ground beef", "Tomato sauce", "Onion", "Garlic", "Olive oil", "Salt", "Pepper"], difficulty: .complicated, type: .dinner, dessertPref: .noDessert),
    
    Meal(name: "Grilled Chicken with Quinoa and Veggies", nutrition: .balanced, ingredients: ["Chicken breast", "Quinoa", "Mixed vegetables", "Olive oil", "Salt", "Pepper"], difficulty: .complicated, type: .lunch, dessertPref: .noDessert),
    
    Meal(name: "Vegetarian Stir-fry", nutrition: .balanced, ingredients: ["Mixed vegetables", "Tofu", "Soy sauce", "Olive oil", "Garlic", "Ginger"], difficulty: .basic, type: .dinner, dessertPref: .noDessert),
    
    Meal(name: "Chocolate Lava Cake", nutrition: .highCarb, ingredients: ["All-purpose flour", "Unsweetened cocoa powder", "Sugar", "Butter", "Eggs", "Vanilla extract"], difficulty: .complicated, type: .dinner, dessertPref: .milkPudding)
]

