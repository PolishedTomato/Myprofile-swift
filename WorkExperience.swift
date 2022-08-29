import SwiftUI

struct WorkExperience: View {
    @EnvironmentObject var data : myInfo
    
    var body: some View {
        DisclosureGroup{
            if data.experiences.isEmpty{
                Text("None😢")
            }
            else{
                VStack(spacing: 15.0)
                {
                    HStack{
                        Spacer()
                        Text("Company name")
                            .font(.system(size: 15.0))
                            .bold()
                        Spacer()
                        Text("Job title")
                            .font(.system(size: 15.0))
                            .bold()
                        Spacer()
                    }
                    ForEach(data.experiences){
                        x in HStack{
                            Spacer()
                            Text(x.company_name)
                            Spacer()
                            Text(x.job_title)
                            Spacer()
                        }
                    }
                }
            }
        }label:{
            Text("WorkExperience🚀")
                .padding()
                
        }.accentColor(.red)
            .font(.title3)
    }
}

struct WorkExperience_Previews: PreviewProvider {
    static var previews: some View {
        WorkExperience().environmentObject(myInfo())
    }
}
