//
//  SettingsView.swift
//  project
//
//  Created by Пользователь on 07.12.2021.
//

import SwiftUI
struct contentView:View {
    @State var showTop1=true
    @State var showTop2=false
    @State var showTop3=false
    @State var tapped=false
    @State var tapped1=false
    var body: some View{
        NavigationView{
            VStack{
                StereoBarView()
                AboutMeView()
                HStack{
                    NavigationLink(destination: RedactorView())
                    {
                        Text("Редактировать")
                            .padding()
                            .background(Color.init(#colorLiteral(red: 0.8910188079, green: 0.8857223392, blue: 0.895090282, alpha: 0.7654118822)))
                            .foregroundColor(.black)
                            .clipShape(RoundedRectangle(cornerRadius:35))
                    }
                    .navigationBarHidden(true)
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
                ZStack{
                    Divider()
                        .offset(y:8)
                    
                    HStack{
                        //кнопка Эфиры
                        Button(action:{self.showTop1.toggle()
                            self.showTop1=true
                            self.showTop2=false
                            self.showTop3=false
                        }){
                            VStack{
                                Text("Эфиры")
                                    .fontWeight(.medium)
                                    .foregroundColor(showTop1 ? Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)):Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width:65,height:3)
                                    .offset(y:-10)
                                    .foregroundColor(showTop1 ? Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)):.clear)
                            }
                        }.padding(.leading,5)
                        //кнопка Подписки
                        Button(action:{self.showTop2.toggle()
                            self.showTop1=false
                            self.showTop2=true
                            self.showTop3=false
                        }){
                            VStack{
                                Text("Подписки")
                                    .fontWeight(.medium)
                                    .foregroundColor(showTop2 ? Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)):Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width:85,height:3)
                                    .offset(y:-10)
                                    .foregroundColor(showTop2 ? Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)):.clear)
                            }
                        }.padding(.leading,5)
                        //кнопка Подписчики
                        Button(action:{self.showTop3.toggle()
                            self.showTop1=false
                            self.showTop2=false
                            self.showTop3=true
                        }){
                            VStack{
                                Text("Подписчики")
                                    .fontWeight(.medium)
                                    .foregroundColor(showTop3 ? Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)):Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width:105,height:3)
                                    .offset(y:-10)
                                    .foregroundColor(showTop3 ? Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)):.clear)
                            }
                        }
                        .padding(.leading,5)
                        Spacer()
                    }
                    .padding(.leading)
                }
                if showTop1==true{
                    VStack (spacing:100){
                        ccontentView()
                        Text("У вас пока нет эфиров")
                            .padding(.top)
                    }
                }
                if showTop2==true{
                    VStack {
                        HStack{
                            Image("girl")
                                .resizable()
                                .frame(width: 55, height: 70)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            VStack{
                                Text("Алина Малина")
                                Text("@aline")
                                    
                                    .font(.callout)
                                    .foregroundColor(.gray)
                                    .padding(.trailing)
                                
                                
                            }
                       
                            Spacer()
                            
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
                            VStack{
                                Text("Вика")
                                    
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
                    
                }
                Spacer()
                    .padding()
            }
        }
    }
    struct SettingsView_Previews: PreviewProvider {
        static var previews: some View {
            contentView()
        }
    }
}

