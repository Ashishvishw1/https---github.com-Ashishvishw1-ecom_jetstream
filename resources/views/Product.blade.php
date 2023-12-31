@extends('welcome')
@section('content')
    <!--
      This example requires some changes to your config:
      
      ```
      // tailwind.config.js
      module.exports = {
        // ...
        plugins: [
          // ...
          require('@tailwindcss/aspect-ratio'),
        ],
      }
      ```
    -->
    <div class=" dark:bg-gray-900">
        <div class="mx-auto max-w-2xl px-4 py-16 sm:px-6 sm:py-24 lg:max-w-7xl lg:px-8">
            <h2 class="text-2xl font-bold tracking-tight">Products</h2>
            
                <div class="mt-6 grid grid-cols-1 gap-x-6 gap-y-10 sm:grid-cols-2 lg:grid-cols-4 xl:gap-x-8">
                  @foreach ($products as $item)
                    <div class="group relative">



                        <div
                            class="aspect-h-1 aspect-w-1 w-full overflow-hidden rounded-md bg-gray-200 lg:aspect-none group-hover:opacity-75 lg:h-80">
                            
                               <img src="{{ $item['gallery'] }}" alt="Front of men&#039;s Basic Tee in black."
                                class="h-full w-full object-cover object-center lg:h-full lg:w-full">
                         </div>
                        
                        <div class="mt-4 flex justify-between">
                            <div>
                                <h3 class="text-sm ">
                                    <a href="detail/{{$item['id']}}">
                                        <span aria-hidden="true" class="absolute inset-0"></span>
                                        {{ $item['name'] }}
                                    </a>
                                </h3>
                                <p class="mt-1 text-sm ">{{ $item['description'] }}</p>
                            </div>
                            <p class="text-sm font-medium ">₹{{ $item['price'] }}</p>
                        
                        </div>
                        

                     

        </div>
        
        @endforeach
    </div>
@endsection
