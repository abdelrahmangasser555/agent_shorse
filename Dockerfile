FROM public.ecr.aws/lambda/python:3.11

# Copy requirements.txt
COPY requirements.txt ${LAMBDA_TASK_ROOT}

# Copy function code
COPY main.py ${LAMBDA_TASK_ROOT}

# Install the specified packages
RUN pip install -r requirements.txt

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
ENV OPENAI_API_KEY=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
ENV SERPAPI_API_KEY=61a17113ad003789b7444615433c0c79e0422704b1963fca5f16db31327b9b85
ENV AWS_ACCESS_KEY_ID=AKIAQDBRE37EIXRIBAVK
ENV AWS_SECRET_ACCESS_KEY=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
ENV AWS_DEFAULT_REGION=us-east-1
CMD [ "main.handler" ]