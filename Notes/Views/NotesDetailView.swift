//
//  NotesDetailView.swift
//  Notes
//
//  Created by Babypowder on 3/4/2567 BE.
//

import SwiftUI

struct NotesDetailView: View {
    @StateObject var viewModel = NotesItemViewModel()
    let item: NotesItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.title)
                    .bold()
                
                Text(item.content)
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
        }
    }
}

#Preview {
    NotesDetailView(item: NotesItem(id: "123", title: "Get Milk", content: "temp", createDate: Date().timeIntervalSince1970))
}
