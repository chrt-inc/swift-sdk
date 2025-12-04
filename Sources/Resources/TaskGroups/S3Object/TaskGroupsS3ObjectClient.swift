import Foundation

public final class TaskGroupsS3ObjectClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Streams a task group S3 object file from storage. | authz_personas=[courier_driver, courier_org_operators, shipper_org_operators, forwarder_org_operators] | () -> (StreamingResponse)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(taskGroupS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> JSONValue {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/task_groups/s3_object/v1/\(taskGroupS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: JSONValue.self
        )
    }
}