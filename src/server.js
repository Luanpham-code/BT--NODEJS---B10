import app from "./app.js";
import dotenv from "dotenv";

dotenv.config();

app.listen(process.env.PORT || 3000, () => {
  console.log(`🚀 Server chạy http://localhost:${process.env.PORT || 3000}`);
});

export default app;
