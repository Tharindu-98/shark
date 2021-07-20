/// use for UI json data caching
class CacheStrategy {
  /// maximum duration for cache to stay on disk
  /// default to 3 days
  final Duration maxDuration;

  /// maximum json objects to store on disk
  /// default to 100.
  final num maxCacheCount;

  /// If we should use the cache if available
  /// set True, we would see if the disk contains such element key,
  /// if it exists, will return this value (no network call would occur)
  /// default to [false]
  final bool cacheAsPrimary;

  /// This collection is the one we don't want to store them on disk
  final List<String> excludeKeys;

  CacheStrategy(
      {this.maxDuration = const Duration(days: 3),
      this.maxCacheCount = 100,
      this.cacheAsPrimary = false,
      this.excludeKeys = const []});
}