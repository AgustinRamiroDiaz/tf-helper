#!/bin/sh

## -------------------------------------------------------------------
##
## Copyright (c) 2018 HashiCorp. All Rights Reserved.
##
## This file is provided to you under the Mozilla Public License
## Version 2.0 (the "License"); you may not use this file
## except in compliance with the License.  You may obtain
## a copy of the License at
##
##   https://www.mozilla.org/en-US/MPL/2.0/
##
## Unless required by applicable law or agreed to in writing,
## software distributed under the License is distributed on an
## "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
## KIND, either express or implied.  See the License for the
## specific language governing permissions and limitations
## under the License.
##
## -------------------------------------------------------------------

# tfh_run_autoapply () {
#   ws_id="$1"

#   if ! check_required token address; then
#     echoerr "must provide an authentication token and address"
#     return 1
#   fi

#   if [ -z "$ws_id" ]; then
#     if ! check_required org ws; then
#       echoerr "no workspace specified to list runs for"
#       return 1
#     fi

#     . "$JUNONIA_PATH/lib/tfh/cmd/tfh_workspace.sh"
#     if ! ws_id="$(_fetch_ws_id "$org" "$ws")"; then
#       return 1
#     fi

#     ws_name="$ws"
#   else
#     ws_name="$ws_id"
#   fi

#   echodebug "Creating run"
#   url="$address/api/v2/runs/"
#   payload="{\"data\": { \"type\": \"runs\", \"relationships\": { \"workspace\": { \"data\": { \"type\": \"workspaces\", \"id\": \"ws-8kwTn9ekeAMdohx4\" }}}}}"
#   result=$(curl -s $curl_silent --header "Authorization: Bearer $token" --header "Content-Type: application/vnd.api+json" --request POST --data "$payload" "$url")
#   if [ $? -eq 0 ]; then
#    echo "Run created"
#   else
#    echoerr "Run can not be created"
#   fi
# }
tfh_run_autoapply () {
  run_create autoapply
}