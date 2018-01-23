# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    targ_minus_nums = {}
    nums.each.with_index do |val, key|
        res = target - val
        ind = targ_minus_nums[val]
        if ind
            return [ind, key]
        else
            targ_minus_nums[res] = key
        end
    end
    # p targ_minus_nums
end