describe 'Report' do
	before(:each) do
		@report = double('report')
	end
	describe '#deliver' do
		context 'when delivered successfully' do
			it 'should deliver the @report' do
				allow(@report).to receive(:deliver) { 'delivery status: sent' }
			end
		end

		context 'when delivered insuccessfully' do
			it 'shouldn\'t deliver the @report' do
				allow(@report).to receive(:deliver) { 'delivery status: not sent' }
			end
		end
	end

	it 'should return the right file extention only' do
		allow(@report).to receive(:file_extention) { '@report_mail.csv' }
	end

	it 'should generate the report propperly' do
		allow(@report).to receive(:generate_report) do
			{
				recipient: 'report@example.com',
				subject: 'report subject',
				report_message: 'some message',
				greeting: 'hi #{recipient.name}'
			}
		end
	end
end