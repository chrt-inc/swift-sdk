import Foundation

public struct ChampFlightStatus1: Codable, Hashable, Sendable {
    public let id: String
    public let airWaybillNumber: String
    public let champId: String
    public let events: [ChampFlightStatusEvent1]?
    public let messageHeader: CargojsonMessageHeader
    /// Must be a string starting with `org_`
    public let orgId: String?
    public let originAndDestination: ChampOriginAndDestination?
    public let quantity: ChampQuantity?
    public let receivedAt: Date
    public let schemaVersion: Int?
    public let taskGroupId: String?
    public let totalNumberOfPieces: Int?
    public let type: FlightStatus
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        airWaybillNumber: String,
        champId: String,
        events: [ChampFlightStatusEvent1]? = nil,
        messageHeader: CargojsonMessageHeader,
        orgId: String? = nil,
        originAndDestination: ChampOriginAndDestination? = nil,
        quantity: ChampQuantity? = nil,
        receivedAt: Date,
        schemaVersion: Int? = nil,
        taskGroupId: String? = nil,
        totalNumberOfPieces: Int? = nil,
        type: FlightStatus,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.airWaybillNumber = airWaybillNumber
        self.champId = champId
        self.events = events
        self.messageHeader = messageHeader
        self.orgId = orgId
        self.originAndDestination = originAndDestination
        self.quantity = quantity
        self.receivedAt = receivedAt
        self.schemaVersion = schemaVersion
        self.taskGroupId = taskGroupId
        self.totalNumberOfPieces = totalNumberOfPieces
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.airWaybillNumber = try container.decode(String.self, forKey: .airWaybillNumber)
        self.champId = try container.decode(String.self, forKey: .champId)
        self.events = try container.decodeIfPresent([ChampFlightStatusEvent1].self, forKey: .events)
        self.messageHeader = try container.decode(CargojsonMessageHeader.self, forKey: .messageHeader)
        self.orgId = try container.decodeIfPresent(String.self, forKey: .orgId)
        self.originAndDestination = try container.decodeIfPresent(ChampOriginAndDestination.self, forKey: .originAndDestination)
        self.quantity = try container.decodeIfPresent(ChampQuantity.self, forKey: .quantity)
        self.receivedAt = try container.decode(Date.self, forKey: .receivedAt)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.taskGroupId = try container.decodeIfPresent(String.self, forKey: .taskGroupId)
        self.totalNumberOfPieces = try container.decodeIfPresent(Int.self, forKey: .totalNumberOfPieces)
        self.type = try container.decode(FlightStatus.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.airWaybillNumber, forKey: .airWaybillNumber)
        try container.encode(self.champId, forKey: .champId)
        try container.encodeIfPresent(self.events, forKey: .events)
        try container.encode(self.messageHeader, forKey: .messageHeader)
        try container.encodeIfPresent(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.originAndDestination, forKey: .originAndDestination)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encode(self.receivedAt, forKey: .receivedAt)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.taskGroupId, forKey: .taskGroupId)
        try container.encodeIfPresent(self.totalNumberOfPieces, forKey: .totalNumberOfPieces)
        try container.encode(self.type, forKey: .type)
    }

    public enum FlightStatus: String, Codable, Hashable, CaseIterable, Sendable {
        case flightStatus = "flight status"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case airWaybillNumber
        case champId
        case events
        case messageHeader
        case orgId
        case originAndDestination
        case quantity
        case receivedAt
        case schemaVersion
        case taskGroupId
        case totalNumberOfPieces
        case type
    }
}