'use strict';

const mongoose = require('mongoose');

const exampleSchema = new mongoose.Schema({
  // only this text section is needed when setting a new example schema
  text: {
    type: String,
    required: true,
  },
  //  _ means it will not ever be explicitly set/assigned
  // (setting an ID to resource (authenticating) .. happens automatically)
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true,
  },
}, {
  timestamps: true,
  toJSON: { virtuals: true },
});

exampleSchema.virtual('length').get(function length() {
  return this.text.length;
});

const Example = mongoose.model('Example', exampleSchema);

module.exports = Example;
