//
//  ImportView.swift
//  project
//
//  Created by Пользователь on 08.12.2021.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode)var
        presentationMode
    var body: some View {
            VStack{
                
                HStack{
                    Spacer()
                        .padding(30)
                Button("❎"){
                self.presentationMode.wrappedValue.dismiss()
                }
                .padding(30)
                }
                Spacer()
                   
            }
            }
    }
struct ContentView:View{
    @State private var ShowingDetail=false
    var body: some View{
        Button(action:{
            self.ShowingDetail.toggle()
        }){
            Text("📤")
                .padding()
                                           .background(Color.init(#colorLiteral(red: 0.8910188079, green: 0.8857223392, blue: 0.895090282, alpha: 0.7654118822)))
                                           .foregroundColor(.black)
                                          .clipShape(RoundedRectangle(cornerRadius:35))
        }.sheet(isPresented: $ShowingDetail){
            DetailView()
        }
    }
}

               
    


struct ImportView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}


