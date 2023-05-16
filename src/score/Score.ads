with Ada.Containers; use Ada.Containers;
with Ada.Containers.Vectors;
package Score is
   package Integer_Vectors is new
     Ada.Containers.Vectors
       (Index_Type => Natural,
        Element_Type => Integer);
   use Integer_Vectors;
   function BA (V : Vector := Empty_Vector) return Integer;
end Score;