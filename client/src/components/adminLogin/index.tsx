import React, { useState } from 'react';
import axios from 'axios';
import './index.scss'

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
    <div className='login-root'>
      <div className='form'>
        <h1>Admin Panel</h1>
        <label htmlFor='username'>Username: <input
          type="text"
          value={username}
          name='username'
          id='username'
          onChange={(e) => setUsername(e.target.value)}
        /></label>
        <label htmlFor='password'>Password: <input
          type="password"
          value={password}
          name='password'
          id='password'
          onChange={(e) => setPassword(e.target.value)}
        /></label>
        <button onClick={handleLogin}>Sign In</button>
      </div>
    </div>
  );
};

export default AdminLogin;
