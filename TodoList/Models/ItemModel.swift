//
//  ItemModel.swift
//  TodoList
//
//  Created by 김현석 on 2023/02/27.
//

import Foundation

struct ItemModel: Identifiable {
    // pk 값
    let id: String = UUID().uuidString
    
    let title: String
    let isCompleted: Bool
}
