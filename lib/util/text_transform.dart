abstract class TextTransform {
  static String switchTags(String src) {
    final card = RegExp(r'\[card\]\((.*?)\)');
    final bold = RegExp(r'\*(.*?)\*');
    final link1 = RegExp(r'\[link\]\((.*?)\)');
    final link2 = RegExp(r'\[link\]\((.*?)\)\((.*?)\)');
    final image = RegExp(r'\[image\]\(https(.*?)\)');
    final deck = RegExp(r'\[deck\]\((.*?)\)');

    String result = src;

    result = result.replaceAllMapped(card, (match) {
      return "<b> ${match.group(1)} </b>";
    });

    result = result.replaceAllMapped(bold, (match) {
      return "<b> ${match.group(0).replaceAll('*', '')} </b>";
    });

    result = result.replaceAllMapped(link2, (match) {
      return "<a href='${match.group(1)}?&partner=CardsRealm&utm_source=CardsRealm&utm_medium=affiliate&utm_campaign=CardsRealm'>${match.group(2)}</a>";
    });

    result = result.replaceAllMapped(link1, (match) {
      return "<a href='${match.group(1)}?&partner=CardsRealm&utm_source=CardsRealm&utm_medium=affiliate&utm_campaign=CardsRealm'>link</a>";
    });

    result = result.replaceAllMapped(image, (match) {
      return "<img src='https${match.group(1)}' />";
    });

    result = result.replaceAllMapped(deck, (match) {
      return "<deck>${match.group(1)}</deck>";
    });

    return result;
  }

  static String formatDeck(String deckId) {
    String result;

    return result;
  }
}
