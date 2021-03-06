note
 description:"[
		Swagger Petstore
 		This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
  		OpenAPI spec version: 1.0.0
 	    Contact: apiteam@swagger.io

  	NOTE: This class is auto generated by the swagger code generator program.

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel swagger codegen", "src=https://github.com/swagger-api/swagger-codegen.git", "protocol=uri"
class DOG 

inherit

  ANY
      redefine
          out 
      select
          out  
      end

  ANIMAL 
      rename
          out as out_animal,
          is_equal as is_equal_animal,
          copy as copy_animal
      select
          is_equal_animal,
          copy_animal     
      end   

feature --Access

    breed: detachable STRING_32 
      

feature -- Change Element  
 
    set_breed (a_name: like breed)
        -- Set 'breed' with 'a_name'.
      do
        breed := a_name
      ensure
        breed_set: breed = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append(out_animal)
        Result.append("%Nclass DOG%N")
        if attached breed as l_breed then
          Result.append ("%Nbreed:")
          Result.append (l_breed.out)
          Result.append ("%N")    
        end  
      end
end


