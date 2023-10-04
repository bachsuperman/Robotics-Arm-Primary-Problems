classdef Lab1 < handle
   

    methods
        function self = Lab1()
            cla;
            self.Question1();
            self.Question2();
            self.Question3and4();
        end
    end

    methods (Static)
        function Question1()
            disp('Download and setup the Robotics Toolbox. See videos and links in Canvas.')
            disp('Uncomment and running "rtbdemo". Close figure when you have finished')
            % rtbdemo % <- Uncomment this
        end


        function Question2()
            imshow('Lab1CircularRaceTrack.jpg')
            axis on
            hold on;
            
            Lab1.Plo
            car1Tr = SE2(300, 550, 0).T;
            car1Tr_h = trplot2(car1Tr, 'frame', '1', 'color', 'b','length',50);
            
            % The track diameter to outside lane is (550-66) = 484
            % Approx circumference = pi * 484 = 1521
            
            totalSteps = 360; % step could per revolulation 
            
            % So the transform at each step is
            car1MoveTr = SE2((pi * 484)/totalSteps, 0, 0).T;
            car1TurnTr = SE2(0, 0, -2*pi/totalSteps).T;
            
            for i = 1:totalSteps
                car1Tr = car1Tr * car1MoveTr * car1TurnTr;
                try delete(car1Tr_h);end %#ok<TRYNC>
                try delete(text_h);end %#ok<TRYNC>
                car1Tr_h = trplot2(car1Tr, 'frame', '1', 'color', 'b','length',50);           
               
                
                message = sprintf([num2str(round(car1Tr(1,:),2,'significant')) '\n' ...
                                    '\n' ...
                                                ]);
                
                text_h = text(10, 50, message, 'FontSize', 10, 'Color', [.6 .2 .6]);
                 drawnow();
            end
        end


        function Question3and4()
        end


    end
end


