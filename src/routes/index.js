const accountRoute = require('./user.routes.js');
const itemRoute = require('./item.routes.js');
const cartRoute = require('./cart.routes.js');
const orderRoute = require('./order.routes.js');
const categoryRoute = require('./category.routes.js');
const ratingRoute = require('./rating.routes.js');
const revenueRoute = require('./revenue.routes.js');
const route = (app) => {
    app.use('/api/user', accountRoute);
    app.use('/api/item', itemRoute);
    app.use('/api/cart', cartRoute);
    app.use('/api/order', orderRoute);
    app.use('/api/category', categoryRoute);
    app.use('/api/rating', ratingRoute);
    app.use('/api/revenue', revenueRoute);
    ///////////////////////////////////////////////////////////////////////////////////////////////////////
    app.use('/', (req, res, next) => {
        return res.send('WELCOME TO SERVER');
    });
};

module.exports = route;
