import React from "react"
import Home from "../pages/home"
import WRC from "../pages/wrc"
import CalendarPage from "../pages/calendar"
import News from "../pages/news"
import SingleNews from "../pages/singleNews"
import Teams from "../pages/teams"
import Drivers from "../pages/drivers"
import CoDrivers from "../pages/coDrivers"
import AllCategoriesPage from "../pages/categories"
import CarsByGroupPage from "../pages/carsByGroup"
import SingleCar from "../pages/singleCar"

interface RouteItem{
    path: string,
    element: React.JSX.Element,
    label: string
}

export const routes: Array<RouteItem> = [
    {
        path: "/",
        element: <Home/>,
        label: "Home"
    },
    {
        path: "/wrc",
        element: <WRC/>,
        label: "WRC"
    },
    {
        path: "/wrc/calendar",
        element: <CalendarPage/>,
        label: "WRC Calendar"
    },
    {
        path: "/wrc/news",
        element: <News/>,
        label: "WRC News"
    },
    {
        path: "/wrc/news/:id",
        element: <SingleNews/>,
        label: "Single News"
    },
    {
        path: "/wrc/teams",
        element: <Teams/>,
        label: "Teams"
    },
    {
        path: "/wrc/drivers",
        element: <Drivers/>,
        label: "Drivers"
    },
    {
        path: "/wrc/coDrivers",
        element: <CoDrivers/>,
        label: "Co-Drivers"
    },
    {
        path: "/groups",
        element: <AllCategoriesPage/>,
        label: "Car Groups"
    },
    {
        path: "/groups/:cat_id",
        element: <CarsByGroupPage/>,
        label: "Cars by category"
    },
    {
        path: "/groups/:cat_id/:id",
        element: <SingleCar/>,
        label: "Car by category and id"
    }
]