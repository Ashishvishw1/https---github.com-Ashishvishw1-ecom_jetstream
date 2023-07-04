@extends('welcome')
@section('content')


<div  class="mb-2 mt-24">

 <!-- component -->
<div class="bg-white p-8 rounded-md w-full">

					<table class="min-w-full leading-normal">
						<thead>
							<tr>
								<th
									class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
									Product
								</th>
								<th
									class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
									Name
								</th>
								<th
									class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
								Price
								</th>
								
								<th
									class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
									Status
								</th>
                               
							</tr>
						</thead>
                        
                        @foreach ($orders as $item)
						<tbody>
                            <tr>
                           
                          
                                    <td >
                               
                                          <div class="box-content h-32 w-32 p-4 border-4 ...">
                                            <img src="{{$item->gallery}}" alt="Front of men&#039;s Basic Tee in black." class="h-full w-full object-cover object-center lg:h-full lg:w-full">
                                          </div>
            
								</td>
								<td class=" px-5 py-5 border-b border-gray-200 bg-white text-sm">
									<p class="text-gray-900 whitespace-no-wrap">{{$item->name}}</p>
								</td>
								<td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
									<p class="text-gray-900 whitespace-no-wrap">
                                        {{$item->price}}
									</p>
								</td>
								<td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
									<p class="text-gray-900 whitespace-no-wrap">
										{{$item->status}}
									</p>
                                   
								</td>

                               
							</tr>
                  
                       
						</tbody>
                        @endforeach
					</table>
					
					
				</div>
			</div>
		</div>
	</div>


</div>
    
@endsection