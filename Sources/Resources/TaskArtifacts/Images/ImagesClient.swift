import Foundation

public final class ImagesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Streams a task_artifact image file from S3 storage.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByMetadataIdV1(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Data {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/task_artifacts/images/v1/\(taskArtifactS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Data.self
        )
    }

    /// Uploads an image file to a task_artifact with automatic blurhash generation.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func uploadByTaskArtifactIdV1(taskArtifactId: String, request: Requests.BodyPostTaskArtifactsUploadImageV1OortTaskArtifactsImagesUploadV1TaskArtifactIdPost, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_artifacts/images/upload/v1/\(taskArtifactId)",
            contentType: .multipartFormData,
            body: request.asMultipartFormData(),
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes a task_artifact image from both S3 storage and database metadata.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteByMetadataIdV1(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/task_artifacts/images/delete/v1/\(taskArtifactS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}