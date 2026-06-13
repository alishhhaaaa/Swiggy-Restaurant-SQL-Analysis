# Swiggy Restaurant Analysis 🍽️

## What is this?
I picked up the Swiggy dataset and ran SQL queries on it to answer 
questions I was actually curious about — like which areas have the 
fastest delivery, whether expensive restaurants are actually better 
rated, and what food types dominate the platform.

## Dataset
- 9,000+ Swiggy restaurant listings
- Cities across India
- Columns: Restaurant, Area, City, Price, Rating, Food Type, Delivery Time

## Tools Used
- MySQL
- Python (Pandas — for importing data)
- Jupyter Notebook

## Queries Covered

**Basic**
- Total restaurant count
- Distinct cities
- Average price by city

**Intermediate**
- Top 10 highest rated restaurants
- Most popular food types
- Restaurants with rating above 4.5

**Advanced**
- Best value restaurants (high rating + low price)
- Average delivery time by area
- Price segmentation — Budget, Mid Range, Premium

## What I Found
- Mid Range restaurants dominate (6600+)
- Premium restaurants have slightly better ratings (3.86 avg)
- Budget and Mid Range are very close in ratings
- ## Results Preview

### Price Segmentation
| Price Segment | Total Restaurants | Avg Rating |
|--------------|-------------------|------------|
| Mid Range    | 6683              | 3.62       |
| Premium      | 1015              | 3.86       |
| Budget       | 982               | 3.66       |

### Top 5 Highest Rated Restaurants (Rating: 5.0)
| Restaurant | City | Avg Rating | Price |
|-----------|------|------------|-------|
| Afresh | Chennai | 5.0 | ₹100 |
| Keventers Ice Creamery | Kolkata | 5.0 | ₹300 |
| Diamond Market Pizza Jp | Mumbai | 5.0 | ₹600 |
| The Asian Pavilion | Mumbai | 5.0 | ₹200 |
| Wallonia Waffle Co. | Hyderabad | 5.0 | ₹300 |

### Top 5 Fastest Delivery Areas
| Area | City | Avg Delivery Time (min) |
|------|------|------------------------|
| Venkateshwara Colony | Hyderabad | 24 |
| Ramkote | Hyderabad | 26 |
| Moonlight Cream Sagrampura | Surat | 26 |
| Rajamohallah | Hyderabad | 27 |
| Sector 4 Rohini | Delhi | 27 |

## Files
- `swiggy_analysis.sql` — all queries
- `swiggy. (1).csv` — dataset used

## Author
Alisha Naaz | B.Tech Data Science | IKGPTU Mohali
