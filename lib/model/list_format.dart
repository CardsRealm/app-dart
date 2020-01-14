class ListFormat {
  static const int MODERN = 0;
  static const int STANDARD = 2;
  static const int LEGACY = 3;
  static const int PAUPER = 5;
  static const int COMMANDER = 6;
  static const int BRAWL = 8;
  static const int PIONEER = 19;

  static String getFormat(int format) {
    switch (format) {
      case MODERN:
        return 'MODERN';
      case STANDARD:
        return 'STANDARD';
      case LEGACY:
        return 'LEGACY';
      case PAUPER:
        return 'PAUPER';
      case COMMANDER:
        return 'COMMANDER';
      case BRAWL:
        return 'BRAWL';
      case PIONEER:
        return 'PIONEER';
      default:
        return 'DESCONHECIDO XD';
    }
  }
}
