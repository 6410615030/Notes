//
//  NotesDetailView.swift
//  Notes
//
//  Created by Babypowder on 3/4/2567 BE.
//

import SwiftUI

struct NotesDetailView: View {
    @StateObject var viewModel: NotesDetailViewModel
    let item: NotesItem
    
    init(userId: String, item: NotesItem) {
        self.item = item
        self._viewModel = StateObject(wrappedValue: NotesDetailViewModel(userId: userId))
    }
    
    var body: some View {
        VStack {
            HStack {
                Text(item.content)
                    .font(.title3)
                    .foregroundColor(Color(.secondaryLabel))
                    .padding()
                Spacer()
            }
        }
        
            
        Spacer()
    }
}


#Preview {
    NotesDetailView(userId: "niiaynDTtgX0sPPgc4AdkmhpRTf2", item: NotesItem(id: "123", title: "Get Milk", content: "temp", createDate: Date().timeIntervalSince1970))
}
