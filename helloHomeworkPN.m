% Created by Gianpaolo Demarchi
disp('Hello World!')

% Created by Pauline Nagel
disp('Hello Homeowork!')

a = 1

% Some silly change 1
b = a + 1
% Some silly change 2
c = b + 2;
disp(['The value of c is: ', num2str(c)]);


clc; clear; close all;
% Lets create an animation
num_steps = 150;    
amplitude = 5;      % How high can our smiley jump?
speed = 0.3;        % How fast?
figure('Name', 'Happy Smiley');
axis([-10 10 -10 10]); 
axis equal;           
grid on;
hold on;      
% Title
title('😀 Silly change for Homework! 😀', 'FontSize', 14, 'Color', 'white');
% Smiley head
theta = linspace(0, 2*pi, 100);
R = 3; % head size
head = patch(R*cos(theta), R*sin(theta), 'y', 'FaceColor', 'yellow');
% Left Eye 
R_eye = 0.5;
eye_L = patch(R_eye*cos(theta) - 1.5, R_eye*sin(theta) + 1.5, 'k', 'FaceColor', 'black');
% Right Eye
eye_R = patch(R_eye*cos(theta) + 1.5, R_eye*sin(theta) + 1.5, 'k', 'FaceColor', 'black');
% Mouth
num_mouth_points = 50;
mouth_x = linspace(-1.5, 1.5, num_mouth_points);
% should be a happy smiley
mouth_y = -0.7 * sin(linspace(0, pi, num_mouth_points)) - 1; 
mouth_line = plot(mouth_x, mouth_y, 'k', 'LineWidth', 4);
% animation
disp('Starte die lachende Smiley-Animation...');
for k = 1:num_steps
    x_pos = amplitude * sin(speed * k); 
    y_pos = amplitude * abs(sin(speed * k)); 
 
    set(head, 'XData', R*cos(theta) + x_pos, 'YData', R*sin(theta) + y_pos);
    set(eye_L, 'XData', R_eye*cos(theta) - 1.5 + x_pos, 'YData', R_eye*sin(theta) + 1.5 + y_pos);
    set(eye_R, 'XData', R_eye*cos(theta) + 1.5 + x_pos, 'YData', R_eye*sin(theta) + 1.5 + y_pos);
    set(mouth_line, 'XData', mouth_x + x_pos, 'YData', mouth_y + y_pos);
  
    drawnow;
    pause(0.05); 
end
disp('Animation beendet. Der lachende Smiley hat fertig gehüpft!');
hold off; 
