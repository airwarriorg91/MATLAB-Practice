function f = Sierpinski(n)
    %creates a sierpinski triangle of a particular depth
    if ~isscalar(n)||n~=fix(n)||n<0
        error("Non-negative integer scalar input expected")
    end
    %constants
    c = [0,0];
    s = 1;
    h = sqrt(3)*s/2;
    v = VideoWriter('Seirpinski_level 7.mp4', 'MPEG-4');
    clf; set(gcf, 'position', [c(1)-s/2-10, c(2)-h/3-10, s*500, h*500]);
    xlim([c(1)-s/2-0.05, c(1)+s/2+0.05]);
    ylim([c(2)-h/3-0.05, c(1)+2*h/3+0.05]);
    title(sprintf("Sierpinski Triangle with %d depths", n))
    open(v);
    Sier(n,c,s,h,v);
    close(v);
end

function f = Sier(n,c,s,h,v)
    
    if(n==0)
        line([c(1)-s/2, c(1)+s/2],[c(2)-h/3, c(2)-h/3]);
        hold on;
        line([c(1)-s/2, c(1)],[c(2)-h/3, c(2)+2*h/3]);
        line([c(1)+s/2, c(1)],[c(2)-h/3, c(2)+2*h/3]);
        F = getframe(gcf);
        writeVideo(v,F);
    else
        Sier(n-1, [c(1)-s/4, c(2)-h/6], s/2, h/2, v) %bottom-left
        Sier(n-1, [c(1)+s/4, c(2)-h/6], s/2, h/2, v) %bottom-right
        Sier(n-1, [c(1), c(2)+h/3], s/2, h/2, v) %top-middle
    end
end