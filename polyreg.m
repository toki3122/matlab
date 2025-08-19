function polyreg(x,yo,order)
for i=1:order
    subplot(ceil(order/2),2,i);
    unireg(x,yo,i);
    title(sprintf('Polynomial regression(order %d)',i));
    xlabel('x');
    ylabel('y');
    legend('Original data',sprintf('Order %d',i));
end
end
