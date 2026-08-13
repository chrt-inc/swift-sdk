import Foundation

public final class ComplianceDocumentsS3ObjectClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Uploads a file to a driver compliance document. Automatic blurhash generation for images. | authz: allowed_org_types=[provider], min_org_role=administrator | (UploadFile) -> (DriverComplianceDocumentS3ObjectMetadata1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.complianceDocuments.s3Object.addV1(
    ///         driverComplianceDocumentId: "driver_compliance_document_id",
    ///         request: .init(file: .init(data: Data("".utf8)))
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(driverComplianceDocumentId: String, request: Requests.BodyPostDriverComplianceDocumentsS3ObjectAddV1, requestOptions: RequestOptions? = nil) async throws -> DriverComplianceDocumentS3ObjectMetadata1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/drivers/compliance_documents/s3_object/add/v1/\(driverComplianceDocumentId)",
            contentType: .multipartFormData,
            body: request.asMultipartFormData(),
            requestOptions: requestOptions,
            responseType: DriverComplianceDocumentS3ObjectMetadata1.self
        )
    }

    /// Deletes a driver compliance document S3 object and metadata. | authz: allowed_org_types=[provider], min_org_role=administrator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.complianceDocuments.s3Object.deleteV1(driverComplianceDocumentS3ObjectMetadataId: "driver_compliance_document_s3_object_metadata_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(driverComplianceDocumentS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/drivers/compliance_documents/s3_object/delete/v1/\(driverComplianceDocumentS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves metadata for a driver compliance document S3 object. | authz: allowed_org_types=[provider], min_org_role=administrator | () -> (DriverComplianceDocumentS3ObjectMetadata1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.complianceDocuments.s3Object.getS3ObjectMetadataV1(driverComplianceDocumentS3ObjectMetadataId: "driver_compliance_document_s3_object_metadata_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getS3ObjectMetadataV1(driverComplianceDocumentS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> DriverComplianceDocumentS3ObjectMetadata1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/drivers/compliance_documents/s3_object/s3_object_metadata/v1/\(driverComplianceDocumentS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: DriverComplianceDocumentS3ObjectMetadata1.self
        )
    }

    /// Streams a driver compliance document S3 object file from storage. | authz: allowed_org_types=[provider], min_org_role=administrator | () -> (binary)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.complianceDocuments.s3Object.getV1(driverComplianceDocumentS3ObjectMetadataId: "driver_compliance_document_s3_object_metadata_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(driverComplianceDocumentS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Data {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/drivers/compliance_documents/s3_object/v1/\(driverComplianceDocumentS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Data.self
        )
    }
}