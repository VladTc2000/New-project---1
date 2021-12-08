//
//  TabBarView.swift
//  project
//
//  Created by Пользователь on 07.12.2021.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            Text("Live")
                .tabItem {
                    Image(systemName:"dot.radiowaves.left.and.right")
                    Text("Live")
                }
            Text("Активность")
                .tabItem {
                    Image(systemName:"bell")
                    Text("Активность")}
            contentView()
                
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")}
        }
    }
}



struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
