//
//  ContentView.swift
//  loginApp
//
//  Created by Sysprobs on 10/29/22.
//

import SwiftUI

struct ContentView: View {
    @State var user: String = ""
    @State var pass: String = ""
    @State var isLogged: Bool? = nil
    
    var body: some View {
        if isLogged==nil{
            VStack {
            VStack{
                Text("Enter username:")
                TextField("", text:$user)
                    .textInputAutocapitalization(.never)
            }.padding()
            VStack{
                Text("Enter password:")
                SecureField("", text:$pass)
            }.padding()
            Button{
                if user=="test" && pass=="test" {
                    isLogged = true
                } else {isLogged = false}
            }label:{
                Text("Log In")
            }
        }
            .padding()
        }else if isLogged == true {
            ZStack{
                Color.green
                Text("Success!")
            }
        }
        else {
            ZStack{
                Color.red
                Text("Failure!")
            }
        }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
