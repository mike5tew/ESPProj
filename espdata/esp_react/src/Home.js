import { useState, useEffect } from "react"
import Bloglist from "./Bloglist";

const Home = () => {
    const [blogs, setBlogs]=useState(null);

    const [name,setName] = useState('auth2');

    const handleDelete = (id) => {
         const newBlogs = blogs.filter(blog => blog.id!==id)
         setBlogs(newBlogs); 
    }

useEffect(() =>{
    fetch('http://localhost:3000/blogs')
    .then(res => {
       return res.json();
    })
    .then(data =>{
       setBlogs(data);
    });
}, [])

    return ( 
        <div className="home">
            {blogs && <Bloglist blogs={blogs} title="All messages!" handleDelete={handleDelete} />}
            {/* <Bloglist blogs={blogs.filter((blog) => blog.author==="Mike Stewart")} title="All messages!"/> */}
            <button onClick={() => setName('Mike Stewart')}>Change Name</button>
            <p>{ name }</p>
        </div>
        
     );
}
 
export default Home;
