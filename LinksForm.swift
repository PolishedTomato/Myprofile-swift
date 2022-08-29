import SwiftUI

struct LinksForm: View {
    @EnvironmentObject var data: myInfo
    @State var gitLink: String
    @State var linkedinLink: String
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing: 50.0){
            VStack(spacing:20.0){
                HStack{
                    Spacer()
                    Image("GitHub")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 75.0, height: 75.0)
                    Spacer()
                }
                HStack{
                    Spacer()
                    TextField("Enter a GitHub link", text: $gitLink)
                    Spacer()
                }
            }
            
            VStack(spacing: 20.0){
                HStack{
                    Spacer()
                    Image("LinkedIn")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 75.0, height: 75.0)
                    Spacer()
                }
                HStack{
                    Spacer()
                    TextField("Enter a LinkedIn link", text: $linkedinLink)
                    Spacer()
                }
            }
            
            Button("Great!"){
                data.links[0].destination = self.gitLink
                data.links[1].destination = self.linkedinLink
                dismiss()
            }.padding()
                .clipShape(Circle())
                .background(Color.pink)
                .cornerRadius(10.0)
        }
    }
}

struct LinksForm_Previews: PreviewProvider {
    static var previews: some View {
        LinksForm(gitLink:"somelink",linkedinLink: "other link").environmentObject(myInfo())
    }
}
