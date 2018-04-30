data2=zeros(50,1);
data3=zeros(50,1);
for b=1:50
    data3(b,1)=.05*b;%% Change the incriments here
end

% create the random_graph for 100 nodes
for j=1:10
    Data=zeros(1,50);
    for i=1:25 
        graph50 = createrandomgraph(50,.05*j);%%Change the size of graph and probability here
        Data(1,i)=max(conncomp(graph(graph50)));
    end
data2(j,1)=mean(Data);
end

%scatter(data3,data2)
%fi=fit(data3,data2,'exp1');
% fi2 = fit()
%plot(fi,data3,data2)
%title('# Nodes Required to connect the 100 Graph Given probability')
