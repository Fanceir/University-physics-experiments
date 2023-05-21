% 第一组数据（正向）
x1 = [0.229, 0.237, 0.274, 0.293, 0.311, 0.338, 0.357, 0.365, 0.376, 0.381];
y1 = [0.13, 0.23, 0.65, 1.34, 2.27, 4.56, 6.87, 7.91, 9.78, 10.67];

% 第二组数据（反向）
x2 = [1.6, 2.79, 3.79, 4.88, 5.72, 6.6, 7.26, 8.05, 10.03, 12.73];
y2 = [34.3, 39.1, 42.3, 45.3, 47.5, 50.5, 52.4, 54.3, 59.4, 66.5];

% 多项式拟合（正向）
degree1 = 4; % 拟合多项式的阶数
p1 = polyfit(x1, y1, degree1); % 第一组数据拟合
x_fit1 = linspace(min(x1), max(x1), 100); % 生成拟合曲线上的点
y_fit1 = polyval(p1, x_fit1); % 计算拟合曲线上的值

% 多项式拟合（反向）
degree2 = 4; % 拟合多项式的阶数
p2 = polyfit(x2, y2, degree2); % 第二组数据拟合
x_fit2 = linspace(min(x2), max(x2), 100); % 生成拟合曲线上的点
y_fit2 = polyval(p2, x_fit2); % 计算拟合曲线上的值

% 绘制函数图像和拟合曲线
figure;

% 第一组数据（正向）
subplot(1, 2, 1);
plot(x1, y1, 'b.', 'MarkerSize', 10);
hold on;
plot(x_fit1, y_fit1, 'b-', 'LineWidth', 2);
xlabel('电压 (V)');
ylabel('正向电流 (mA)');
title('测量二极管正向伏安特性曲线');
hold off;

% 第二组数据（反向）
subplot(1, 2, 2);
plot(x2, y2, 'r.', 'MarkerSize', 10);
hold on;
plot(x_fit2, y_fit2, 'r-', 'LineWidth', 2);
xlabel('电压 (V)');
ylabel('反向电流 (nA)');
title('二极管反向伏安特性曲线');
hold off;
% 获取图像的坐标范围
ax1 = subplot(1, 2, 1);
ax2 = subplot(1, 2, 2);
pos1 = get(ax1, 'Position');
pos2 = get(ax2, 'Position');

% 图像作者和日期信息
annotation('textbox', [pos1(1)+0.03, pos1(2)-0.1, 0.10, 0.05], 'String', '作者：樊旭', 'FontSize', 8);
annotation('textbox', [pos2(1)+0.03, pos2(2)-0.1, 0.10, 0.05], 'String', '日期：2023年5月13日', 'FontSize', 8);
