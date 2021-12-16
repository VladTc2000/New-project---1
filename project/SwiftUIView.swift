//
//  SwiftUIView.swift
//  project
//
//  Created by Пользователь on 16.12.2021.
//

import SwiftUI

struct SwiftUIView: View {
    @State var showTop1=true
    @State var showTop2=false
    @State var showTop3=false
    @State var tapped=false
    @State var tapped1=false
   
    @State private var showDetail1=false
    var body: some View {
        
        VStack(alignment:.center, spacing: -45){
            HStack {
           
         
            Image("girl")
                .resizable()
                .frame(width: 55, height: 70)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading, spacing: 0){
                Text("Алина Малина")
                    .lineLimit(1)
                Text("@aline")
                    .lineLimit(1)
                    .font(.callout)
                    .foregroundColor(.gray)
                
                
                
            }
            Spacer()
                .padding(.leading)
            
            
            
            Button(action:{self.tapped.toggle()
                
            }){
                Text("                           ")
                    .background(tapped ? Text("Подписаться"): Text("Вы подписаны"))
                    .foregroundColor(tapped ? Color(#colorLiteral(red: 1, green: 0.6674310593, blue: 0, alpha: 1)):Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
            }
            .font(.callout)
            .frame(width: 150, height: 20)
            .background(tapped ? Color(#colorLiteral(red: 0.9764705896, green: 0.8959002, blue: 0.6567065144, alpha: 1)):Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
            
            .clipShape(RoundedRectangle(cornerRadius:40))
        }
        .padding()
            HStack{
                Image("girl 3")
                    .resizable()
                    .frame(width: 65, height: 80)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                VStack(alignment: .leading, spacing: 0){
                    Text("Вика")
                        .lineLimit(1)
                    Text("@Vika")
                        
                        
                        .font(.callout)
                        .foregroundColor(.gray)
                        .padding(.trailing)
                    
                }
                
                Spacer()
                
                Button(action:{self.tapped1.toggle()
                    
                }){
                    Text("                           ")
                        .background(tapped1 ? Text("Подписаться"): Text("Вы подписаны"))
                        .foregroundColor(tapped1 ? Color(#colorLiteral(red: 1, green: 0.6674310593, blue: 0, alpha: 1)):Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                }
                .font(.callout)
                
                .frame(width: 150, height: 20)
                .background(tapped1 ? Color(#colorLiteral(red: 0.9764705896, green: 0.8959002, blue: 0.6567065144, alpha: 1)):Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                
                .clipShape(RoundedRectangle(cornerRadius:40))
            }
            .padding()
        }
        .padding(.bottom,100)
    }
    
}
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
