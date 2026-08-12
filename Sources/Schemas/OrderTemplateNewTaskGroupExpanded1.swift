import Foundation

public struct OrderTemplateNewTaskGroupExpanded1: Codable, Hashable, Sendable {
    public let coordinatorShipperAccountsByTaskKey: [String: [Account1]]?
    public let executorOrg: OrgPublicData1?
    public let offChrtExecutorOrg: OffChrtOrgData1?
    public let taskGroup: OrderTemplateNewTaskGroup1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        coordinatorShipperAccountsByTaskKey: [String: [Account1]]? = nil,
        executorOrg: OrgPublicData1? = nil,
        offChrtExecutorOrg: OffChrtOrgData1? = nil,
        taskGroup: OrderTemplateNewTaskGroup1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.coordinatorShipperAccountsByTaskKey = coordinatorShipperAccountsByTaskKey
        self.executorOrg = executorOrg
        self.offChrtExecutorOrg = offChrtExecutorOrg
        self.taskGroup = taskGroup
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.coordinatorShipperAccountsByTaskKey = try container.decodeIfPresent([String: [Account1]].self, forKey: .coordinatorShipperAccountsByTaskKey)
        self.executorOrg = try container.decodeIfPresent(OrgPublicData1.self, forKey: .executorOrg)
        self.offChrtExecutorOrg = try container.decodeIfPresent(OffChrtOrgData1.self, forKey: .offChrtExecutorOrg)
        self.taskGroup = try container.decode(OrderTemplateNewTaskGroup1.self, forKey: .taskGroup)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.coordinatorShipperAccountsByTaskKey, forKey: .coordinatorShipperAccountsByTaskKey)
        try container.encodeIfPresent(self.executorOrg, forKey: .executorOrg)
        try container.encodeIfPresent(self.offChrtExecutorOrg, forKey: .offChrtExecutorOrg)
        try container.encode(self.taskGroup, forKey: .taskGroup)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case coordinatorShipperAccountsByTaskKey = "coordinator_shipper_accounts_by_task_key"
        case executorOrg = "executor_org"
        case offChrtExecutorOrg = "off_chrt_executor_org"
        case taskGroup = "task_group"
    }
}