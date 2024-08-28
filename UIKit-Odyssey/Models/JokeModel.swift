//
//  JokeModel.swift
//  UIKit-Odyssey
//
//  Created by Jaimin Raval on 26/08/24.
//

import Foundation

struct JokeModel: Codable {
    let id: Int
    let type: String
    let setup: String
    let punchline: String
}
