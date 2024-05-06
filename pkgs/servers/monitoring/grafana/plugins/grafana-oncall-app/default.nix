{ grafanaPlugin, lib }:

grafanaPlugin rec {
  pname = "grafana-oncall-app";
  version = "1.4.4";
  zipHash = {
    x86_64-linux = "sha256-HkLUET0+mIWdR9FA9Rw45CyYy0bPfj9se+jPhGVMeu4=";
    aarch64-linux = "sha256-68UIB4aclh7wLNsQShddxMlokbyYYe49kXgFxc5nQNk=";
    x86_64-darwin = "sha256-68UIB4aclh7wLNsQShddxMlokbyYYe49kXgFxc5nQNk=";
    aarch64-darwin = "sha256-68UIB4aclh7wLNsQShddxMlokbyYYe49kXgFxc5nQNk=";
  };
  meta = with lib; {
    description =
      "Collect and analyze alerts, escalate based on schedules and deliver them to Slack, Phone Calls, SMS and others.";
    license = licenses.agpl3Only;
    maintainers = lib.teams.fslabs.members;
    platforms = attrNames zipHash;
  };
}

