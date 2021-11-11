g++ use_v1.cpp -c -g -fPIC
g++ use_v2.cpp -c -g -fPIC

g++ use_v1.o use_v2.o -fPIC -shared -g -o libuse_v1_first.so 
g++ use_v2.o use_v1.o -fPIC -shared -g -o libuse_v2_first.so 

g++ -g main.cpp -luse_v1_first -L./ -o main_v1_first
g++ -g main.cpp -luse_v2_first -L./ -o main_v2_first

