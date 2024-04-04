//
//  LoginViewModel.swift
//  Notes
//
//  Created by Babypowder on 3/4/2567 BE.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password)
    }
}
