import { Login } from '@microsoft/mgt-react';

const Navbar = () => {
    return ( 
        <nav className="navbar">
        <h1>ESP Thinking</h1>
        <a href="/">Home</a>
        <a href="/create">New Blog</a> 
        <Login />
        </nav>
     );
}
 
export default Navbar
   
