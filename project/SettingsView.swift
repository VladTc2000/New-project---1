//
//  SettingsView.swift
//  project
//
//  Created by Пользователь on 07.12.2021.
//

import SwiftUI
struct contentView:View {
    var body: some View{
        NavigationView{
            VStack{
                StereoBarView()
                AboutMeView()
                HStack{
                    NavigationLink(destination: RedactorView()){
                        Text("Редактировать")
                            .padding()
                            .background(Color.init(#colorLiteral(red: 0.8910188079, green: 0.8857223392, blue: 0.895090282, alpha: 0.7654118822)))
                            .foregroundColor(.black)
                            .clipShape(RoundedRectangle(cornerRadius:35))
                    }
                    .navigationBarTitle("")
                    NavigationLink(destination: NastroykiView()){
                        Text("⚙️")
                            .padding()
                            .background(Color.init(#colorLiteral(red: 0.8910188079, green: 0.8857223392, blue: 0.895090282, alpha: 0.7654118822)))
                            .clipShape(RoundedRectangle(cornerRadius:35))
                            .navigationBarTitle("")
                    }
                    ContentView()       
                    Spacer()
                }
                .padding()
                Spacer()
                
            }
        }
    }
    struct SettingsView_Previews: PreviewProvider {
        static var previews: some View {
            contentView()
        }
    }
}
