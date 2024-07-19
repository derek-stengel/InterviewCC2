//
//  Networking.swift
//  InterviewCodeChallenge2
//
//  Created by Derek Stengel on 7/19/24.
//

// This code challenge is meant to show off your skills in networking(UIKit or SwiftUI). Your task is to create an app using this API https://randomuser.me.
// Your app should have two screens. One screen with settings on how many users to display and what type of information would be displayed such as gender, location, email, login, registered, dob, phone, cell, id, and nat. For this project name and picture are always required.
// The second screen should show a tableview with all of the users and the information that has been selected with their name and photo.
// A nice color scheme and UX would be appreciated.

import Foundation

enum APIError: Error {
    case requestFailed
    case invalidData
}

class RandomUserAPI {
    static let shared = RandomUserAPI()
    private init() {}
    
    func fetchRandomUser() async throws -> User {
        guard let url = URL(string: "https://randomuser.me/api/") else {
            throw APIError.requestFailed
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        do {
            let userData = try decoder.decode(RandomUserResponse.self, from: data)
            if let user = userData.results.first {
                return user
            } else {
                throw APIError.invalidData
            }
        } catch {
            throw error
        }
    }
}
