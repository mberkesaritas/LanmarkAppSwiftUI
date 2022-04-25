//
//  ProfileSummary.swift
//  LandmarkApp
//
//  Created by Berke Sarıtaş on 25.04.2022.
//

import SwiftUI

struct ProfileSummary: View {
    
    var profile : Profile
    
    var body: some View {
        ScrollView{
            VStack(alignment:.leading,spacing: 10){
                Text(profile.username)
                    .font(.title)
                    .bold()
                
                Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
