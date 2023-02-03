//
//  WelcomePage.swift
//  Echo
//
//  Created by Hallie on 1/28/23.
//

import SwiftUI

struct WelcomePage: View {
    
    @State var showSlice: Bool = false
    
    let authenticationCallback: () -> Void
    
    init(_ auth: @escaping () -> Void) {
        self.authenticationCallback = auth
    }
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                VStack(spacing: 0) {
                    Text("Echo")
                        .font(.system(size: 70, weight: .bold))
                        .foregroundColor(.white)
                    Text("Your personal vlogging safe")
                        .foregroundColor(.white)
                }.transition(.move(edge: .top))
                    .animation(.easeInOut, value: 0)
                
                Spacer()
                
                Button {
                    self.authenticationCallback()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 50)
                            .foregroundColor(.echoGreen)
                        Text("Enter")
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .bold))
                    }
                }.buttonStyle(PlainButtonStyle())
                    .padding(.horizontal)
            }.padding(.vertical, 60)
        }
    }
}

struct WelcomePage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePage {
            return
        }
    }
}
