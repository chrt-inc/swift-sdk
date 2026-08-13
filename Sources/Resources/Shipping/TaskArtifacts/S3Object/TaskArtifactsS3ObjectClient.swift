import Foundation

public final class TaskArtifactsS3ObjectClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Uploads a file (image, PDF, etc.) to a task artifact. Automatic blurhash generation for images. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators, shipper_org_operators] | (UploadFile) -> (TaskArtifactS3ObjectMetadata1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.taskArtifacts.s3Object.addV1(
    ///         taskArtifactId: "task_artifact_id",
    ///         request: .init(file: .init(data: Data("".utf8)))
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(taskArtifactId: String, request: Requests.BodyPostTaskArtifactsS3ObjectAddV1, requestOptions: RequestOptions? = nil) async throws -> TaskArtifactS3ObjectMetadata1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_artifacts/s3_object/add/v1/\(taskArtifactId)",
            contentType: .multipartFormData,
            body: request.asMultipartFormData(),
            requestOptions: requestOptions,
            responseType: TaskArtifactS3ObjectMetadata1.self
        )
    }

    /// Writes the AI-generated image description onto an existing TaskArtifactS3ObjectMetadata. Called by the shipping_task_image_analysis Temporal workflow via a delegation JWT. | authz_personas=[driver_for_executor, executor_org_operators, shipper_org_operators, coordinator_org_operators] | (AIImageDescription) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.taskArtifacts.s3Object.writeAiImageDescriptionV1(
    ///         taskArtifactS3ObjectMetadataId: "task_artifact_s3_object_metadata_id",
    ///         request: AiImageDescription(
    ///             cargoIdentityAssessment: "cargo_identity_assessment",
    ///             completionEvidence: "completion_evidence",
    ///             disputeDefensibility: "dispute_defensibility",
    ///             locationDescription: "location_description",
    ///             locationIdentifiers: [
    ///                 "location_identifiers"
    ///             ],
    ///             model: StoredModel.model(
    ///                 .gpt56Terra
    ///             ),
    ///             packageAppearance: "package_appearance",
    ///             packageTypes: [
    ///                 "package_types"
    ///             ],
    ///             proofNotes: [
    ///                 "proof_notes"
    ///             ],
    ///             readablePackageText: [
    ///                 "readable_package_text"
    ///             ],
    ///             summary: "summary"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func writeAiImageDescriptionV1(taskArtifactS3ObjectMetadataId: String, request: AiImageDescription, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/task_artifacts/s3_object/ai_image_description/v1/\(taskArtifactS3ObjectMetadataId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes an S3 object metadata and the associated S3 object from a task artifact. Only the uploader or an operator from the uploading org can delete. | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.taskArtifacts.s3Object.deleteV1(taskArtifactS3ObjectMetadataId: "task_artifact_s3_object_metadata_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/task_artifacts/s3_object/delete/v1/\(taskArtifactS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves the metadata for a task artifact S3 object, including blurhash for placeholder loading. | authz_personas=[driver_for_executor, executor_org_operators, shipper_org_operators, coordinator_org_operators] | () -> (TaskArtifactS3ObjectMetadata1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.taskArtifacts.s3Object.getS3ObjectMetadataV1(taskArtifactS3ObjectMetadataId: "task_artifact_s3_object_metadata_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getS3ObjectMetadataV1(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> TaskArtifactS3ObjectMetadata1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/task_artifacts/s3_object/s3_object_metadata/v1/\(taskArtifactS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: TaskArtifactS3ObjectMetadata1.self
        )
    }

    /// Streams a task artifact S3 object file from storage. | authz_personas=[driver_for_executor, executor_org_operators, shipper_org_operators, coordinator_org_operators] | () -> (binary)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.taskArtifacts.s3Object.getV1(taskArtifactS3ObjectMetadataId: "task_artifact_s3_object_metadata_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Data {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/task_artifacts/s3_object/v1/\(taskArtifactS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Data.self
        )
    }
}