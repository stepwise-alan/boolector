#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include "../../boolector.h"
#include "../../btorutil.h"

BtorExp **indices;

static BtorExp *
matrix_mult (Btor *btor,
             BtorExp *m1,
             BtorExp *m2,
             int size,
             int num_bits,
             int num_bits_index)
{
  int i, j, k;
  BtorExp *temp, *result, *zero, *read1, *read2, *read3, *mult, *add;
  assert (btor != NULL);
  assert (m1 != NULL);
  assert (m2 != NULL);
  assert (size > 1);
  assert (num_bits >= 1);
  assert (num_bits_index >= 1);
  result = btor_array_exp (btor, num_bits, num_bits_index);
  /* initialize result matrix with zeroes */
  zero = btor_zero_exp (btor, num_bits);
  for (i = 0; i < size * size; i++)
  {
    temp = btor_write_exp (btor, result, indices[i], zero);
    btor_release_exp (btor, result);
    result = temp;
  }
  btor_release_exp (btor, zero);
  /* matrix multiplication */
  for (i = 0; i < size; i++)
    for (j = 0; j < size; j++)
      for (k = 0; k < size; k++)
      {
        /* result[i][j] += m1[i][k] * m2[k][j]; */
        read1 = btor_read_exp (btor, result, indices[i * size + j]);
        read2 = btor_read_exp (btor, m1, indices[i * size + k]);
        read3 = btor_read_exp (btor, m2, indices[k * size + j]);
        mult  = btor_mul_exp (btor, read2, read3);
        add   = btor_add_exp (btor, read1, mult);
        temp  = btor_write_exp (btor, result, indices[i * size + j], add);
        btor_release_exp (btor, result);
        result = temp;
        btor_release_exp (btor, read1);
        btor_release_exp (btor, read2);
        btor_release_exp (btor, read3);
        btor_release_exp (btor, mult);
        btor_release_exp (btor, add);
      }
  return result;
}

int
main (int argc, char **argv)
{
  int num_bits, num_bits_index, size, i, num_elements;
  Btor *btor;
  BtorExp *A, *B, *A_x_B, *B_x_A, *formula, *temp;
  if (argc != 3)
  {
    printf ("Usage: ./matrixmultcomm <num-bits> <size>\n");
    return 1;
  }
  num_bits = atoi (argv[1]);
  if (num_bits <= 0)
  {
    printf ("Number of bits must be greater than zero\n");
    return 1;
  }
  size = atoi (argv[2]);
  if (size <= 1)
  {
    printf ("Size must be greater than one\n");
    return 1;
  }
  num_elements   = size * size;
  num_bits_index = btor_log_2_util (btor_next_power_of_2_util (num_elements));
  btor           = btor_new_btor ();
  btor_set_rewrite_level_btor (btor, 0);
  indices = (BtorExp **) malloc (sizeof (BtorExp *) * num_elements);
  for (i = 0; i < num_elements; i++)
    indices[i] = btor_int_to_exp (btor, i, num_bits_index);
  A       = btor_array_exp (btor, num_bits, num_bits_index);
  B       = btor_array_exp (btor, num_bits, num_bits_index);
  A_x_B   = matrix_mult (btor, A, B, size, num_bits, num_bits_index);
  B_x_A   = matrix_mult (btor, B, A, size, num_bits, num_bits_index);
  formula = btor_eq_exp (btor, A_x_B, B_x_A);
  /* we negate the formula and try to show that it is unsatisfiable
   * formula is SAT as matrix multiplication is not commutative in general */
  temp = btor_not_exp (btor, formula);
  btor_release_exp (btor, formula);
  formula = temp;
  btor_dump_exp (btor, stdout, formula);
  /* clean up */
  for (i = 0; i < num_elements; i++) btor_release_exp (btor, indices[i]);
  btor_release_exp (btor, formula);
  btor_release_exp (btor, A);
  btor_release_exp (btor, B);
  btor_release_exp (btor, A_x_B);
  btor_release_exp (btor, B_x_A);
  btor_delete_btor (btor);
  free (indices);
  return 0;
}
