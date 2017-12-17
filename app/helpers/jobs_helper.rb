module JobsHelper
  def link_to_twitter(title)
    escaped_url = CGI.escape(request.url)
    title       = CGI.escape(title)

    url = 'https://twitter.com/intent/tweet?'
    url += 'hashtags=RubyJobs&'
    url += "original_referer=#{escaped_url}&"
    url += "text=Vaga%20para%20#{title}&"
    url += "w_p=tweetbutton&url=#{escaped_url}"

    render partial: 'jobs/link_to_twitter', locals: { url: url }
  end

  def link_to_linkedin(title)
    escaped_url = CGI.escape(request.url)
    title       = CGI.escape(title)

    url = 'https://www.linkedin.com/shareArticle?mini=true&'
    url += "title=#{title}&"
    url += "url=#{escaped_url}&"
    url += "summary=Vaga%20para%20#{title}&"
    url += 'source=RubyJobs'

    render partial: 'jobs/link_to_linkedin', locals: { url: url }
  end

  def modalities_hash
    { 'Full-Time' => :presencial, 'Part-Time' => :freela, 'Remote' => :remote, 'Contract' => :trainee }
  end

  def salaries_hash
    { 'N/A' => :undefined, '$20K – $38K' => :intern, '$40K – $55K' => :junior,
      '$60K – $85K' => :medium, '$87K – $120K' => :senior,
      'Hourly Rate' => :value_by_hour  }
  end

  def contract_types_hash
    { 'Not specified' => :not_specified, 'CLT' => :clt, 'PJ' => :pj }
  end
end
