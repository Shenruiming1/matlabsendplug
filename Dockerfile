FROM python:3.9
ADD . /matlabchannel
WORKDIR /matlabchannel
EXPOSE 5555
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple/
CMD ["python", "./Send.py"]