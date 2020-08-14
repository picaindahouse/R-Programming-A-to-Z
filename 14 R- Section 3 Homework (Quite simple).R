# Given the revenue and expense of a company over a period of 12 months
# Find- profit, profit after tax, profit margin %, Mean profit, good months, bad months, best & worst months

#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
profit <- revenue - expenses  
profit_after_tax <- profit/100 * 70  # 30% tax
profit_margin <- profit_after_tax / revenue  # profit margin is profit/ revenue
profit_margin_percent <- round(profit_margin * 100) # for % just multiply it by 100
Mean_profit <- mean(profit_after_tax)  # New function learnt- mean

good_month <- profit_after_tax > Mean_profit
bad_month <- !good.month  # Rmb that ! means -ve()

best_month <- max(profit_after_tax)  # max works same in r as it does in python
worst_month <- min(profit_after_tax) # Likewise for min

