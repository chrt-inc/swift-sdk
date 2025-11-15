import Foundation

/// Expanded order payload for shipper administrators.
public struct OrderExpandedForShipper: Codable, Hashable, Sendable {
    public let order: Order1
    public let taskGroups: [TaskGroup1]?
    public let tasks: [Task1]?
    public let taskArtifacts: [TaskArtifact1]?
    public let cargos: [Cargo1]?
    public let courierOrgCompanyName: String?
    public let courierOrgHandle: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        order: Order1,
        taskGroups: [TaskGroup1]? = nil,
        tasks: [Task1]? = nil,
        taskArtifacts: [TaskArtifact1]? = nil,
        cargos: [Cargo1]? = nil,
        courierOrgCompanyName: String? = nil,
        courierOrgHandle: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.order = order
        self.taskGroups = taskGroups
        self.tasks = tasks
        self.taskArtifacts = taskArtifacts
        self.cargos = cargos
        self.courierOrgCompanyName = courierOrgCompanyName
        self.courierOrgHandle = courierOrgHandle
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.order = try container.decode(Order1.self, forKey: .order)
        self.taskGroups = try container.decodeIfPresent([TaskGroup1].self, forKey: .taskGroups)
        self.tasks = try container.decodeIfPresent([Task1].self, forKey: .tasks)
        self.taskArtifacts = try container.decodeIfPresent([TaskArtifact1].self, forKey: .taskArtifacts)
        self.cargos = try container.decodeIfPresent([Cargo1].self, forKey: .cargos)
        self.courierOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .courierOrgCompanyName)
        self.courierOrgHandle = try container.decodeIfPresent(String.self, forKey: .courierOrgHandle)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.order, forKey: .order)
        try container.encodeIfPresent(self.taskGroups, forKey: .taskGroups)
        try container.encodeIfPresent(self.tasks, forKey: .tasks)
        try container.encodeIfPresent(self.taskArtifacts, forKey: .taskArtifacts)
        try container.encodeIfPresent(self.cargos, forKey: .cargos)
        try container.encodeIfPresent(self.courierOrgCompanyName, forKey: .courierOrgCompanyName)
        try container.encodeIfPresent(self.courierOrgHandle, forKey: .courierOrgHandle)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case order
        case taskGroups = "task_groups"
        case tasks
        case taskArtifacts = "task_artifacts"
        case cargos
        case courierOrgCompanyName = "courier_org_company_name"
        case courierOrgHandle = "courier_org_handle"
    }
}