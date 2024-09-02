# export TOOLBENCH_KEY=""
# export OPENAI_KEY=""
export OPENAI_API_BASE="" 
export PYTHONPATH=./
export GPT_MODEL="gpt-4o-mini"
export SERVICE_URL="http://localhost:8080/virtual"
export OUTPUT_DIR="data/answer/virtual_chatgpt_cot"
group=G1_instruction
mkdir -p $OUTPUT_DIR; mkdir -p $OUTPUT_DIR/$group

python toolbench/inference/qa_pipeline_multithread.py \
    --tool_root_dir toolenv/tools \
    --backbone_model chatgpt_function \
    --openai_key $OPENAI_KEY \
    --max_observation_length 1024 \
    --method CoT@1 \
    --input_query_file solvable_queries/test_instruction/${group}.json \
    --output_answer_file $OUTPUT_DIR/$group \
    --toolbench_key $TOOLBENCH_KEY \
    --num_thread 1