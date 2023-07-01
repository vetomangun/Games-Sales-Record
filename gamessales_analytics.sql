-- The Oldest Games
SELECT *
FROM `games_sales`
ORDER BY `Release` ASC LIMIT 1;
-- The Newest Games
SELECT *
FROM `games_sales`
ORDER BY `Release` DESC LIMIT 1

-- Publisher Published Most of The Games
SELECT `Publisher`, COUNT(Publisher)
FROM `games_sales`
GROUP BY `Publisher`
ORDER BY COUNT(Publisher) DESC
LIMIT 1

-- Developer Developed Most of The Games
SELECT `Developer`, COUNT(Developer)
FROM `games_sales`
GROUP BY `Developer`
ORDER BY COUNT(Developer) DESC
LIMIT 1

-- Series has the most sales 
SELECT `Name`, `Series`, `Sales`
FROM `games_sales`
WHERE `Series` IS NOT NULL
ORDER BY `Sales` DESC LIMIT 1

-- Series have the most games
SELECT `Series`, COUNT(Series)
FROM `games_sales`
WHERE `Series` IS NOT NULL
GROUP BY `Series`  
ORDER BY COUNT(Series) DESC
LIMIT 2
