const { checkSchema } = require('express-validator');
const HTTP_STATUS = require('../constants/httpStatus');
const ErrorsWithStatus = require('../constants/Error');
const validate = require('../utils/validation');
const db = require('../models');
const { wrapController } = require('../utils/handle');
const checkAddItemValidator = async (req, res, next) => {
    const { urls, Fields } = req.formdata;

    const { id_category, name, price, import_price, amount, description } = Fields;
    if (!id_category) {
        throw {
            status: HTTP_STATUS.UNPROCESSABLE_ENTITY,
            message: 'category is required',
        };
    }

    const category = await db.Category.findOne({ where: { id: id_category } });

    if (!category) {
        throw {
            status: HTTP_STATUS.UNPROCESSABLE_ENTITY,
            message: 'category not found',
        };
    }

    if (!name) {
        throw {
            status: HTTP_STATUS.UNPROCESSABLE_ENTITY,
            message: 'name is required',
        };
    }
    if (isNaN(price)) {
        throw {
            status: HTTP_STATUS.UNPROCESSABLE_ENTITY,
            message: 'price must be a number',
        };
    }
    if (isNaN(import_price)) {
        throw {
            status: HTTP_STATUS.UNPROCESSABLE_ENTITY,
            message: 'import price must be a number',
        };
    }

    next();
};
const checkItemExistsValidator = checkSchema(
    {
        id_item: {
            custom: {
                options: async (value) => {
                    const item = await db.Item.findOne({
                        where: {
                            id: value,
                        },
                        attributes: {
                            exclude: ['id_category', 'createdAt', 'updatedAt'],
                        },
                    });
                    if (!item) {
                        throw { status: HTTP_STATUS.NOT_FOUND, message: 'item not found' };
                    }
                    return true;
                },
            },
        },
    },
    ['params'],
);
const checkUpdateItemInfor = checkSchema(
    {
        id_category: {
            optional: true,
            isNumeric: {
                errorMessage: 'category id must be a number',
            },
            custom: {
                options: async (value) => {
                    const category = await db.Category.findOne({
                        where: {
                            id: value,
                        },
                        attributes: {
                            exclude: ['createdAt', 'updatedAt'],
                        },
                    });
                    if (!category) {
                        throw { status: HTTP_STATUS.NOT_FOUND, message: 'category not found' };
                    }
                    return true;
                },
            },
        },
        name: {
            optional: true,
            isString: {
                errorMessage: 'name must be a string',
            },
            isLength: {
                options: {
                    max: 50,
                    min: 1,
                },
                errorMessage: 'name must be between 1 and 50 chars long',
            },
            trim: true,
        },
        price: {
            optional: true,
            isNumeric: {
                errorMessage: 'price must be a number',
            },
        },
        import_price: {
            optional: true,
            isNumeric: {
                errorMessage: 'import price must be a number',
            },
        },
        amount: {
            optional: true,
            isNumeric: {
                errorMessage: 'amount must be a number',
            },
        },
    },
    ['body'],
);

exports.AddItemValidator = wrapController(checkAddItemValidator);
exports.ItemExistsValidator = validate(checkItemExistsValidator);
exports.UpdateItemInfor = validate(checkUpdateItemInfor);
