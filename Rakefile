task :test , [:load_dir] do |t,args|
  require "test/test.rb"
  args.with_defaults(:load_dir => "all")
  if args.load_dir == "all"
    all()
  else
    load_dir(args.load_dir)
  end
end
  