import express from "express";
import {
  likeRestaurant,
  getLikeByRestaurant,
  getLikeByUser,
} from "../controllers/like.controller.js";

const router = express.Router();

router.post("/", likeRestaurant);
router.get("/restaurant/:res_id", getLikeByRestaurant);
router.get("/user/:user_id", getLikeByUser);

export default router;
