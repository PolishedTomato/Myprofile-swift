import SwiftUI
//test snsnsns

struct Achievements: View {
    @EnvironmentObject var data: myInfo
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text("Achievements💖").font(.title)
                Spacer()
            }
            Divider()
            VStack(spacing: 10.0){
                ForEach(data.achievements){ 
                    x in Text("<-\(x.about)->")
                }
            }
            Divider()
        }
        
    }
}

struct Achievements_Previews: PreviewProvider {
    static var previews: some View {
        Achievements().environmentObject(myInfo())
    }
}

