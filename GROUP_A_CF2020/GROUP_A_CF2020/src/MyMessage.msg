//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

//
// TODO generated message class
//

cplusplus {{
//    #define MAX_PACKET_SIZE_BYTES 1024
    typedef unsigned int sequence_number;
//    typedef struct {unsigned char data[MAX_PACKET_SIZE_BYTES];} packet_inside_frame;
//	typedef struct {unsigned char* data;} packet_inside_frame;
    typedef enum {data, ack, nack, timeout, ack_timeout, frame_from_network, network_enable, handshake} frame_type;
}}
class noncobject frame_type;
class noncobject sequence_number;

packet MyMessage {
    @customize(true);  // see the generated C++ header for more info
    frame_type type;
    unsigned int destination_node;
    unsigned int source_node;
    sequence_number sequence;
    sequence_number ack;
    string M_Payload;
}
