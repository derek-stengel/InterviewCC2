//
//  Model.swift
//  InterviewCodeChallenge2
//
//  Created by Derek Stengel on 7/19/24.
//

import Foundation

struct Name: Codable {
    let title: String
    let first: String
    let last: String
}

struct Picture: Codable {
    let large: URL
    let medium: URL
    let thumbnail: URL
}

struct Info: Codable {
    let seed: String
    let results: Int
    let page: Int
    let version: String
}

struct User: Codable {
    let name: Name
    let picture: Picture
    let email: String
    // Add other properties as needed
}

struct RandomUserResponse: Codable {
    let results: [User]
    let info: Info
}
