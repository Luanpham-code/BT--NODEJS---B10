import { Sequelize, DataTypes } from "sequelize";
import dotenv from "dotenv";
dotenv.config();

export const sequelize = new Sequelize(
  process.env.DB_NAME,
  process.env.DB_USER,
  process.env.DB_PASSWORD,
  {
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    dialect: "mysql",
    logging: false,
  }
);

// test kết nối
sequelize
  .authenticate()
  .then(() => console.log("✅ Kết nối DB thành công"))
  .catch((err) => console.error("❌ Lỗi DB:", err));

// import model
import likeResModel from "./like_res.model.js";
import rateResModel from "./rate_res.model.js";
import orderModel from "./orders.model.js";

export const like_res = likeResModel(sequelize, DataTypes);
export const rate_res = rateResModel(sequelize, DataTypes);
export const orders = orderModel(sequelize, DataTypes);
