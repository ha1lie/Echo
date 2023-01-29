//
//  NewEntryCard.swift
//  Echo
//
//  Created by Hallie on 1/28/23.
//

import SwiftUI

struct NewEntryCard: View {
    let callback: () -> Void
    
    var body: some View {
        Button {
            self.callback()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.echoGray)
                
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(.echoGreen)
                    .font(.system(size: 40))
            }
        }.buttonStyle(PlainButtonStyle())
    }
}

struct NewEntryCard_Previews: PreviewProvider {
    static var previews: some View {
        NewEntryCard {
            return
        }
    }
}
