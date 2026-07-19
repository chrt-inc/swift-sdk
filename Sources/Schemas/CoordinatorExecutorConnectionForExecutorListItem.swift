import Foundation

public struct CoordinatorExecutorConnectionForExecutorListItem: Codable, Hashable, Sendable {
    public let coordinatorExecutorConnection: CoordinatorExecutorConnection1
    public let coordinatorOrgPublicData: OrgPublicData1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        coordinatorExecutorConnection: CoordinatorExecutorConnection1,
        coordinatorOrgPublicData: OrgPublicData1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.coordinatorExecutorConnection = coordinatorExecutorConnection
        self.coordinatorOrgPublicData = coordinatorOrgPublicData
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.coordinatorExecutorConnection = try container.decode(CoordinatorExecutorConnection1.self, forKey: .coordinatorExecutorConnection)
        self.coordinatorOrgPublicData = try container.decodeIfPresent(OrgPublicData1.self, forKey: .coordinatorOrgPublicData)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.coordinatorExecutorConnection, forKey: .coordinatorExecutorConnection)
        try container.encodeIfPresent(self.coordinatorOrgPublicData, forKey: .coordinatorOrgPublicData)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case coordinatorExecutorConnection = "coordinator_executor_connection"
        case coordinatorOrgPublicData = "coordinator_org_public_data"
    }
}