//
//  EfirView.swift
//  project
//
//  Created by Пользователь on 13.12.2021.
//

import SwiftUI

struct EfirView1: View {
        @Environment(\.presentationMode)var
            presentationMode
        var body: some View {
            VStack{
                
                HStack{
                    Spacer()
                        
                    Button(action:{
                            self.presentationMode.wrappedValue.dismiss()}){
                        Image(systemName: "multiply.circle.fill")
                            .resizable()
                            .foregroundColor(Color.init(#colorLiteral(red: 0.9131801128, green: 0.907751739, blue: 0.9173528552, alpha: 1)))
                            .background(Color.init(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .frame(width:30, height:30 )
                        
                    }
                    .padding()
                }
                Spacer()
                List{
                    Text("123")
                        
                }
            }
            
        }
    
    }

    struct ccontentView:View{
        @State private var ShowingDetail=false
        var body: some View{
            Button(action:{
                self.ShowingDetail.toggle()
            }){
                HStack{
                Text("Запланировать разговор")
                    .padding()
                    .foregroundColor(.orange)
                    Spacer()
               Image("микро-1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 50, height: 50)
                .padding(.horizontal,10)
                }
                .background(Color.init(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)))
                .clipShape(RoundedRectangle(cornerRadius:20))
                .padding()
        }.sheet(isPresented: $ShowingDetail){
                EfirView1()
            }
        }
    }

    

struct EfirView_Previews: PreviewProvider {
    static var previews: some View {
        EfirView1()
    }
}
