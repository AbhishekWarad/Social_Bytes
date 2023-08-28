SELECT p.FirstName , p.Lastname,a.AddressId
FROM Person as p
LEFT JOIN Address as a
ON p.personId = a.personID