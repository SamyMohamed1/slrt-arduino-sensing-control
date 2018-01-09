u = UDP_msgr('192.168.1.177',10001,10002);
fprintf('\nReceiving data from Arduino ... \n')
N=100;
reverseStr = [];
while 1==1
    data = u.receiveDataMsg(6);
    if ~isempty(data)
        msg = sprintf(...
            ' v1=%.2f,\n v2=%.2f,\n v3=%.2f,\n v4=%.2f,\n v5=%.2f,\n v6=%.2f,\n',...
            data(1),data(2),data(3),data(4),data(5),data(6));
            fprintf([reverseStr, msg]);
            reverseStr = repmat(sprintf('\b'), 1, length(msg));
    else
        msg = [];
    end
end