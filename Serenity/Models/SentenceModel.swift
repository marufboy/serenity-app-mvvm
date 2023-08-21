//
//  SentenceModel.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 16/08/23.
//

import Foundation

enum SentenceType{
    case interactive
    case affirmation
    case story
    case message
}

struct SentenceModel{
    let text: String
    let type: SentenceType
}
