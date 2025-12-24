import express from "express";
import likeRoute from "./routes/like.route.js";
import rateRoute from "./routes/rate.route.js";
import orderRoute from "./routes/order.route.js";

const app = express();
app.use(express.json());

// TEST ROUTE
app.get("/", (req, res) => {
  res.send("API OK");
});

app.use("/like", likeRoute);
app.use("/rate", rateRoute);
app.use("/order", orderRoute);

export default app;
