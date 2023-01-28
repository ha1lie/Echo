//
//  WelcomePage.swift
//  Echo
//
//  Created by Hallie on 1/28/23.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .center) {
                VStack(spacing: 30) {
                    Text("Echo")
                        .font(.system(size: 70, weight: .bold))
                        .foregroundColor(.white)
                    Text("Your personal vlogging safe")
                        .foregroundColor(.white)
                }
                
                Button {
                    print("Authenticate")
                    // To do: Add Authentication
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 50)
                            .foregroundColor(.echoGreen)
                    }
                }

            }
        }
    }
}

struct WelcomePage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePage()
    }
}
