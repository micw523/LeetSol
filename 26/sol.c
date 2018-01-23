int removeDuplicates(int* nums, int numsSize) {
    if (numsSize > 1)
    {
        int j_num = 0;
        int* nums2 = nums;
        for (int i_num = 1; i_num < numsSize; i_num++)
        {
            if (nums[i_num] != nums2[j_num])
            {
                j_num++;
                nums2[j_num] = nums[i_num];
            }
        }
        return ++j_num;
    }
    else return numsSize;
}