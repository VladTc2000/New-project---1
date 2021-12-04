//
//  ContentView.swift
//  project
//
//  Created by Пользователь on 24.11.2021.
//

import SwiftUI

struct ContentView: View {
     @State private var showDetail=false
    var body: some View {
     
     
     HStack() {
          VStack(alignment: .leading, spacing: 10.0)  {
               VStack(alignment: .leading) {
                    Text("@tcypilev")
                         .font(.callout)
                         .foregroundColor(Color.gray)
                         .multilineTextAlignment(.leading)
                    Text("Влад")
                         
                         .font(.title3)
                         .fontWeight(.bold)
                         .multilineTextAlignment(.leading)
                    
               }
               Button(action: {self.showDetail.toggle()}) {
                    Text("Расскажите о себе")
                         .fontWeight(.bold)
                         .foregroundColor(.orange)
                         .font(.headline)
                         .multilineTextAlignment(.leading)
               }
          }
          Spacer()
          Image("man")
               .resizable()
               .clipShape(Circle())
               .frame(width: 90.0, height: 120.0)
              
          
          
          
     }
     .padding()
    
     
    
}
}
struct SwiftUIView_2_Groups_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
