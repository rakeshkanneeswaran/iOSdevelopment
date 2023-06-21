//
//  ContentView.swift
//  test
//
//  Created by Apple on 21/06/23.
//

import SwiftUI

class contentViewData : ObservableObject{
    @Published var title: String = " "
    @Published var authorinput : String = " "
}

struct ContentView: View {
    @EnvironmentObject var AppData : applicationData
    @ObservedObject var contentData = contentViewData()
    
    var body: some View {
        VStack {
            Text(AppData.userData.heading)
                .padding(10)
            TextField("Insert Tilte", text: $contentData.title)
                .padding(10)
                .textFieldStyle(.roundedBorder)
                .background(.red)
            TextField("Enter Autor", text: $contentData.authorinput)
                .textFieldStyle(.roundedBorder)
                .background(.red)
                .padding(10)
            Button("Click Here to save chnages") {
                AppData.userData.book.title = contentData.title
                AppData.userData.book.author  = contentData.authorinput
                contentData.title = "Enter the title here"
                contentData.authorinput = "Enter auhor Name"
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(applicationData())
    }
}
