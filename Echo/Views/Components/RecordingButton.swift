//
//  RecordingButton.swift
//  Echo
//
//  Created by Hallie on 1/30/23.
//

import SwiftUI

struct RecordingButton: View {
    
    let callback: () -> Void
    @Binding var recording: Bool
    
    @State var animating: Bool = true
    
    var body: some View {
        Button {
            self.callback()
        } label: {
            ZStack {
                Circle()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.echoGreen.opacity(0.6))
                    .overlay(
                        Circle()
                            .stroke(.white, lineWidth: 4)
                    )
            }
        }.buttonStyle(PlainButtonStyle())
    }
}

struct RecordingButton_Previews: PreviewProvider {
    static var previews: some View {
        RecordingButton(callback: {
            return
        }, recording: .constant(false))
    }
}
