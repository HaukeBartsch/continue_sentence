FROM ubuntu:20.04

RUN apt update -y && apt -y install wget git python3.8 python3-pip

RUN cd /root/ && pip3 install torch

RUN pip3 install transformers

RUN cd /root/ && git clone https://github.com/huggingface/transformers.git

RUN /usr/bin/python3 /root/transformers/examples/text-generation/run_generation.py --model_type gpt2 --model_name_or_path gpt2 --prompt "The destiny of all" --length 20

ENTRYPOINT ["/usr/bin/python3", "/root/transformers/examples/text-generation/run_generation.py", "--model_type", "gpt2", "--model_name_or_path", "gpt2"]

CMD ["--prompt", "What is this", "--length", "5"]