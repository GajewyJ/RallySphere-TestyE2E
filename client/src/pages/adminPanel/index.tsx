import { useEffect, useState } from "react";
import "./index.scss";
import AdminLogin from "../../components/adminLogin";

type AdminDetails = {
  id: Number;
  username: string;
  password: string;
};

function AdminPanel() {
  const [isLoggedIn, setIsLoggedIn] = useState<boolean>(false);
  const [adminDetails, setAdminDetails] = useState<AdminDetails | null>(null);

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

  return (
    <>
      {isLoggedIn ? (
        <div className="login-status">
          Logged in as {adminDetails?.username}
          <button onClick={handleLogout}>Logout</button>
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
