import SwiftUI

struct SuggestionView: View {
    var meals: [Meal]
    
    var body: some View {
        List(meals, id: \.name) { meal in
            Text(meal.name)
        }
        .navigationTitle("Meal Suggestions")
        .navigationBarTitleDisplayMode(.inline)
        .background(Color.white.edgesIgnoringSafeArea(.all))
    }
}

struct SuggestionView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestionView(meals: [])

    }
}
