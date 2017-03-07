# See http://www.ibm.com/support/knowledgecenter/SSYMRC_6.0.2/com.ibm.jazz.install.doc/topics/roadmap_form.html
default["security"] = {
  "limits" => {
    "limits_path" => "/etc/security/limits.conf",
    "domains" => {
      "*" => {
        "nofile" => {
          "hard" => "65535",
          "soft" => "65535"
        },
        "noproc" => {
          "hard" => "10000",
          "soft" => "10000"
        }
      }
    }
  }
}
