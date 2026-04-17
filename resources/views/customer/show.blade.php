<x-layout>
  <x-slot:title>Detil Pelanggan - {{ $customer->name }}</x-slot:title>

  <div class="row">
    <div class="col-md-4">
      <div class="card">
        <div class="card-header">
          <h5 class="card-title mb-0">Informasi Pelanggan</h5>
        </div>
        <div class="card-body">
          <table class="table table-borderless table-sm">
            <tr>
              <th width="35%">Nama</th>
              <td width="5%">:</td>
              <td>{{ $customer->name }}</td>
            </tr>
            <tr>
              <th>No. Telp</th>
              <td>:</td>
              <td>{{ $customer->phone }}</td>
            </tr>
            <tr>
              <th>Alamat</th>
              <td>:</td>
              <td>{{ $customer->address ?? '-' }}</td>
            </tr>
          </table>
          <a href="{{ route('customer.index') }}" class="btn btn-secondary mt-3">Kembali</a>
        </div>
      </div>
    </div>
    
    <div class="col-md-8">
      <div class="card">
        <div class="card-header">
          <h5 class="card-title mb-0">Riwayat Transaksi</h5>
        </div>
        <div class="card-body">
          @if(isset($customer->transactions) && $customer->transactions->count() > 0)
            <div class="table-responsive">
              <table class="table table-striped table-bordered text-center">
                <thead class="bg-light">
                  <tr>
                    <th>No</th>
                    <th>Nomor Invoice</th>
                    <th>Tanggal</th>
                    <th>Total</th>
                    <th>Status</th>
                    <th>Aksi</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach($customer->transactions as $transaction)
                    <tr>
                      <td>{{ $loop->iteration }}</td>
                      <td>{{ $transaction->invoice_no ?? $transaction->invoice }}</td>
                      <td>{{ $transaction->created_at->format('d/m/Y H:i') }}</td>
                      <td>Rp {{ number_format($transaction->total, 0, ',', '.') }}</td>
                      <td>
                        @if($transaction->status == 'paid')
                          <span class="badge bg-success">Lunas</span>
                        @else
                          <span class="badge bg-danger">Hutang</span>
                        @endif
                      </td>
                      <td>
                        <a href="{{ route('transaction.show', $transaction->id) }}" class="btn btn-sm btn-info text-white" title="Detil Transaksi"><i class="mdi mdi-eye"></i></a>
                      </td>
                    </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
          @else
            <div class="alert alert-info text-center mb-0">
              Belum ada riwayat transaksi untuk pelanggan ini.
            </div>
          @endif
        </div>
      </div>
    </div>
  </div>
</x-layout>
