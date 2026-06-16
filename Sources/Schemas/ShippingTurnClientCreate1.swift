import Foundation

public struct ShippingTurnClientCreate1: Codable, Hashable, Sendable {
    public let text: String?
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let offChrtShipperOrgId: String?
    public let executorOrgIds: [String]?
    public let driverIds: [String]?
    public let directoryEntryIds: [String]?
    public let cargoIds: [String]?
    public let taskIds: [String]?
    public let taskGroupIds: [String]?
    public let taskArtifactIds: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        text: String? = nil,
        shipperOrgId: String? = nil,
        offChrtShipperOrgId: String? = nil,
        executorOrgIds: [String]? = nil,
        driverIds: [String]? = nil,
        directoryEntryIds: [String]? = nil,
        cargoIds: [String]? = nil,
        taskIds: [String]? = nil,
        taskGroupIds: [String]? = nil,
        taskArtifactIds: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.text = text
        self.shipperOrgId = shipperOrgId
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.executorOrgIds = executorOrgIds
        self.driverIds = driverIds
        self.directoryEntryIds = directoryEntryIds
        self.cargoIds = cargoIds
        self.taskIds = taskIds
        self.taskGroupIds = taskGroupIds
        self.taskArtifactIds = taskArtifactIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.text = try container.decodeIfPresent(String.self, forKey: .text)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.executorOrgIds = try container.decodeIfPresent([String].self, forKey: .executorOrgIds)
        self.driverIds = try container.decodeIfPresent([String].self, forKey: .driverIds)
        self.directoryEntryIds = try container.decodeIfPresent([String].self, forKey: .directoryEntryIds)
        self.cargoIds = try container.decodeIfPresent([String].self, forKey: .cargoIds)
        self.taskIds = try container.decodeIfPresent([String].self, forKey: .taskIds)
        self.taskGroupIds = try container.decodeIfPresent([String].self, forKey: .taskGroupIds)
        self.taskArtifactIds = try container.decodeIfPresent([String].self, forKey: .taskArtifactIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.text, forKey: .text)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encodeIfPresent(self.executorOrgIds, forKey: .executorOrgIds)
        try container.encodeIfPresent(self.driverIds, forKey: .driverIds)
        try container.encodeIfPresent(self.directoryEntryIds, forKey: .directoryEntryIds)
        try container.encodeIfPresent(self.cargoIds, forKey: .cargoIds)
        try container.encodeIfPresent(self.taskIds, forKey: .taskIds)
        try container.encodeIfPresent(self.taskGroupIds, forKey: .taskGroupIds)
        try container.encodeIfPresent(self.taskArtifactIds, forKey: .taskArtifactIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case text
        case shipperOrgId = "shipper_org_id"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case executorOrgIds = "executor_org_ids"
        case driverIds = "driver_ids"
        case directoryEntryIds = "directory_entry_ids"
        case cargoIds = "cargo_ids"
        case taskIds = "task_ids"
        case taskGroupIds = "task_group_ids"
        case taskArtifactIds = "task_artifact_ids"
    }
}