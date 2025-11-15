import Foundation

/// Request payload for shipper administrators viewing an order.
public struct OrderExpandedForShipperReq: Codable, Hashable, Sendable {
    public let expandTaskGroups: Bool?
    public let expandTasks: Bool?
    public let expandTaskArtifacts: Bool?
    public let expandCargos: Bool?
    public let expandCourierOrgCompanyName: Bool?
    public let expandCourierOrgHandle: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        expandTaskGroups: Bool? = nil,
        expandTasks: Bool? = nil,
        expandTaskArtifacts: Bool? = nil,
        expandCargos: Bool? = nil,
        expandCourierOrgCompanyName: Bool? = nil,
        expandCourierOrgHandle: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.expandTaskGroups = expandTaskGroups
        self.expandTasks = expandTasks
        self.expandTaskArtifacts = expandTaskArtifacts
        self.expandCargos = expandCargos
        self.expandCourierOrgCompanyName = expandCourierOrgCompanyName
        self.expandCourierOrgHandle = expandCourierOrgHandle
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.expandTaskGroups = try container.decodeIfPresent(Bool.self, forKey: .expandTaskGroups)
        self.expandTasks = try container.decodeIfPresent(Bool.self, forKey: .expandTasks)
        self.expandTaskArtifacts = try container.decodeIfPresent(Bool.self, forKey: .expandTaskArtifacts)
        self.expandCargos = try container.decodeIfPresent(Bool.self, forKey: .expandCargos)
        self.expandCourierOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandCourierOrgCompanyName)
        self.expandCourierOrgHandle = try container.decodeIfPresent(Bool.self, forKey: .expandCourierOrgHandle)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.expandTaskGroups, forKey: .expandTaskGroups)
        try container.encodeIfPresent(self.expandTasks, forKey: .expandTasks)
        try container.encodeIfPresent(self.expandTaskArtifacts, forKey: .expandTaskArtifacts)
        try container.encodeIfPresent(self.expandCargos, forKey: .expandCargos)
        try container.encodeIfPresent(self.expandCourierOrgCompanyName, forKey: .expandCourierOrgCompanyName)
        try container.encodeIfPresent(self.expandCourierOrgHandle, forKey: .expandCourierOrgHandle)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case expandTaskGroups = "expand_task_groups"
        case expandTasks = "expand_tasks"
        case expandTaskArtifacts = "expand_task_artifacts"
        case expandCargos = "expand_cargos"
        case expandCourierOrgCompanyName = "expand_courier_org_company_name"
        case expandCourierOrgHandle = "expand_courier_org_handle"
    }
}