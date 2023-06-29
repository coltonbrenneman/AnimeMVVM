//
//  Character.swift
//  AnimeMVVM
//
//  Created by Colton Brenneman on 6/29/23.
//

import Foundation

struct CharacterTopLevelDictionary: Decodable {
    let data: CharacterData
}

struct CharacterData: Decodable {
    let id: String
    let attributes: Attributes
}

struct Attributes: Decodable {
    private enum CodingKeys: String, CodingKey {
        case canonicalName
        case description
        case imageDictionary = "image"
        case characterID = "malId"
    }
    let canonicalName: String
    let description: String
    let imageDictionary: ImageDictionary
    let characterID: Int
}

struct ImageDictionary: Decodable {
    // The image URL I need to use for my image fetch
    let medium: String
}
