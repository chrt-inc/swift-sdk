import Foundation

public final class DirectoryEntriesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves a specific directory entry by ID if authorized to access it. | authz: min_org_role=operator | () -> (DirectoryEntry1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(directoryEntryId: String, requestOptions: RequestOptions? = nil) async throws -> DirectoryEntry1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/directory_entries/v1/\(directoryEntryId)",
            requestOptions: requestOptions,
            responseType: DirectoryEntry1.self
        )
    }

    /// Lists all directory entries created by the caller's organization. | authz: min_org_role=operator | () -> (list[DirectoryEntry1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> [DirectoryEntry1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/directory_entries/list/v1",
            requestOptions: requestOptions,
            responseType: [DirectoryEntry1].self
        )
    }

    /// Creates a directory entry. | (DirectoryEntryClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.DirectoryEntryClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/directory_entries/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates existing directory entry owned by the caller's organization. | (DirectoryEntryClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(directoryEntryId: String, request: Requests.DirectoryEntryClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/directory_entries/update/v1/\(directoryEntryId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes directory entry owned by the caller's organization. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(directoryEntryId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/directory_entries/delete/v1/\(directoryEntryId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}