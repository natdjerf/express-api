'use strict';

const mongoose = require('mongoose');

// 1) set up the bookSchema
const bookSchema = new mongoose.Schema({
  // only this text section is needed when setting a new example schema
  title: String,
  author: String,
  price: Number,
  //  include owner though not explicitly being set
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true,
  },
},
{
  timestamps: true
});


// 2) set up the model:
const Book = mongoose.model('Book', bookSchema);


// 3) Allow export
module.exports = Book;
