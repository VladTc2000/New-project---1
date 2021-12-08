//
//  SwiftUIView.swift
//  project
//
//  Created by Пользователь on 04.12.2021.
//

import SwiftUI

struct StereoBarView: View {
    @State private var showDetail=false
    var body: some View {
      
        HStack {
            Text("stereo")
                .font(.largeTitle)
                .fontWeight(.bold)
            Button(action:  {self.showDetail.toggle()}) {
                Spacer()
                Text("Начать новый эфир")
                    .padding()
                    .frame(height:35)
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius:40))
            }
            
        }
        .padding([.top, .leading, .trailing])
        
        }
        
            
                
      

}
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        StereoBarView()
    }
    
}
    

