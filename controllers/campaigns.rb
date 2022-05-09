module Controllers
  class Campaigns < Core::Controllers::Base
    api_route 'get', '/campaigns' do
      api_list Core.svc.campaigns.list(account, **params)
    end
  end
end