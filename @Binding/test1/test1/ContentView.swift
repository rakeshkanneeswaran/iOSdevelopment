//
//  ContentView.swift
//  test1
//
//  Created by Apple on 20/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var title: String = "your title come here "
    @State private var textFeildInput : String = ""
    @State private var Activate : Bool = false
    var body: some View {
        VStack {
            
                Headerview(Title: $title)
            TextField("Enter your title here ", text: $textFeildInput)
            Button {
                title = textFeildInput
                Activate = true
            } label: {
                Text("click here to commite change")
            }

        }
        
        .padding()
    }
}


struct Headerview : View {
    @Binding var Title : String
    var body: some View{
        Text(Title)
            .padding(10)
        
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
