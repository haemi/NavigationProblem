//
//  ContentView.swift
//  Navigation
//
//  Created by Stefan Walkner on 27.01.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView(content: {
            NavigationLink(destination: View1()) { /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
