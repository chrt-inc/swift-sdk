import Foundation

public final class UsersClient: Sendable {
    public let publicData: UsersPublicDataClient
    public let privateData: UsersPrivateDataClient
    public let directoryEntries: DirectoryEntriesClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.publicData = UsersPublicDataClient(config: config)
        self.privateData = UsersPrivateDataClient(config: config)
        self.directoryEntries = DirectoryEntriesClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}