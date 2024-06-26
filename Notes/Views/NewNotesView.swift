//
//  NewNotesView.swift
//  Notes
//
//  Created by Babypowder on 3/4/2567 BE.
//

import SwiftUI

struct NewNotesView: View {
    @StateObject var viewModel = NewNotesViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 50)
            
            Form {
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Content", text: $viewModel.content, axis: .vertical)
                    .lineLimit(15, reservesSpace: true)
                    .textFieldStyle(DefaultTextFieldStyle())
                    
                
                
                TLButton(title: "Save", background: .pink) {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                }
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(
                    title: Text("Error"),
                    message: Text("Please fill in all fields and select due date that is today or newer")
                )
            }
        }
    }
}


#Preview {
    NewNotesView(newItemPresented: .constant(true))
}

