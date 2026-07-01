import Foundation

/// Structured, factual description of a task-artifact image produced by an LLM.
/// 
/// Stored on `TaskArtifactS3ObjectMetadata1.ai_image_description` so downstream
/// consumers (Q&A, search, audit) can answer questions about the
/// artifact without re-sending the image. `model` records which LLM produced
/// the description; `provider` is derived from `model` so the two can never
/// disagree.
public struct AiImageDescription: Codable, Hashable, Sendable {
    public let cargoIdentityAssessment: String
    public let completionEvidence: String
    public let disputeDefensibility: String
    public let locationDescription: String
    public let locationIdentifiers: [String]
    public let model: LlmModelEnum
    public let packageAppearance: String
    public let packageCount: Int?
    public let packageTypes: [String]
    public let proofNotes: [String]
    public let readablePackageText: [String]
    public let schemaVersion: Int?
    public let searchableFacts: [String]?
    public let summary: String
    public let unresolvedQuestions: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cargoIdentityAssessment: String,
        completionEvidence: String,
        disputeDefensibility: String,
        locationDescription: String,
        locationIdentifiers: [String],
        model: LlmModelEnum,
        packageAppearance: String,
        packageCount: Int? = nil,
        packageTypes: [String],
        proofNotes: [String],
        readablePackageText: [String],
        schemaVersion: Int? = nil,
        searchableFacts: [String]? = nil,
        summary: String,
        unresolvedQuestions: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cargoIdentityAssessment = cargoIdentityAssessment
        self.completionEvidence = completionEvidence
        self.disputeDefensibility = disputeDefensibility
        self.locationDescription = locationDescription
        self.locationIdentifiers = locationIdentifiers
        self.model = model
        self.packageAppearance = packageAppearance
        self.packageCount = packageCount
        self.packageTypes = packageTypes
        self.proofNotes = proofNotes
        self.readablePackageText = readablePackageText
        self.schemaVersion = schemaVersion
        self.searchableFacts = searchableFacts
        self.summary = summary
        self.unresolvedQuestions = unresolvedQuestions
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cargoIdentityAssessment = try container.decode(String.self, forKey: .cargoIdentityAssessment)
        self.completionEvidence = try container.decode(String.self, forKey: .completionEvidence)
        self.disputeDefensibility = try container.decode(String.self, forKey: .disputeDefensibility)
        self.locationDescription = try container.decode(String.self, forKey: .locationDescription)
        self.locationIdentifiers = try container.decode([String].self, forKey: .locationIdentifiers)
        self.model = try container.decode(LlmModelEnum.self, forKey: .model)
        self.packageAppearance = try container.decode(String.self, forKey: .packageAppearance)
        self.packageCount = try container.decodeIfPresent(Int.self, forKey: .packageCount)
        self.packageTypes = try container.decode([String].self, forKey: .packageTypes)
        self.proofNotes = try container.decode([String].self, forKey: .proofNotes)
        self.readablePackageText = try container.decode([String].self, forKey: .readablePackageText)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.searchableFacts = try container.decodeIfPresent([String].self, forKey: .searchableFacts)
        self.summary = try container.decode(String.self, forKey: .summary)
        self.unresolvedQuestions = try container.decodeIfPresent([String].self, forKey: .unresolvedQuestions)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.cargoIdentityAssessment, forKey: .cargoIdentityAssessment)
        try container.encode(self.completionEvidence, forKey: .completionEvidence)
        try container.encode(self.disputeDefensibility, forKey: .disputeDefensibility)
        try container.encode(self.locationDescription, forKey: .locationDescription)
        try container.encode(self.locationIdentifiers, forKey: .locationIdentifiers)
        try container.encode(self.model, forKey: .model)
        try container.encode(self.packageAppearance, forKey: .packageAppearance)
        try container.encodeIfPresent(self.packageCount, forKey: .packageCount)
        try container.encode(self.packageTypes, forKey: .packageTypes)
        try container.encode(self.proofNotes, forKey: .proofNotes)
        try container.encode(self.readablePackageText, forKey: .readablePackageText)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.searchableFacts, forKey: .searchableFacts)
        try container.encode(self.summary, forKey: .summary)
        try container.encodeIfPresent(self.unresolvedQuestions, forKey: .unresolvedQuestions)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cargoIdentityAssessment = "cargo_identity_assessment"
        case completionEvidence = "completion_evidence"
        case disputeDefensibility = "dispute_defensibility"
        case locationDescription = "location_description"
        case locationIdentifiers = "location_identifiers"
        case model
        case packageAppearance = "package_appearance"
        case packageCount = "package_count"
        case packageTypes = "package_types"
        case proofNotes = "proof_notes"
        case readablePackageText = "readable_package_text"
        case schemaVersion = "schema_version"
        case searchableFacts = "searchable_facts"
        case summary
        case unresolvedQuestions = "unresolved_questions"
    }
}