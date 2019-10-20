//
//  LoginView.swift
//  SwiftUI-Practice
//
//  Created by Yoga Mardia on 20/10/19.
//  Copyright © 2019 Yoga Mardia. All rights reserved.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct LoginView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Text("Login")
                .font(.title)
                .bold()
            Text("Please login to use the app.")
                .padding()
            TextField("Enter your username", text: $username)
                .padding()
                .cornerRadius(40)
                .background(lightGreyColor)
                .autocapitalization(.none)
            SecureField("Enter a password", text: $password)
                .padding()
                .cornerRadius(40)
                .background(lightGreyColor)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
            Button(action: {
            
            }){
                Text("Login")
                .fontWeight(.bold)
                .padding()
                    .background(Color.blue)
                .cornerRadius(40)
                .foregroundColor(.white)
                .padding(10)
            }
        }.padding()
            
    }

}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
