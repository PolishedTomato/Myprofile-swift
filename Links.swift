import SwiftUI

struct Links: View {
    @EnvironmentObject var data: myInfo
    var body: some View {
        VStack{
            ForEach(data.links)
            {
                x in HStack{
                    HStack{
                        Spacer()
                        Image(x.image)
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Spacer()
                        Link("\(x.website)", destination: URL(string: "\(x.destination)")!)
                        Spacer()
                    }
                }
            }
        }
        
    }
}

struct Links_Previews: PreviewProvider {
    static var previews: some View {
        Links().environmentObject(myInfo())
    }
}

