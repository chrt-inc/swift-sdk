import Foundation

extension Requests {
    public struct BodyPostTaskArtifactsS3ObjectAddV1OortTaskArtifactsS3ObjectAddV1TaskArtifactIdPost {
        public let image: FormFile

        public init(
            image: FormFile
        ) {
            self.image = image
        }
    }
}

extension Requests.BodyPostTaskArtifactsS3ObjectAddV1OortTaskArtifactsS3ObjectAddV1TaskArtifactIdPost: MultipartFormDataConvertible {
    var multipartFormFields: [MultipartFormField] {
        [
            .file(image, fieldName: "image")
        ]
    }
}