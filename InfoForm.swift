import SwiftUI

struct InforForm : View {
    @EnvironmentObject var data : myInfo
    @State var name = " "
    @State var goal = " "
    @State var education = " "
    @State var habits = " "
    
    @Environment(\.dismiss) var dismiss
    var body: some View{
        VStack{
            ScrollView{
                Image(data.avatar)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                
                HStack{
                    NavigationLink{
                        BasicInfoForm(avatar: data.avatar, education: data.education, careerGoal: data.careerGoal,
                                      name: data.name).environmentObject(data)
                    }label:{
                        Spacer()
                        Text("Basic Info")
                        Spacer()
                    }.accentColor(.green)
                        .padding()
                }.background()
                    .cornerRadius(15.0)
                
                HStack{
                    NavigationLink{
                        AchievementsForm()
                            .environmentObject(data)
                    }label:{
                        Spacer()
                        Text("Achievements")
                        Spacer()
                    }.accentColor(.green)
                        .padding()
                }.background()
                    .cornerRadius(15.0)
                
                HStack{
                    NavigationLink{
                        LinksForm(gitLink: data.links[0].destination, linkedinLink: data.links[1].destination)//didn't work somehow
                            .environmentObject(data)
                    }label:{
                        Spacer()
                        Text("Website Links")
                        Spacer()
                    }.accentColor(.green)
                        .padding()
                }.background()
                    .cornerRadius(15.0)
                
                HStack{
                    NavigationLink{
                        WorkExperienceForm()
                            .environmentObject(data)
                    }label:{
                        Spacer()
                        Text("Experiences")
                        Spacer()
                    }.accentColor(.green)
                        .padding()
                }.background()
                    .cornerRadius(15.0)
            }
        }
    }
}
