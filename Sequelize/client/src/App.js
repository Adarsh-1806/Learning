import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import "./App.css";
import Blogs from "./component/Blogs";
import Navbar from "./component/Navbar";
import AddBlog from "./component/AddBlog";
import SignIn from "./component/SignIn";

function App() {
  return (
    <Router>
      <Routes>
        <Route exact path="/" element={<Navbar />} />
        <Route exact path="/blogs" element={<Blogs />} />
        <Route exact path="/addblog" element={<AddBlog />} />
        <Route exact path="/signin" element={<SignIn />} />
      </Routes>
    </Router>
  );
}

export default App;
