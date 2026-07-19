import Foundation

public struct CoordinatorExecutorConnectionForCoordinatorListItem: Codable, Hashable, Sendable {
    public let coordinatorExecutorConnection: CoordinatorExecutorConnection1
    public let executorOrgPublicData: OrgPublicData1?
    public let offChrtExecutorOrgData: OffChrtOrgData1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        coordinatorExecutorConnection: CoordinatorExecutorConnection1,
        executorOrgPublicData: OrgPublicData1? = nil,
        offChrtExecutorOrgData: OffChrtOrgData1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.coordinatorExecutorConnection = coordinatorExecutorConnection
        self.executorOrgPublicData = executorOrgPublicData
        self.offChrtExecutorOrgData = offChrtExecutorOrgData
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.coordinatorExecutorConnection = try container.decode(CoordinatorExecutorConnection1.self, forKey: .coordinatorExecutorConnection)
        self.executorOrgPublicData = try container.decodeIfPresent(OrgPublicData1.self, forKey: .executorOrgPublicData)
        self.offChrtExecutorOrgData = try container.decodeIfPresent(OffChrtOrgData1.self, forKey: .offChrtExecutorOrgData)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.coordinatorExecutorConnection, forKey: .coordinatorExecutorConnection)
        try container.encodeIfPresent(self.executorOrgPublicData, forKey: .executorOrgPublicData)
        try container.encodeIfPresent(self.offChrtExecutorOrgData, forKey: .offChrtExecutorOrgData)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case coordinatorExecutorConnection = "coordinator_executor_connection"
        case executorOrgPublicData = "executor_org_public_data"
        case offChrtExecutorOrgData = "off_chrt_executor_org_data"
    }
}