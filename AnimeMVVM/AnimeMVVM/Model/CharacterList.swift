//
//  CharacterList.swift
//  AnimeMVVM
//
//  Created by Colton Brenneman on 6/29/23.
//

import Foundation

struct TopLevelDictionary: Decodable {
    let data: [CharacterDataDictionary]
    let meta: Meta
    let links: Links
}

struct CharacterDataDictionary: Decodable {
    let id: String
    let relationships: Relationships
}

struct Meta: Decodable {
    let count: Int
}

struct Links: Decodable {
    let first: String
    let next: String
    let last: String
}

struct Relationships: Decodable {
    let character: Character
}

struct Character: Decodable {
    let links: CharacterLinks
}

struct CharacterLinks: Decodable {
    // This is the URL I need to fetch the single character data
    let related: String
}
