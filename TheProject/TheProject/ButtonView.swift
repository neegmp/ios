//
//  ButtonView.swift
//  TheProject
//
//  Created by santhosh on 08/04/20.
//  Copyright © 2020 TDF. All rights reserved.
//

import SwiftUI

struct MyButtonView : View {
    
    @Binding var MyDetailTag:String

    @State var counter = 0
    
    
    var body: some View {
        
        Button(action:{
        print("Clicked")
        if(self.counter%2==0){
            self.MyDetailTag=" 🙀 Shocking... You clicked it..."
        }
        else{
            self.MyDetailTag=" 😏 Dont Click it again n again..."
        }
        self.counter+=1;
    }){
        Text("Don't Click") //Cmd+Ctrl+Space for Emoji
            .fontWeight(.medium)
            .font(.title)
        
        }
    }
}
