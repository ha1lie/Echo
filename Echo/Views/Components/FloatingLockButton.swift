//
//  FloatingLockButton.swift
//  Echo
//
//  Created by Hallie on 1/28/23.
//

import SwiftUI

struct FloatingLockButton: View {
    let action: () -> Void
    
    var body: some View {
        Button {
            self.action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 40)
                    .frame(width: 80, height: 80)
                    .foregroundColor(.echoGreen)
                    .shadow(color: .black.opacity(0.4), radius: 4)
                
                Image(systemName: "lock.fill")
                    .foregroundColor(.black)
                    .font(.system(size: 26))
            }
        }.buttonStyle(PlainButtonStyle())
        .padding()
    }
}
