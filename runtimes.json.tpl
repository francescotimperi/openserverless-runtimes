{
    "description": [
        "This file describes the different languages (aka. managed action runtimes) supported by the system",
        "as well as blackbox images that support the runtime specification.",
        "Only actions with runtime families / kinds defined here can be created / read / updated / deleted / invoked.",
        "Define a list of runtime families (example: 'nodejs') with at least one kind per family (example: 'nodejs:14').",
        "Each runtime family needs a default kind (default: true).",
        "When removing or renaming runtime families or runtime kinds from this file, preexisting actions",
        "with the affected kinds can no longer be read / updated / deleted / invoked. In order to remove or rename",
        "runtime families or runtime kinds, mark all affected runtime kinds as deprecated (deprecated: true) and",
        "perform a manual migration of all affected actions.",
        "",
        "This file is meant to list all stable runtimes supported by the Apache Openwhisk community."
    ],
    "runtimes": {
        "nodejs": [
            {
                "kind": "nodejs:21",
                "default": true,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-nodejs",
                    "tag": "$OPS_RUNTIME_TAG_NODEJS_V21"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                },                
                "stemCells": [
                    {
                        "initialCount": 1,
                        "memory": "256 MB",
                        "reactive": {
                            "minCount": 1,
                            "maxCount": 4,
                            "ttl": "2 minutes",
                            "threshold": 1,
                            "increment": 1
                        }
                    }
                ]
            },            
            {
                "kind": "nodejs:20",
                "default": false,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-nodejs",
                    "tag": "$OPS_RUNTIME_TAG_NODEJS_V20"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                }
            },
            {
                "kind": "nodejs:18",
                "default": false,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-nodejs",
                    "tag": "$OPS_RUNTIME_TAG_NODEJS_V18"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                }
            }           
        ],
        "python": [
            {
                "kind": "python:3",
                "default": true,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-python",
                    "tag": "$OPS_RUNTIME_TAG_PYTHON_V3_12"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                },
                "stemCells": [
                    {
                        "initialCount": 1,
                        "memory": "256 MB",
                        "reactive": {
                            "minCount": 1,
                            "maxCount": 4,
                            "ttl": "2 minutes",
                            "threshold": 1,
                            "increment": 1
                        }
                    }
                ]
            },
            {
                "kind": "python:3.11",
                "default": false,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-python",
                    "tag": "$OPS_RUNTIME_TAG_PYTHON_V3_11"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                }
            },
            {
                "kind": "python:3.12",
                "default": false,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-python",
                    "tag": "$OPS_RUNTIME_TAG_PYTHON_V3_12"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                }
            },
            {
                "kind": "python:3.11ca",
                "default": false,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-python",
                    "tag": "$OPS_RUNTIME_TAG_PYTHON_V3_11CA"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                }
            },
            {
                "kind": "python:310",
                "default": false,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-python",
                    "tag": "$OPS_RUNTIME_TAG_PYTHON_V3_10"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                }
            }
        ],
        "go": [
            {
                "kind": "go:1.22",
                "default": true,
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                },
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-go",
                    "tag": "$OPS_RUNTIME_TAG_GO_V1_22"
                }
            },
            {
                "kind": "go:1.21",
                "default": false,
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                },
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-go",
                    "tag": "$OPS_RUNTIME_TAG_GO_V1_21"
                }
            },
            {
                "kind": "go:1.20",
                "default": false,
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                },
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-go",
                    "tag": "$OPS_RUNTIME_TAG_GO_V1_20"
                }
            },            
            {
                "kind": "go:1.20mf",
                "default": false,
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                },
                "image": {
                    "prefix": "ghcr.io/nuvolaris",
                    "name": "go-nuvolaris-metaflow",
                    "tag": "bc86ab6"
                }
            }            
        ],
        "java": [
            {
                "kind": "java:8",
                "default": true,
                "image": {
                    "prefix": "ghcr.io/nuvolaris",
                    "name": "action-java-v8",
                    "tag": "0.3.0-morpheus.22110809"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                },
                "requireMain": true
            }
        ],
        "php": [
            {
                "kind": "php:8.3",
                "default": true,
                "deprecated": false,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-php",
                    "tag": "$OPS_RUNTIME_TAG_PHP_V8_3"
                },
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                }
            },            
            {
                "kind": "php:8.2",
                "default": false,
                "deprecated": false,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-php",
                    "tag": "$OPS_RUNTIME_TAG_PHP_V8_2"
                },
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                }
            },
            {
                "kind": "php:8.1",
                "default": false,
                "deprecated": false,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-php",
                    "tag": "$OPS_RUNTIME_TAG_PHP_V8_1"
                },
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                }
            },
            {
                "kind": "php:8.0",
                "default": false,
                "deprecated": false,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-php",
                    "tag": "$OPS_RUNTIME_TAG_PHP_V8_0"
                },
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                }
            }
        ],
        "ruby": [
            {
                "kind": "ruby:2.5",
                "default": true,
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                },
                "image": {
                    "prefix": "openwhisk",
                    "name": "action-ruby-v2.5",
                    "tag": "nightly"
                }
            }
        ],
        "dotnet": [
            {
                "kind": "dotnet:2.2",
                "default": true,
                "deprecated": false,
                "requireMain": true,
                "image": {
                    "prefix": "openwhisk",
                    "name": "action-dotnet-v2.2",
                    "tag": "nightly"
                },
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                }
            },
            {
                "kind": "dotnet:3.1",
                "default": false,
                "deprecated": false,
                "requireMain": true,
                "image": {
                    "prefix": "openwhisk",
                    "name": "action-dotnet-v3.1",
                    "tag": "nightly"
                },
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                }
            }
        ],
        "rust": [
            {
                "kind": "rust:1.34",
                "default": true,
                "image": {
                    "prefix": "openwhisk",
                    "name": "action-rust-v1.34",
                    "tag": "nightly"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                }
            }
        ]
    },
    "blackboxes": [
        {
            "prefix": "openwhisk",
            "name": "dockerskeleton",
            "tag": "nightly"
        }
    ]
}