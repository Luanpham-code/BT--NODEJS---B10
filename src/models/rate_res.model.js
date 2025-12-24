export default (sequelize, DataTypes) => {
  return sequelize.define(
    "rate_res",
    {
      rate_res_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
      },
      user_id: DataTypes.INTEGER,
      res_id: DataTypes.INTEGER,
      amount: DataTypes.INTEGER,
      date_rate: DataTypes.DATE,
    },
    {
      tableName: "rate_res",
      timestamps: false,
    }
  );
};
