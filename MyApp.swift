import SwiftUI

@main

struct MyApp: App {
    @StateObject var data = myInfo()
    var body: some Scene {
        WindowGroup {
            
            NavigationView{
                ContentView().navigationTitle("My profile 🍀").font(.caption2).environmentObject(data)
            }
            
        }
    }
}

