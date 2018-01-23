void rotate(int** matrix, int matrixRowSize, int *matrixColSizes) {
    // flip diagonally
    int i;
    int j;
    for (i=0; i<matrixRowSize; i++){
        for (j=i+1; j<matrixColSizes[0]; j++) {
            swap_int(matrix[i]+j, matrix[j]+i);
        }
    }
    // flip horizontally
    for (i=0; i<matrixRowSize; i++){
        for (j=0; j<matrixColSizes[0]/2; j++) {
            swap_int(matrix[i]+j, matrix[i]+matrixColSizes[0]-1-j);
        }
    }
}

void swap_int(int* int1, int* int2) {
    int temp = *int2;
    *int2 = *int1;
    *int1 = temp;
}