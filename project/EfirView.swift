//
//  EfirView.swift
//  project
//
//  Created by Пользователь on 13.12.2021.
//

import SwiftUI

struct EfirView: View {
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
                EfirView()
            }
        }
    }

    

struct EfirView_Previews: PreviewProvider {
    static var previews: some View {
        EfirView()
    }
}
