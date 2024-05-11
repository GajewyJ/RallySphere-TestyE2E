import React from "react"
import Home from "../pages/home"
import WRC from "../pages/wrc"
import CalendarPage from "../pages/calendar"
import News from "../pages/news"

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
]