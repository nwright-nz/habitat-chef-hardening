if [ -z ${CHEF_POLICYFILE+x} ]; then
  echo "You must set CHEF_POLICYFILE to a policyfile name."
  echo
  echo "For example: env CHEF_POLICYFILE=base build"
  exit 1
else
	scaffold_name=(`basename ${CHEF_POLICYFILE%%.*}`)
fi

scaffold_policy_name="$scaffold_name"
pkg_name=chef-linux-os-hardening
pkg_origin=nigelwright
pkg_version="0.1.0"
pkg_maintainer="Nigel Wright <nigel.wright@dimensiondata.com>"
pkg_license=("Apache-2.0")
pkg_source="http://nourlhere"
pkg_description="Chef Linux OS Hardening"
pkg_deps=(core/dpkg)
pkg_scaffolding="core/scaffolding-chef"
pkg_svc_user=("root")
