#!/bin/bash
#
# Use this command to get a list of available Releases:
#
#     > gh release list --limit 500 > gh_Release_list.ot1_mmddyyyy.log 2>/dev/null
#
release_tags=("VV-282.055" "VV-282.270.050" "VV-282.270.045" "Payload_VV-27Test" "VV-282.035.170" "VV-282.270.001" "VisitVerify.282.011" "VV-282.010.170" "VV-282.005.170" "VV-282.275.12" "VV-282.275.11" "VV-281.995" "VV-282.275.05" "VV-281.990" "VV-281.986" "VV-281.985" "VV-281.980" "VV-281.970" "VV-281.960" "281.757")
#
release_tags_count=${#release_tags[@]}
#
echo "Deleting the following #($release_tags_count) GitHub Releases:"
#
for release_tag in "${release_tags[@]}"; do
    echo "Deleting the Release 'tag' of [$release_tag]..."
    gh release delete "$release_tag" -y --cleanup-tag 
done
#
