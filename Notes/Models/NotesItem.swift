//
//  NotesItem.swift
//  Notes
//
//  Created by Babypowder on 3/4/2567 BE.
//

import Foundation

struct NotesItem: Codable, Identifiable {
    let id: String
    let title: String
    let content: String
    let createDate: TimeInterval
}

