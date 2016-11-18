require 'facter'
Facter.add(:about) do
  setcode do
    Facter::Util::Resolution.exec("cat /etc/about")
  end
end
