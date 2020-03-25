const express = require('express');
const router = express.Router();
const controller = require('../controll/animalRegistry');

router.route('/')
    // .get(controller.get)
    .post(controller.post);

    // .get();

module.exports = router;
