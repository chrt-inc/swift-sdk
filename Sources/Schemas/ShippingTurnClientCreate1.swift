import Foundation

public struct ShippingTurnClientCreate1: Codable, Hashable, Sendable {
    public let cargoIds: [String]?
    public let directoryEntryIds: [String]?
    public let driverIds: [String]?
    public let executorOrgIds: [String]?
    public let offChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let taskArtifactIds: [String]?
    public let taskGroupIds: [String]?
    public let taskIds: [String]?
    public let text: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cargoIds: [String]? = nil,
        directoryEntryIds: [String]? = nil,
        driverIds: [String]? = nil,
        executorOrgIds: [String]? = nil,
        offChrtShipperOrgId: String? = nil,
        shipperOrgId: String? = nil,
        taskArtifactIds: [String]? = nil,
        taskGroupIds: [String]? = nil,
        taskIds: [String]? = nil,
        text: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cargoIds = cargoIds
        self.directoryEntryIds = directoryEntryIds
        self.driverIds = driverIds
        self.executorOrgIds = executorOrgIds
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.shipperOrgId = shipperOrgId
        self.taskArtifactIds = taskArtifactIds
        self.taskGroupIds = taskGroupIds
        self.taskIds = taskIds
        self.text = text
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cargoIds = try container.decodeIfPresent([String].self, forKey: .cargoIds)
        self.directoryEntryIds = try container.decodeIfPresent([String].self, forKey: .directoryEntryIds)
        self.driverIds = try container.decodeIfPresent([String].self, forKey: .driverIds)
        self.executorOrgIds = try container.decodeIfPresent([String].self, forKey: .executorOrgIds)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.taskArtifactIds = try container.decodeIfPresent([String].self, forKey: .taskArtifactIds)
        self.taskGroupIds = try container.decodeIfPresent([String].self, forKey: .taskGroupIds)
        self.taskIds = try container.decodeIfPresent([String].self, forKey: .taskIds)
        self.text = try container.decodeIfPresent(String.self, forKey: .text)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.cargoIds, forKey: .cargoIds)
        try container.encodeIfPresent(self.directoryEntryIds, forKey: .directoryEntryIds)
        try container.encodeIfPresent(self.driverIds, forKey: .driverIds)
        try container.encodeIfPresent(self.executorOrgIds, forKey: .executorOrgIds)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeIfPresent(self.taskArtifactIds, forKey: .taskArtifactIds)
        try container.encodeIfPresent(self.taskGroupIds, forKey: .taskGroupIds)
        try container.encodeIfPresent(self.taskIds, forKey: .taskIds)
        try container.encodeIfPresent(self.text, forKey: .text)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cargoIds = "cargo_ids"
        case directoryEntryIds = "directory_entry_ids"
        case driverIds = "driver_ids"
        case executorOrgIds = "executor_org_ids"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case shipperOrgId = "shipper_org_id"
        case taskArtifactIds = "task_artifact_ids"
        case taskGroupIds = "task_group_ids"
        case taskIds = "task_ids"
        case text
    }
}