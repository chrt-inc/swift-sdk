import Foundation

public final class ImagesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Uploads an image file to a milestone with automatic blurhash generation.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func uploadByMilestoneIdV1(milestoneId: String, comments: String? = nil, request: Requests.BodyPostMilestonesUploadImageV1OortMilestonesImagesUploadV1MilestoneIdPost, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/milestones/images/upload/v1/\(milestoneId)",
            contentType: .multipartFormData,
            queryParams: [
                "comments": comments.map { .string($0) }
            ],
            body: request.asMultipartFormData(),
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes a milestone image from both S3 storage and database metadata.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteByMetadataIdV1(milestoneS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/milestones/images/delete/v1/\(milestoneS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Streams a milestone image file from S3 storage.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByMetadataIdV1(milestoneS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Data {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/milestones/images/v1/\(milestoneS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Data.self
        )
    }
}