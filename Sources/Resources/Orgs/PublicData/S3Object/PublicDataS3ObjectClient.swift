import Foundation

public final class PublicDataS3ObjectClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Uploads a file, such as a logo, to the caller's organization public data. Retains uploaded files; previews require a clean malware scan. | authz: min_org_role=operator | (UploadFile) -> (OrgPublicDataS3ObjectMetadata1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.publicData.s3Object.addV1(request: .init(file: .init(data: Data("".utf8))))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(request: Requests.BodyPostOrgPublicDataS3ObjectAddV1, requestOptions: RequestOptions? = nil) async throws -> OrgPublicDataS3ObjectMetadata1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/org_public_data/s3_object/add/v1",
            contentType: .multipartFormData,
            body: request.asMultipartFormData(),
            requestOptions: requestOptions,
            responseType: OrgPublicDataS3ObjectMetadata1.self
        )
    }

    /// Deletes an S3 object and its metadata from the caller's organization public data. | authz: min_org_role=operator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.publicData.s3Object.deleteV1(orgPublicDataS3ObjectMetadataId: "org_public_data_s3_object_metadata_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(orgPublicDataS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/orgs/org_public_data/s3_object/delete/v1/\(orgPublicDataS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves metadata for an organization public data S3 object. | () -> (OrgPublicDataS3ObjectMetadata1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.publicData.s3Object.getS3ObjectMetadataV1(orgPublicDataS3ObjectMetadataId: "org_public_data_s3_object_metadata_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getS3ObjectMetadataV1(orgPublicDataS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> OrgPublicDataS3ObjectMetadata1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_public_data/s3_object/s3_object_metadata/v1/\(orgPublicDataS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: OrgPublicDataS3ObjectMetadata1.self
        )
    }

    /// Streams an organization public data S3 object file from storage. | () -> (binary)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.publicData.s3Object.getV1(orgPublicDataS3ObjectMetadataId: "org_public_data_s3_object_metadata_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(orgPublicDataS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Data {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_public_data/s3_object/v1/\(orgPublicDataS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Data.self
        )
    }
}