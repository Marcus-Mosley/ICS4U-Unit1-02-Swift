//
// ContentView.swift
// ICS4U-Unit1-02-Swift
//
// Created by Marcus A. Mosley on 2021-01-20
// Copyright (C) 2021 Marcus A. Mosley. All rights reserved.
//

import SwiftUI

let truck:Float = 1100
let weight:Float = 20

struct ContentView: View {
    @State var logs = 0
    @State var length: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter the length of the logs (m): ", text: $length)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(10)
                .keyboardType(.numberPad)
            Button(action: {
                logs = Int(truck / (weight * Float(length)!))
                print(logs)
            }) {
                Text("Click Here")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
