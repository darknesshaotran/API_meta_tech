const itemServices = require('../services/item.services');

class ItemController {
    async showAllItem(req, res, next) {
        const { minPrice, maxPrice, limit, page, category, search, isDesc } = req.query;
        const result = await itemServices.getListItem(
            Number(minPrice),
            Number(maxPrice),
            Number(limit),
            Number(page),
            category,
            search,
            Number(isDesc),
        );
        res.json(result);
    }
    async ItemDetails(req, res, next) {
        const { id_item } = req.params;
        const result = await itemServices.ItemDetails(id_item);
        res.json(result);
    }
    async addItem(req, res, next) {
        const { urls, Fields } = req.formdata;
        const { id_category, name, price, import_price, description } = Fields;
        const result = await itemServices.addItem(id_category, name, price, import_price, description, urls);
        res.json(result);
    }
    async deleteItem(req, res, next) {
        const { id_item } = req.params;
        const result = await itemServices.deleteItem(id_item);
        res.json(result);
    }
    async updateItemInfor(req, res, next) {
        const { id_item } = req.params;
        const result = await itemServices.updateItemInfor(id_item, req.body);
        res.json(result);
    }
    async updateItemImages(req, res, next) {
        const { id_item } = req.params;
        const { urls, Fields } = req.formdata;
        const result = await itemServices.updateItemImages(id_item, urls);
        res.json(result);
    }
    async addColorItem(req, res, next) {
        const { id_item } = req.params;
        const { color, amount } = req.body;
        const result = await itemServices.addColorItem(id_item, color, amount);
        res.json(result);
    }
}
module.exports = new ItemController();
