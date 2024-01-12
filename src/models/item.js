'use strict';
const { Model } = require('sequelize');
module.exports = (sequelize, DataTypes) => {
    class Item extends Model {
        /**
         * Helper method for defining associations.
         * This method is not a part of Sequelize lifecycle.
         * The `models/index` file will call this method automatically.
         */
        static associate(models) {
            // define association here
            Item.belongsTo(models.Category, { foreignKey: 'id_category', targetKey: 'id' });
            Item.hasMany(models.Color_Item, { foreignKey: 'id_item' });
            Item.hasMany(models.Rating, { foreignKey: 'id_item' });
            Item.hasMany(models.Image, { foreignKey: 'id_item' });
        }
    }
    Item.init(
        {
            id_category: DataTypes.INTEGER,
            name: DataTypes.STRING,
            price: DataTypes.INTEGER,
            import_price: DataTypes.INTEGER,
            description: DataTypes.TEXT,
        },
        {
            sequelize,
            modelName: 'Item',
        },
    );
    return Item;
};
