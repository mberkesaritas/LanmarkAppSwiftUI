//
//  CatagoryHome.swift
//  LandmarkApp
//
//  Created by Berke Sarıtaş on 25.04.2022.
//

import SwiftUI

struct CatagoryHome: View {
    
    @EnvironmentObject var modelData : ModelData
    
    var body: some View {
        NavigationView {
            
            List{
                
                modelData.features[0].image
                                   .resizable()
                                   .scaledToFill()
                                   .frame(height: 200)
                                   .clipped()
                                   .listRowInsets(EdgeInsets())
                    
                    
                
                ForEach(modelData.categories.keys.sorted() , id:\.self ){ key in
                    
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)

                }
                .listRowInsets(EdgeInsets())
            }
            
                .navigationTitle("Featured")
        }
    }
}

struct CatagoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CatagoryHome()
            .environmentObject(ModelData())
    }
}
