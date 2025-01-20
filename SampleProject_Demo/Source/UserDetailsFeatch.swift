//
//  UserDetailsFearch.swift
//  SampleProject_Demo
//
//  Created by Nagaraju Kankanala on 20/01/25.
//
import Foundation
import UIKit


struct Credentials: Codable {
    let username: String
    let password: String
}
class featchApiRequest {
    func fetchCredentials(from fileName: String) -> Credentials? {
        // Get the URL of the JSON file in the app bundle
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            print("File not found")
            return nil
        }
        
        do {
            // Load data from the file
            let data = try Data(contentsOf: url)
            // Decode the JSON data into the `Credentials` structure
            let credentials = try JSONDecoder().decode(Credentials.self, from: data)
            return credentials
        } catch {
            print("Error decoding JSON: \(error)")
            return nil
        }
    }
}
