From nginx

RUN sudo apt-get update -y
RUN sudo apt install git -y
WORKDIR /usr/share/nginx/html
RUN rm -rf *
RUN git clone https://github.com/hamzamaan/logistics-company-website.git
RUN mv logistics-company-website/* .
RUN rmdir logistics-company-website
EXPOSE 8081
CMD ["nginx", "-g", "daemon off;"]