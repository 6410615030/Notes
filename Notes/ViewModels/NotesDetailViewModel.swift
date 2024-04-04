//
//  NotesDetailViewModel.swift
//  Notes
//
//  Created by Babypowder on 3/4/2567 BE.
//

import Foundation

class NotesDetailViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
}
