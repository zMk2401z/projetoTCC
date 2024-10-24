const express = require("express");
const DashboardController = require("../controllers/admin/dashboardController");
const AuthAdminMiddleware = require("../middlewares/authAdminMiddle");

const dashboardRoute = express.Router();

dashboardRoute.get("/", AuthAdminMiddleware.adminAuthorization, DashboardController.getDashboard);

module.exports = dashboardRoute;