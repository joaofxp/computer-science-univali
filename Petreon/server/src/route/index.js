const express = require('express');
const router = express.Router();
const controller = require('../controll/index');

router.route('/')
    .get(controller.get);
    // .get();

module.exports = router;
