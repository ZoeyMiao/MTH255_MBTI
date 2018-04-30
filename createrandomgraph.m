function[Aj,G]=createrandomgraph(n,p)
Aj=zeros(n,n);
for i=1:n
    for j=1:n
        if (i>j && (rand<p))
            Aj(i,j)=1;
            Aj(j,i)=1;
        end
    end
end

G=graph(Aj);

