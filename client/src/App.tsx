import './App.scss'
import Header from './components/header'
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom'
import { routes } from './helpers/routes'
import UpcomingRalliesBar from './components/upcomingRalliesBar'

function App() {
  return (
    <Router>
      <Header/>
      <UpcomingRalliesBar/>
      <Routes>
        {routes.map((route) => (
            <Route
            key={route.path}
            path={route.path}
            element={route.element}
            />
          ))}
      </Routes>
    </Router>
  )
}


export default App