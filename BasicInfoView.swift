import SwiftUI

struct BasicInfoView: View {
    @EnvironmentObject var data: myInfo
    var vaildAvatar: Bool = false
    
    var body: some View {
        HStack{
            Image(data.avatar).resizable()
                .scaledToFit()
                .clipShape(Circle())
            
            Spacer()
            
            VStack(spacing: 10.0){
                HStack{
                    Text(data.name)
                        .font(.largeTitle)
                    Spacer()
                }
                HStack{
                    Text(data.education)
                    Spacer()
                }
                HStack{
                    Text("Career goal: \(data.careerGoal)")
                    Spacer()
                }
            }
        }
    }
}

struct BasicInfoView_Previews: PreviewProvider {
    static var previews: some View {
        BasicInfoView().environmentObject(myInfo())
    }
}
