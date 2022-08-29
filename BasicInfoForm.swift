import SwiftUI

struct BasicInfoForm: View {
    @EnvironmentObject var data: myInfo
    @State var avatar: String
    @State var education: String
    @State var careerGoal: String
    @State var name: String
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        BasicInfoPreview(avatar: avatar, education: education, careerGoal: careerGoal, name: name)
        
        Form{
            Section("Name"){
                TextField("Enter your name", text: $name)
            }
            Section("avatar"){
                TextField("Enter your avatar", text: $avatar)
            }
            Section("education"){
                TextField("Enter your education", text: $education)
            }
            Section("careerGoal"){
                TextField("Enter your name", text: $careerGoal)
            }
        }
        Button("Confirm"){
            data.name = self.name
            data.avatar = self.avatar
            data.education = self.education
            data.careerGoal = self.careerGoal
            dismiss()
        }.accentColor(.green)
            .padding()
    }
}

struct BasicInfoForm_Previews: PreviewProvider {
    static var previews: some View {
        BasicInfoForm(avatar: myInfo().avatar, education: myInfo().education, careerGoal: myInfo().careerGoal, name: myInfo().name)
    .environmentObject(myInfo())
    }
}
