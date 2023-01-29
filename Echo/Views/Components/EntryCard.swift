//
//  EntryCard.swift
//  Echo
//
//  Created by Hallie on 1/28/23.
//

import Foundation

import SwiftUI

struct EntryCard: View {
    let callback: () -> Void
    
    let entry: Int
    
    var body: some View {
        Button {
            self.callback()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.echoGray)
                
                Text("1/28/23 - \(self.entry)")
                    .foregroundColor(.white)
            }.frame(height: 180)
        }.buttonStyle(PlainButtonStyle())
    }
}

struct EntryCard_Previews: PreviewProvider {
    static var previews: some View {
        EntryCard(callback: {
            return
        }, entry: 1)
    }
}
