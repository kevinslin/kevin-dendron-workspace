bucketDst="publish-prod-publishsitebucket2dec72b8-13jdn4suxs1a2"
user=kevinslin
ws=default

#aws s3 sync docs/assets "s3://$bucketDst/$user/$ws/assets" --size-only
aws s3 cp docs/assets/images/2021-03-16-08-52-27.png "s3://$bucketDst/$user/$ws/assets/images/2021-03-16-08-52-27.png"
