import SwiftUI

struct QuestionnaireView: View {
    @State private var selectedMealType: Meal.MealType = .breakfast
    @State private var selectedDifficulty: Meal.Difficulty = .basic
    @State private var selectedNutrition: Meal.Nutrition = .balanced
    @State private var selectedDessert: Meal.DessertType = .noDessert
    
    @State private var navigateToSuggestion = false
    @State private var suggestedMeals: [Meal] = []
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Meal Type")) {
                        Picker("Type", selection: $selectedMealType) {
                            Text("Breakfast").tag(Meal.MealType.breakfast)
                            Text("Lunch").tag(Meal.MealType.lunch)
                            Text("Dinner").tag(Meal.MealType.dinner)
                        }
                    }
                    
                    Section(header: Text("Meal Complexity")) {
                        Picker("Complexity", selection: $selectedDifficulty) {
                            Text("Basic").tag(Meal.Difficulty.basic)
                            Text("Medium").tag(Meal.Difficulty.medium)
                            Text("Complicated").tag(Meal.Difficulty.complicated)
                        }
                    }
                    
                    Section(header: Text("Nutritional Preference")) {
                        Picker("Nutrition", selection: $selectedNutrition) {
                            Text("High Protein").tag(Meal.Nutrition.highProtein)
                            Text("High Carb").tag(Meal.Nutrition.highCarb)
                            Text("Balanced").tag(Meal.Nutrition.balanced)
                        }
                    }
                    
                    Section(header: Text("Dessert Preference")) {
                        Picker("Dessert", selection: $selectedDessert) {
                            Text("I don't want dessert").tag(Meal.DessertType.noDessert)
                            Text("Milk puddings").tag(Meal.DessertType.milkPudding)
                            Text("Siruped dessert").tag(Meal.DessertType.sirupedDessert)
                        }
                    }
                }
                .listStyle(.plain)
                .background(Color.white)
                Button("Get Suggestions") {
                            suggestedMeals = mealList.filter { meal in
                                meal.type == selectedMealType &&
                                meal.difficulty == selectedDifficulty &&
                                meal.nutrition == selectedNutrition
                            }
                            navigateToSuggestion = true
                        }
                NavigationLink("", destination: SuggestionView(meals: suggestedMeals), isActive: $navigateToSuggestion)
            }
            .navigationTitle("")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Text("What do you want to eat ?")
                                .font(.title)
                        }
                    }
        }
        .background(Color.white.edgesIgnoringSafeArea(.all))
    }
}

struct QuestionnaireView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionnaireView()
    }
}
