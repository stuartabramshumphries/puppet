require 'facter'
 
result = %x{/bin/rpm -q --quiet --queryformat "%{NAME}" rsyslog5 }
 
Facter.add('rsyslog') do
    setcode do
        result
    end
end

