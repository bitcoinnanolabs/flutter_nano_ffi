/// Regex and prefix holder for account types.
class NanoAccountType {
  static const int NANO = 1;
  static const int BANANO = 2;
  static const int BTCO = 3;
  static const String NANO_REGEX =
      r"(xrb|nano)(_)(1|3)[13456789abcdefghijkmnopqrstuwxyz]{59}";
  static const String BANANO_REGEX =
      r"(ban)(_)(1|3)[13456789abcdefghijkmnopqrstuwxyz]{59}";
  static const String BTCO_REGEX =
      r"(btco)(_)(1|3)[13456789abcdefghijkmnopqrstuwxyz]{59}";

  static String getPrefix(int type) {
    switch (type) {
      case NANO:
        return "nano_";
      case BANANO:
        return "ban_";
      case BTCO:
        return "btco_";
      default:
        return "nano_";
    }
  }

  static int getType(String address) {
    var split = address.split('_');
    switch (split[0]) {
      case "nano":
        return NANO;
      case "ban":
        return BANANO;
      case "btco":
        return BTCO;
      default:
        return BTCO;
    }
  }

  static String getRegex(int type) {
    switch (type) {
      case NANO:
        return NANO_REGEX;
      case BANANO:
        return BANANO_REGEX;
      case BTCO:
        return BTCO_REGEX;
      default:
        return NANO_REGEX;
    }
  }
}
