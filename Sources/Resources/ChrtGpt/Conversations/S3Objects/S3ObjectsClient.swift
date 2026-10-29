import Foundation

public final class S3ObjectsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Uploads an image, PDF, document, presentation, spreadsheet, or audio file into one of the caller's ChrtGPT conversations, creating it if needed, once it passes a malware scan, and adds the file's description to the conversation for ChrtGPT's next reply. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | (UploadFile) -> (ChrtGPTConversationS3ObjectMetadata1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.chrtGpt.conversations.s3Objects.addV1(
    ///         conversationId: "conversation_id",
    ///         request: .init(file: .init(data: Data("".utf8)))
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(conversationId: String, request: Requests.BodyPostChrtGptConversationsS3ObjectsAddV1, requestOptions: RequestOptions? = nil) async throws -> ChrtGptConversationS3ObjectMetadata1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/chrt_gpt/conversations/s3_objects/add/v1/\(conversationId)",
            contentType: .multipartFormData,
            body: request.asMultipartFormData(),
            requestOptions: requestOptions,
            responseType: ChrtGptConversationS3ObjectMetadata1.self
        )
    }

    /// Gets a file the caller uploaded into one of their ChrtGPT conversations: what it is, its description, and its preview. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | () -> (ChrtGPTConversationS3ObjectMetadata1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.chrtGpt.conversations.s3Objects.getS3ObjectMetadataV1(conversationS3ObjectMetadataId: "conversation_s3_object_metadata_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getS3ObjectMetadataV1(conversationS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> ChrtGptConversationS3ObjectMetadata1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/chrt_gpt/conversations/s3_objects/s3_object_metadata/v1/\(conversationS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: ChrtGptConversationS3ObjectMetadata1.self
        )
    }

    /// Streams a file the caller uploaded into one of their ChrtGPT conversations. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | () -> (binary)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.chrtGpt.conversations.s3Objects.getV1(conversationS3ObjectMetadataId: "conversation_s3_object_metadata_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(conversationS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Data {
        return try await httpClient.performRequest(
            method: .get,
            path: "/chrt_gpt/conversations/s3_objects/v1/\(conversationS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Data.self
        )
    }
}