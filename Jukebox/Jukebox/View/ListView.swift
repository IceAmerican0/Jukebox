//
//  ListView.swift
//  Jukebox
//
//  Created by Khai on 3/4/24.
//

import SwiftUI

struct Dummy: Identifiable {
    var name: String
    var id: String { self.name }
}

struct ListView: View {
    @State var searchString = ""
    
    private var data = (0...50).map(String.init).map(Dummy.init)
    
    private var searched: [Dummy] {
        if searchString.isEmpty {
            return data
        } else {
            return data.filter { $0.name.localizedStandardContains(searchString) }
        }
    }
    
    
    private let column = [
        GridItem(.adaptive(minimum: 100))
    ]
    private let row = [
        GridItem(.adaptive(minimum: 100)),
        GridItem(.adaptive(minimum: 100))
    ]
    
    var body: some View {
        ScrollView {
            HStack {
                Image(systemName: "music.note.list")
                    .frame(width: 150, height: 50)
                Image(systemName: "magnifyingglass")
                    .frame(width: 150, height: 50)
                Image(systemName: "person.fill")
                    .frame(width: 150, height: 50)
            }
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: row, spacing: 20) {
                    ForEach(data) { item in
                        Text(item.name)
                            .frame(width: 100, height: 100, alignment: .center)
                            .background(.blue)
                            .font(.title)
                    }
                }
            }.padding()
            
            LazyVGrid(columns: column, spacing: 20) {
                ForEach(data) { item in
                    Text(item.name)
                        .frame(width: 100, height: 100, alignment: .center)
                        .background(.yellow)
                        .font(.title)
                }
            }.padding()
        }
    }
}

#Preview {
    ListView()
}
