import Foundation

public struct CiriumFlightStatus: Codable, Hashable, Sendable {
    public let airportResources: CiriumAirportResources?
    public let arrivalAirportFsCode: String?
    public let carrierFsCode: String?
    public let departureAirportFsCode: String?
    public let departureDate: CiriumDate?
    public let flightId: Int?
    public let flightNumber: String?
    public let operationalTimes: CiriumOperationalTimes?
    public let status: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        airportResources: CiriumAirportResources? = nil,
        arrivalAirportFsCode: String? = nil,
        carrierFsCode: String? = nil,
        departureAirportFsCode: String? = nil,
        departureDate: CiriumDate? = nil,
        flightId: Int? = nil,
        flightNumber: String? = nil,
        operationalTimes: CiriumOperationalTimes? = nil,
        status: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.airportResources = airportResources
        self.arrivalAirportFsCode = arrivalAirportFsCode
        self.carrierFsCode = carrierFsCode
        self.departureAirportFsCode = departureAirportFsCode
        self.departureDate = departureDate
        self.flightId = flightId
        self.flightNumber = flightNumber
        self.operationalTimes = operationalTimes
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.airportResources = try container.decodeIfPresent(CiriumAirportResources.self, forKey: .airportResources)
        self.arrivalAirportFsCode = try container.decodeIfPresent(String.self, forKey: .arrivalAirportFsCode)
        self.carrierFsCode = try container.decodeIfPresent(String.self, forKey: .carrierFsCode)
        self.departureAirportFsCode = try container.decodeIfPresent(String.self, forKey: .departureAirportFsCode)
        self.departureDate = try container.decodeIfPresent(CiriumDate.self, forKey: .departureDate)
        self.flightId = try container.decodeIfPresent(Int.self, forKey: .flightId)
        self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
        self.operationalTimes = try container.decodeIfPresent(CiriumOperationalTimes.self, forKey: .operationalTimes)
        self.status = try container.decodeIfPresent(String.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.airportResources, forKey: .airportResources)
        try container.encodeIfPresent(self.arrivalAirportFsCode, forKey: .arrivalAirportFsCode)
        try container.encodeIfPresent(self.carrierFsCode, forKey: .carrierFsCode)
        try container.encodeIfPresent(self.departureAirportFsCode, forKey: .departureAirportFsCode)
        try container.encodeIfPresent(self.departureDate, forKey: .departureDate)
        try container.encodeIfPresent(self.flightId, forKey: .flightId)
        try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
        try container.encodeIfPresent(self.operationalTimes, forKey: .operationalTimes)
        try container.encodeIfPresent(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case airportResources
        case arrivalAirportFsCode
        case carrierFsCode
        case departureAirportFsCode
        case departureDate
        case flightId
        case flightNumber
        case operationalTimes
        case status
    }
}