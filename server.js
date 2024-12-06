require("dotenv").config();
const express = require("express");
const path = require("path");
const session = require("express-session");
const database = require("./src/database/database");
const route = require("./src/routes/route");
const routeRegister = require("./src/routes/registerRoute");
const loginRoute = require("./src/routes/loginRoute");
const adminRoute = require("./src/routes/adminRoute");
const dashboardRoute = require("./src/routes/dashboardRoute");
const cookieParser = require("cookie-parser");
const logoutAdminRoute = require("./src/routes/logoutAdminRoute");
const logoutRoute = require("./src/routes/logoutRoute");
const produtosRoute = require("./src/routes/produtosRoute");
const noticiasRoute = require("./src/routes/noticiasRoute");
const pagesRoute = require("./src/routes/pagesRoute");
const fichaRoute = require("./src/routes/fichaRoute");
const contatoRoute = require("./src/routes/contatoRoute");
const positionRoute = require("./src/routes/positionRoute");
const uploadAdminRoute = require("./src/routes/uploadAdminRoute");

const app = express();
const port = process.env.PORTSERVER || 3000;

app.set("view engine", "ejs");
app.set("views", "./src/views");

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.use(express.static(path.join(__dirname, "./public")));
app.use(express.static(path.join(__dirname, "./public/uploads")));

app.use(cookieParser());
app.use(
  session({
    name: "session",
    secret: process.env.SECRET,
    resave: true,
    cookie: {
      maxAge: 24 * 60 * 60 * 1000,
    },
    saveUninitialized: true,
  })
);

app.use((req, res, next) => {
  res.locals.session = req.session;

  next();
});

app.use((req, res, next) => {
  res.locals.session = req.session;

  next();
});

app.use(
  "/tinymce",
  express.static(path.join(__dirname, "node_modules", "tinymce"))
);

app.use("/", loginRoute);
app.use("/index", route);
app.use("/register", routeRegister);
app.use("/noticias", noticiasRoute);
app.use("/produtos", produtosRoute);
app.use("/admin", adminRoute);
app.use("/dashboard", dashboardRoute);
app.use("/logoutAdmin", logoutAdminRoute);
app.use("/logout", logoutRoute);
app.use("/pages", pagesRoute);
app.use("/ficha", fichaRoute);
app.use("/contato", contatoRoute);
app.use("/position", positionRoute);
app.use("/upload", uploadAdminRoute);

app.listen(port, async () => {
  const [result] = await database.query("SELECT 1");
  if (result) {
    console.log(`http://localhost:${port}`);
  }
});
