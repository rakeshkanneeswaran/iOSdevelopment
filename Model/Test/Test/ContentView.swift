//
//  ContentView.swift
//  Test
//
//  Created by Apple on 21/06/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var AppData : applicationData
    
    var body: some View {
        VStack {
            
            Text(AppData.title)
                .padding(10)
            TextField("write something", text: $AppData.titleinput)
                .padding(10)
            Button("click me") {
                AppData.title = AppData.titleinput
                AppData.titleinput = "typesomethng"
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(AppData: applicationData())
    }
}
