<!DOCTYPE html>
<html>
<head>
  <title>Student Registration</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f0f8ff;
      margin: 0;
      padding: 0;
    }
    .container {
      width: 400px;
      margin: 50px auto;
      background: #ffffff;
      padding: 30px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
      border-radius: 8px;
    }
    h2 {
      text-align: center;
      color: #333;
    }
    form {
      display: flex;
      flex-direction: column;
    }
    label {
      margin-top: 10px;
      font-weight: bold;
      color: #555;
    }
    input[type="text"], input[type="email"] {
      padding: 8px;
      margin-top: 5px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }
    input[type="submit"] {
      margin-top: 20px;
      padding: 10px;
      background-color: #007bff;
      border: none;
      color: white;
      font-weight: bold;
      border-radius: 4px;
      cursor: pointer;
    }
    input[type="submit"]:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>Student Registration Form</h2>
    <form action="RegisterServlet" method="post">
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" required>

      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required>

      <label for="phone">Phone:</label>
      <input type="text" id="phone" name="phone">

      <input type="submit" value="Register">
    </form>
  </div>
</body>
</html>
