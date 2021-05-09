clear all;
close all;

th0 = -722.333;

x_goal_easy = -13;
x_goal_medium = -12;
x_goal_hard = -12;

vfh_easy = ExtractPathScans('data/vfh_easy.log', th0);
vfh_medium = ExtractPathScans('data/vfh_medium.log', th0);
vfh_hard = ExtractPathScans('data/vfh_hard.log', th0);

nd_easy = ExtractPathScans('data/nd_easy.log', th0);
nd_medium = ExtractPathScans('data/nd_medium.log', th0);
nd_hard = ExtractPathScans('data/nd_hard.log', th0);

nd_tuned_easy = ExtractPathScans('data/nd_tuned_easy.log', th0);
nd_tuned_medium = ExtractPathScans('data/nd_tuned_medium.log', th0);
nd_tuned_hard = ExtractPathScans('data/nd_tuned_hard.log', th0);

% Filter easy data

index_vfh = find(vfh_easy.vx, 1, 'first');
index_vfh_end = find(vfh_easy.x > x_goal_easy, 1, 'first');
index_nd = find(nd_easy.vx, 1, 'first');
index_nd_end = find(nd_easy.x > x_goal_easy, 1, 'first');
index_ndt = find(nd_tuned_easy.vx, 1, 'first');
index_ndt_end = find(nd_tuned_easy.x > x_goal_easy, 1, 'first');

vfh_easy.time = vfh_easy.time(index_vfh:index_vfh_end);
vfh_easy.x = vfh_easy.x(index_vfh:index_vfh_end);
vfh_easy.y = vfh_easy.y(index_vfh:index_vfh_end);
vfh_easy.th = vfh_easy.th(index_vfh:index_vfh_end);
vfh_easy.vx = vfh_easy.vx(index_vfh:index_vfh_end);
vfh_easy.vy = vfh_easy.vy(index_vfh:index_vfh_end);
vfh_easy.vth = vfh_easy.vth(index_vfh:index_vfh_end);

nd_easy.time = nd_easy.time(index_nd:index_nd_end);
nd_easy.x = nd_easy.x(index_nd:index_nd_end);
nd_easy.y = nd_easy.y(index_nd:index_nd_end);
nd_easy.th = nd_easy.th(index_nd:index_nd_end);
nd_easy.vx = nd_easy.vx(index_nd:index_nd_end);
nd_easy.vy = nd_easy.vy(index_nd:index_nd_end);
nd_easy.vth = nd_easy.vth(index_nd:index_nd_end);

nd_tuned_easy.time = nd_tuned_easy.time(index_ndt:index_ndt_end);
nd_tuned_easy.x = nd_tuned_easy.x(index_ndt:index_ndt_end);
nd_tuned_easy.y = nd_tuned_easy.y(index_ndt:index_ndt_end);
nd_tuned_easy.th = nd_tuned_easy.th(index_ndt:index_ndt_end);
nd_tuned_easy.vx = nd_tuned_easy.vx(index_ndt:index_ndt_end);
nd_tuned_easy.vy = nd_tuned_easy.vy(index_ndt:index_ndt_end);
nd_tuned_easy.vth = nd_tuned_easy.vth(index_ndt:index_ndt_end);

% Filter medium data

index_vfh = find(vfh_medium.vx, 1, 'first');
index_vfh_end = find(vfh_medium.x > x_goal_medium, 1, 'first');
index_nd = find(nd_medium.vx, 1, 'first');
index_nd_end = find(nd_medium.x > x_goal_medium, 1, 'first');
index_ndt = find(nd_tuned_medium.vx, 1, 'first');
index_ndt_end = find(nd_tuned_medium.x > x_goal_medium, 1, 'first');

vfh_medium.time = vfh_medium.time(index_vfh:index_vfh_end);
vfh_medium.x = vfh_medium.x(index_vfh:index_vfh_end);
vfh_medium.y = vfh_medium.y(index_vfh:index_vfh_end);
vfh_medium.th = vfh_medium.th(index_vfh:index_vfh_end);
vfh_medium.vx = vfh_medium.vx(index_vfh:index_vfh_end);
vfh_medium.vy = vfh_medium.vy(index_vfh:index_vfh_end);
vfh_medium.vth = vfh_medium.vth(index_vfh:index_vfh_end);

nd_medium.time = nd_medium.time(index_nd:index_nd_end);
nd_medium.x = nd_medium.x(index_nd:index_nd_end);
nd_medium.y = nd_medium.y(index_nd:index_nd_end);
nd_medium.th = nd_medium.th(index_nd:index_nd_end);
nd_medium.vx = nd_medium.vx(index_nd:index_nd_end);
nd_medium.vy = nd_medium.vy(index_nd:index_nd_end);
nd_medium.vth = nd_medium.vth(index_nd:index_nd_end);

nd_tuned_medium.time = nd_tuned_medium.time(index_ndt:index_ndt_end);
nd_tuned_medium.x = nd_tuned_medium.x(index_ndt:index_ndt_end);
nd_tuned_medium.y = nd_tuned_medium.y(index_ndt:index_ndt_end);
nd_tuned_medium.th = nd_tuned_medium.th(index_ndt:index_ndt_end);
nd_tuned_medium.vx = nd_tuned_medium.vx(index_ndt:index_ndt_end);
nd_tuned_medium.vy = nd_tuned_medium.vy(index_ndt:index_ndt_end);
nd_tuned_medium.vth = nd_tuned_medium.vth(index_ndt:index_ndt_end);

% Filter hard data

index_vfh = find(vfh_hard.vx, 1, 'first');
index_vfh_end = find(vfh_hard.x > x_goal_hard, 1, 'first');
index_nd = find(nd_hard.vx, 1, 'first');
index_nd_end = find(nd_hard.x > x_goal_hard, 1, 'first');
index_ndt = find(nd_tuned_hard.vx, 1, 'first');
index_ndt_end = find(nd_tuned_hard.x > x_goal_hard, 1, 'first');

vfh_hard.time = vfh_hard.time(index_vfh:index_vfh_end);
vfh_hard.x = vfh_hard.x(index_vfh:index_vfh_end);
vfh_hard.y = vfh_hard.y(index_vfh:index_vfh_end);
vfh_hard.th = vfh_hard.th(index_vfh:index_vfh_end);
vfh_hard.vx = vfh_hard.vx(index_vfh:index_vfh_end);
vfh_hard.vy = vfh_hard.vy(index_vfh:index_vfh_end);
vfh_hard.vth = vfh_hard.vth(index_vfh:index_vfh_end);

nd_hard.time = nd_hard.time(index_nd:index_nd_end);
nd_hard.x = nd_hard.x(index_nd:index_nd_end);
nd_hard.y = nd_hard.y(index_nd:index_nd_end);
nd_hard.th = nd_hard.th(index_nd:index_nd_end);
nd_hard.vx = nd_hard.vx(index_nd:index_nd_end);
nd_hard.vy = nd_hard.vy(index_nd:index_nd_end);
nd_hard.vth = nd_hard.vth(index_nd:index_nd_end);

nd_tuned_hard.time = nd_tuned_hard.time(index_ndt:index_ndt_end);
nd_tuned_hard.x = nd_tuned_hard.x(index_ndt:index_ndt_end);
nd_tuned_hard.y = nd_tuned_hard.y(index_ndt:index_ndt_end);
nd_tuned_hard.th = nd_tuned_hard.th(index_ndt:index_ndt_end);
nd_tuned_hard.vx = nd_tuned_hard.vx(index_ndt:index_ndt_end);
nd_tuned_hard.vy = nd_tuned_hard.vy(index_ndt:index_ndt_end);
nd_tuned_hard.vth = nd_tuned_hard.vth(index_ndt:index_ndt_end);

% Plots x -> time

figure(1);
hold on;
plot(vfh_easy.x, vfh_easy.time - min(vfh_easy.time));
plot(nd_easy.x, nd_easy.time - min(nd_easy.time));
plot(nd_tuned_easy.x, nd_tuned_easy.time - min(nd_tuned_easy.time));
xline(x_goal_easy);
legend('VFH', 'ND', 'ND with params', 'Goal')

figure(2);
hold on;
plot(vfh_medium.x, vfh_medium.time - min(vfh_medium.time));
plot(nd_medium.x, nd_medium.time - min(nd_medium.time));
plot(nd_tuned_medium.x, nd_tuned_medium.time - min(nd_tuned_medium.time));
xline(x_goal_medium);
legend('VFH', 'ND', 'ND with params', 'Goal')

figure(3);
hold on;
plot(vfh_hard.x, vfh_hard.time - min(vfh_hard.time));
plot(nd_hard.x, nd_hard.time - min(nd_hard.time));
plot(nd_tuned_hard.x, nd_tuned_hard.time - min(nd_tuned_hard.time));
xline(x_goal_hard);
legend('VFH', 'ND', 'ND with params', 'Goal')

% Plots time -> vx

figure(4);
hold on;
plot(vfh_easy.time - min(vfh_easy.time), vfh_easy.vx);
plot(nd_easy.time - min(nd_easy.time), nd_easy.vx);
plot(nd_tuned_easy.time - min(nd_tuned_easy.time), nd_tuned_easy.vx);
legend('VFH', 'ND', 'ND with params')

figure(5);
hold on;
plot(vfh_medium.time - min(vfh_medium.time), vfh_medium.vx);
plot(nd_medium.time - min(nd_medium.time), nd_medium.vx);
plot(nd_tuned_medium.time - min(nd_tuned_medium.time), nd_tuned_medium.vx);
legend('VFH', 'ND', 'ND with params')

figure(6);
hold on;
plot(vfh_hard.time - min(vfh_hard.time), vfh_hard.vx);
plot(nd_hard.time - min(nd_hard.time), nd_hard.vx);
plot(nd_tuned_hard.time - min(nd_tuned_hard.time), nd_tuned_hard.vx);
legend('VFH', 'ND', 'ND with params')

% Plot time -> ax

figure(7);
hold on;
plot(vfh_easy.time - min(vfh_easy.time), gradient(vfh_easy.vx)/0.1);
plot(nd_easy.time - min(nd_easy.time), gradient(nd_easy.vx)/0.1);
plot(nd_tuned_easy.time - min(nd_tuned_easy.time), gradient(nd_tuned_easy.vx)/0.1);
legend('VFH', 'ND', 'ND with params')

figure(8);
hold on;
plot(vfh_medium.time - min(vfh_medium.time), gradient(vfh_medium.vx)/0.1);
plot(nd_medium.time - min(nd_medium.time), gradient(nd_medium.vx)/0.1);
plot(nd_tuned_medium.time - min(nd_tuned_medium.time), gradient(nd_tuned_medium.vx)/0.1);
legend('VFH', 'ND', 'ND with params')

figure(9);
hold on;
plot(vfh_hard.time - min(vfh_hard.time), gradient(vfh_hard.vx)/0.1);
plot(nd_hard.time - min(nd_hard.time), gradient(nd_hard.vx)/0.1);
plot(nd_tuned_hard.time - min(nd_tuned_hard.time), gradient(nd_tuned_hard.vx)/0.1);
legend('VFH', 'ND', 'ND with params')

% Plot x -> y

figure(10);
hold on;
plot(vfh_easy.x, vfh_easy.y);
plot(nd_easy.x, nd_easy.y);
plot(nd_tuned_easy.x, nd_tuned_easy.y);
legend('VFH', 'ND', 'ND with params')

figure(11);
hold on;
plot(vfh_medium.x, vfh_medium.y);
plot(nd_medium.x, nd_medium.y);
plot(nd_tuned_medium.x, nd_tuned_medium.y);
legend('VFH', 'ND', 'ND with params')

figure(12);
hold on;
plot(vfh_hard.x, vfh_hard.y);
plot(nd_hard.x, nd_hard.y);
plot(nd_tuned_hard.x, nd_tuned_hard.y);
legend('VFH', 'ND', 'ND with params')

% Plot distance objects

figure(13)
hold on;

vfh_easy_comb = zeros(size(vfh_easy.x, 2), 2); vfh_easy_comb(:, 1) = vfh_easy.x; vfh_easy_comb(:, 2) = vfh_easy.y;
nd_easy_comb = zeros(size(nd_easy.x, 2), 2); nd_easy_comb(:, 1) = nd_easy.x; nd_easy_comb(:, 2) = nd_easy.y;
ndt_easy_comb = zeros(size(nd_tuned_easy.x, 2), 2); ndt_easy_comb(:, 1) = nd_tuned_easy.x; ndt_easy_comb(:, 2) = nd_tuned_easy.y;

obs1 = zeros(size(vfh_easy.x, 2), 2); obs1(:, 1) = -15; obs1(:, 2) = -6.5;
obs2 = zeros(size(vfh_easy.x, 2), 2); obs2(:, 1) = -14; obs2(:, 2) = -7.5;
plot(vfh_easy.time - min(vfh_easy.time), vecnorm(vfh_easy_comb-obs1,2,2), 'ro');
plot(vfh_easy.time - min(vfh_easy.time), vecnorm(vfh_easy_comb-obs2,2,2), 'rx');

obs1 = zeros(size(nd_easy.x, 2), 2); obs1(:, 1) = -15; obs1(:, 2) = -6.5;
obs2 = zeros(size(nd_easy.x, 2), 2); obs2(:, 1) = -14; obs2(:, 2) = -7.5;
plot(nd_easy.time - min(nd_easy.time), vecnorm(nd_easy_comb-obs1,2,2), 'bo');
plot(nd_easy.time - min(nd_easy.time), vecnorm(nd_easy_comb-obs2,2,2), 'bx');

obs1 = zeros(size(nd_tuned_easy.x, 2), 2); obs1(:, 1) = -15; obs1(:, 2) = -6.5;
obs2 = zeros(size(nd_tuned_easy.x, 2), 2); obs2(:, 1) = -14; obs2(:, 2) = -7.5;
plot(nd_tuned_easy.time - min(nd_tuned_easy.time), vecnorm(ndt_easy_comb-obs1,2,2), 'go');
plot(nd_tuned_easy.time - min(nd_tuned_easy.time), vecnorm(ndt_easy_comb-obs2,2,2), 'gx');
legend('OBS1-VFH', 'OBS2-VFH', 'OBS1-ND', 'OBS2-ND', 'OBS1-ND-PARAMS', 'OBS2-ND-PARAMS')

figure(14)
hold on;

vfh_medium_comb = zeros(size(vfh_medium.x, 2), 2); vfh_medium_comb(:, 1) = vfh_medium.x; vfh_medium_comb(:, 2) = vfh_medium.y;
nd_medium_comb = zeros(size(nd_medium.x, 2), 2); nd_medium_comb(:, 1) = nd_medium.x; nd_medium_comb(:, 2) = nd_medium.y;
ndt_medium_comb = zeros(size(nd_tuned_medium.x, 2), 2); ndt_medium_comb(:, 1) = nd_tuned_medium.x; ndt_medium_comb(:, 2) = nd_tuned_medium.y;

obs1 = zeros(size(vfh_medium.x, 2), 2); obs1(:, 1) = -15; obs1(:, 2) = -6.5;
obs2 = zeros(size(vfh_medium.x, 2), 2); obs2(:, 1) = -14; obs2(:, 2) = -7.5;
obs3 = zeros(size(vfh_medium.x, 2), 2); obs3(:, 1) = -13; obs3(:, 2) = -6.5;
plot(vfh_medium.time - min(vfh_medium.time), vecnorm(vfh_medium_comb-obs1,2,2), 'ro');
plot(vfh_medium.time - min(vfh_medium.time), vecnorm(vfh_medium_comb-obs2,2,2), 'rx');
plot(vfh_medium.time - min(vfh_medium.time), vecnorm(vfh_medium_comb-obs3,2,2), 'r-');

obs1 = zeros(size(nd_medium.x, 2), 2); obs1(:, 1) = -15; obs1(:, 2) = -6.5;
obs2 = zeros(size(nd_medium.x, 2), 2); obs2(:, 1) = -14; obs2(:, 2) = -7.5;
obs3 = zeros(size(nd_medium.x, 2), 2); obs3(:, 1) = -13; obs3(:, 2) = -6.5;
plot(nd_medium.time - min(nd_medium.time), vecnorm(nd_medium_comb-obs1,2,2), 'bo');
plot(nd_medium.time - min(nd_medium.time), vecnorm(nd_medium_comb-obs2,2,2), 'bx');
plot(nd_medium.time - min(nd_medium.time), vecnorm(nd_medium_comb-obs3,2,2), 'b-');

obs1 = zeros(size(nd_tuned_medium.x, 2), 2); obs1(:, 1) = -15; obs1(:, 2) = -6.5;
obs2 = zeros(size(nd_tuned_medium.x, 2), 2); obs2(:, 1) = -14; obs2(:, 2) = -7.5;
obs3 = zeros(size(nd_tuned_medium.x, 2), 2); obs3(:, 1) = -13; obs3(:, 2) = -6.5;
plot(nd_tuned_medium.time - min(nd_tuned_medium.time), vecnorm(ndt_medium_comb-obs1,2,2), 'go');
plot(nd_tuned_medium.time - min(nd_tuned_medium.time), vecnorm(ndt_medium_comb-obs2,2,2), 'gx');
plot(nd_tuned_medium.time - min(nd_tuned_medium.time), vecnorm(ndt_medium_comb-obs3,2,2), 'g-');
legend('OBS1-VFH', 'OBS2-VFH', 'OBS3-VFH', 'OBS1-ND', 'OBS2-ND', 'OBS3-ND', 'OBS1-ND-PARAMS', 'OBS2-ND-PARAMS', 'OBS3-ND-PARAMS')

figure(15)
hold on;

vfh_hard_comb = zeros(size(vfh_hard.x, 2), 2); vfh_hard_comb(:, 1) = vfh_hard.x; vfh_hard_comb(:, 2) = vfh_hard.y;
nd_hard_comb = zeros(size(nd_hard.x, 2), 2); nd_hard_comb(:, 1) = nd_hard.x; nd_hard_comb(:, 2) = nd_hard.y;
ndt_hard_comb = zeros(size(nd_tuned_hard.x, 2), 2); ndt_hard_comb(:, 1) = nd_tuned_hard.x; ndt_hard_comb(:, 2) = nd_tuned_hard.y;

obs1 = zeros(size(vfh_hard.x, 2), 2); obs1(:, 1) = -15; obs1(:, 2) = -6.5;
obs2 = zeros(size(vfh_hard.x, 2), 2); obs2(:, 1) = -14; obs2(:, 2) = -7.5;
obs3 = zeros(size(vfh_hard.x, 2), 2); obs3(:, 1) = -13; obs3(:, 2) = -6.5;
obs4 = zeros(size(vfh_hard.x, 2), 2); obs4(:, 1) = -16.5; obs4(:, 2) = -6.1;
obs5 = zeros(size(vfh_hard.x, 2), 2); obs5(:, 1) = -16; obs5(:, 2) = -7.5;
plot(vfh_hard.time - min(vfh_hard.time), vecnorm(vfh_hard_comb-obs1,2,2), 'ro');
plot(vfh_hard.time - min(vfh_hard.time), vecnorm(vfh_hard_comb-obs2,2,2), 'rx');
plot(vfh_hard.time - min(vfh_hard.time), vecnorm(vfh_hard_comb-obs3,2,2), 'r-');
plot(vfh_hard.time - min(vfh_hard.time), vecnorm(vfh_hard_comb-obs4,2,2), 'r*');
plot(vfh_hard.time - min(vfh_hard.time), vecnorm(vfh_hard_comb-obs5,2,2), 'r+');

obs1 = zeros(size(nd_hard.x, 2), 2); obs1(:, 1) = -15; obs1(:, 2) = -6.5;
obs2 = zeros(size(nd_hard.x, 2), 2); obs2(:, 1) = -14; obs2(:, 2) = -7.5;
obs3 = zeros(size(nd_hard.x, 2), 2); obs3(:, 1) = -13; obs3(:, 2) = -6.5;
obs4 = zeros(size(nd_hard.x, 2), 2); obs4(:, 1) = -16.5; obs4(:, 2) = -6.1;
obs5 = zeros(size(nd_hard.x, 2), 2); obs5(:, 1) = -16; obs5(:, 2) = -7.5;
plot(nd_hard.time - min(nd_hard.time), vecnorm(nd_hard_comb-obs1,2,2), 'bo');
plot(nd_hard.time - min(nd_hard.time), vecnorm(nd_hard_comb-obs2,2,2), 'bx');
plot(nd_hard.time - min(nd_hard.time), vecnorm(nd_hard_comb-obs3,2,2), 'b-');
plot(nd_hard.time - min(nd_hard.time), vecnorm(nd_hard_comb-obs4,2,2), 'b*');
plot(nd_hard.time - min(nd_hard.time), vecnorm(nd_hard_comb-obs5,2,2), 'b+');

obs1 = zeros(size(nd_tuned_hard.x, 2), 2); obs1(:, 1) = -15; obs1(:, 2) = -6.5;
obs2 = zeros(size(nd_tuned_hard.x, 2), 2); obs2(:, 1) = -14; obs2(:, 2) = -7.5;
obs3 = zeros(size(nd_tuned_hard.x, 2), 2); obs3(:, 1) = -13; obs3(:, 2) = -6.5;
obs4 = zeros(size(nd_tuned_hard.x, 2), 2); obs4(:, 1) = -16.5; obs4(:, 2) = -6.1;
obs5 = zeros(size(nd_tuned_hard.x, 2), 2); obs5(:, 1) = -16; obs5(:, 2) = -7.5;
plot(nd_tuned_hard.time - min(nd_tuned_hard.time), vecnorm(ndt_hard_comb-obs1,2,2), 'go');
plot(nd_tuned_hard.time - min(nd_tuned_hard.time), vecnorm(ndt_hard_comb-obs2,2,2), 'gx');
plot(nd_tuned_hard.time - min(nd_tuned_hard.time), vecnorm(ndt_hard_comb-obs3,2,2), 'g-');
plot(nd_tuned_hard.time - min(nd_tuned_hard.time), vecnorm(ndt_hard_comb-obs4,2,2), 'g*');
plot(nd_tuned_hard.time - min(nd_tuned_hard.time), vecnorm(ndt_hard_comb-obs5,2,2), 'g+');
legend('OBS1-VFH', 'OBS2-VFH', 'OBS3-VFH', 'OBS4-VFH', 'OBS5-VFH', 'OBS1-ND', 'OBS2-ND', 'OBS3-ND', 'OBS4-ND', 'OBS5-ND','OBS1-ND-PARAMS', 'OBS2-ND-PARAMS', 'OBS3-ND-PARAMS','OBS4-ND-PARAMS','OBS5-ND-PARAMS')