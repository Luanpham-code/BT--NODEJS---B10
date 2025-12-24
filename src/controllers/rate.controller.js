import { rate_res } from "../models/index.js";

export const rateRestaurant = async (req, res) => {
  const { user_id, res_id, amount } = req.body;

  await rate_res.create({
    user_id,
    res_id,
    amount,
    date_rate: new Date(),
  });

  res.json({ message: "Đánh giá thành công" });
};

export const getRateByRestaurant = async (req, res) => {
  res.json(
    await rate_res.findAll({
      where: { res_id: req.params.res_id },
    })
  );
};

export const getRateByUser = async (req, res) => {
  res.json(
    await rate_res.findAll({
      where: { user_id: req.params.user_id },
    })
  );
};
