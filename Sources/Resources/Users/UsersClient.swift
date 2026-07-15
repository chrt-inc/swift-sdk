import Foundation

public final class UsersClient: Sendable {
    public let privateData: UsersPrivateDataClient
    public let publicData: UsersPublicDataClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.privateData = UsersPrivateDataClient(config: config)
        self.publicData = UsersPublicDataClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}