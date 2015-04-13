config = YAML.load_file(Rails.root.to_s + '/config/resque.yml')[Rails.env]
config = config.symbolize_keys! if config

Resque.redis = config[:redis_url]
