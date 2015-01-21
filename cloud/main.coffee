mandrill = require 'mandrill-api/mandrill'
m_client = new mandrill.Mandrill 'd7rEYQJY5JVJe7VraonWyA'


# Mandrill = require 'mandrill'
# console.log 'A', Mandrill.call()
# Mandrill.initialize 'd7rEYQJY5JVJe7VraonWyA'

message =
  html: "<p> WHATUP WHATUP WHATUP WHATUP WHATUP </p>"
  text: "WHATUPWHATUP"
  subject: "WHATUPWHATUPWHATUPWHATUP"
  from_email: "WHATUP@WHATUP.WHATUP"
  from_name: "WHATUP"
  to: [
    email: "chadtech0@gmail.com"
  ]

  important: false
  track_opens: null
  track_clicks: null
  auto_text: null
  auto_html: null
  inline_css: null
  url_strip_qs: null
  preserve_recipients: null
  view_content_link: null
  bcc_address: "message.bcc_address@example.com"
  tracking_domain: null
  signing_domain: null
  return_path_domain: null
  merge: true
  merge_language: "mailchimp"
  global_merge_vars: [
    name: "merge1"
    content: "merge1 content"
  ]
  merge_vars: [
    rcpt: "recipient.email@example.com"
    vars: [
      name: "merge2"
      content: "merge2 content"
    ]
  ]
  tags: ["password-resets"]
  #subaccount: "customer-123"
  google_analytics_domains: ["example.com"]
  google_analytics_campaign: "message.from_email@example.com"
  metadata:
    website: "www.example.com"


async = false
ip_pool = "Main Pool"
m_client.messages.send
  message: message
  async: async
  ip_pool: ip_pool
, ((result) ->
  console.log result
  return

#
#    [{
#            "email": "recipient.email@example.com",
#            "status": "sent",
#            "reject_reason": "hard-bounce",
#            "_id": "abc123abc123abc123abc123abc123"
#        }]
#    
), (e) ->
  
  # Mandrill returns the error as an object with name and message keys
  console.log "A mandrill error occurred: " + e.name + " - " + e.message
  return

