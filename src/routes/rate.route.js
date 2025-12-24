import express from "express";
import {
  rateRestaurant,
  getRateByRestaurant,
  getRateByUser,
} from "../controllers/rate.controller.js";

const router = express.Router();

router.post("/", rateRestaurant);
router.get("/restaurant/:res_id", getRateByRestaurant);
router.get("/user/:user_id", getRateByUser);

export default router;
