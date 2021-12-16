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
                Button(action:{
                        self.presentationMode.wrappedValue.dismiss()}){
                    Image(systemName: "multiply.circle.fill")
                        .resizable()
                        .foregroundColor(Color.init(#colorLiteral(red: 0.9131801128, green: 0.907751739, blue: 0.9173528552, alpha: 1)))
                        .background(Color.init(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width:30, height:30 )
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


