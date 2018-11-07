## Introduction

The `docusign-base` package is a low-level Haskell binding to the DocuSign eSignature REST API. (See https://github.com/docusign/eSign-OpenAPI-Specification)

If you're writing Haskell code to connect with DocuSign, we recommend that you start with the `docusign-client` package, as it presents a higher-level, safer, and more idiomatic Haskell interface to this API. (See https://github.com/capital-match/docusign-client).

## About this package

The contents of this package are mostly auto-generated, based on the DocuSign OpenAPI specification, with some minor manual tweaks.

At the time of writing, the process for generating this package has not yet been automated.

However, it should be possible to reproduce the contents of this package by following the steps below:

1. Install the Swagger CodeGen tool (https://github.com/swagger-api/swagger-codegen).
2. Download a copy of the DocuSign eSignature REST API specification (https://github.com/docusign/eSign-OpenAPI-Specification/blob/master/esignature.rest.swagger.json).
3. Use the Swagger CodeGen tool to generate a Haskell language client.
4. Upgrade `servant` and `servant-client` to the latest version.
5. Add a standalone `Default` instance to each generated record type.

## Compiler performance

By default, Swagger CodeGen places all generated Haskell record types into a single module. Due to the sheer size of the DocuSign API, the number of generated record types is very large.

To make it possible to compile the very large number of DocuSign-related record types in parallel (in cases where types have no dependencies with one another), this package places every record type into a **separate module**. This enables GHC to compile independent types **in parallel**, potentially saving a huge amount of time when compiling on machines with multiple cores. (At the time of writing, GHC is not able to compile independent parts of a code base in parallel unless those parts are located within separate modules.) To enable parallel compilation, please remember to specify the `-j` GHC compiler option.

## Optional parameters

In many places, the DocuSign API guide indicates that parameters for certain functions are optional. However, whether or not a parameter is optional often depends on the use case. There are certain parameters that are required to be present in certain use cases, but required to be absent in other use cases.

Unfortunately, this optionality is not always encoded within the official REST API Swagger specification. As a result, when Swagger Codegen is used to generate a Haskell Client for this specification, it produces record types where all fields are required. To rectify this over-strictness, this package makes a further modification, that all fields are marked as optional, using the Haskell `Maybe` type.

The `docusign-client` package defines a more type safe and idiomatic Haskell interface to this API, exporting record types that are specific to individual use cases.
