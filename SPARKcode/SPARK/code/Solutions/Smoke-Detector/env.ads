
-- Author:              A. Ireland
--
-- Address:             School Mathematical & Computer Sciences
--                      Heriot-Watt University
--                      Edinburgh, EH14 4AS
--
-- E-mail:              a.ireland@hw.ac.uk
--
-- Last modified:       13/8/2019
--
-- Filename:            env.ads
--
-- Description:         Provides the drivers required for simulating the
--                      environment in which the smoke detector operates.

pragma SPARK_Mode (Off);
package Env is

  procedure Update;

  function At_End return Boolean;

  procedure Open_File;

  procedure Close_File;

end Env;



