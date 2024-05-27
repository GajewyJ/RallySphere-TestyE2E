import { useEffect, useState } from "react";
import "./index.scss";
import AdminLogin from "../../components/adminLogin";
import AdminCars from "../../components/adminCars";
import AdminCategories from "../../components/adminCategories";
import AdminTeams from "../../components/adminTeams";
import AdminDrivers from "../../components/adminDrivers";

type AdminDetails = {
  id: Number;
  username: string;
  password: string;
};

function AdminPanel() {
  const [isLoggedIn, setIsLoggedIn] = useState<boolean>(false);
  const [adminDetails, setAdminDetails] = useState<AdminDetails | null>(null);
  const [activeTab, setActiveTab] = useState<string>('');

  useEffect(() => {
    document.title = 'RallySphere - Admin Panel';
    const loggedInStatus = localStorage.getItem('isLoggedIn');
    const storedAdminDetails = localStorage.getItem('adminDetails');
    if (storedAdminDetails) {
      setIsLoggedIn(true);
      setAdminDetails(JSON.parse(storedAdminDetails));
    } else {
      setIsLoggedIn(loggedInStatus === 'true');
    }
  }, []);

  const handleLoginSuccess = (admin: AdminDetails) => {
    localStorage.setItem('adminDetails', JSON.stringify(admin));
    setAdminDetails(admin);
    setIsLoggedIn(true);
  };

  const handleLoginError = (error: string) => {
    alert(error);
  };

  const handleLogout = () => {
    localStorage.removeItem('adminDetails');
    setAdminDetails(null);
    setIsLoggedIn(false);
  };

  const renderContent = () => {
    switch (activeTab) {
      case 'cars':
        return <AdminCars/>;
      case 'categories':
        return <AdminCategories/>;
      case 'teams':
        return <AdminTeams/>;
      case 'drivers':
        return <AdminDrivers/>;
      default:
        return null;
    }
  };

  return (
    <>
      {isLoggedIn ? (
        <div className="wrapper1">
          <div className="login-status">
            Logged in as {adminDetails?.username}
            <button onClick={handleLogout}>Logout</button>
          </div>
          <div className="adminNav">
            <button onClick={() => setActiveTab('cars')}>Cars</button>
            <button onClick={() => setActiveTab('categories')}>Groups</button>
            <button onClick={() => setActiveTab('teams')}>WRC Teams</button>
            <button onClick={() => setActiveTab('drivers')}>WRC Drivers</button>
          </div>
          {renderContent()}
        </div>
      ) : (
        <AdminLogin
          onLoginSuccess={handleLoginSuccess}
          onLoginError={handleLoginError}
        />
      )}
    </>
  );
}

export default AdminPanel;
