require 'spec_helper'
require 'japan_net_bank/transfer_csv/row'

describe JapanNetBank::TransferCsv::Row do
  describe '#to_a' do
    let(:row_hash) {
      {
          record_type:  '1',
          bank_code:    '0123',
          branch_code:  '012',
          account_type: 'ordinary',
          number:       '0123456',
          name:         'キテコタロウ',
          amount:       1500,
      }
    }

    let(:row) { JapanNetBank::TransferCsv::Row.new(row_hash) }

    it 'Row の内容が配列で返ってくる' do
      expect(row.to_a).to eq ['1', '0123', '012', 'ordinary', '0123456', 'キテコタロウ', 1500]
    end
  end
end
