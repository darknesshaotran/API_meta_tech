const { Router } = require('express');
const { wrapController } = require('../utils/handle');
const { accessTokenValidator, isAdminValidator } = require('../middlewares/user.middlewares.js');
const revenueControllers = require('../controllers/revenue.controllers');
const { TimeValidator } = require('../middlewares/revenue.middlewares');
const router = Router();

router.get(
    '/customer',
    accessTokenValidator,
    isAdminValidator,
    TimeValidator,
    wrapController(revenueControllers.getRevenueOfCustommer),
);
router.get('/product', TimeValidator, wrapController(revenueControllers.getRevenueOfProduction));
router.get(
    '/',
    accessTokenValidator,
    isAdminValidator,
    TimeValidator,
    wrapController(revenueControllers.getRevenuesByTime),
);

module.exports = router;
