//
//  View1.swift
//  Navigation
//
//  Created by Stefan Walkner on 27.01.21.
//

import SwiftUI

struct View1: View {
    @ObservedObject private var viewModel = ViewModel()

    private let includeDelay = true

    var body: some View {
        NavigationLink(
            destination: View2(),
            isActive: $viewModel.foo,
            label: {
                Text("View 1")
            })
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(includeDelay ? 500 : 0)) {
                    viewModel.doSomething()
                }
            })
    }
}

class ViewModel: ObservableObject {
    @Published var foo = false
    func doSomething() {
        foo = true
    }
}

struct View1_Previews: PreviewProvider {
    static var previews: some View {
        View1()
    }
}
