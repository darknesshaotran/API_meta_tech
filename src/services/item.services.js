const db = require('../models');
const { Op } = require('sequelize');
const ErrorsWithStatus = require('../constants/Error');
const HTTP_STATUS = require('../constants/httpStatus');

class ItemServices {
    async getListItem(minPrice, maxPrice, limit, page, category, search, isDesc) {
        var offset = 0;
        var optionMaxPrice = {};
        var optionMinPrice = {};
        if (page && limit) {
            offset = (page - 1) * limit;
        }
        if (!limit) {
            limit = 100;
        }
        if (minPrice) {
            optionMinPrice = { price: { [Op.gte]: minPrice } };
        }
        if (maxPrice) {
            optionMaxPrice = { price: { [Op.lte]: maxPrice } };
        }
        const categoryCondition = category ? { id_category: category } : {};
        const searchCondition = search ? { name: { [Op.like]: `%${search}%` } } : {};
        const options = {
            ...optionMinPrice,
            ...optionMaxPrice,
            ...categoryCondition,
            ...searchCondition,
        };
        const order = [['price', isDesc ? 'DESC' : 'ASC']];
        const Count = await db.Item.count({
            where: {
                ...options,
            },
        });
        const item = await db.Item.findAll({
            where: {
                ...options,
            },
            offset: offset,
            limit: limit,
            order: order,
            attributes: {
                exclude: ['id_category', 'createdAt', 'updatedAt', 'description'],
            },
            include: [{ model: db.Category, as: 'Category', attributes: ['id', 'name'] }],
        });
        const Item = JSON.parse(JSON.stringify(item));

        for (let i = 0; i < Item.length; i++) {
            const rating = await db.Rating.findAll({
                where: { id_item: Item[i].id },
            });
            const Rating = JSON.parse(JSON.stringify(rating));
            var totalStar = 0;
            for (let i = 0; i < Rating.length; i++) {
                totalStar += Number(Rating[i].star);
            }
            totalStar = Math.floor(totalStar / Rating.length);

            const image = await db.Image.findOne({
                where: { id_item: Item[i].id },
            });

            const Image = JSON.parse(JSON.stringify(image));
            Item[i].totalStar = totalStar ? totalStar : 0;
            Item[i].image = Image ? Image.image : '';
        }
        const totalPages = Math.ceil(Count / limit);
        return {
            success: true,
            result: Item,
            totalPages: totalPages,
            page: page ? page : 1,
        };
    }
    async ItemDetails(id_item) {
        const item = await db.Item.findOne({
            where: {
                id: id_item,
            },
            attributes: {
                exclude: ['id_category', 'createdAt', 'updatedAt'],
            },
            include: [{ model: db.Category, as: 'Category', attributes: ['id', 'name'] }],
        });
        const Item = JSON.parse(JSON.stringify(item));
        const image = await db.Image.findAll({
            where: { id_item: id_item },
            attributes: ['id', 'image'],
        });
        const Color_Item = await db.Color_Item.findAll({
            where: { id_item: id_item },
            attributes: ['id', 'amount', 'color'],
        });
        const color_item = JSON.parse(JSON.stringify(Color_Item));
        const Image = JSON.parse(JSON.stringify(image));
        const rating = await db.Rating.findAll({
            where: { id_item: id_item },
            attributes: { exclude: ['id_item'] },
            include: [
                {
                    model: db.Account,
                    as: 'Account',
                    attributes: { exclude: ['password', 'forgot_password_token', 'id_role', 'createdAt', 'updatedAt'] },
                    include: [
                        {
                            model: db.inforUser,
                            as: 'inforUser',
                            attributes: ['firstname', 'lastname', 'phoneNumber', 'avatar'],
                        },
                    ],
                },
            ],
            order: [['id', 'DESC']],
        });
        const Rating = JSON.parse(JSON.stringify(rating));
        var totalStar = 0;
        for (let i = 0; i < Rating.length; i++) {
            totalStar += Number(Rating[i].star);
        }
        totalStar = Math.floor(totalStar / Rating.length);
        const itemDetails = {
            ...Item,
            Color_items: color_item,
            image: Image,
            rating: Rating,
            totalStar: totalStar ? totalStar : 0,
        };

        return { success: true, result: itemDetails };
    }
    async addItem(id_category, name, price, import_price, description, image) {
        const item = await db.Item.create({
            id_category,
            name,
            price,
            import_price,
            description,
        });
        for (let i = 0; i < image.length; i++) {
            await db.Image.create({
                image: image[i].url,
                id_item: item.id,
            });
        }
        return {
            success: true,
            message: 'add item successfully',
        };
    }
    async deleteItem(id_item) {
        await db.Item.destroy({
            where: {
                id: id_item,
            },
        });
        return {
            success: true,
            message: 'delete item successfully',
        };
    }
    async updateItemInfor(id_item, data) {
        await db.Item.update(
            {
                ...data,
                updatedAt: new Date(),
            },
            {
                where: { id: id_item },
            },
        );
        return {
            success: true,
            message: 'update item successfully',
        };
    }
    async updateItemImages(id_item, image) {
        await db.Image.destroy({
            where: {
                id_item: id_item,
            },
        });
        for (let i = 0; i < image.length; i++) {
            await db.Image.create({
                image: image[i].url,
                id_item: id_item,
            });
        }
        return {
            success: true,
            message: 'update images successfully',
        };
    }
    async addColorItem(id_item, color, amount) {
        const color_item = await db.Color_Item.findOne({
            where: {
                id_item: id_item,
                color: color,
            },
        });
        if (color_item) {
            await db.Color_Item.update(
                {
                    amount: Number(color_item.amount) + Number(amount),
                },
                {
                    where: { id: color_item.id },
                },
            );
            return {
                success: true,
                message: 'update color item successfully',
            };
        }
        await db.Color_Item.create({
            id_item,
            color,
            amount,
        });
        return {
            success: true,
            message: 'add color item successfully',
        };
    }
}
module.exports = new ItemServices();
