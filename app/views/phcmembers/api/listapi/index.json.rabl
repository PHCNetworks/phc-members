object @directory_catlists
	attributes :id, :category_id, :listing_id

child(:listing) { 
	attributes :mlcontactname, :mlcompanyname, :mladdressl1, :mladdressl2, :mlcity, :mlprovince, :mlcountry, :mlpostalcode, :mlphone, :mlwebsite, :mlemail
}