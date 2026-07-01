import Foundation

public struct ProviderProviderConnection1: Codable, Hashable, Sendable {
    public let id: String
    public let autoAssignEnabled: Bool?
    public let connected: Bool?
    public let coordinatorCustomerIdForExecutorStripeConnectAccount: String?
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String
    /// Must be a string starting with `org_`
    public let executorOrgId: String
    public let schemaVersion: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        autoAssignEnabled: Bool? = nil,
        connected: Bool? = nil,
        coordinatorCustomerIdForExecutorStripeConnectAccount: String? = nil,
        coordinatorOrgId: String,
        executorOrgId: String,
        schemaVersion: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.autoAssignEnabled = autoAssignEnabled
        self.connected = connected
        self.coordinatorCustomerIdForExecutorStripeConnectAccount = coordinatorCustomerIdForExecutorStripeConnectAccount
        self.coordinatorOrgId = coordinatorOrgId
        self.executorOrgId = executorOrgId
        self.schemaVersion = schemaVersion
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.autoAssignEnabled = try container.decodeIfPresent(Bool.self, forKey: .autoAssignEnabled)
        self.connected = try container.decodeIfPresent(Bool.self, forKey: .connected)
        self.coordinatorCustomerIdForExecutorStripeConnectAccount = try container.decodeIfPresent(String.self, forKey: .coordinatorCustomerIdForExecutorStripeConnectAccount)
        self.coordinatorOrgId = try container.decode(String.self, forKey: .coordinatorOrgId)
        self.executorOrgId = try container.decode(String.self, forKey: .executorOrgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.autoAssignEnabled, forKey: .autoAssignEnabled)
        try container.encodeIfPresent(self.connected, forKey: .connected)
        try container.encodeIfPresent(self.coordinatorCustomerIdForExecutorStripeConnectAccount, forKey: .coordinatorCustomerIdForExecutorStripeConnectAccount)
        try container.encode(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encode(self.executorOrgId, forKey: .executorOrgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case autoAssignEnabled = "auto_assign_enabled"
        case connected
        case coordinatorCustomerIdForExecutorStripeConnectAccount = "coordinator_customer_id_for_executor_stripe_connect_account"
        case coordinatorOrgId = "coordinator_org_id"
        case executorOrgId = "executor_org_id"
        case schemaVersion = "schema_version"
    }
}