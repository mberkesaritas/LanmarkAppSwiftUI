//
//  ContentView.swift
//  LandmarkApp
//
//  Created by Berke Sarıtaş on 24.04.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .featured

    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        
        TabView(selection: $selection){
            CatagoryHome().tag(Tab.featured)
                .tabItem{
                    Label("Featured" , systemImage: "star")
                }
            
            LandmarkList().tag(Tab.list)
                .tabItem{
                    Label("List" , systemImage: "list.bullet")
                }
        }
        
        
        LandmarkList()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
