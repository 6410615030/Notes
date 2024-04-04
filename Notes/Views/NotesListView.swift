//
//  NotesListView.swift
//  Notes
//
//  Created by Babypowder on 3/4/2567 BE.
//

import SwiftUI
import FirebaseFirestoreSwift

struct NotesListView: View {
    @StateObject var viewModel: NotesListViewModel
    
    @FirestoreQuery var items: [NotesItem]
    
    init(userId: String) {
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        self._viewModel = StateObject(wrappedValue: NotesListViewModel(userId: userId))
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    NavigationLink(destination: NotesDetailView(item: item)) {
                        NotesItemView(item: item)
                            .swipeActions {
                                Button {
                                    viewModel.delete(id: item.id)
                                } label: {
                                    Image(systemName: "trash.fill")
                                }
                                .tint(.red)
                            }
                    }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("Notes")
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewNotesView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    NotesListView(userId: "niiaynDTtgX0sPPgc4AdkmhpRTf2")
}
