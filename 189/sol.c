void rotate(int* nums, int numsSize, int k) {
    if (numsSize == 0 || k == 0 || k == numsSize)
        return;
    else if (numsSize == 2 && k == 1){
        swap_int(nums, nums+1);
        return;
    }
    else {
        k = k % numsSize;
        for (int i = 0; i < k; i++){
            swap_int(nums+i, nums+numsSize-k+i);
        }
        return rotate(nums+k, numsSize-k, k);
    }
}

void swap_int(int* num1, int* num2) {
    int temp = *num2;
    *num2 = *num1;
    *num1 = temp;
}