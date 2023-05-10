FROM python:slim
RUN apt-get update 
RUN apt-get install -y sudo 
RUN sudo apt-get install gcc -y 
RUN sudo apt-get install gfortran -y
RUN sudo apt-get install gdb -y
RUN pip install  fprettify 
RUN sudo apt-get install git -y
RUN git config --global user.name 'onodera-g'
RUN git config --global user.email 'ga19981023ku@gmail.com'
RUN git config --global core.editor 'code --wait'
RUN git config --global merge.tool 'code --wait "$MERGED"'
RUN git config --global push.default simple
