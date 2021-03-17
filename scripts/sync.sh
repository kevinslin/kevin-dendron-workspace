#bucketDst="publisher-prod-publishsitebucket2dec72b8-n6ou86bjhyko"
bucketDst="publish-prod-publishsitebucket2dec72b8-13jdn4suxs1a2"
user=kevinslin
ws=default

aws s3 sync docs/notes s3://$bucketDst/$user/$ws/notes --delete --exclude ".git/*"
aws s3 cp docs/index.html "s3://$bucketDst/$user/$ws/"
aws s3 cp docs/nav.html s3://$bucketDst/$user/$ws/nav.html
aws s3 cp docs/assets/js/search-data.json s3://$bucketDst/$user/$ws/assets/js/search-data.json
