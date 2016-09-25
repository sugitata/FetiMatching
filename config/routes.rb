Rails.application.routes.draw do


  devise_for :users


  # devise_scope :user do
  #   root :to => "devise/sessions#new"
  # end
  # これでホーム画面をログインのとこにする
  
  

  resources :users, only: [:index, :edit, :update, :show] do

  resource :relationships, only: [:create, :destroy]
  resources :messages , only: [:index, :create, :destroy]
  get :follows, on: :member
  get :followers, on: :member


  # post '/users/:id/follows' 

  # ここでフォロワー　一覧などのルーティング
  end

  

  root 'users#index'
  # これでホーム画面をユーザー一覧のとこにする





  # 質問


  # ・deviseのストロングパラメーターやってるのにfetiが保存されない

  # ・カテゴリによる絞り込みがどうやってやるのかイメージわかない
  # ・user indexで自分以外を表示する方法 <-どうせ男女で絞り込むからいらない

#       if correct_userが1(男)ならuser#indexに0(女)だけ表示
# 　　else 0(女)なら1だけ表示
#   　　and 　
#       if fetiが1つでも一緒ならuser#indexに表示
#     else

#       みたいなイメージ

  # ・メッセージのやりとりの仕方がわからない　
  # 　どうすれば一対一でポストを投げ会えるのか
  # ・マッチングの仕方がわからない　noticeでマッチング報告?
  # 　category_userが中間テーブル？

  # ・ ページ遷移を完成させる




  # messages controllerを新しくつくる
  # message tableつくってそれを出しまくる
  # current_id  idだけのものをwhereで表示
  # index　 
  # create 
  # destroy 

  # messageの投げ合いはcurrent_idが右側 idが左でcssでいじる
  # 個別の部屋はshowが個別の部屋なんだからできるはず

  # userに対してmessageはpostみたいなイメージで一対多




# カテゴリ使うのは絞り込むときだけ
# そのあとは相互フォローによるマッチング


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
