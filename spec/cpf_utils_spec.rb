
RSpec.describe CpfUtils do
    it "has a version number" do
        expect(CpfUtils::VERSION).not_to be nil
    end

    it "validar o formato de CPF" do
        cpf = "33253375512"
        formatado = CpfUtils::formatar(cpf)
        expect("332.533.755-12").to eq(formatado)
    end

    it "validar CPF sem formatação" do
        cpf = "17768218078"
        valido = CpfUtils::cpf_valido?(cpf)
        expect(true).to eq(valido)
    end

    it "validar um cpf inválido inteiro" do
        cpf = 332575512
        falso = CpfUtils::cpf_valido?(cpf)
        expect(false).to eq(falso)
    end

    it "validar um cpf inválido com todos numeros iguais" do
        cpf = 11111111111
        falso = CpfUtils::cpf_valido?(cpf)
        expect(false).to eq(falso)
    end

    it "validar um cpf válido formatado" do
        cpf = "177.682.180-78"
        valido = CpfUtils::cpf_valido?(cpf)
        expect(true).to eq(valido)
    end
end        