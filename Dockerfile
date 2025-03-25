FROM gcc:latest
WORKDIR /app
COPY . .
RUN g++ -o student tester.cpp.txt student.cpp.txt
CMD ["./student"]

