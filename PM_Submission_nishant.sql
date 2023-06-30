CREATE TABLE CustomerSegments (
  SegmentID INT PRIMARY KEY,
  SegmentName VARCHAR(50)
);

CREATE TABLE CustomerAcquisition (
  CustomerID INT PRIMARY KEY,
  SegmentID INT,
  AcquisitionDate DATE,
  Revenue DECIMAL(10,2),
  CONSTRAINT fk_SegmentID FOREIGN KEY (SegmentID) REFERENCES CustomerSegments(SegmentID)
);
