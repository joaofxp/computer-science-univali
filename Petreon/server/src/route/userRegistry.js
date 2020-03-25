const express = require('express');
const router = express.Router();
const controller = require('../controll/userRegistry');

router.route('/')
    // .get(controller.get)
    .post(controller.post);

    // .get();

module.exports = router;
