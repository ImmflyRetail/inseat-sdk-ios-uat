# Changelog — iOS SDK

All notable changes to the iOS SDK will be documented in this file.

## [1.0.9]

### Changed
- Bug fixed and performance improvements

---

## [1.0.8]

### Fixed
- Invalid shop documents are now detected and removed

---

## [1.0.7]

### Added
- Initialization data is now cached locally — the network call is skipped on subsequent app launches until the cache expires
- Product JSON downloads are now authenticated

### Fixed
- `lastProductUpdateDate` now correctly reflects the time product data was last successfully applied
- Stale promotion images are cleaned up when new product data is processed

---

## [1.0.6]

### Added
- Product sync now uses Etag — unchanged product data are no longer re-downloaded
- `lastProductUpdateDate` — indicates when product data was last successfully updated

---

## [1.0.5]

### Changed
- Improved product sync reliability and timing

---

## [1.0.4]

### Added
- New observers for menus and categories

### Fixed
- Promotions are correctly sorted, falling back to name when no sort order is defined

---

## [1.0.3]

### Fixed
- Thread-safety improvements and bug fixes

---

## [1.0.2]

### Fixed
- Bug fixed and performance improvements

---

## [1.0.1]

### Fixed
- Bug fixed and performance improvements

---

## [1.0.0]

- Initial release
