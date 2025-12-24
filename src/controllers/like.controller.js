import { like_res } from "../models/index.js";

export const likeRestaurant = async (req, res) => {
  const { user_id, res_id } = req.body;

  const existed = await like_res.findOne({ where: { user_id, res_id } });

  if (existed) {
    await like_res.destroy({ where: { user_id, res_id } });
    return res.json({ message: "Unlike thành công" });
  }

  await like_res.create({
    user_id,
    res_id,
    date_like: new Date(),
    dis_like: false,
  });

  res.json({ message: "Like thành công" });
};

export const getLikeByRestaurant = async (req, res) => {
  res.json(
    await like_res.findAll({
      where: { res_id: req.params.res_id },
    })
  );
};

export const getLikeByUser = async (req, res) => {
  res.json(
    await like_res.findAll({
      where: { user_id: req.params.user_id },
    })
  );
};
