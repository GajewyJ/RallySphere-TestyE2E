import { useEffect } from "react";  
import AllCategories from "../../components/allCategories";

function AllCategoriesPage(){
  useEffect(() => {
      document.title = 'RallySphere - Car Groups';
  }, []);

  return (
    <>
      <AllCategories/>
    </>
  );
};

export default AllCategoriesPage;