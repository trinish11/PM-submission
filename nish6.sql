SELECT
  cs.SegmentName,
  SUM(ca.Revenue) AS TotalRevenue
FROM
  CustomerSegments cs
JOIN
  CustomerAcquisition ca ON cs.SegmentID = ca.SegmentID
GROUP BY
  cs.SegmentName
ORDER BY
  TotalRevenue DESC;
