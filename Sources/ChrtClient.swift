import Foundation

/// Use this class to access the different functions within the SDK. You can instantiate any number of clients with different configuration that will propagate to these functions.
public final class ChrtClient: Sendable {
    public let payments: PaymentsClient
    public let connections: ConnectionsClient
    public let orgProfiles: OrgProfilesClient
    public let dev: DevClient
    public let flights: FlightsClient
    public let drivers: DriversClient
    public let cargos: CargosClient
    public let taskArtifacts: TaskArtifactsClient
    public let offChrtShipperOrg: OffChrtShipperOrgClient
    public let orders: OrdersClient
    public let orderDrafts: OrderDraftsClient
    public let taskGroups: TaskGroupsClient
    public let tasks: TasksClient
    public let directoryEntries: DirectoryEntriesClient
    public let orgs: OrgsClient
    public let root: RootClient
    public let users: UsersClient
    public let utils: UtilsClient
    public let analytics: AnalyticsClient
    public let billing: BillingClient
    public let notifications: NotificationsClient
    public let orgInfoForConnections: OrgInfoForConnectionsClient
    public let tracking: TrackingClient
    private let httpClient: HTTPClient

    /// Initialize the client with the specified configuration and a static bearer token.
    ///
    /// - Parameter baseURL: The base URL to use for requests from the client. If not provided, the default base URL will be used.
    /// - Parameter token: Bearer token for authentication. If provided, will be sent as "Bearer {token}" in Authorization header.
    /// - Parameter headers: Additional headers to send with each request.
    /// - Parameter timeout: Request timeout in seconds. Defaults to 60 seconds. Ignored if a custom `urlSession` is provided.
    /// - Parameter maxRetries: Maximum number of retries for failed requests. Defaults to 2.
    /// - Parameter urlSession: Custom `URLSession` to use for requests. If not provided, a default session will be created with the specified timeout.
    public convenience init(
        baseURL: String = ChrtEnvironment.local.rawValue,
        token: String? = nil,
        headers: [String: String]? = nil,
        timeout: Int? = nil,
        maxRetries: Int? = nil,
        urlSession: URLSession? = nil
    ) {
        self.init(
            baseURL: baseURL,
            headerAuth: nil,
            bearerAuth: token.map {
                .init(token: .staticToken($0))
            },
            basicAuth: nil,
            headers: headers,
            timeout: timeout,
            maxRetries: maxRetries,
            urlSession: urlSession
        )
    }

    /// Initialize the client with the specified configuration and an async bearer token provider.
    ///
    /// - Parameter baseURL: The base URL to use for requests from the client. If not provided, the default base URL will be used.
    /// - Parameter token: An async function that returns the bearer token for authentication. If provided, will be sent as "Bearer {token}" in Authorization header.
    /// - Parameter headers: Additional headers to send with each request.
    /// - Parameter timeout: Request timeout in seconds. Defaults to 60 seconds. Ignored if a custom `urlSession` is provided.
    /// - Parameter maxRetries: Maximum number of retries for failed requests. Defaults to 2.
    /// - Parameter urlSession: Custom `URLSession` to use for requests. If not provided, a default session will be created with the specified timeout.
    public convenience init(
        baseURL: String = ChrtEnvironment.local.rawValue,
        token: ClientConfig.CredentialProvider? = nil,
        headers: [String: String]? = nil,
        timeout: Int? = nil,
        maxRetries: Int? = nil,
        urlSession: URLSession? = nil
    ) {
        self.init(
            baseURL: baseURL,
            headerAuth: nil,
            bearerAuth: token.map {
                .init(token: .provider($0))
            },
            basicAuth: nil,
            headers: headers,
            timeout: timeout,
            maxRetries: maxRetries,
            urlSession: urlSession
        )
    }

    init(
        baseURL: String,
        headerAuth: ClientConfig.HeaderAuth? = nil,
        bearerAuth: ClientConfig.BearerAuth? = nil,
        basicAuth: ClientConfig.BasicAuth? = nil,
        headers: [String: String]? = nil,
        timeout: Int? = nil,
        maxRetries: Int? = nil,
        urlSession: URLSession? = nil
    ) {
        let config = ClientConfig(
            baseURL: baseURL,
            headerAuth: headerAuth,
            bearerAuth: bearerAuth,
            basicAuth: basicAuth,
            headers: headers,
            timeout: timeout,
            maxRetries: maxRetries,
            urlSession: urlSession
        )
        self.payments = PaymentsClient(config: config)
        self.connections = ConnectionsClient(config: config)
        self.orgProfiles = OrgProfilesClient(config: config)
        self.dev = DevClient(config: config)
        self.flights = FlightsClient(config: config)
        self.drivers = DriversClient(config: config)
        self.cargos = CargosClient(config: config)
        self.taskArtifacts = TaskArtifactsClient(config: config)
        self.offChrtShipperOrg = OffChrtShipperOrgClient(config: config)
        self.orders = OrdersClient(config: config)
        self.orderDrafts = OrderDraftsClient(config: config)
        self.taskGroups = TaskGroupsClient(config: config)
        self.tasks = TasksClient(config: config)
        self.directoryEntries = DirectoryEntriesClient(config: config)
        self.orgs = OrgsClient(config: config)
        self.root = RootClient(config: config)
        self.users = UsersClient(config: config)
        self.utils = UtilsClient(config: config)
        self.analytics = AnalyticsClient(config: config)
        self.billing = BillingClient(config: config)
        self.notifications = NotificationsClient(config: config)
        self.orgInfoForConnections = OrgInfoForConnectionsClient(config: config)
        self.tracking = TrackingClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}