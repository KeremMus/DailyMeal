import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        NavigationView(){
            VStack {
                Image("MainTitle").resizable()
                    .scaledToFit()
                Spacer()
                Spacer()
                Spacer()
                NavigationLink(destination: QuestionnaireView()){
                    Button("Explore new tastes now!") {
                        
                    }.font(Font.custom("Molengo",size: 33))
                        .foregroundColor(Color.white)
                        .padding(110)
                        .background(Color(red: 0.72, green: 0.032, blue: 0.032))
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color(.red))
                                .scaleEffect(animationAmount)
                                .opacity(2 - animationAmount)
                                .animation(
                                    Animation.easeInOut(duration: 1)
                                        .repeatForever(autoreverses: false),
                                    value: animationAmount
                                )
                        )
                        .onAppear {
                            animationAmount = 2
                        }
                }
                
                Spacer()
            }
        }
    }
}

            

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
