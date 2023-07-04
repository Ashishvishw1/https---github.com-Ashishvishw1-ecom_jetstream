@extends('welcome')
@section("content")

<div >
     <div class="col-sm-10">
   
        <div class="mx-auto max-w-2xl px-4 py-16 sm:px-6 sm:py-24 lg:max-w-7xl lg:px-8">

            <h2 class="text-2xl font-bold tracking-tight">CartList</h2>
            <br>
            <a href="ordernow" class="text-white bg-red-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 text-center mr-3 mt-5 md:mr-0 dark:bg-red-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">OrderNow</a>
            
                <div class="mt-6 grid grid-cols-1 gap-x-6 gap-y-10 sm:grid-cols-2 lg:grid-cols-4 xl:gap-x-8">
                  @foreach ($products as $item)
                    <div class="group relative">



                        <div
                            class="aspect-h-1 aspect-w-1 w-full overflow-hidden rounded-md bg-gray-200 lg:aspect-none group-hover:opacity-75 lg:h-80">
                            
                               <img src="{{ $item->gallery }}" alt="Front of men&#039;s Basic Tee in black."
                                class="h-full w-full object-cover object-center lg:h-full lg:w-full">
                         </div>
             <div class="justify-center">
                    <div class="">
                      <h2>{{$item->name}}</h2>
                      <h5>{{$item->description}}</h5>
                    </div>
             </div>
             <div class="mt-3 mr-1">
               
                <a href="/removecart/{{$item->carts_id}}" class="text-white bg-red-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 text-center mr-3 mt-5 md:mr-0 dark:bg-red-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Remove from Cart</a>
             </div>
            </div>
            @endforeach
          </div>
    

     </div>
</div>
@endsection 