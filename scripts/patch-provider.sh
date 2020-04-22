DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
base_dir="${DIR}/.."
patch_dir="${DIR}/../patch"

cd $base_dir || exit 1

go mod tidy || exit 1
go mod vendor || exit 1

cd vendor/github.com/microsoft/azure-devops-go-api/ || exit 1
patch --verbose -p1 -i $patch_dir/azure-devops-go-api-rune-error.patch || exit 1

cd $base_dir || exit 1
cd vendor/github.com/hashicorp/terraform-plugin-sdk/ || exit 1
patch --verbose -p1 -i $patch_dir/terraform-plugin-sdk-requiredwith.patch || exit 1
cd $base_dir || exit 1
