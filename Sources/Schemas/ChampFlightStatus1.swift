import Foundation

public struct ChampFlightStatus1: Codable, Hashable, Sendable {
    public let schemaVersion: Int?
    public let id: String
    public let champId: String
    public let type: FlightStatus
    public let messageHeader: CargojsonMessageHeader
    public let airWaybillNumber: String
    public let originAndDestination: ChampOriginAndDestination?
    public let quantity: ChampQuantity?
    public let totalNumberOfPieces: Int?
    public let events: [ChampFlightStatusEvent1]?
    /// Must be a string starting with `org_`
    public let orgId: String?
    public let taskGroupId: String?
    public let receivedAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int? = nil,
        id: String,
        champId: String,
        type: FlightStatus,
        messageHeader: CargojsonMessageHeader,
        airWaybillNumber: String,
        originAndDestination: ChampOriginAndDestination? = nil,
        quantity: ChampQuantity? = nil,
        totalNumberOfPieces: Int? = nil,
        events: [ChampFlightStatusEvent1]? = nil,
        orgId: String? = nil,
        taskGroupId: String? = nil,
        receivedAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.champId = champId
        self.type = type
        self.messageHeader = messageHeader
        self.airWaybillNumber = airWaybillNumber
        self.originAndDestination = originAndDestination
        self.quantity = quantity
        self.totalNumberOfPieces = totalNumberOfPieces
        self.events = events
        self.orgId = orgId
        self.taskGroupId = taskGroupId
        self.receivedAt = receivedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.champId = try container.decode(String.self, forKey: .champId)
        self.type = try container.decode(FlightStatus.self, forKey: .type)
        self.messageHeader = try container.decode(CargojsonMessageHeader.self, forKey: .messageHeader)
        self.airWaybillNumber = try container.decode(String.self, forKey: .airWaybillNumber)
        self.originAndDestination = try container.decodeIfPresent(ChampOriginAndDestination.self, forKey: .originAndDestination)
        self.quantity = try container.decodeIfPresent(ChampQuantity.self, forKey: .quantity)
        self.totalNumberOfPieces = try container.decodeIfPresent(Int.self, forKey: .totalNumberOfPieces)
        self.events = try container.decodeIfPresent([ChampFlightStatusEvent1].self, forKey: .events)
        self.orgId = try container.decodeIfPresent(String.self, forKey: .orgId)
        self.taskGroupId = try container.decodeIfPresent(String.self, forKey: .taskGroupId)
        self.receivedAt = try container.decode(Date.self, forKey: .receivedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.champId, forKey: .champId)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.messageHeader, forKey: .messageHeader)
        try container.encode(self.airWaybillNumber, forKey: .airWaybillNumber)
        try container.encodeIfPresent(self.originAndDestination, forKey: .originAndDestination)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.totalNumberOfPieces, forKey: .totalNumberOfPieces)
        try container.encodeIfPresent(self.events, forKey: .events)
        try container.encodeIfPresent(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.receivedAt, forKey: .receivedAt)
    }

    public enum FlightStatus: String, Codable, Hashable, CaseIterable, Sendable {
        case flightStatus = "flight status"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion
        case id = "_id"
        case champId
        case type
        case messageHeader
        case airWaybillNumber
        case originAndDestination
        case quantity
        case totalNumberOfPieces
        case events
        case orgId
        case taskGroupId
        case receivedAt
    }
}