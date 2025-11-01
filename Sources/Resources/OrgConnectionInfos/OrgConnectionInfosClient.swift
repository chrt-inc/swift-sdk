import Foundation

public final class OrgConnectionInfosClient: Sendable {
    public let shipper: OrgConnectionInfosShipperClient
    public let courier: OrgConnectionInfosCourierClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.shipper = OrgConnectionInfosShipperClient(config: config)
        self.courier = OrgConnectionInfosCourierClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}