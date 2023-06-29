// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "MicrosoftCognitiveServicesSpeech",
  products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library(
      name: "MicrosoftCognitiveServicesSpeech",
      targets: ["MicrosoftCognitiveServicesSpeech"])
  ],
  targets: [
    
    .target(
      name: "MicrosoftCognitiveServicesSpeech",
      dependencies: [
        .target(name: "MicrosoftCognitiveServicesSpeechBinary")
      ],
      path: "Sources"),
    
    .binaryTarget(
      name: "MicrosoftCognitiveServicesSpeechBinary",
      url: "https://csspeechstorage.blob.core.windows.net/drop/1.29.0/MicrosoftCognitiveServicesSpeech-XCFramework-1.29.0.zip",
      checksum: "f88a260a17aad53115f7648e986ca93abc0644fd7ce271444eb9c9637be3dd2b")
    
  ]
)
