APIERROR_PROTO_FILES := $(shell find apierror -name '*.proto' 2>/dev/null)

pb:
	@if [ -n "$(APIERROR_PROTO_FILES)" ]; then \
		protoc  --proto_path=./apierror \
		        --proto_path=./third_party \
                --go_out=paths=source_relative:./apierror \
		        $(APIERROR_PROTO_FILES); \
	fi