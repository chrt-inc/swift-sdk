import Foundation

/// Template used by an order schedule to generate each order occurrence.
public struct OrderManifest1: Codable, Hashable, Sendable {
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String?
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let offChrtShipperOrgId: String?
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let offChrtReferenceId: String?
    public let cargos: [CargoManifest1]?
    public let taskGroups: [TaskGroupManifest1]?
    public let autoStage: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        coordinatorOrgId: String? = nil,
        shipperOrgId: String? = nil,
        offChrtShipperOrgId: String? = nil,
        offChrtReferenceId: String? = nil,
        cargos: [CargoManifest1]? = nil,
        taskGroups: [TaskGroupManifest1]? = nil,
        autoStage: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.coordinatorOrgId = coordinatorOrgId
        self.shipperOrgId = shipperOrgId
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.offChrtReferenceId = offChrtReferenceId
        self.cargos = cargos
        self.taskGroups = taskGroups
        self.autoStage = autoStage
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.cargos = try container.decodeIfPresent([CargoManifest1].self, forKey: .cargos)
        self.taskGroups = try container.decodeIfPresent([TaskGroupManifest1].self, forKey: .taskGroups)
        self.autoStage = try container.decodeIfPresent(Bool.self, forKey: .autoStage)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        try container.encodeIfPresent(self.cargos, forKey: .cargos)
        try container.encodeIfPresent(self.taskGroups, forKey: .taskGroups)
        try container.encodeIfPresent(self.autoStage, forKey: .autoStage)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case coordinatorOrgId = "coordinator_org_id"
        case shipperOrgId = "shipper_org_id"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case offChrtReferenceId = "off_chrt_reference_id"
        case cargos
        case taskGroups = "task_groups"
        case autoStage = "auto_stage"
    }
}