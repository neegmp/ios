//
//  ContentView.swift
//  LoginApp
//
//  Created by santhosh on 08/04/20.
//  Copyright © 2020 TDF. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = "User"
    @State private var password: String = "Pass"

    @State private var val: String = ""
    
    @State private var clr: Color = Color.red
    
    var body: some View {
        ZStack{
            HStack{
                Image("logo")
                .resizable().scaledToFit()
                    .frame(width: 75.0, height: 75.0, alignment: .top)
                //.colorInvert()
                 
                Text("Company").font(.largeTitle).fontWeight(.bold).foregroundColor(Color.blue)
                
            }.offset(x: -60, y:-250)

            
            
            VStack {
                    Text("\(val)")
                        .bold().font(.largeTitle).fontWeight(.bold)
                        .foregroundColor(clr)
                    
                    TextField("Username", text: $username)
//                    .foregroundColor(Color.gray)
                .fixedSize()
                        .frame(minWidth: 20, maxWidth: .infinity)
                    .font(.title)
                    //.onAppear { self.username = "Enter username" }
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                        

                    
                     SecureField("Password", text: $password)
//                    .foregroundColor(Color.gray)
                    .fixedSize()
                        .frame(minWidth: 400, maxWidth: .infinity)
                    .font(.title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                                   
                    
                    Button(action:{
                        if((self.username=="Admin")  &&
                            self.password=="Pass"){
                            self.val="Welcome, \(self.username). 👍🏻"
                            self.clr=Color.green
                        }
                        else{
                            self.clr=Color.red
                            self.val="Login Unsuccessfull. 👎🏻"
                        }
                    }){
                        Text("Submit")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                    }
                        .frame(minWidth:.zero, maxWidth:300)
                        .padding()
                        .foregroundColor(.white)
                        .background(LinearGradient(
                                       gradient: Gradient(
                                        colors: [Color.purple, Color.blue]),
                                       startPoint: .leading,
                                       endPoint: .trailing))
                        .cornerRadius(50)
                    
                    
                    Button(action:{
                        self.username = ""
                        self.val = ""
                        self.password = ""
                        self.clr=Color.red
                               }){
                                   Text("Reset")
                                       .font(.title)
                                       .fontWeight(.medium)
                                       .foregroundColor(Color.red)
                               }
                }
            
        }
        .background(Image("bg")).scaledToFill()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
