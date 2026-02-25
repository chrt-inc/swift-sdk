import Foundation

public final class UsersClient: Sendable {
    public let directoryEntries: DirectoryEntriesClient
    public let privateData: UsersPrivateDataClient
    public let publicData: UsersPublicDataClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.directoryEntries = DirectoryEntriesClient(config: config)
        self.privateData = UsersPrivateDataClient(config: config)
        self.publicData = UsersPublicDataClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}