import Foundation

public final class NotificationsClient: Sendable {
    public let shipper: ShipperClient
    public let courier: CourierClient
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.shipper = ShipperClient(config: config)
        self.courier = CourierClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}