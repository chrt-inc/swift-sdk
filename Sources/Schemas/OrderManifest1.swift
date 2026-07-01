import Foundation

/// Template used by an order schedule to generate each order occurrence.
public struct OrderManifest1: Codable, Hashable, Sendable {
    public let autoStage: Bool?
    public let cargoManifests: [CargoManifest1]?
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String?
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let offChrtReferenceId: String?
    public let offChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let taskGroupManifests: [TaskGroupManifest1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        autoStage: Bool? = nil,
        cargoManifests: [CargoManifest1]? = nil,
        coordinatorOrgId: String? = nil,
        offChrtReferenceId: String? = nil,
        offChrtShipperOrgId: String? = nil,
        shipperOrgId: String? = nil,
        taskGroupManifests: [TaskGroupManifest1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.autoStage = autoStage
        self.cargoManifests = cargoManifests
        self.coordinatorOrgId = coordinatorOrgId
        self.offChrtReferenceId = offChrtReferenceId
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.shipperOrgId = shipperOrgId
        self.taskGroupManifests = taskGroupManifests
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.autoStage = try container.decodeIfPresent(Bool.self, forKey: .autoStage)
        self.cargoManifests = try container.decodeIfPresent([CargoManifest1].self, forKey: .cargoManifests)
        self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.taskGroupManifests = try container.decodeIfPresent([TaskGroupManifest1].self, forKey: .taskGroupManifests)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.autoStage, forKey: .autoStage)
        try container.encodeIfPresent(self.cargoManifests, forKey: .cargoManifests)
        try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeIfPresent(self.taskGroupManifests, forKey: .taskGroupManifests)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case autoStage = "auto_stage"
        case cargoManifests = "cargo_manifests"
        case coordinatorOrgId = "coordinator_org_id"
        case offChrtReferenceId = "off_chrt_reference_id"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case shipperOrgId = "shipper_org_id"
        case taskGroupManifests = "task_group_manifests"
    }
}