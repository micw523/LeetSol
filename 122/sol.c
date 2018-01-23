int maxProfit(int* prices, int pricesSize) {
    int profit = 0;
    int buy_price;
    if (pricesSize > 1)
    {
        buy_price = prices[0];
        for (int i_day = 1; i_day < pricesSize; i_day++)
        {
            // sell
            if (prices[i_day] > buy_price)
            {
                profit += prices[i_day] - buy_price;
            }
            buy_price = prices[i_day];
        }
    }
    return profit;
}