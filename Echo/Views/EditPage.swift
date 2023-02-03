//
//  EditPage.swift
//  Echo
//
//  Created by Hallie on 1/29/23.
//

import SwiftUI

struct EditPage: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                Text("Edit your entry")
                    .foregroundColor(.white)
                    .bold()
            }.padding()
        }
    }
}

struct EditPage_Previews: PreviewProvider {
    static var previews: some View {
        EditPage()
    }
}
