FROM alpine:3
# satu persatu
LABEL fullname="Reza Ramdan Permana"
# bisa sekaligus banyak
LABEL firstname="Reza" middlename="Ramdan" lastname="Permana"
RUN mkdir hello
RUN echo "Hello World" > hello/world.txt
CMD cat hello/world.txt