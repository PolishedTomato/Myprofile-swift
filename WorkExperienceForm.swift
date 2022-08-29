import SwiftUI

struct WorkExperienceForm: View {
    @EnvironmentObject var data: myInfo
    @State var newExperience: String = ""
    @State var newJobTitle: String = ""
    var body: some View {
        List{
            ForEach(data.experiences)
            {
                experience in HStack{
                    Spacer()
                    Text(experience.company_name)
                    Spacer()
                    Text(experience.job_title)
                    Spacer()
                }
            }.onDelete{
                index in data.experiences.remove(atOffsets: index)
            }
            
            VStack(spacing: 15.0)
            {
                HStack{
                    Spacer()
                    TextField("Enter a new experience!", text: $newExperience)
                    Spacer()
                    TextField("Enter the job title!", text:$newJobTitle)
                    Spacer()
                }
                HStack{
                    Spacer()
                    Button("Add"){
                        data.experiences.append(MyExperience(newExperience,newJobTitle))
                    }
                    Spacer()
                }
            }
        }
    }
}
