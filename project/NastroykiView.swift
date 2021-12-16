//
//  importView.swift
//  project
//
//  Created by Пользователь on 08.12.2021.
//

import SwiftUI

struct NastroykiView: View {
    @Environment(\.presentationMode)var
        presentationMode1
    var body: some View {
        VStack{
        HStack{
            Button(action:{
                    self.presentationMode1.wrappedValue.dismiss()}){
                Image(systemName: "chevron.backward.circle.fill")
                    .resizable()
                    .foregroundColor(Color.init(#colorLiteral(red: 0.9131801128, green: 0.907751739, blue: 0.9173528552, alpha: 1)))
                    .background(Color.init(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width:30, height:30 )
            }
           
        .padding()
            Spacer()
            
        }
            Spacer()
        }
       
    }
}

struct Nastroyki_Previews: PreviewProvider {
    static var previews: some View {
        NastroykiView()
    }
}
