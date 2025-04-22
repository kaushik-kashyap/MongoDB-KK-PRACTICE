use vit
switched to db vit
show collections
sales
db.sales.find()
{
  _id: 1,
  item: 'Americanos',
  price: 5,
  size: 'Short',
  quantity: 22,
  date: 2022-01-15T08:00:00.000Z
}
{
  _id: 2,
  item: 'Cappuccino',
  price: 6,
  size: 'Short',
  quantity: 12,
  date: 2022-01-16T09:00:00.000Z
}
{
  _id: 3,
  item: 'Lattes',
  price: 15,
  size: 'Grande',
  quantity: 25,
  date: 2022-01-16T09:05:00.000Z
}
{
  _id: 4,
  item: 'Mochas',
  price: 25,
  size: 'Tall',
  quantity: 11,
  date: 2022-02-17T08:00:00.000Z
}
{
  _id: 5,
  item: 'Americanos',
  price: 10,
  size: 'Grande',
  quantity: 12,
  date: 2022-02-18T21:06:00.000Z
}
{
  _id: 6,
  item: 'Cappuccino',
  price: 7,
  size: 'Tall',
  quantity: 20,
  date: 2022-02-20T10:07:00.000Z
}
{
  _id: 7,
  item: 'Lattes',
  price: 25,
  size: 'Tall',
  quantity: 30,
  date: 2022-02-21T10:08:00.000Z
}
{
  _id: 8,
  item: 'Americanos',
  price: 10,
  size: 'Grande',
  quantity: 21,
  date: 2022-02-22T14:09:00.000Z
}
{
  _id: 9,
  item: 'Cappuccino',
  price: 10,
  size: 'Grande',
  quantity: 17,
  date: 2022-02-23T14:09:00.000Z
}
{
  _id: 10,
  item: 'Americanos',
  price: 8,
  size: 'Tall',
  quantity: 15,
  date: 2022-02-25T14:09:00.000Z
}
db.sales.getIndexes()
[ { v: 2, key: { _id: 1 }, name: '_id_' } ]
db.sales.createIndex({ item:1})
item_1
db.sales.getIndexes()
[
  { v: 2, key: { _id: 1 }, name: '_id_' },
  { v: 2, key: { item: 1 }, name: 'item_1' }
]
db.sales.find()
{
  _id: 1,
  item: 'Americanos',
  price: 5,
  size: 'Short',
  quantity: 22,
  date: 2022-01-15T08:00:00.000Z
}
{
  _id: 2,
  item: 'Cappuccino',
  price: 6,
  size: 'Short',
  quantity: 12,
  date: 2022-01-16T09:00:00.000Z
}
{
  _id: 3,
  item: 'Lattes',
  price: 15,
  size: 'Grande',
  quantity: 25,
  date: 2022-01-16T09:05:00.000Z
}
{
  _id: 4,
  item: 'Mochas',
  price: 25,
  size: 'Tall',
  quantity: 11,
  date: 2022-02-17T08:00:00.000Z
}
{
  _id: 5,
  item: 'Americanos',
  price: 10,
  size: 'Grande',
  quantity: 12,
  date: 2022-02-18T21:06:00.000Z
}
{
  _id: 6,
  item: 'Cappuccino',
  price: 7,
  size: 'Tall',
  quantity: 20,
  date: 2022-02-20T10:07:00.000Z
}
{
  _id: 7,
  item: 'Lattes',
  price: 25,
  size: 'Tall',
  quantity: 30,
  date: 2022-02-21T10:08:00.000Z
}
{
  _id: 8,
  item: 'Americanos',
  price: 10,
  size: 'Grande',
  quantity: 21,
  date: 2022-02-22T14:09:00.000Z
}
{
  _id: 9,
  item: 'Cappuccino',
  price: 10,
  size: 'Grande',
  quantity: 17,
  date: 2022-02-23T14:09:00.000Z
}
{
  _id: 10,
  item: 'Americanos',
  price: 8,
  size: 'Tall',
  quantity: 15,
  date: 2022-02-25T14:09:00.000Z
}
db.sales.find({item: 'Cappuccino'})
{
  _id: 2,
  item: 'Cappuccino',
  price: 6,
  size: 'Short',
  quantity: 12,
  date: 2022-01-16T09:00:00.000Z
}
{
  _id: 6,
  item: 'Cappuccino',
  price: 7,
  size: 'Tall',
  quantity: 20,
  date: 2022-02-20T10:07:00.000Z
}
{
  _id: 9,
  item: 'Cappuccino',
  price: 10,
  size: 'Grande',
  quantity: 17,
  date: 2022-02-23T14:09:00.000Z
}
db.sales.dropIndexes()
{
  nIndexesWas: 2,
  msg: 'non-_id indexes dropped for collection',
  ok: 1
}
db.sales.getIndexes()
[ { v: 2, key: { _id: 1 }, name: '_id_' } ]
vit
db.sales.createIndex({size:1},{unique:true})
