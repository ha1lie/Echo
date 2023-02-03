//
//  CameraPage.swift
//  Echo
//
//  Created by Hallie on 1/29/23.
//

import SwiftUI

struct CameraPage: View {
    
    @State var isRecording: Bool = true
    
    @Binding var needsRecording: Bool
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.yellow)
                    .frame(width: geo.size.width)
                
                HStack(alignment: .center) {
                    RecordingButton(callback: {
                        print("Start recording")
                        //MARK: DELETE ME
                        self.needsRecording = false
                    }, recording: self.$isRecording)
                }.padding(.vertical, 36)
            }
        }
    }
}

struct CameraPage_Previews: PreviewProvider {
    static var previews: some View {
        CameraPage(needsRecording: .constant(true))
    }
}
