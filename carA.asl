//The code for the usual car in the Roundabout (Jason)

/* Initial beliefs and rules */

!start.

/* Initial goals */

+!start
	<- 	.print("CarA Ready!");
		.print("Checking Q1!");
		inc(0,0,0,0);
		!quadrant1.

+!quadrant1:
		quad1(A) & A < 1
	<- 	.print("Move to Q1");
		inc(1,0,0,0);
		.print("Checking Q2!");
		!quadrant2.
		
+!quadrant2:
		quad2(B) & B < 1
	<- 	.print("Move to Q2");
		inc(0,1,0,0);
		.print("Checking Q3!");		
		!quadrant3.
		
+!quadrant3:
		quad3(C) & C < 1
	<-	.print("Move to Q3");
		inc(0,0,1,0);
		.print("Checking Q4!");		
		!quadrant4.
		
+!quadrant4:
		quad4(D) & D < 1
	<- 	.print("Move to Q4");
		inc(0,0,0,1);
		.print("Get the Exit4");
		inc(0,0,0,0). //execução da operação "inc" no artefato KeyExitsArt, passando valores aleatórios como parâmetro.		
		
  		
/* Plans */

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
