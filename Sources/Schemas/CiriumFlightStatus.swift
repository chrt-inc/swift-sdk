import Foundation

public struct CiriumFlightStatus: Codable, Hashable, Sendable {
    public let flightId: Int?
    public let status: String?
    public let carrierFsCode: String?
    public let flightNumber: String?
    public let departureAirportFsCode: String?
    public let arrivalAirportFsCode: String?
    public let departureDate: CiriumDate?
    public let operationalTimes: CiriumOperationalTimes?
    public let airportResources: CiriumAirportResources?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        flightId: Int? = nil,
        status: String? = nil,
        carrierFsCode: String? = nil,
        flightNumber: String? = nil,
        departureAirportFsCode: String? = nil,
        arrivalAirportFsCode: String? = nil,
        departureDate: CiriumDate? = nil,
        operationalTimes: CiriumOperationalTimes? = nil,
        airportResources: CiriumAirportResources? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.flightId = flightId
        self.status = status
        self.carrierFsCode = carrierFsCode
        self.flightNumber = flightNumber
        self.departureAirportFsCode = departureAirportFsCode
        self.arrivalAirportFsCode = arrivalAirportFsCode
        self.departureDate = departureDate
        self.operationalTimes = operationalTimes
        self.airportResources = airportResources
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.flightId = try container.decodeIfPresent(Int.self, forKey: .flightId)
        self.status = try container.decodeIfPresent(String.self, forKey: .status)
        self.carrierFsCode = try container.decodeIfPresent(String.self, forKey: .carrierFsCode)
        self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
        self.departureAirportFsCode = try container.decodeIfPresent(String.self, forKey: .departureAirportFsCode)
        self.arrivalAirportFsCode = try container.decodeIfPresent(String.self, forKey: .arrivalAirportFsCode)
        self.departureDate = try container.decodeIfPresent(CiriumDate.self, forKey: .departureDate)
        self.operationalTimes = try container.decodeIfPresent(CiriumOperationalTimes.self, forKey: .operationalTimes)
        self.airportResources = try container.decodeIfPresent(CiriumAirportResources.self, forKey: .airportResources)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.flightId, forKey: .flightId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.carrierFsCode, forKey: .carrierFsCode)
        try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
        try container.encodeIfPresent(self.departureAirportFsCode, forKey: .departureAirportFsCode)
        try container.encodeIfPresent(self.arrivalAirportFsCode, forKey: .arrivalAirportFsCode)
        try container.encodeIfPresent(self.departureDate, forKey: .departureDate)
        try container.encodeIfPresent(self.operationalTimes, forKey: .operationalTimes)
        try container.encodeIfPresent(self.airportResources, forKey: .airportResources)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case flightId
        case status
        case carrierFsCode
        case flightNumber
        case departureAirportFsCode
        case arrivalAirportFsCode
        case departureDate
        case operationalTimes
        case airportResources
    }
}