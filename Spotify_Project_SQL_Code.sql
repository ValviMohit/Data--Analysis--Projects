DESC spotify;

SELECT *  FROM spotify;

SELECT Track FROM spotify WHERE Stream>1000000000;

SELECT DISTINCT(Album),Artist FROM spotify;

SELECT Track,SUM(Comments) FROM spotify WHERE Licensed='True' GROUP BY Track;

SELECT Album_type,Track FROM spotify WHERE Album_type='single';

SELECT Artist,COUNT(Track) FROM spotify GROUP BY Artist;

SELECT Album,AVG('Dancebility') FROM spotify GROUP BY Album;

SELECT Track,MAX(Energy) FROM spotify GROUP BY Track LIMIT 5;

SELECT Track,Views,Likes FROM spotify WHERE official_video='TRUE';

SELECT Album,Track,SUM(Views) FROM spotify GROUP BY Album,Track;

SELECT Track FROM spotify WHERE most_playedon='Spotify';

WITH Ranking_Artist AS (SELECT Artist,Track,SUM(Views),
DENSE_RANK() OVER (ORDER BY SUM(Views) DESC) AS Ranks FROM spotify
 GROUP BY Artist,Track ORDER BY SUM(Views) DESC)
 SELECT * FROM Ranking_Artist WHERE Ranks<=3;

WITH Energy_Difference AS (SELECT Album,MAX(Energy) AS Max_Energy,
MIN(Energy) AS Min_Energy FROM spotify GROUP BY Album)
 SELECT Album,Max_Energy,Min_Energy,(Max_Energy-Min_Energy) AS Difference
 FROM  Energy_Difference;

SELECT Track,Liveness FROM spotify WHERE Liveness>(SELECT AVG(Liveness) FROM spotify);

SELECT Track,(Energy/Liveness) FROM spotify WHERE (Energy/Liveness)>1.2;

SELECT Track,SUM(Likes) OVER (ORDER BY Views DESC) AS Sum_Of_Likes,Views FROM spotify;




