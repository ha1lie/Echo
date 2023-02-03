//
//  CreationPage.swift
//  Echo
//
//  Created by Hallie on 1/29/23.
//

import SwiftUI

struct CreationPage: View {
    
    let exitCallback: () -> Void
    
    @State var needsRecording: Bool = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Button {
                        self.exitCallback()
                    } label: {
                        Image(systemName: "plus")
                            .font(.system(size: 26))
                            .foregroundColor(.white)
                            .rotationEffect(.degrees(45))
                    }.buttonStyle(PlainButtonStyle())
                    
                    Spacer()
                }.padding(.vertical)
                
                if self.needsRecording {
                    CameraPage(needsRecording: self.$needsRecording)
                } else {
                    EditPage()
                }
            }
        }
    }
}

struct CreationPage_Previews: PreviewProvider {
    static var previews: some View {
        CreationPage {
            return
        }
    }
}
