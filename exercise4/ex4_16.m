h = 0.25; x = 2;
% x: fdx(2) ����
% h: ����

fx = @(x) 25*x^3 - 6*x^2 + 7*x - 88;
fdx = @(x) 75*x^2 - 12*x + 7;
% fdx = fx�� 1�� ���Լ�

fprintf('����: fdx(2) = %f, \n', fdx(2));
% ����
fprintf('��������: fdx(2) = %f, \n', (fx(x+h) - fx(x)) / ((x+h) - x));
% ��������
fprintf('��������: fdx(2) = %f, \n',  (fx(x) - fx(x-h)) / ((x+h) - x));
% ��������
fprintf('�߽�����: fdx(2) = %f, \n', (fx(x+h) - fx(x-h)) / (2 * h));
% �߽�����

% f'(2)�� �� �� ��������, ��������, �߽��������� ���Ͽ��� ��
% �������� ���̴� �� �� 37.5625, 34.4375, -1.5625�� ���̰� ����.
