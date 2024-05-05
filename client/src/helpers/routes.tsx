import React from "react"
import Home from "../pages/home"
import WRC from "../pages/wrc"

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
]