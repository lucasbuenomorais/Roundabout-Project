//The code for the usual car in the Roundabout

/* Initial beliefs and rules */

!start.

/* Initial goals */

+!start
	<-  .print("CarA Ready!");
		  .print("Checking Q1!");
		  !quadrant1.

+!quadrant1:
		quad1(A) & A < 1
	<-  .print("Move to Q1");
		  .print("Checking Q2!");			
		  !quadrant2.
		
+!quadrant2:
		quad2(B) & B < 1
	<- 	.print("Move to Q2");
		  .print("Checking Q3!");
		  !quadrant3.
		
+!quadrant3:
		quad3(C) & C < 1
	<-	.print("Move to Q3");
		  .print("Checking Q4!");
		  !quadrant4.
		
+!quadrant4:
		quad4(D) & D < 1
	<- 	.print("Move to Q4");
		  .print("Get the Exit4");
		  inc(5,6,7,8). //operation "inc" on the artifact KeyExitsArt, generating random values as parameters		
  		
/* Plans */

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
