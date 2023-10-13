
-- Author:              A. Ireland
--
-- Address:             School Mathematical & Computer Sciences
--                      Heriot-Watt University
--                      Edinburgh, EH14 4AS
--
-- E-mail:              a.ireland@hw.ac.uk
--
-- Last modified:       13/10/2002
--
-- Filename:            log.ads
--
-- Description:         Provides logger that records state information on the
--                      component parts of the smoke detector at run-time. 

-- with Spark_IO;

pragma SPARK_Mode (Off);
package Log is

  procedure Update;

  procedure Open_File;

  procedure Close_File;

end Log;



