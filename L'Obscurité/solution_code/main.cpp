#include <iomanip>
#include <iostream>
#include <vector>
#include <time.h>
#include <chrono>

#include <nlopt.hpp>

extern "C" uint64_t F_401170(char *Buffer);

int Count = 0;
clock_t begin_time;
std::chrono::steady_clock::time_point begin = std::chrono::steady_clock::now();

std::vector<int> MulBits = { 0,6,10,11,20,23,32,35,39,41,42,45,51,52,57,62, };
std::vector<int> AddBits = { 1,2,3,4,5,7,8,9,12,13,14,15,16,17,18,19,21,22,24,25,26,27,28,29,30,31,33,34,36,37,38,40,43,44,46,47,48,49,50,53,54,55,56,58,59,60,61,63,};

typedef struct {
    int i;
} my_constraint_data;

double myconstraint(const std::vector<double> &x, std::vector<double> &grad, void *my_func_data)
{
  my_constraint_data *mcd = (my_constraint_data *)my_func_data;
  double v = x[mcd->i];
  return ((double)((v == 0.0) || (v == 1.0))) - 1.0;
}

uint8_t input[64] = {0};
double myfunc(const std::vector<double> &x, std::vector<double> &grad, void *my_func_data)
{
  ++Count;
  bool P = Count % 100000 == 0;
    
  for (int i = 0; i < 64; i++) {
  	if (x[i] < 0.000001) {
  		input[i] = 0;
  	} else {
  		input[i] = 1;
  	}     	    	
  }

  int r = F_401170((char *) input);

  if (P) {	  
  	  std::chrono::steady_clock::time_point end = std::chrono::steady_clock::now();
      auto Seconds = float( clock () - begin_time ) /  CLOCKS_PER_SEC;
      int Its = (int) ((float) Count / Seconds);
      std::cout << "[!] Running " << std::chrono::duration_cast<std::chrono::minutes>(end - begin).count() << " minutes" << std::endl;
  	  printf("Iterations: %d (Its: %d)\n",Count, Its);

	  printf("Buffer: ");
	  for (int i=0;i<64;i++) {
	  	printf("%d",input[i]);
	  }
	  printf("\n");

	  for (int i=0;i<64;i++) {
	  	if ( i != 0 && i % 4 == 0)
	  		printf("\n");
	  	printf("x%02d = %f ",i,x[i]);	  	
	  }	  
	  printf("\n");
	  
	  printf("R = %d\n",r);
   }

  return (double)r;
}


int main(void) {
	#ifdef ESCH
	nlopt::opt opt(nlopt::GN_ESCH, 64);
	#elif ISRES
	nlopt::opt opt(nlopt::GN_ISRES, 64);
	#else
	nlopt::opt opt(nlopt::GN_CRS2_LM, 64);
	#endif

	// lower bound
	std::vector<double> lb(64);		
	for (int i=0;i<64;i++) {
		lb[i] = 0;
	}
	opt.set_lower_bounds(lb);

	// upper bound
	std::vector<double> ub(64);		
	for (int i=0;i<64;i++) {
		ub[i] = 0.000002;
	}
	opt.set_upper_bounds(ub);	

	opt.set_min_objective(myfunc, NULL);		

	// use high step as we alternate between 0 and 1
	opt.set_initial_step(1.0);	

	// stop when x == 0
	opt.set_stopval(0.0);	

	// set high tol to use big steps
	//opt.set_xtol_abs(1e16);

	// Start vector
	std::vector<double> x(64);
	for (int i=0;i<64;i++) {
		x[i] = 0;
	}

	// Set weights
	// Mul bits 5.
	// Add bits 1.
	std::vector<double> weights(64);
	// Set mul bits
	for (auto i : MulBits) {
		weights[i] = .25;
	}

	// Set mul bits
	for (auto i : AddBits) {
		weights[i] = 1.0;
	}

	opt.set_x_weights(weights);
	
	// 
	double minf;

	try{
		begin_time = clock();
	    nlopt::result result = opt.optimize(x, minf);
	    std::cout << "found minimum at f(" << x[0] << "," << x[1] << ") = "
	        << std::setprecision(10) << minf << std::endl;

	    printf("Solution: ");
	    for (int i = 0; i < 64; i++) {
	  	  if (x[i] < 0.000001) {
	  		printf("0");
	  	  } else {
	  		printf("1");
	  	  }     	    	
	    }
	    printf("\n");
	}
	catch(std::exception &e) {
	    std::cout << "nlopt failed: " << e.what() << std::endl;
	}

	return 0;
}
