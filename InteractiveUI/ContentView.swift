//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    @state private var presentAlert = fasle
    
   @State private var name = ""
    @State private var age = ""
    @State private var textTitle = "What is your name and age?"
    var body: some View {
        VStack {
     
            Text(textTitle)
                .font(.title)
            TextField("Type Your Name Here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            TextField("Type Your Age Here...", text: $age)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.mint, width: 1)
            Button("Submit Name and Age") {
               textTitle="Welcome, \(name). You are \(age) years old!"
                name=""
                Text(presentAlert ? "Presenting":"Dismissed")
                Button("Alert") = true
            }//Button Closing
            
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.pink)
        }//Vstack Closing
        .padding()
    }
}

#Preview {
    ContentView()
}
