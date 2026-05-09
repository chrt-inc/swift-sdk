import Foundation

public struct ProviderProviderConnection1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let departmentId: String?
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String
    /// Must be a string starting with `org_`
    public let executorOrgId: String
    public let connected: Bool?
    public let autoAssignEnabled: Bool?
    public let coordinatorCustomerIdForExecutorStripeConnectAccount: String?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        departmentId: String? = nil,
        coordinatorOrgId: String,
        executorOrgId: String,
        connected: Bool? = nil,
        autoAssignEnabled: Bool? = nil,
        coordinatorCustomerIdForExecutorStripeConnectAccount: String? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.departmentId = departmentId
        self.coordinatorOrgId = coordinatorOrgId
        self.executorOrgId = executorOrgId
        self.connected = connected
        self.autoAssignEnabled = autoAssignEnabled
        self.coordinatorCustomerIdForExecutorStripeConnectAccount = coordinatorCustomerIdForExecutorStripeConnectAccount
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
        self.coordinatorOrgId = try container.decode(String.self, forKey: .coordinatorOrgId)
        self.executorOrgId = try container.decode(String.self, forKey: .executorOrgId)
        self.connected = try container.decodeIfPresent(Bool.self, forKey: .connected)
        self.autoAssignEnabled = try container.decodeIfPresent(Bool.self, forKey: .autoAssignEnabled)
        self.coordinatorCustomerIdForExecutorStripeConnectAccount = try container.decodeIfPresent(String.self, forKey: .coordinatorCustomerIdForExecutorStripeConnectAccount)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
        try container.encode(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encode(self.executorOrgId, forKey: .executorOrgId)
        try container.encodeIfPresent(self.connected, forKey: .connected)
        try container.encodeIfPresent(self.autoAssignEnabled, forKey: .autoAssignEnabled)
        try container.encodeIfPresent(self.coordinatorCustomerIdForExecutorStripeConnectAccount, forKey: .coordinatorCustomerIdForExecutorStripeConnectAccount)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case departmentId = "department_id"
        case coordinatorOrgId = "coordinator_org_id"
        case executorOrgId = "executor_org_id"
        case connected
        case autoAssignEnabled = "auto_assign_enabled"
        case coordinatorCustomerIdForExecutorStripeConnectAccount = "coordinator_customer_id_for_executor_stripe_connect_account"
        case id = "_id"
    }
}