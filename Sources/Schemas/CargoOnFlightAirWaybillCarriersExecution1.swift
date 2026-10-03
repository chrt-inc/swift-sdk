import Foundation

/// When, where, and by whom the AWB was executed for the carrier (usually the agent).
public struct CargoOnFlightAirWaybillCarriersExecution1: Codable, Hashable, Sendable {
    public let authorisationSignature: String
    public let executedOnDate: String
    public let place: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        authorisationSignature: String,
        executedOnDate: String,
        place: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.authorisationSignature = authorisationSignature
        self.executedOnDate = executedOnDate
        self.place = place
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.authorisationSignature = try container.decode(String.self, forKey: .authorisationSignature)
        self.executedOnDate = try container.decode(String.self, forKey: .executedOnDate)
        self.place = try container.decode(String.self, forKey: .place)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.authorisationSignature, forKey: .authorisationSignature)
        try container.encode(self.executedOnDate, forKey: .executedOnDate)
        try container.encode(self.place, forKey: .place)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case authorisationSignature = "authorisation_signature"
        case executedOnDate = "executed_on_date"
        case place
    }
}