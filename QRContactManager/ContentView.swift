//
//  ContentView.swift
//  HotProspects
//
//  Created by Aditya Soni on 8/01/25.
//

import SwiftUI

struct ContentView: View {
    @State private var sortOrder = [
        SortDescriptor(\Prospect.addDate, order: .reverse),
        SortDescriptor(\Prospect.name)
    ]
    
    var body: some View {
        ZStack {
            TabView {
                ProspectsView(filter: .none, sortOrder: sortOrder)
                    .tabItem {
                        Label("Everyone", systemImage: "person.3")
                    }
                
                ProspectsView(filter: .contacted, sortOrder: sortOrder)
                    .tabItem {
                        Label("Contacted", systemImage: "checkmark.circle")
                    }
                
                ProspectsView(filter: .uncontacted, sortOrder: sortOrder)
                    .tabItem {
                        Label("Uncontacted", systemImage: "questionmark.diamond")
                    }
                
                MeView()
                    .tabItem {
                        Label("Me", systemImage: "person.crop.square")
                    }
            }
            
            VStack {
                HStack {
                    Button {
                        sortOrder = [
                            SortDescriptor(\Prospect.name),
                            SortDescriptor(\Prospect.addDate, order: .reverse)
                        ]
                    } label: {
                        HStack {
                            Image(systemName: "arrow.up.arrow.down")
                            Text("Name")
                        }
                    }
                    
                    Button {
                        sortOrder = [
                            SortDescriptor(\Prospect.addDate, order: .reverse),
                            SortDescriptor(\Prospect.name)
                        ]
                    } label: {
                        HStack {
                            Image(systemName: "arrow.up.arrow.down")
                            Text("Recently Added")
                        }
                    }
                }
                .padding()
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
