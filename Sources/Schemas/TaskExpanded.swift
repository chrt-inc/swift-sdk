import Foundation

/// A task with optionally expanded related entities.
public struct TaskExpanded: Codable, Hashable, Sendable {
    public let task: Task1
    public let cargos: [Cargo1]?
    public let milestones: [Milestone1]?
    public let shipperContactInfo: [ShipperContactInfo1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        task: Task1,
        cargos: [Cargo1]? = nil,
        milestones: [Milestone1]? = nil,
        shipperContactInfo: [ShipperContactInfo1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.task = task
        self.cargos = cargos
        self.milestones = milestones
        self.shipperContactInfo = shipperContactInfo
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.task = try container.decode(Task1.self, forKey: .task)
        self.cargos = try container.decodeIfPresent([Cargo1].self, forKey: .cargos)
        self.milestones = try container.decodeIfPresent([Milestone1].self, forKey: .milestones)
        self.shipperContactInfo = try container.decodeIfPresent([ShipperContactInfo1].self, forKey: .shipperContactInfo)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.task, forKey: .task)
        try container.encodeIfPresent(self.cargos, forKey: .cargos)
        try container.encodeIfPresent(self.milestones, forKey: .milestones)
        try container.encodeIfPresent(self.shipperContactInfo, forKey: .shipperContactInfo)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case task
        case cargos
        case milestones
        case shipperContactInfo = "shipper_contact_info"
    }
}