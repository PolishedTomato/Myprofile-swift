import SwiftUI

struct BasicInfoPreview: View {
    var avatar:String
    var education: String
    var careerGoal: String
    var name:String
    
    var body: some View {
        HStack{
            Image(avatar).resizable()
                .scaledToFit()
                .clipShape(Circle())
            
            Spacer()
            
            VStack(spacing: 10.0){
                HStack{
                    Text(name)
                        .font(.largeTitle)
                    Spacer()
                }
                HStack{
                    Text(education)
                    Spacer()
                }
                HStack{
                    Text("Career goal: \(careerGoal)")
                    Spacer()
                }
            }
        }
    }
}

struct BasicInfoPreview_Previews: PreviewProvider {
    static var previews: some View {
        BasicInfoPreview(avatar: "Cat", education: "Something", careerGoal: "whatever", name: "Deye Lei")
    }
}
