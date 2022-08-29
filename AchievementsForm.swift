import SwiftUI

struct AchievementsForm: View {
    @EnvironmentObject var data: myInfo
    @Environment(\.dismiss) var dismiss
    @State var newAchievement: String = ""
    var body: some View {
        VStack(spacing: 10.0)
        {
            Image(data.avatar)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
            List{
                ForEach(data.achievements){
                    x in
                    HStack{
                        Spacer()
                        Text("<-\(x.about)->")
                            .padding()
                        Spacer()
                    }
                }
                .onDelete{
                    indexSet in 
                    data.achievements.remove(atOffsets: indexSet)
                }
            }
        }
        
        HStack{
            Spacer()
            TextField("new Achievement?", text: $newAchievement).padding()
            Spacer()
            Button("Add"){
                data.achievements.append(Achievement("\(newAchievement)"))
            }.padding()
                .background(Color.pink)
                .clipShape(Circle())
            Spacer()
        }
        HStack{
            Spacer()
            Button("Complete")
            {
                dismiss()
            }
            Spacer()
        }
        Spacer(minLength: 15.0)
    }
}

struct AchievementsForm_Previews: PreviewProvider {
    static var previews: some View {
        AchievementsForm().environmentObject(myInfo())
    }
}
