import Foundation

extension Requests {
    public struct BodyPostTaskArtifactsS3ObjectAddV1OortTaskArtifactsS3ObjectAddV1TaskArtifactIdPost {
        public let file: FormFile

        public init(
            file: FormFile
        ) {
            self.file = file
        }
    }
}

extension Requests.BodyPostTaskArtifactsS3ObjectAddV1OortTaskArtifactsS3ObjectAddV1TaskArtifactIdPost: MultipartFormDataConvertible {
    var multipartFormFields: [MultipartFormField] {
        [
            .file(file, fieldName: "file")
        ]
    }
}