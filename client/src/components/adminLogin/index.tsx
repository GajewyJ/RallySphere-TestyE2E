import React, { useState } from 'react';
import axios from 'axios';

type AdminLoginProps = {
  onLoginSuccess: (admin: any) => void;
  onLoginError: (error: string) => void;
};

const AdminLogin: React.FC<AdminLoginProps> = ({ onLoginSuccess, onLoginError }) => {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');

  const handleLogin = async () => {
    try {
      const response = await axios.get('http://localhost:3000/admins');
      if (response.status === 200) {
        // Find the admin with the matching username and password
        const admin = response.data.find((admin: { id: number; username: string; password: string; }) => admin.username === username && admin.password === password);
        if (admin) {
          onLoginSuccess(admin);
        } else {
          onLoginError('Invalid credentials');
        }
      } else {
        onLoginError('Login failed');
      }
    } catch (error) {
      onLoginError('Login failed with error: ' + error);
    }
  };
  

  return (
    <div>
      <input
        type="text"
        placeholder="Username"
        value={username}
        onChange={(e) => setUsername(e.target.value)}
      />
      <input
        type="password"
        placeholder="Password"
        value={password}
        onChange={(e) => setPassword(e.target.value)}
      />
      <button onClick={handleLogin}>Login</button>
    </div>
  );
};

export default AdminLogin;
