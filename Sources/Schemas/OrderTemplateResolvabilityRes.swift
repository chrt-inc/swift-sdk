import Foundation

public struct OrderTemplateResolvabilityRes: Codable, Hashable, Sendable {
    public let unresolvableContactIds: [String]?
    public let unresolvableCoordinator: Bool?
    public let unresolvableCoordinatorShipperAccountIds: [String]?
    public let unresolvableDriverIds: [String]?
    public let unresolvableOffChrtExecutorOrgDataIds: [String]?
    public let unresolvableOffChrtShipper: Bool?
    public let valid: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        unresolvableContactIds: [String]? = nil,
        unresolvableCoordinator: Bool? = nil,
        unresolvableCoordinatorShipperAccountIds: [String]? = nil,
        unresolvableDriverIds: [String]? = nil,
        unresolvableOffChrtExecutorOrgDataIds: [String]? = nil,
        unresolvableOffChrtShipper: Bool? = nil,
        valid: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.unresolvableContactIds = unresolvableContactIds
        self.unresolvableCoordinator = unresolvableCoordinator
        self.unresolvableCoordinatorShipperAccountIds = unresolvableCoordinatorShipperAccountIds
        self.unresolvableDriverIds = unresolvableDriverIds
        self.unresolvableOffChrtExecutorOrgDataIds = unresolvableOffChrtExecutorOrgDataIds
        self.unresolvableOffChrtShipper = unresolvableOffChrtShipper
        self.valid = valid
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.unresolvableContactIds = try container.decodeIfPresent([String].self, forKey: .unresolvableContactIds)
        self.unresolvableCoordinator = try container.decodeIfPresent(Bool.self, forKey: .unresolvableCoordinator)
        self.unresolvableCoordinatorShipperAccountIds = try container.decodeIfPresent([String].self, forKey: .unresolvableCoordinatorShipperAccountIds)
        self.unresolvableDriverIds = try container.decodeIfPresent([String].self, forKey: .unresolvableDriverIds)
        self.unresolvableOffChrtExecutorOrgDataIds = try container.decodeIfPresent([String].self, forKey: .unresolvableOffChrtExecutorOrgDataIds)
        self.unresolvableOffChrtShipper = try container.decodeIfPresent(Bool.self, forKey: .unresolvableOffChrtShipper)
        self.valid = try container.decode(Bool.self, forKey: .valid)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.unresolvableContactIds, forKey: .unresolvableContactIds)
        try container.encodeIfPresent(self.unresolvableCoordinator, forKey: .unresolvableCoordinator)
        try container.encodeIfPresent(self.unresolvableCoordinatorShipperAccountIds, forKey: .unresolvableCoordinatorShipperAccountIds)
        try container.encodeIfPresent(self.unresolvableDriverIds, forKey: .unresolvableDriverIds)
        try container.encodeIfPresent(self.unresolvableOffChrtExecutorOrgDataIds, forKey: .unresolvableOffChrtExecutorOrgDataIds)
        try container.encodeIfPresent(self.unresolvableOffChrtShipper, forKey: .unresolvableOffChrtShipper)
        try container.encode(self.valid, forKey: .valid)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case unresolvableContactIds = "unresolvable_contact_ids"
        case unresolvableCoordinator = "unresolvable_coordinator"
        case unresolvableCoordinatorShipperAccountIds = "unresolvable_coordinator_shipper_account_ids"
        case unresolvableDriverIds = "unresolvable_driver_ids"
        case unresolvableOffChrtExecutorOrgDataIds = "unresolvable_off_chrt_executor_org_data_ids"
        case unresolvableOffChrtShipper = "unresolvable_off_chrt_shipper"
        case valid
    }
}