import Foundation

public final class AuthzClient: Sendable {
    public let catalog: CatalogClient
    public let customRoles: CustomRolesClient
    public let groups: GroupsClient
    public let users: UsersClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.catalog = CatalogClient(config: config)
        self.customRoles = CustomRolesClient(config: config)
        self.groups = GroupsClient(config: config)
        self.users = UsersClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}