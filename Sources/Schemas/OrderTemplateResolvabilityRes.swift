import Foundation

public struct OrderTemplateResolvabilityRes: Codable, Hashable, Sendable {
    public let valid: Bool
    public let unresolvableOffChrtShipper: Bool?
    public let unresolvableDriverIds: [String]?
    public let unresolvableDirectoryEntryIds: [String]?
    public let unresolvableCoordinator: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        valid: Bool,
        unresolvableOffChrtShipper: Bool? = nil,
        unresolvableDriverIds: [String]? = nil,
        unresolvableDirectoryEntryIds: [String]? = nil,
        unresolvableCoordinator: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.valid = valid
        self.unresolvableOffChrtShipper = unresolvableOffChrtShipper
        self.unresolvableDriverIds = unresolvableDriverIds
        self.unresolvableDirectoryEntryIds = unresolvableDirectoryEntryIds
        self.unresolvableCoordinator = unresolvableCoordinator
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.valid = try container.decode(Bool.self, forKey: .valid)
        self.unresolvableOffChrtShipper = try container.decodeIfPresent(Bool.self, forKey: .unresolvableOffChrtShipper)
        self.unresolvableDriverIds = try container.decodeIfPresent([String].self, forKey: .unresolvableDriverIds)
        self.unresolvableDirectoryEntryIds = try container.decodeIfPresent([String].self, forKey: .unresolvableDirectoryEntryIds)
        self.unresolvableCoordinator = try container.decodeIfPresent(Bool.self, forKey: .unresolvableCoordinator)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.valid, forKey: .valid)
        try container.encodeIfPresent(self.unresolvableOffChrtShipper, forKey: .unresolvableOffChrtShipper)
        try container.encodeIfPresent(self.unresolvableDriverIds, forKey: .unresolvableDriverIds)
        try container.encodeIfPresent(self.unresolvableDirectoryEntryIds, forKey: .unresolvableDirectoryEntryIds)
        try container.encodeIfPresent(self.unresolvableCoordinator, forKey: .unresolvableCoordinator)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case valid
        case unresolvableOffChrtShipper = "unresolvable_off_chrt_shipper"
        case unresolvableDriverIds = "unresolvable_driver_ids"
        case unresolvableDirectoryEntryIds = "unresolvable_directory_entry_ids"
        case unresolvableCoordinator = "unresolvable_coordinator"
    }
}