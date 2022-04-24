//
//  LandmarkList.swift
//  DevAppleOne
//
//  Created by Berke Sarıtaş on 24.04.2022.
//

import SwiftUI

struct LandmarkList: View {
    
    @State var showFavoriteOnly  = false
    @EnvironmentObject var modelData : ModelData
    
    var filtredLandmarks : [LandMark] {
        modelData.landmarks.filter { landmark in
            
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        
        NavigationView {

            List{
                Toggle(isOn: $showFavoriteOnly, label: {
                    Text("Favorits Only")
                })
                
            ForEach(filtredLandmarks){ landmark in
                
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
