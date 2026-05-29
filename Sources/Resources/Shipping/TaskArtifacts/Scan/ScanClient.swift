import Foundation

public final class ScanClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Appends a barcode/QR scan payload to a SCAN-type task artifact's expected or observed array (deduplicated). | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators, shipper_org_operators] | (AddScanPayloadReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(taskArtifactId: String, request: Requests.AddScanPayloadReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_artifacts/scan/add/v1/\(taskArtifactId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes a barcode/QR scan payload (by value) from a SCAN-type task artifact's expected or observed array. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators, shipper_org_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(taskArtifactId: String, kind: ScanPayloadKindEnum, payload: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/task_artifacts/scan/delete/v1/\(taskArtifactId)",
            queryParams: [
                "kind": .string(kind.rawValue), 
                "payload": .string(payload)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}