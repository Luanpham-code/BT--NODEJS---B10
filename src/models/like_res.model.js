export default (sequelize, DataTypes) => {
  return sequelize.define(
    "like_res",
    {
      like_res_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
      },
      user_id: DataTypes.INTEGER,
      res_id: DataTypes.INTEGER,
      date_like: DataTypes.DATE,
      dis_like: DataTypes.BOOLEAN,
    },
    {
      tableName: "like_res",
      timestamps: false,
    }
  );
};
