const { Router } = require('express');
const { wrapController } = require('../utils/handle');

const router = Router();
const { AddItemValidator, ItemExistsValidator, UpdateItemInfor } = require('../middlewares/item.middlewares');
const { FormdataValidator } = require('../middlewares/Formdata.middlewares');
const ItemControllers = require('../controllers/item.controllers');
const { accessTokenValidator, isAdminValidator } = require('../middlewares/user.middlewares');

router.post(
    '/add',
    accessTokenValidator,
    isAdminValidator,
    FormdataValidator,
    AddItemValidator,
    wrapController(ItemControllers.addItem),
);
router.post(
    '/add_color/:id_item',
    accessTokenValidator,
    isAdminValidator,
    ItemExistsValidator,
    wrapController(ItemControllers.addColorItem),
);
router.put(
    '/updateInfor/:id_item',
    accessTokenValidator,
    isAdminValidator,
    ItemExistsValidator,
    UpdateItemInfor,
    wrapController(ItemControllers.updateItemInfor),
);
router.put(
    '/updateImages/:id_item',
    accessTokenValidator,
    isAdminValidator,
    ItemExistsValidator,
    FormdataValidator,
    wrapController(ItemControllers.updateItemImages),
);
router.delete(
    '/delete/:id_item',
    accessTokenValidator,
    isAdminValidator,
    ItemExistsValidator,
    wrapController(ItemControllers.deleteItem),
);
router.get('/:id_item', ItemExistsValidator, wrapController(ItemControllers.ItemDetails));
router.get('/', wrapController(ItemControllers.showAllItem));

module.exports = router;
