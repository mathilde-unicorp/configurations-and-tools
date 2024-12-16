//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import Moya
import PromiseKit

struct ___VARIABLE_sceneName___Parameters {
    let param1: String
    let param2: Int
}

protocol  ___VARIABLE_sceneName___WorkerProtocol {
    func doRequest(parameters: ___VARIABLE_sceneName___Parameters) async throws -> [<#Result#>]
    func cancelRequest()
}

// MARK: - ___VARIABLE_sceneName___Worker

final class ___VARIABLE_sceneName___Worker: ___VARIABLE_sceneName___WorkerProtocol {
    private var cancellable: Cancellable?

    /// Request `something` with expected `parameters`, returning an asynchronous result
    func doRequest(parameters: ___VARIABLE_sceneName___Parameters) async throws -> [<#Result#>] {
        cancelRequest()

        return try await withCheckedThrowingContinuation { continuation in
          // Conversion between PromiseKit to async await
          firstly {
            <# Add you request here #>
          }.done { response in
              continuation.resume(with: .success(response))
          }.catch { error in
              continuation.resume(with: .failure(error))
          }
        }
    }

    func cancelRequest() {
        cancellable?.cancel()
    }
}
