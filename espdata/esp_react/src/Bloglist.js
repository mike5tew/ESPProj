const Bloglist = ({ blogs, title, handleDelete }) => {
    // const blogs = props.blogs;
    // const title = props.title;
    
    return ( 
        <div classsName="blog-list">
                <h2>{ title }</h2>
                        {blogs.map((blog) => (
                
                <div className="blog-preview" key={blog.id}>
                    <h2>{blog.title}</h2>
                    <p>Written by {blog.author}</p>
                    <p align="right"><button  onClick={() => handleDelete(blog.id)}>Delete Blog</button></p>
                </div>    
            ))}
        </div>
     );
}
 
export default Bloglist
