//
//  NotesItemView.swift
//  Notes
//
//  Created by Babypowder on 3/4/2567 BE.
//

import SwiftUI

struct NotesItemView: View {
    @StateObject var viewModel = NotesItemViewModel()
    let item: NotesItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.title)
                    .bold()
                
                Text("\(Date(timeIntervalSince1970: item.createDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            
            Spacer()
            
            
            
        }
    }
}


#Preview {
    NotesItemView(item: NotesItem(id: "123", title: "Get Milk", content:"Milk", createDate: Date().timeIntervalSince1970))
}
