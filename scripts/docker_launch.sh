export PORT=8081
export TOOL_RESPONSE_CACHE_PATH=$HOME/Research/visual-reason/ext/StableToolBench/server/tool_response_cache
export TOOLS_PATH=$HOME/Research/visual-reason/ext/StableToolBench/server/tools
# export OPENAI_API_BASE=your_openai_api_base

docker run -p ${PORT}:8080 -v ${TOOL_RESPONSE_CACHE_PATH}:/app/tool_response_cache -v ${TOOLS_PATH}:/app/tools -e OPENAI_API_KEY=${OPENAI_API_KEY} zhichengg/stb-docker
