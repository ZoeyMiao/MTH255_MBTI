FinalData=zeros(50,1);
for i=1:10
    serching=1;
    bin=.5;
    while serching>0
        serching=serching+1;
        for j=1:5
            createrandomgraph(16*i,bin);
            Data(1,j)=max(conncomp(graph(ans)));
        end
        sort(Data);
        if Data(1)==1 && Data(5) ~=1
            FinalData(i,1)=bin;
            serching=0;
        elseif Data(1)==1
            bin=bin-.5^(serching);
        else
            bin=bin+.5^(serching);
        end
    end
end
