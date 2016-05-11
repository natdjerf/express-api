'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const Example = models.example;

const authenticate = require('./concerns/authenticate');

// .then & .catch refer to a Promise that is created via middleware

// get request to display entire collection of examples
const index = (req, res, next) => {
  // .find gets all (no parameters/criteria)
  Example.find()
    // render examples in JSON
    .then(examples => res.json({ examples }))
    // catches errors
    // express uses 'next' to terminate errors
    .catch(err => next(err));
};

// get request for one example (hence example vs. examples)
const show = (req, res, next) => {
  Example.findById(req.params.id)
    .then(example => example ? res.json({ example }) : next())
    .catch(err => next(err));
};

// associate user
const create = (req, res, next) => {
  let example = Object.assign(req.body.example, {
    // set the owner to the request current user id
    _owner: req.currentUser._id,
  });
  Example.create(example)
    .then(example => res.json({ example }))
    .catch(err => next(err));
};

// check existence & update
const update = (req, res, next) => {
  let search = { _id: req.params.id, _owner: req.currentUser._id };
  Example.findOne(search)
    .then(example => {
      if (!example) {
        return next();
      }

      delete req.body._owner;  // disallow owner reassignment.
      return example.update(req.body.example)
        .then(() => res.sendStatus(200));
    })
    .catch(err => next(err));
};

const destroy = (req, res, next) => {
  let search = { _id: req.params.id, _owner: req.currentUser._id };
  Example.findOne(search)
    .then(example => {
      if (!example) {
        return next();
      }

      return example.remove()
        .then(() => res.sendStatus(200));
    })
    .catch(err => next(err));
};

module.exports = controller({
  index,
  show,
  create,
  update,
  destroy,
}, { before: [
  { method: authenticate, except: ['index', 'show'] },
], });
