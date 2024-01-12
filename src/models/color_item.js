'use strict';
const { Model } = require('sequelize');
module.exports = (sequelize, DataTypes) => {
    class Color_Item extends Model {
        /**
         * Helper method for defining associations.
         * This method is not a part of Sequelize lifecycle.
         * The `models/index` file will call this method automatically.
         */
        static associate(models) {
            // define association here
            Color_Item.belongsTo(models.Item, { foreignKey: 'id_item', targetKey: 'id', as: 'Item' });
        }
    }
    Color_Item.init(
        {
            color: DataTypes.STRING,
            id_item: DataTypes.INTEGER,
            amount: DataTypes.INTEGER,
        },
        {
            sequelize,
            modelName: 'Color_Item',
        },
    );
    return Color_Item;
};
