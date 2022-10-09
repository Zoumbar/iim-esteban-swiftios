//
//  Model.swift
//  iim-esteban-swiftios
//
//  Created by Esteban on 09/10/2022.
//

import Foundation


struct ToDo:Decodable{
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}
