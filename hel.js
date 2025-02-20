const handleSignup = async () => {
    try {
      const response = await axios.post("http://localhost:8080/auth/org/signup", {
        username,
        password,
        role,
        token
      });
      setResponseMessage(`Organization Signup successful: ${JSON.stringify(response.data)}`);
    } catch (error) {
      setResponseMessage(`Error during organization signup: ${error.message}`);
    }
  };

  const handleLogin = async () => {
    try {
      const response = await axios.post("http://localhost:8080/auth/org/login", {
        username,
        password,
        role
      });
      setResponseMessage(`Organization Login successful: ${JSON.stringify(response.data)}`);
      setToken(response.data.access_Token); // Assuming token is returned in the response
    } catch (error) {
      setResponseMessage(`Error during organization login: ${error.message}`);
    }
  };

  const handleRefreshToken = async () => {
    try {
      const response = await axios.post("http://localhost:8080/auth/org/refresh", {}, {
        headers: {
          Authorization: `Bearer ${token}`
        }
      });
      setResponseMessage(`Organization Token refreshed: ${response.data}`);
    } catch (error) {
      setResponseMessage(`Error during organization token refresh: ${error.message}`);
    }
  };

  const handleSignup = async () => {
    try {
      const response = await axios.post("http://localhost:8080/auth/agent/signup", {
        username,
        password,
        role,
        token
      });
      setResponseMessage(`Signup successful: ${JSON.stringify(response.data)}`);
    } catch (error) {
      setResponseMessage(`Error during signup: ${error.message}`);
    }
  };

  const handleLogin = async () => {
    try {
      const response = await axios.post("http://localhost:8080/auth/agent/login", {
        username,
        password,
        role
      });
      setResponseMessage(`Login successful: ${JSON.stringify(response.data)}`);
      setToken(response.data.access_Token); // Assuming token is returned in the response
    } catch (error) {
      setResponseMessage(`Error during login: ${error.message}`);
    }
  };

  const handleRefreshToken = async () => {
    try {
      const response = await axios.post("http://localhost:8080/auth/agent/refresh", {}, {
        headers: {
          Authorization: `Bearer ${token}`
        }
      });
      setResponseMessage(`Token refreshed: ${response.data}`);
    } catch (error) {
      setResponseMessage(`Error during token refresh: ${error.message}`);
    }
  };


ROLE  DEFIN E IN  JAVA PP IS  Admin,Org_Agent
