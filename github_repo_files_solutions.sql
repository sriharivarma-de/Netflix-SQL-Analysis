-- ---------------------------------------------------------
-- SQL CASE STATEMENT ASSIGNMENT SOLUTIONS
-- ---------------------------------------------------------

-- 1. Categorize users based on their total payment amount.
-- Goal: Identify high-value users using aggregation.
SELECT 
    user_id, 
    SUM(amount) AS 'Total Payment', 
    CASE 
        WHEN SUM(amount) > 5000 THEN 'Premium'
        WHEN SUM(amount) BETWEEN 2000 AND 5000 THEN 'Regular'
        ELSE 'Basic' 
    END AS 'category'
FROM payments 
GROUP BY user_id;

-- 2. Classify subscription plans based on price.
-- Goal: Use boundary comparisons to avoid decimal gaps.
SELECT 
    *, 
    CASE 
        WHEN price > 500 THEN 'High'
        WHEN price >= 200 AND price <= 500 THEN 'Medium'
        WHEN price < 200 THEN 'Low'
        ELSE 'Null' 
    END AS 'Sub_plans'
FROM subscription_plans;

-- 3. Determine user activity based on the number of watch history records.
-- Goal: Measure engagement levels via count of events.
SELECT 
    user_id, 
    COUNT(history_id) AS 'Total Sessions', 
    CASE 
        WHEN COUNT(history_id) > 12 THEN 'Highly Active'
        WHEN COUNT(history_id) BETWEEN 5 AND 12 THEN 'Moderately Active'
        ELSE 'Less Active' 
    END AS 'User Activeness Record'
FROM watch_history 
GROUP BY user_id;

-- 4. Identify content popularity based on watch count.
-- Goal: Classify content performance for recommendation logic.
SELECT 
    content_id, 
    CASE 
        WHEN COUNT(history_id) > 10 THEN 'Blockbuster'
        WHEN COUNT(history_id) BETWEEN 5 AND 10 THEN 'Popular'
        ELSE 'Less Popular' 
    END AS 'Popularity' 
FROM watch_history 
GROUP BY content_id;

-- 5. Categorize payments based on total spending (Successful only).
-- Goal: Filter out 'Dirty Data' (failed payments) before analysis.
SELECT 
    user_id, 
    CASE 
        WHEN SUM(amount) > 2500 THEN 'High'	
        WHEN SUM(amount) BETWEEN 1000 AND 2500 THEN 'Medium'
        ELSE 'Low' 
    END AS 'Total Spendings'
FROM payments 
WHERE status = 'SUCCESS' 
GROUP BY user_id;
