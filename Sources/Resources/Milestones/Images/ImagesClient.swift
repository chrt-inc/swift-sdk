import Foundation

public final class ImagesClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Uploads an image file to a milestone with automatic blurhash generation.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func uploadByMilestoneId(milestoneId: String, comments: Nullable<String>? = nil, request: any Codable, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/milestones/images/upload/\(milestoneId)",
            queryParams: [
                "comments": comments?.wrappedValue.map { .string($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes a milestone image from both S3 storage and database metadata.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteByMetadataId(milestoneS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/milestones/images/delete/\(milestoneS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Streams a milestone image file from S3 storage.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByMetadataId(milestoneS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Data {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/milestones/images/\(milestoneS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Data.self
        )
    }
}