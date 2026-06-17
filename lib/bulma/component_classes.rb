module Bulma
  class ComponentClasses
    ClassConfig = Struct.new(:name, :if, :unless)

    def initialize
      @classes = []
    end

    def add(name, **options)
      @classes << ClassConfig.new(name, options[:if], options[:unless])
    end

    def compile(to:)
      @classes.map do |config|
        next unless condition_met?(to, config)

        if config.name.is_a?(String)
          config.name
        else
          to.send(config.name)
        end
      end
    end

    private

    def condition_met?(to, config)
      case config.if
      when Proc
        to.instance_exec(&config.if)
      else
        true
      end
    end
  end
end
