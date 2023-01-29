//
//  ContentView.swift
//  Echo
//
//  Created by Hallie on 1/28/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var authenticated: Bool = true
    
    var body: some View {
        VStack {
            if self.authenticated {
                HomePage()
            } else {
                WelcomePage(self.localAuthCallback)
            }
        }
    }
}

extension ContentView {
    private func localAuthCallback() {
        //TODO: Add authentication callback for welcome page, set accordingly
        self.authenticated = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
