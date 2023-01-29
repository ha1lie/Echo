//
//  EntryPage.swift
//  Echo
//
//  Created by Hallie on 1/29/23.
//

import SwiftUI

struct EntryPage: View {
    
    let entry: Int
    
    var body: some View {
        VStack {
            HStack {
                Text("Entry")
                    .font(.system(size: 32, weight: .bold))
                    .foregroundColor(.white)
                
                Spacer()
                
                Menu {
                    Button {
                        print("Delete")
                    } label: {
                        HStack {
                            Text("Delete")
                            Image(systemName: "trash.fill")
                        }.foregroundColor(.red)
                    }.buttonStyle(PlainButtonStyle())

                } label: {
                    Image(systemName: "ellipsis")
                        .font(.system(size: 26))
                        .foregroundColor(.white)
                        .rotationEffect(.degrees(90))
                }

            }.padding(.top)
            
            ScrollView {
                Text("lfwjrng;ljqbe;rkgajfoqejbgr;kjbas klj;ajksgnlmn wlfgubqw;kj fkjf qw;oausnv k qw;fj ;qkawn d;kfhq waoijg .kn v;qajbg;kja b;vk ja;eoruvfq;eaj dflvknz ;iq r;ja v:Kzj fvq;oaeu bv;K v;qieuarogqulisdfblk nlihe qv;ij vrea;ivjleja v;iq egrk e;igr lekh glkeahgr lkghf akdsv kdhv lkeahbf;ojs vljn kjfg")
            }
        }.padding()
    }
}

struct EntryPage_Previews: PreviewProvider {
    static var previews: some View {
        EntryPage(entry: 1)
    }
}
