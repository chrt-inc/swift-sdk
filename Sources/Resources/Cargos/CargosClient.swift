import Foundation

public final class CargosClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Updates a cargo's details. Cargo must be in STAGED, IN_TRANSIT, DELIVERED, SKIPPED, or EXCEPTION status. | authz_personas=[lig_org_operators] | (CargoClientUpdate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(cargoId: String, request: CargoClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/cargos/update/v1/\(cargoId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}