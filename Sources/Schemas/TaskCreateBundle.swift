import Foundation

public struct TaskCreateBundle: Codable, Hashable, Sendable {
    public let taskClientCreate: TaskClientCreate1
    public let milestoneClientCreates: [MilestoneClientCreate1]?
    /// Client-side generated UUID that is used with cargo_client_creates_map to find a oort.CargoClientCreate1 object
    public let cargoClientCreatesUuids: [String]?
    /// Email addresses to send notifications to for each milestone
    public let emailAddresses: [String]?
    public let flightNumber: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskClientCreate: TaskClientCreate1,
        milestoneClientCreates: [MilestoneClientCreate1]? = nil,
        cargoClientCreatesUuids: [String]? = nil,
        emailAddresses: [String]? = nil,
        flightNumber: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskClientCreate = taskClientCreate
        self.milestoneClientCreates = milestoneClientCreates
        self.cargoClientCreatesUuids = cargoClientCreatesUuids
        self.emailAddresses = emailAddresses
        self.flightNumber = flightNumber
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskClientCreate = try container.decode(TaskClientCreate1.self, forKey: .taskClientCreate)
        self.milestoneClientCreates = try container.decodeIfPresent([MilestoneClientCreate1].self, forKey: .milestoneClientCreates)
        self.cargoClientCreatesUuids = try container.decodeIfPresent([String].self, forKey: .cargoClientCreatesUuids)
        self.emailAddresses = try container.decodeIfPresent([String].self, forKey: .emailAddresses)
        self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskClientCreate, forKey: .taskClientCreate)
        try container.encodeIfPresent(self.milestoneClientCreates, forKey: .milestoneClientCreates)
        try container.encodeIfPresent(self.cargoClientCreatesUuids, forKey: .cargoClientCreatesUuids)
        try container.encodeIfPresent(self.emailAddresses, forKey: .emailAddresses)
        try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskClientCreate = "task_client_create"
        case milestoneClientCreates = "milestone_client_creates"
        case cargoClientCreatesUuids = "cargo_client_creates_uuids"
        case emailAddresses = "email_addresses"
        case flightNumber = "flight_number"
    }
}