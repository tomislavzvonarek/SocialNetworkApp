//
//  ErrorHandler.swift
//  SocialNetworkApp
//
//  Created by Tomislav Zvonarek on 18.06.2023..
//

import Foundation

@MainActor
protocol StateManager: AnyObject {
    var error: Error? { get set }
    var isWorking: Bool { get set }
}

extension StateManager {
    var isWorking: Bool {
        get { false }
        set {}
    }
    
    typealias Action = () async throws -> Void
    
    private func withStateManagement(perform action: @escaping Action) async {
        isWorking = true
        do {
            try await action()
        } catch {
            print("[\(Self.self)] Error: \(error)")
            self.error = error
        }
        isWorking = false
    }
    
    nonisolated func withStateManagingTask(perform action: @escaping Action) {
        Task {
          await withStateManagement(perform: action)
        }
    }
}
