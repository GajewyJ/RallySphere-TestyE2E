import './App.scss'
import Header from './components/header'
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom'
import { routes } from './helpers/routes'
import UpcomingRalliesBar from './components/upcomingRalliesBar'
import Footer from './components/footer'

function App() {
  return (
    <Router>
      <div className='content'>
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
      </div>
      <Footer/>
    </Router>
  )
}


export default App