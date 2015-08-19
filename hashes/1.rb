family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }


arr=family.select {|keys,values| keys == :sisters or keys ==:brothers}
p arr.values.flatten