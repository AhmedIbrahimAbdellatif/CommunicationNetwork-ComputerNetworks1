package mesh;

@license(LGPL);

import ned.IdealChannel;

network Mesh
{
    parameters:
        int n = default(5);
        int noise = default(1);
        double timeout = default(0.5);
        double ack_timeout = default(0.25);
    submodules:
        nodes[n]: Node {
         	n = n;   
         	noise = noise;
         	timeout = timeout;
        	ack_timeout = ack_timeout;
        }
    connections:
        for i=0..n-1 {
            nodes[i].out --> IdealChannel --> nodes[i+1].in if i < n-1;
            nodes[i].out --> IdealChannel --> nodes[0].in if i == n-1;
        }
}
