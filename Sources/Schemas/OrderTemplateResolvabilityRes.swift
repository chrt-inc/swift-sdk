import Foundation

public struct OrderTemplateResolvabilityRes: Codable, Hashable, Sendable {
    public let unresolvableCoordinator: Bool?
    public let unresolvableDirectoryEntryIds: [String]?
    public let unresolvableDriverIds: [String]?
    public let unresolvableOffChrtShipper: Bool?
    public let valid: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        unresolvableCoordinator: Bool? = nil,
        unresolvableDirectoryEntryIds: [String]? = nil,
        unresolvableDriverIds: [String]? = nil,
        unresolvableOffChrtShipper: Bool? = nil,
        valid: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.unresolvableCoordinator = unresolvableCoordinator
        self.unresolvableDirectoryEntryIds = unresolvableDirectoryEntryIds
        self.unresolvableDriverIds = unresolvableDriverIds
        self.unresolvableOffChrtShipper = unresolvableOffChrtShipper
        self.valid = valid
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.unresolvableCoordinator = try container.decodeIfPresent(Bool.self, forKey: .unresolvableCoordinator)
        self.unresolvableDirectoryEntryIds = try container.decodeIfPresent([String].self, forKey: .unresolvableDirectoryEntryIds)
        self.unresolvableDriverIds = try container.decodeIfPresent([String].self, forKey: .unresolvableDriverIds)
        self.unresolvableOffChrtShipper = try container.decodeIfPresent(Bool.self, forKey: .unresolvableOffChrtShipper)
        self.valid = try container.decode(Bool.self, forKey: .valid)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.unresolvableCoordinator, forKey: .unresolvableCoordinator)
        try container.encodeIfPresent(self.unresolvableDirectoryEntryIds, forKey: .unresolvableDirectoryEntryIds)
        try container.encodeIfPresent(self.unresolvableDriverIds, forKey: .unresolvableDriverIds)
        try container.encodeIfPresent(self.unresolvableOffChrtShipper, forKey: .unresolvableOffChrtShipper)
        try container.encode(self.valid, forKey: .valid)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case unresolvableCoordinator = "unresolvable_coordinator"
        case unresolvableDirectoryEntryIds = "unresolvable_directory_entry_ids"
        case unresolvableDriverIds = "unresolvable_driver_ids"
        case unresolvableOffChrtShipper = "unresolvable_off_chrt_shipper"
        case valid
    }
}