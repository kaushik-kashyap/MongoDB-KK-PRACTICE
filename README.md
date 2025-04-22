# Mongo-db
MongoDB Queries - Solutions
________________________________________
1. Find all documents where "item" is "Mochas"
Query:
db.collection.find({ item: "Mochas" })
________________________________________
2. Find all items where price is less than 15
Query:
db.collection.find({ price: { $lt: 15 } })
________________________________________
3. Find items where price is either less than 10 or greater than 20
Query:
db.collection.find({ $or: [{ price: { $lt: 10 } }, { price: { $gt: 20 } }] })
________________________________________
4. Find all documents where the quantity field exists
Query:
db.collection.find({ quantity: { $exists: true } })
________________________________________
5. Find all documents where the color array contains the value "white"
Query:
db.products.find({ color: "white" })
________________________________________
6. Update the RAM of the user named "xTablet" to 24
Query:
db.products.updateOne({ name: "xTablet" }, { $set: { "spec.ram": 24 } })
________________________________________
7. Find all products and return only their spec field
Query:
db.products.find({}, { spec: 1, _id: 0 })
________________________________________
8. Find all products and sort them by price in descending order
Query:
db.products.find().sort({ price: -1 })
________________________________________
9. Find the first 2 products, skipping the first one
Query:
db.products.find().skip(1).limit(2)
________________________________________
10. Find all users whose name starts with "S" and price > 700
Query:
db.products.find({ name: /^S/, price: { $gt: 700 } })
________________________________________
11. Calculate the total price of all items
Query:
db.products.aggregate([{ $group: { _id: null, totalPrice: { $sum: "$price" } } }])
________________________________________
12. Project only the size field for each item
Query:
db.products.find({}, { size: 1, _id: 0 })
________________________________________
13. Find items that are Tall size and group them by item
Query:
db.products.aggregate([
  { $match: { size: "Tall" } },
  { $group: { _id: "$item", count: { $sum: 1 } } }
])
________________________________________
14. Find the second item when sorted by price in ascending order
Query:
db.products.find().sort({ price: 1 }).skip(1).limit(1)
________________________________________
15. Group by item and calculate the total number of items and average price in a single aggregation
Query:
db.products.aggregate([
  { $group: { _id: "$item", totalItems: { $sum: 1 }, avgPrice: { $avg: "$price" } } }
])
