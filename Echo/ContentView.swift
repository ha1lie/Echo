//
//  ContentView.swift
//  Echo
//
//  Created by Hallie on 1/28/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var authenticated: Bool = false
    
    var body: some View {
        VStack {
            if self.authenticated {
                HomePage()
            } else {
                WelcomePage()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
