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
                HomePage {
                    self.localAuthCallback(false)
                }
            } else {
                WelcomePage {
                    self.localAuthCallback(true)
                }
            }
        }
    }
}

extension ContentView {
    private func localAuthCallback(_ unlock: Bool) {
        //TODO: Add authentication callback for welcome page, set accordingly
        withAnimation {
            self.authenticated = unlock
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
