//
//  ContentView.swift
//  TheProject
//
//  Created by thedevelopersfun on 08/04/20.
//  Copyright © 2020 TDF. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var detail = "Welcome Buddy"
    var body: some View {
        VStack{
        Text("\(detail)")
            .font(.system(size:60))
            
            Spacer()
            
            MyButtonView(MyDetailTag : $detail)
        .padding()
            .frame(minWidth:.zero, maxWidth:.infinity)
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(
                    gradient: Gradient(
                        colors: [Color("haru"), Color("billu")]
                    ), startPoint: .leading, endPoint: .trailing
                ))
            .cornerRadius(50)
        }
    }
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
