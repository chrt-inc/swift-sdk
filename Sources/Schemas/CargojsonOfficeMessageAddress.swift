import Foundation

/// [CONFIG] Office message address for SITA/TTY routing.
public struct CargojsonOfficeMessageAddress: Codable, Hashable, Sendable {
    public let airportCityCode: String
    public let companyDesignator: String
    public let officeFunctionDesignator: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        airportCityCode: String,
        companyDesignator: String,
        officeFunctionDesignator: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.airportCityCode = airportCityCode
        self.companyDesignator = companyDesignator
        self.officeFunctionDesignator = officeFunctionDesignator
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.airportCityCode = try container.decode(String.self, forKey: .airportCityCode)
        self.companyDesignator = try container.decode(String.self, forKey: .companyDesignator)
        self.officeFunctionDesignator = try container.decode(String.self, forKey: .officeFunctionDesignator)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.airportCityCode, forKey: .airportCityCode)
        try container.encode(self.companyDesignator, forKey: .companyDesignator)
        try container.encode(self.officeFunctionDesignator, forKey: .officeFunctionDesignator)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case airportCityCode
        case companyDesignator
        case officeFunctionDesignator
    }
}