//
//  ComposerManager.swift
//  ComposerChallenge
//
//  Created by Sam LoBue on 8/20/21.
//

import Foundation

class ComposerManager {
    static let shared = ComposerManager()
    
    func fetchComposers(completion: @escaping (Result<[Composer], Error>) -> Void) {
        do {
            let composers = try composerResult()
            if let composers = composers {
                completion(.success(composers))
            }
        } catch {
            completion(.failure(error))
        }
    }
    
    private func composerJSONData() -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: "Composers", ofType: "json"),
               let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error)
        }
        return nil
    }
    
    private func composerResult() throws -> [Composer]? {
        guard let data = composerJSONData() else {
            return []
        }
        let decoder = JSONDecoder()
        let composerModel = try decoder.decode([Composer].self, from: data)
        return composerModel
    }
    
}
