function f = voltage(V, R)
    %checking if the Resistances are zero.
    r = zeros(3,3);
    r(1,1) = R(1)*R(2)+R(7)*R(1)+R(7)*R(2);
    r(1,2) = -R(2)*R(1);
    r(2,1) = -R(3)*R(8)*R(4);
    r(2,2) = R(7)*R(8)*R(4) + R(3)*R(8)*R(4) + R(3)*R(8)*R(7) + R(7)*R(3)*R(4);
    r(2,3) = -R(7)*R(3)*R(4);
    r(3,2) = -R(5)*R(6);
    r(3,3) = R(6)*R(8) + R(5)*R(6) + R(5)*R(8);
    disp(r);
    v = [V*R(7)*R(2); V*R(7)*R(8)*R(4); V*R(6)*R(8)];
    f = r\v;
end
