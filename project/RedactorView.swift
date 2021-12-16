//
//  настройки.swift
//  project
//
//  Created by Пользователь on 07.12.2021.
//

import SwiftUI
struct RedactorView: View {
    
@State var howDetail=false
    @State  var name:String = ""
    @State  var name1:String = ""
    @State  var name2:String = ""
    @State  var name3:String = ""
    @State  var name4:String = ""
    @Environment(\.presentationMode)var
        presentationMode1
 

    var body: some View {
        
        ScrollView(.vertical,showsIndicators:false){
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
          
        Image("man")
             .resizable()
             .clipShape(Circle())
             .frame(width: 90.0, height: 120.0)
            .navigationBarHidden(true)
        Button(action: {self.howDetail.toggle()}) {
             Text("Нажмите, чтобы изменить")
                .fontWeight(.semibold)
                .foregroundColor(Color.init(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                .font(.footnote)
                  .multilineTextAlignment(.leading)
    }
            Spacer()
           
            HStack{
                VStack(alignment: .leading, spacing: 0) {
                  
            
            Text("Логин")
                .padding()
            Text("Имя")
                .padding()
            Text("Обо мне")
                .padding()
            Text("YouTube")
                .padding()
            Text("Telegram")
                .padding()
            Text("Подкаст")
                .padding()
            Text("Twitter")
                .padding()
            Text("Instagram")
                .padding()
            }
                .padding()
                VStack(alignment: .leading, spacing: 0){
                    Group{
                        TextField("Введите логин",text:$name)
                           
                    .padding()
                    Divider()
                        .offset(y:3)
                        TextField("Введите имя",text:$name1)
                           
                        .padding()
                         
                        Divider()
                            .offset(y:3)
                        TextField("Расскажите о себе",text:$name2)
                        .padding()
                        Divider()
                            .offset(y:3)
                        TextField("Ссылка на YouTube канал",text:$name3)
                        .padding()
                        Divider()
                            .offset(y:3)
                    }
                    
                    Group{
                        TextField("Имя пользователя",text:$name4)
                        .padding()
                        Divider()
                            .offset(y:3)
                        Text("Привязать аккаунт")
                            .foregroundColor(.orange)
                        .padding()
                        Divider()
                            .offset(y:3)
                        Text("Привязать аккаунт")
                            .foregroundColor(.orange)
                            .padding()
                            
                        Divider()
                            .offset(y:3)
                        Text("Привязать аккаунт")
                            .foregroundColor(.orange)
                        .padding()
                        Divider()
                            .offset(y:3)
                    }
                    }
                .padding(.trailing,20)
                
            }
            Spacer()
        }
           
        }
        
    }
struct RedactorPreviews: PreviewProvider {
    static var previews: some View {
        RedactorView()
    }
}
}

