# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

def add_two_numbers(l1, l2)
    return_int = nil
    temp = 0
    begin
        if l1.nil?
            l1val = 0
        else
            l1val = l1.val
        end
        if l2.nil?
            l2val = 0
        else
            l2val = l2.val
        end 
        add_int_result = l1val + l2val + temp
        temp = add_int_result / 10
        temp_node = ListNode.new(add_int_result % 10)
        if return_int.nil?
            return_int = temp_node
            curr_node = return_int
        else 
            curr_node.next = temp_node
            curr_node = temp_node
        end
        if (!l1.nil?)
            l1 = l1.next
        end
        if (!l2.nil?)
            l2 = l2.next
        end
    end while (!l1.nil?) || (!l2.nil?)
        
    if temp == 1
        temp_node = ListNode.new(1)
        curr_node.next = temp_node
    end
        
    return return_int
    
end