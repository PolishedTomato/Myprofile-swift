import SwiftUI

//observableObject has to be class
class myInfo : ObservableObject{
    @Published var name : String = "Deye Lei"
    @Published var education : String = "Bachelor Degree on Computer Science in Hunter College"
    @Published var habit : String = "Gaming"
    @Published var avatar: String = "MeAgain"
    @Published var careerGoal: String = "iOS Engineer"
    @Published var achievements = [Achievement("Dean List in Hunter College"), Achievement("Summa cum laude"), Achievement("Member of Phi Beta Kappa Society")]
    @Published var links = [
        MyLink("https://github.com/PolishedTomato","GitHub","GitHub"), 
        
        MyLink("www.linkedin.com/in/deye-lei", "LinkedIn","LinkedIn")]
    @Published var experiences: [MyExperience] = []
}

class Achievement: Identifiable{
    var id = UUID()
    var about: String
    init(_ something_proud: String)
    {
        about = something_proud
    }
}

class MyLink: Identifiable{
    var website: String
    var id = UUID()
    var image: String
    var destination: String
    init(_ desti: String,_ web: String,_ im: String)
    {
        destination = desti
        website = web
        image = im
    }
}
class MyExperience: Identifiable{
    var id = UUID()
    var company_name: String
    var job_title: String
    
    init(_ company_name: String, _ job_title: String)
    {
        self.company_name = company_name
        self.job_title = job_title
    }
}






