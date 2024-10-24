const pagesRoute = express.Router();

pagesRoute.get("/", PagesController.getPages);

pagesRoute.get("/createPages", PagesController.getCreatePages);

pagesRoute.post("/createPages", PagesController.postCreatePages);

pagesRoute.get("/editpage/:id", PagesController.getEditPage);

pagesRoute.post("/updatePage/:id", PagesController.putEditPage);

pagesRoute.post("/deletePage/:id", PagesController.deletePages);

module.exports = pagesRoute;