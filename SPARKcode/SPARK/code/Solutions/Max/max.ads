pragma SPARK_Mode(On);
package Max
is
   procedure Int_Max(X, Y: in Integer; Z: out Integer)
     with 
     Depends => (Z => (X, Y));

end Max;

