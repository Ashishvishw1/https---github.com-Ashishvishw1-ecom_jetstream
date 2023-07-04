@extends('welcome')
@section("content")
<div class="mt-20 relative overflow-x-auto shadow-md sm:rounded-lg">
    <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
        <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
            <tbody>
                <tr class="px-6 py-3">
                  <td class="px-6 py-3">Amount</td>
                <td >$ {{$total}}</td>
                </tr>
                <tr>
                  <td class="px-6 py-4" >Tax</td>
                  <td class="px-1 py-4">$ 0</td>
                </tr>
                <tr>
                  <td class="px-6 py-4">Delivery </td>
                  <td class="px-1 py-4">$ 10</td>
                </tr>
                <tr>
                  <td class="px-6 py-4">Total Amount</td>
                <td class="px-1 py-4 text-red-600">$ {{$total+10}}</td>
                </tr>
              </tbody>
      
    </table>
    <div>
        <form action="/orderplace" method="POST" >
          @csrf
            <div>

<label for="message" class="ml-4 block mb-2 text-sm font-medium text-gray-900 dark:text-white">Your message</label>
<textarea id="message" name="address" placeholder="Address required" rows="4" class=" ml-4 block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Write your thoughts here..."></textarea>


            </div>
            <div>
              <label class="ml-10 mx-4 px-2" for="pwd">Payment Method</label> <br> <br>
              <input class="ml-10 mx-4 px-2" type="radio" value="cash" name="payment" required> <span>online payment</span> <br> <br>
              <input class="ml-10 mx-4 px-2" type="radio" value="cash" name="payment" required> <span>EMI payment</span> <br><br>
              <input class="ml-10 mx-4 px-2" type="radio" value="cash" name="payment" required> <span>Payment on Delivery</span> <br> <br>

            </div>
            <button type="submit" class="bg-blue-400 ml-10 rounded mb-4">Order Now</button>
          </form>
      </div>
 </div>

</div>


@endsection 