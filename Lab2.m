classdef Lab2 < handle
    

    methods (Static)
        function Part1()
        clf;
        trOrigin = eye(4);
        position1 = transl(0,0,10);
        tranimate(trOrigin,position1,'fps',50)

        position2 = position1*trotx(-30,"deg");
        tranimate (position1,position2,'fps',50)

        position3 = transl(0,2,10)*trotx(-30,"deg");
        tranimate(position2, position3,'fps',50)

        position4 = transl(0,2,10)*inv(trotx(0,"deg"));
        tranimate(position3, position4,'fps',50 )
        
        position5 = position4*troty(30,"deg");
        tranimate(position4, position5,'fps',50)

        position6 = transl(2,2,10)*troty(30,"deg");
        tranimate(position5,position6,'fps',50)

        position7 = transl(2,2,10)*inv(troty(0,"deg"));
        tranimate(position6, position7,'fps',50)
        
        position8 = transl(2,2,0)*inv(troty(0,"deg"));
        tranimate(position7, position8,'fps',50)

        end

        function Part2()
            close all;
            clear all;
            
            cowHerd = RobotCows(10);
            numSteps=100;
            delay=0.01;
            cowHerd.TestPlotManyStep(numSteps,delay);
            cowHerd.cowModel{2}.base
            PlaceObject('fenceFinal.ply',[ 0,0,0; 0,0.75,0 ]);
            h = PlaceObject('fenceFinal.ply',[1,0,0]);
            verts = [get(h,'Vertices'), ones(size(get(h,'Vertices'),1),1)] * trotz(pi/2);
            set(h,'Vertices',verts(:,1:3))
        end

        function Part3()
            PlaceObject('fenceFinal.ply',[ 0,0,0; 0,0.75,0 ]);
            h = PlaceObject('fenceFinal.ply',[1,0,0]);
            verts = [get(h,'Vertices'), ones(size(get(h,'Vertices'),1),1)] * trotz(pi/2);
            set(h,'Vertices',verts(:,1:3))
            cowHerd = RobotCows(10);
            numSteps=100;
            delay=0.01;
            cowHerd.TestPlotManyStep(numSteps,delay);
            cowHerd.cowModel{2}.base
            
            trOrigin = eye(4);
            position1 = transl(0,0,0);
            tranimate(trOrigin,position1,'fps',50)
        end

    end
end