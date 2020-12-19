int movie(int card, int ticket, double perc) {
  int count = 0;
  int priceA = 0;
  double priceB = card.toDouble();
  double prevPrice = ticket.toDouble();

  do {
    count++;

    priceA = ticket * count;
    prevPrice = prevPrice * perc;
    priceB = priceB + prevPrice;
  } while (priceB.ceil() >= priceA);

  return count;
}
