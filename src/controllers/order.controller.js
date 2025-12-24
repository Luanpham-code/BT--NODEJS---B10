import { orders } from "../models/index.js";

export const createOrder = async (req, res) => {
  await orders.create(req.body);
  res.json({ message: "Đặt món thành công" });
};
