#bucketDst="publisher-prod-publishsitebucket2dec72b8-n6ou86bjhyko"
bucketDst="publish-prod-publishsitebucket2dec72b8-13jdn4suxs1a2"
user=kevinslin
ws=default

# aws s3 sync docs s3://$bucketDst/$user/$ws/ --exclude ".git/*" --exclude "raw-assets/*" --delete
aws s3 sync docs/notes s3://$bucketDst/$user/$ws/notes --delete --exclude ".git/*"
