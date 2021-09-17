# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

### Changed

## [2.0.9] - 2021-08-25

### Added

- Ruby JSON serialization 
- Ruby HTTP service 
- Go generation support & abstractions 
- Workflow for Maven preview and GitHub Release
- Workflow for build validation
- Proper handling for InterruptedException

### Changed

- Fixed a bug where raw collections requests would not be supported 
- Fixes a bug where in memory backing store would not return changed properties to null 
- Fixes a bug where generated models would be tied to a specific backing store implementation 
- Fixed a bug where inline double defintion would make code dom generation fail
- Revamped authentication provider interface to allow multiple authentication schemes
- Fixed a bug preventing from using request builders with raw URls
- Casing fixed for Odata type parsing
- Removed .azure-pipelines/**

