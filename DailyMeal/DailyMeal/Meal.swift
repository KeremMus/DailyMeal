struct Meal {
    var name: String
    var category: Category
    var ingredients: [String]
    var difficulty: Difficulty
    var type: MealType
    var dessertPref: DessertType
    
    enum Difficulty{
        case basic, medium, hard
    }
    
    enum DessertType{
        case milkPudding, sirupedDessert
    }
    
    enum Category {
        case highProtein, highCarb, balanced
    }
    
    enum MealType {
        case breakfast, lunch, dinner
    }
}
