DISTRIBUTION_ID=EXSSHBJYM3XI1
aws cloudfront create-invalidation \
    --distribution-id $DISTRIBUTION_ID \
    --paths "/*"
