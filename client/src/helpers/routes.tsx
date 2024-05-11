import React from "react"
import Home from "../pages/home"
import WRC from "../pages/wrc"
import Calendar from "../components/calendar"

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
        element: <Calendar/>,
        label: "WRC Calendar"
    },
]