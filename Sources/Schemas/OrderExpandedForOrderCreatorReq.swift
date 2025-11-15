import Foundation

/// Request payload for the organization that created the order.
public struct OrderExpandedForOrderCreatorReq: Codable, Hashable, Sendable {
    public let expandTaskGroups: Bool?
    public let expandTasks: Bool?
    public let expandTaskArtifacts: Bool?
    public let expandCargos: Bool?
    public let expandShipperOrgCompanyName: Bool?
    public let expandShipperOrgHandle: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        expandTaskGroups: Bool? = nil,
        expandTasks: Bool? = nil,
        expandTaskArtifacts: Bool? = nil,
        expandCargos: Bool? = nil,
        expandShipperOrgCompanyName: Bool? = nil,
        expandShipperOrgHandle: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.expandTaskGroups = expandTaskGroups
        self.expandTasks = expandTasks
        self.expandTaskArtifacts = expandTaskArtifacts
        self.expandCargos = expandCargos
        self.expandShipperOrgCompanyName = expandShipperOrgCompanyName
        self.expandShipperOrgHandle = expandShipperOrgHandle
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.expandTaskGroups = try container.decodeIfPresent(Bool.self, forKey: .expandTaskGroups)
        self.expandTasks = try container.decodeIfPresent(Bool.self, forKey: .expandTasks)
        self.expandTaskArtifacts = try container.decodeIfPresent(Bool.self, forKey: .expandTaskArtifacts)
        self.expandCargos = try container.decodeIfPresent(Bool.self, forKey: .expandCargos)
        self.expandShipperOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandShipperOrgCompanyName)
        self.expandShipperOrgHandle = try container.decodeIfPresent(Bool.self, forKey: .expandShipperOrgHandle)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.expandTaskGroups, forKey: .expandTaskGroups)
        try container.encodeIfPresent(self.expandTasks, forKey: .expandTasks)
        try container.encodeIfPresent(self.expandTaskArtifacts, forKey: .expandTaskArtifacts)
        try container.encodeIfPresent(self.expandCargos, forKey: .expandCargos)
        try container.encodeIfPresent(self.expandShipperOrgCompanyName, forKey: .expandShipperOrgCompanyName)
        try container.encodeIfPresent(self.expandShipperOrgHandle, forKey: .expandShipperOrgHandle)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case expandTaskGroups = "expand_task_groups"
        case expandTasks = "expand_tasks"
        case expandTaskArtifacts = "expand_task_artifacts"
        case expandCargos = "expand_cargos"
        case expandShipperOrgCompanyName = "expand_shipper_org_company_name"
        case expandShipperOrgHandle = "expand_shipper_org_handle"
    }
}