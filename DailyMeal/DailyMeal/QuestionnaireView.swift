import SwiftUI

struct QuestionnaireView: View {
    @State private var selectedMealType: Meal.MealType = Meal.MealType.breakfast
    @State private var selectedComplexity = Meal.Difficulty.basic
    @State private var selectedNutrition = Meal.Category.balanced
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Meal Type")) {
                        Picker("Type", selection: $selectedMealType) {
                            Text("Breakfast").tag("Breakfast")
                            Text("Lunch").tag("Lunch")
                            Text("Dinner").tag("Dinner")
                        }
                    }
                    
                    Section(header: Text("Meal Complexity")) {
                        Picker("Complexity", selection: $selectedComplexity) {
                            Text("Basic").tag("Basic")
                            Text("Complicated").tag("Complicated")
                        }
                    }
                    
                    Section(header: Text("Nutritional Preference")) {
                        Picker("Nutrition", selection: $selectedNutrition) {
                            Text("High Protein").tag("High Protein")
                            Text("High Carb").tag("High Carb")
                            Text("Balanced").tag("Balanced")
                        }
                    }
                    Section(header: Text("Dessert Preference")) {
                        Picker("Dessert", selection: $selectedNutrition) {
                            Text("I don't want dessert").tag("No dessert")
                            Text("Milk puddings").tag("Milk puddings")
                            Text("Siruped dessert").tag("Siruped desert")
                        }
                    }
                }
                .listStyle(.plain)
                .background(Color.white)
            }
            .navigationTitle("")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Text("What do you want to eat ?")
                                .font(.title) // Adjust font size here
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
