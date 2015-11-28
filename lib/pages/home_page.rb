class HomePage < SitePrism::Page
	set_url '/'

	element :keyword, '.search'
	elements :results, '.res li'

	def search content
		keyword.set content
		sleep 3
	end

	def result
		results.length
	end
end
