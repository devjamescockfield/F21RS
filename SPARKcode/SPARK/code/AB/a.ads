
pragma Spark_Mode (On);
package A
is
   
   type Index_Type is range 1 .. 10;
   
   function Identity(X: Index_Type) return Index_Type;

end A;

