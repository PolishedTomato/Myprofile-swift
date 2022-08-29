import SwiftUI
//test
struct ContentView: View {
    @EnvironmentObject var data : myInfo
    var body: some View {
        VStack {
            ScrollView
            {
                Spacer(minLength: 50.0)
                BasicInfoView()
                    .environmentObject(data)
                Achievements()
                    .environmentObject(data)
                Links()
                    .environmentObject(data)
                WorkExperience()
                    .environmentObject(data)
            }
        }.toolbar{
            ToolbarItem{
                NavigationLink{
                    InforForm()
                        .environmentObject(data)
                } label: {
                    Text("Change info")
                        
                }.accentColor(.green)
                    .font(.caption)
                
            }
        }.background()
            .cornerRadius(15.0)
    }
}
