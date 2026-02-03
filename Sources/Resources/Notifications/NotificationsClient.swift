import Foundation

public final class NotificationsClient: Sendable {
    public let adHoc: NotificationsAdHocClient
    public let groups: GroupsClient
    public let userPreferences: UserPreferencesClient
    public let webhookSetup: WebhookSetupClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.adHoc = NotificationsAdHocClient(config: config)
        self.groups = GroupsClient(config: config)
        self.userPreferences = UserPreferencesClient(config: config)
        self.webhookSetup = WebhookSetupClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}