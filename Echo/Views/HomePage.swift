//
//  HomePage.swift
//  Echo
//
//  Created by Hallie on 1/28/23.
//

import SwiftUI

struct HomePage: View {
    
    let unauthenticateCallback: () -> Void
    
    @State var displayedEntry: Int? = nil
    @State var displayEntry: Bool = false
    
    init(_ unauth: @escaping () -> Void) {
        self.unauthenticateCallback = unauth
    }
    
    let data = (0...3)
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            VStack {
                HStack {
                    Text("1/28/23")
                        .font(.system(size: 32, weight: .bold))
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Button {
                        print("Display About Page")
                        //TODO: Create this page and logic
                    } label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.white)
                            .font(.system(size: 26))
                            .rotationEffect(.degrees(90))
                    }.buttonStyle(PlainButtonStyle())
                }.padding(.top)
                
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: self.columns, spacing: 8) {
                        ForEach((0...(self.data.count)), id: \.self) { i in
                            if i == 0 {
                                NewEntryCard {
                                    self.createEntry()
                                }
                            } else {
                                EntryCard(callback: {
                                    self.showEntry()
                                }, entry: i - 1)
                            }
                        }
                    }
                }
            }
            
            FloatingLockButton {
                self.unauthenticateCallback()
            }
        }.padding()
        .ignoresSafeArea(.all, edges: .bottom)
        .background(Color.black, ignoresSafeAreaEdges: .all)
        .sheet(isPresented: self.$displayEntry) {
            EntryPage(entry: 0) // self.displayedEntry
        }
    }
}

extension HomePage {
    private func showEntry() {
        self.displayedEntry = 1
        self.displayEntry = true
    }
    
    private func createEntry() {
        print("Creating an entry")
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage {
            return
        }
    }
}
