#!/bin/bash
mongosh -u admin -p admin <<EOF
use study
db.nationalities.insertMany([
  { 
    _id: ObjectId('667ab29974885a54c4a26a13'),
    name: 'Argentina' 
  },
  { name: 'Paraguay' }, { name: 'Chile' }, { name: 'Uruguay' }, { name: 'Bolivia' }, { name: 'Brazil' }, { name: 'Ecuador' }, { name: 'Colombia' },
  { name: 'Venezuela' }, { name: 'Mexico' }, { name: 'United States' }, { name: 'Canada' }, { name: 'France' }, { name: 'Spain' },
])

db.users.insertOne({
  _id: ObjectId('667ab35fa8fece8e1e8487d5'),
  firstName: 'Admin',
  lastName: 'Admin',
  username: 'admin',
  email: 'admin@correo.com',
  avatarNum: '1',
  password: "\$2b\$10\$Q.GPACrSihswvApo.TT1YuR7QnHGphmVKhoQ5IjmqUN1pZXgtlHEi",
  dateOfBirth: ISODate('2000-01-01T00:00:00.000Z'),
  nationality: ObjectId('667ab29974885a54c4a26a13'),
  createdAt: ISODate('2024-06-25T12:09:03.409Z'),
  updatedAt: ISODate('2024-06-25T12:09:03.409Z'),
  __v: 0
})

db.subjects.insertMany([
  { name: 'Maths' }, { name: 'Medicine' }, { name: 'Psychology' }, { name: 'Physics' }, { name: 'Chemistry' }, { name: 'Biology' }, 
  { name: 'Economics' }, { name: 'History' }, { name: 'Philosophy' }, { name: 'Computer Science' }, { name: 'Computer Science' }, 
  { name: 'Electrical Engineering' }, { name: 'Politics' }, { name: 'Literature' },
])
EOF
