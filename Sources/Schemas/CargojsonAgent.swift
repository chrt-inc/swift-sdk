import Foundation

/// [WEBCARGO/CONFIG] Forwarder's IATA agent identification.
/// Same identity as `iata` in WebcargoEmbedViewParams and OY party in bookingRecord XML.
public struct CargojsonAgent: Codable, Hashable, Sendable {
    public let name: String
    public let place: String
    public let accountNumber: String?
    public let iataCargoAgentNumericCode: String?
    public let iataCargoAgentCassAddress: String?
    public let participantIdentifier: CargojsonParticipantIdentifier?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        place: String,
        accountNumber: String? = nil,
        iataCargoAgentNumericCode: String? = nil,
        iataCargoAgentCassAddress: String? = nil,
        participantIdentifier: CargojsonParticipantIdentifier? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.place = place
        self.accountNumber = accountNumber
        self.iataCargoAgentNumericCode = iataCargoAgentNumericCode
        self.iataCargoAgentCassAddress = iataCargoAgentCassAddress
        self.participantIdentifier = participantIdentifier
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.place = try container.decode(String.self, forKey: .place)
        self.accountNumber = try container.decodeIfPresent(String.self, forKey: .accountNumber)
        self.iataCargoAgentNumericCode = try container.decodeIfPresent(String.self, forKey: .iataCargoAgentNumericCode)
        self.iataCargoAgentCassAddress = try container.decodeIfPresent(String.self, forKey: .iataCargoAgentCassAddress)
        self.participantIdentifier = try container.decodeIfPresent(CargojsonParticipantIdentifier.self, forKey: .participantIdentifier)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.place, forKey: .place)
        try container.encodeIfPresent(self.accountNumber, forKey: .accountNumber)
        try container.encodeIfPresent(self.iataCargoAgentNumericCode, forKey: .iataCargoAgentNumericCode)
        try container.encodeIfPresent(self.iataCargoAgentCassAddress, forKey: .iataCargoAgentCassAddress)
        try container.encodeIfPresent(self.participantIdentifier, forKey: .participantIdentifier)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case place
        case accountNumber
        case iataCargoAgentNumericCode
        case iataCargoAgentCassAddress = "iataCargoAgentCASSAddress"
        case participantIdentifier
    }
}